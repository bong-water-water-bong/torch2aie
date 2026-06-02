//===- gemm_atb_layout.h ----------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// Copyright (C) 2026, Advanced Micro Devices, Inc.
//
//===----------------------------------------------------------------------===//
//
// Host-side data-layout helpers for the asymmetric-tile-buffering GEMM
// designs. The B operand on the device is read as a 1D stream of v8bfp16ebs8
// vectors organized by (L1_K-block, L1_N-block) column-major, with each
// L1 tile pre-shuffled into 1x2 super-blocks of 8x8 column-major sub-blocks
// so a single VMAC issue can stream contiguously.
//
//===----------------------------------------------------------------------===//

#ifndef GEMM_ATB_LAYOUT_H
#define GEMM_ATB_LAYOUT_H

#include <algorithm>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <limits>
#include <stdfloat>
#include <vector>

namespace gemm_atb {

// --- W4A16 / AWQ host-side prototype helpers ------------------------------
//
// These helpers define the bring-up formats for packed W4 weights:
//   - source/dequantized matrix is row-major B with shape K x N;
//   - quantization groups run along K independently for each output column N;
//   - two 4-bit values are packed per byte, low nibble first;
//   - asymmetric AWQ dequant is `float(q - zero_point) * scale`.
//
// The row-major form feeds CPU reference checks. The ATB L1 packet form feeds
// config2_w4a16, where the AIE kernel consumes packed W4 directly and
// dequantizes each B tile on-core.

struct W4A16Weights {
  int rows = 0;
  int cols = 0;
  int group_size = 0;
  bool symmetric = false;
  std::vector<uint8_t> packed_q;
  std::vector<float> scales;
  std::vector<uint8_t> zero_points;
};

inline int ceildiv_int(int value, int divisor) {
  assert(divisor > 0 && "divisor must be positive");
  return (value + divisor - 1) / divisor;
}

inline uint8_t get_w4_nibble(const std::vector<uint8_t> &packed,
                             int element_index) {
  uint8_t byte = packed[element_index / 2];
  if (element_index % 2 == 0)
    return byte & 0x0f;
  return (byte >> 4) & 0x0f;
}

inline void set_w4_nibble(std::vector<uint8_t> &packed, int element_index,
                          uint8_t value) {
  value &= 0x0f;
  uint8_t &byte = packed[element_index / 2];
  if (element_index % 2 == 0)
    byte = static_cast<uint8_t>((byte & 0xf0) | value);
  else
    byte = static_cast<uint8_t>((byte & 0x0f) | (value << 4));
}

inline W4A16Weights quantize_w4a16_row_major(const std::vector<float> &input,
                                             int rows, int cols, int group_size,
                                             bool symmetric = false) {
  assert(rows > 0 && cols > 0 && "matrix dimensions must be positive");
  assert(group_size > 0 && "group_size must be positive");
  assert(static_cast<int>(input.size()) == rows * cols &&
         "input must be a row-major rows x cols matrix");

  W4A16Weights weights;
  weights.rows = rows;
  weights.cols = cols;
  weights.group_size = group_size;
  weights.symmetric = symmetric;
  weights.packed_q.assign((rows * cols + 1) / 2, 0);

  const int groups_per_col = ceildiv_int(rows, group_size);
  weights.scales.assign(cols * groups_per_col, 1.0f);
  weights.zero_points.assign(cols * groups_per_col, symmetric ? 8 : 0);

  for (int col = 0; col < cols; col++) {
    for (int group = 0; group < groups_per_col; group++) {
      int row_begin = group * group_size;
      int row_end = std::min(rows, row_begin + group_size);
      float min_value = std::numeric_limits<float>::infinity();
      float max_value = -std::numeric_limits<float>::infinity();
      for (int row = row_begin; row < row_end; row++) {
        float value = input[row * cols + col];
        min_value = std::min(min_value, value);
        max_value = std::max(max_value, value);
      }

      float scale = 1.0f;
      int zero_point = symmetric ? 8 : 0;
      if (symmetric) {
        float max_abs = std::max(std::abs(min_value), std::abs(max_value));
        scale = max_abs > 0.0f ? max_abs / 7.0f : 1.0f;
      } else {
        float range = max_value - min_value;
        scale = range > 0.0f ? range / 15.0f : 1.0f;
        zero_point = static_cast<int>(std::lround(-min_value / scale));
        zero_point = std::clamp(zero_point, 0, 15);
      }

      int metadata_index = col * groups_per_col + group;
      weights.scales[metadata_index] = scale;
      weights.zero_points[metadata_index] =
          static_cast<uint8_t>(zero_point & 0x0f);

      for (int row = row_begin; row < row_end; row++) {
        float value = input[row * cols + col];
        int q = 0;
        if (symmetric) {
          int signed_q = static_cast<int>(std::lround(value / scale));
          signed_q = std::clamp(signed_q, -8, 7);
          q = signed_q + 8;
        } else {
          q = static_cast<int>(std::lround(value / scale)) + zero_point;
          q = std::clamp(q, 0, 15);
        }
        set_w4_nibble(weights.packed_q, row * cols + col,
                      static_cast<uint8_t>(q));
      }
    }
  }

  return weights;
}

inline std::vector<float>
dequantize_w4a16_row_major(const W4A16Weights &weights) {
  assert(weights.rows > 0 && weights.cols > 0 &&
         "weights must carry positive matrix dimensions");
  assert(weights.group_size > 0 && "group_size must be positive");
  const int groups_per_col = ceildiv_int(weights.rows, weights.group_size);
  assert(static_cast<int>(weights.scales.size()) ==
             weights.cols * groups_per_col &&
         "scale metadata size does not match matrix dimensions");
  assert(static_cast<int>(weights.zero_points.size()) ==
             weights.cols * groups_per_col &&
         "zero-point metadata size does not match matrix dimensions");

  std::vector<float> output(weights.rows * weights.cols);
  for (int row = 0; row < weights.rows; row++) {
    int group = row / weights.group_size;
    for (int col = 0; col < weights.cols; col++) {
      int metadata_index = col * groups_per_col + group;
      int q = get_w4_nibble(weights.packed_q, row * weights.cols + col);
      int zero_point = weights.zero_points[metadata_index];
      output[row * weights.cols + col] =
          static_cast<float>(q - zero_point) * weights.scales[metadata_index];
    }
  }
  return output;
}

struct W4A16AtbL1Packets {
  int rows = 0;
  int cols = 0;
  int l1_k = 0;
  int l1_n = 0;
  int group_size = 0;
  bool symmetric = false;
  int groups_per_l1_k = 0;
  int metadata_values_per_l1 = 0;
  int packet_bytes_per_l1 = 0;
  std::vector<uint8_t> bytes;
  std::vector<float> dequantized_row_major;
};

inline int w4a16_atb_l1_packet_bytes(int l1_k, int l1_n, int group_size) {
  assert(l1_k % group_size == 0 && "l1_k must be divisible by group_size");
  assert(group_size % 8 == 0 && "group_size must cover full 8-row blocks");
  int metadata_values = (l1_k / group_size) * l1_n;
  int scale_bytes = metadata_values * static_cast<int>(sizeof(std::bfloat16_t));
  int zero_bytes = metadata_values * static_cast<int>(sizeof(std::bfloat16_t));
  int packed_bytes = (l1_k * l1_n + 1) / 2;
  return scale_bytes + zero_bytes + packed_bytes;
}

inline void write_bf16_le(std::vector<uint8_t> &output, int offset,
                          float value) {
  std::bfloat16_t bf16 = static_cast<std::bfloat16_t>(value);
  std::memcpy(output.data() + offset, &bf16, sizeof(bf16));
}

inline W4A16AtbL1Packets pack_w4a16_atb_l1_packets(
    const std::vector<float> &input, int rows, int cols, int l1_k, int l1_n,
    int group_size = 32, bool symmetric = false) {
  assert(rows % l1_k == 0 && "rows must be divisible by l1_k");
  assert(cols % l1_n == 0 && "cols must be divisible by l1_n");
  assert(l1_k % group_size == 0 && "l1_k must be divisible by group_size");
  assert(group_size % 8 == 0 && "group_size must cover full 8-row blocks");
  assert(l1_k % 8 == 0 && "l1_k must be divisible by 8");
  assert(l1_n % 16 == 0 && "l1_n must support 1x2 8x8 ATB blocks");
  assert(static_cast<int>(input.size()) == rows * cols &&
         "input must be a row-major rows x cols matrix");

  W4A16Weights quantized =
      quantize_w4a16_row_major(input, rows, cols, group_size, symmetric);

  W4A16AtbL1Packets packets;
  packets.rows = rows;
  packets.cols = cols;
  packets.l1_k = l1_k;
  packets.l1_n = l1_n;
  packets.group_size = group_size;
  packets.symmetric = symmetric;
  packets.groups_per_l1_k = l1_k / group_size;
  packets.metadata_values_per_l1 = packets.groups_per_l1_k * l1_n;
  packets.packet_bytes_per_l1 =
      w4a16_atb_l1_packet_bytes(l1_k, l1_n, group_size);
  packets.dequantized_row_major = dequantize_w4a16_row_major(quantized);

  int l1_rows = rows / l1_k;
  int l1_cols = cols / l1_n;
  int n_l1_tiles = l1_rows * l1_cols;
  packets.bytes.assign(n_l1_tiles * packets.packet_bytes_per_l1, 0);

  int global_groups_per_col = ceildiv_int(rows, group_size);
  int scale_base = 0;
  int zero_base = packets.metadata_values_per_l1 * sizeof(std::bfloat16_t);
  int packed_base = zero_base + packets.metadata_values_per_l1 *
                                    sizeof(std::bfloat16_t);
  int block_rows = l1_k / 8;
  int block_cols = l1_n / 8;

  int tile_index = 0;
  for (int l1_col = 0; l1_col < l1_cols; l1_col++) {
    for (int l1_row = 0; l1_row < l1_rows; l1_row++) {
      int packet_base = tile_index * packets.packet_bytes_per_l1;

      for (int group = 0; group < packets.groups_per_l1_k; group++) {
        int global_group = l1_row * packets.groups_per_l1_k + group;
        for (int col = 0; col < l1_n; col++) {
          int global_col = l1_col * l1_n + col;
          int global_metadata = global_col * global_groups_per_col + global_group;
          int local_metadata = group * l1_n + col;
          write_bf16_le(packets.bytes,
                        packet_base + scale_base +
                            local_metadata * sizeof(std::bfloat16_t),
                        quantized.scales[global_metadata]);
          write_bf16_le(packets.bytes,
                        packet_base + zero_base +
                            local_metadata * sizeof(std::bfloat16_t),
                        static_cast<float>(quantized.zero_points[global_metadata]));
        }
      }

      int stream_idx = 0;
      for (int super_block_col = 0; super_block_col < block_cols;
           super_block_col += 2) {
        for (int super_block_row = 0; super_block_row < block_rows;
             super_block_row++) {
          for (int block_in_super = 0; block_in_super < 2; block_in_super++) {
            int current_block_col = super_block_col + block_in_super;
            for (int col_in_block = 0; col_in_block < 8; col_in_block++) {
              for (int row_in_block = 0; row_in_block < 8; row_in_block++) {
                int local_row = super_block_row * 8 + row_in_block;
                int local_col = current_block_col * 8 + col_in_block;
                int global_row = l1_row * l1_k + local_row;
                int global_col = l1_col * l1_n + local_col;
                uint8_t q = get_w4_nibble(quantized.packed_q,
                                          global_row * cols + global_col);
                set_w4_nibble(packets.bytes,
                              2 * (packet_base + packed_base) + stream_idx, q);
                stream_idx++;
              }
            }
          }
        }
      }
      tile_index++;
    }
  }

  return packets;
}

// Shuffle a (rows x cols) row-major float matrix into 1x2 row-major
// super-blocks of 8x8 column-major sub-blocks. The output is the same number
// of floats, arranged so the VMAC unit's 8x8 BFP16 inputs are contiguous.
inline std::vector<float>
layout_transpose_1x2_8x8block(const std::vector<float> &input, int rows,
                              int cols) {
  assert(rows % 8 == 0 && "rows must be divisible by 8");
  assert(cols % 8 == 0 && "cols must be divisible by 8");
  assert((cols / 8) % 2 == 0 && "cols/8 must be divisible by 2 for 1x2 layout");
  std::vector<float> output(rows * cols);
  int block_rows = rows / 8;
  int block_cols = cols / 8;
  int output_idx = 0;
  // Iterate 1x2 super-blocks (two horizontally-stacked 8x8 blocks).
  for (int super_block_col = 0; super_block_col < block_cols;
       super_block_col += 2) {
    for (int super_block_row = 0; super_block_row < block_rows;
         super_block_row++) {
      for (int block_in_super = 0;
           block_in_super < std::min(2, block_cols - super_block_col);
           block_in_super++) {
        int current_block_row = super_block_row;
        int current_block_col = super_block_col + block_in_super;
        // Within each 8x8 block: column-major.
        for (int col_in_block = 0; col_in_block < 8; col_in_block++) {
          for (int row_in_block = 0; row_in_block < 8; row_in_block++) {
            int orig_row = current_block_row * 8 + row_in_block;
            int orig_col = current_block_col * 8 + col_in_block;
            int orig_idx = orig_row * cols + orig_col;
            output[output_idx++] = input[orig_idx];
          }
        }
      }
    }
  }
  return output;
}

// Same shuffle but applied tile-by-tile across an outer (rows x cols) matrix
// of L1_block_k x L1_block_n tiles, with the tiles emitted in column-major
// order (outer column-major, inner per-tile 1x2_8x8block).
inline std::vector<float>
layout_transpose_L1_1x2_8x8block(const std::vector<float> &input, int rows,
                                 int cols, int L1_block_k, int L1_block_n) {
  assert(rows % L1_block_k == 0 && "rows must be divisible by L1_block_k");
  assert(cols % L1_block_n == 0 && "cols must be divisible by L1_block_n");
  assert(L1_block_k % 8 == 0 && "L1_block_k must be divisible by 8");
  assert(L1_block_n % 8 == 0 && "L1_block_n must be divisible by 8");
  assert((L1_block_n / 8) % 2 == 0 &&
         "L1_block_n/8 must be divisible by 2 for the 1x2 layout");

  std::vector<float> output(rows * cols);
  int L1_rows = rows / L1_block_k;
  int L1_cols = cols / L1_block_n;
  int output_idx = 0;

  // Outer order: column-major over L1 tiles.
  for (int L1_col = 0; L1_col < L1_cols; L1_col++) {
    for (int L1_row = 0; L1_row < L1_rows; L1_row++) {
      // Extract the current L1 tile.
      std::vector<float> tile(L1_block_k * L1_block_n);
      for (int i = 0; i < L1_block_k; i++) {
        for (int j = 0; j < L1_block_n; j++) {
          int orig_row = L1_row * L1_block_k + i;
          int orig_col = L1_col * L1_block_n + j;
          tile[i * L1_block_n + j] = input[orig_row * cols + orig_col];
        }
      }
      // Inner shuffle for this tile.
      std::vector<float> shuffled =
          layout_transpose_1x2_8x8block(tile, L1_block_k, L1_block_n);
      for (size_t k = 0; k < shuffled.size(); k++) {
        output[output_idx++] = shuffled[k];
      }
    }
  }
  return output;
}

// --- A input shuffle (used by the pure-bfp16 configs) ----------------------
// A is laid out as L1 tiles in row-major order across (M, K). Within each
// L1 tile, the inner pattern is 2x1 vertically-stacked super-blocks of 8x8
// row-major sub-blocks. This is different from B's shuffle (which is 1x2
// horizontally-stacked super-blocks of 8x8 column-major sub-blocks); the two
// patterns reflect how the MAC unit's two input vectors index into their
// respective register banks.

inline std::vector<float> layout_A_2x1_8x8block(const std::vector<float> &input,
                                                int rows, int cols) {
  assert(rows % 8 == 0 && "rows must be divisible by 8");
  assert(cols % 8 == 0 && "cols must be divisible by 8");
  std::vector<float> output(rows * cols);
  int block_rows = rows / 8;
  int block_cols = cols / 8;
  assert(block_rows % 2 == 0 &&
         "block_rows must be divisible by 2 for 2x1 layout");
  int output_idx = 0;
  for (int super_block_row = 0; super_block_row < block_rows;
       super_block_row += 2) {
    for (int super_block_col = 0; super_block_col < block_cols;
         super_block_col++) {
      // 2x1 super-block: two 8x8 sub-blocks stacked vertically.
      for (int block_in_super = 0; block_in_super < 2; block_in_super++) {
        int cbr = super_block_row + block_in_super;
        int cbc = super_block_col;
        // 8x8 sub-block: row-major.
        for (int rib = 0; rib < 8; rib++) {
          for (int cib = 0; cib < 8; cib++) {
            int orig_row = cbr * 8 + rib;
            int orig_col = cbc * 8 + cib;
            output[output_idx++] = input[orig_row * cols + orig_col];
          }
        }
      }
    }
  }
  return output;
}

inline std::vector<float>
layout_A_L1_2x1_8x8block(const std::vector<float> &input, int rows, int cols,
                         int L1_block_m, int L1_block_k) {
  assert(rows % L1_block_m == 0 && "rows must be divisible by L1_block_m");
  assert(cols % L1_block_k == 0 && "cols must be divisible by L1_block_k");
  assert(L1_block_m % 8 == 0 && "L1_block_m must be divisible by 8");
  assert(L1_block_k % 8 == 0 && "L1_block_k must be divisible by 8");
  assert((L1_block_m / 8) % 2 == 0 &&
         "L1_block_m/8 must be divisible by 2 for the 2x1 layout");
  std::vector<float> output(rows * cols);
  int L1_rows = rows / L1_block_m;
  int L1_cols = cols / L1_block_k;
  int output_idx = 0;
  // Outer L1 traversal: row-major.
  for (int L1_row = 0; L1_row < L1_rows; L1_row++) {
    for (int L1_col = 0; L1_col < L1_cols; L1_col++) {
      std::vector<float> tile(L1_block_m * L1_block_k);
      for (int i = 0; i < L1_block_m; i++) {
        for (int j = 0; j < L1_block_k; j++) {
          int orig_row = L1_row * L1_block_m + i;
          int orig_col = L1_col * L1_block_k + j;
          tile[i * L1_block_k + j] = input[orig_row * cols + orig_col];
        }
      }
      std::vector<float> shuffled =
          layout_A_2x1_8x8block(tile, L1_block_m, L1_block_k);
      for (size_t i = 0; i < shuffled.size(); i++)
        output[output_idx++] = shuffled[i];
    }
  }
  return output;
}

// --- C-output unshuffle (inverse of the input pattern, for verification) ----
// The pure-bfp16 ATB designs (configs 2 and 3) emit C in a hierarchical
// layout: L1 blocks of `(L1_block_m, L1_block_n)` floats arranged row-major
// across the (M, N) result, and within each L1 block, 2x2 super-blocks of
// 8x8 row-major sub-blocks. The two helpers below convert that back to plain
// row-major so the host can verify against a CPU reference.

inline std::vector<float>
layout_inverse_C_2x2_8x8block(const std::vector<float> &input, int L1_block_m,
                              int L1_block_n) {
  std::vector<float> output(L1_block_m * L1_block_n);
  int input_idx = 0;
  int blocks_per_row = L1_block_n / 8;
  int blocks_per_col = L1_block_m / 8;
  for (int super_block_row = 0; super_block_row < blocks_per_col;
       super_block_row += 2) {
    for (int super_block_col = 0; super_block_col < blocks_per_row;
         super_block_col += 2) {
      // Order within each 2x2 super-block: [0,0], [0,1], [1,0], [1,1].
      for (int block_row = 0; block_row < 2; block_row++) {
        for (int block_col = 0; block_col < 2; block_col++) {
          int cbr = super_block_row + block_row;
          int cbc = super_block_col + block_col;
          for (int rib = 0; rib < 8; rib++) {
            for (int cib = 0; cib < 8; cib++) {
              int out_row = cbr * 8 + rib;
              int out_col = cbc * 8 + cib;
              output[out_row * L1_block_n + out_col] = input[input_idx++];
            }
          }
        }
      }
    }
  }
  return output;
}

inline std::vector<float>
layout_inverse_C_L1_2x2_8x8block(const std::vector<float> &input, int M, int N,
                                 int L1_block_m, int L1_block_n) {
  assert(M % L1_block_m == 0 && "M must be divisible by L1_block_m");
  assert(N % L1_block_n == 0 && "N must be divisible by L1_block_n");
  assert(L1_block_m % 16 == 0 &&
         "L1_block_m must be divisible by 16 for 2x2 8x8 blocks");
  assert(L1_block_n % 16 == 0 &&
         "L1_block_n must be divisible by 16 for 2x2 8x8 blocks");

  std::vector<float> output(M * N);
  int L1_rows = M / L1_block_m;
  int L1_cols = N / L1_block_n;
  int input_idx = 0;
  // L1-tile order: row-major (matches the output dispatch sequence in
  // the IRON design's runtime_sequence).
  for (int L1_row = 0; L1_row < L1_rows; L1_row++) {
    for (int L1_col = 0; L1_col < L1_cols; L1_col++) {
      int L1_block_size = L1_block_m * L1_block_n;
      std::vector<float> tile(L1_block_size);
      for (int i = 0; i < L1_block_size; i++)
        tile[i] = input[input_idx++];
      std::vector<float> unshuffled =
          layout_inverse_C_2x2_8x8block(tile, L1_block_m, L1_block_n);
      for (int i = 0; i < L1_block_m; i++) {
        for (int j = 0; j < L1_block_n; j++) {
          int out_row = L1_row * L1_block_m + i;
          int out_col = L1_col * L1_block_n + j;
          output[out_row * N + out_col] = unshuffled[i * L1_block_n + j];
        }
      }
    }
  }
  return output;
}

} // namespace gemm_atb

#endif // GEMM_ATB_LAYOUT_H
