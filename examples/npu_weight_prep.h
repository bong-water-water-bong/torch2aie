//===- npu_weight_prep.h ----------------------------------------*- C++ -*-===//
//
// NPU weight preparation for BF16 weights: host-side shuffle + BFP16 encoding.
//
// The config2 xclbins expect weight data in:
//   1. Column-major L1 tiles (over K rows, N columns)
//   2. Within each L1 tile: 1x2 super-blocks of 8x8 column-major sub-blocks
//   3. Each 8-value group: BFP16 encoded (floatToBfp16: 9 bytes per 8 values)
//
//===----------------------------------------------------------------------===//

#ifndef NPU_WEIGHT_PREP_H
#define NPU_WEIGHT_PREP_H

#include <algorithm>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <vector>

namespace npu {

// ---- BFP16 encoding (float → v8bfp16ebs8) --------------------------------
// floatToBfp16 converts float values to block float with 8-element blocks:
//   8 values → 1 shared exponent byte + 8 × 7-bit mantissa bytes = 9 bytes
// Memory layout: consecutive 9-byte blocks

inline std::vector<uint8_t> floatToBfp16(int block, int size, const float *array) {
  std::vector<uint8_t> res(static_cast<size_t>(static_cast<double>(size) * 9.0 / 8.0));

  int mbits = 7;
  int start = 0;
  unsigned int currentIndex = 1;

  while (true) {
    int end = start + block;
    end = (end > size) ? size : end;

    // Find max exp
    unsigned int maxExp = 0;
    for (int i = start; i < end; i++) {
      unsigned int bits;
      memcpy(&bits, &array[i], sizeof(bits));
      unsigned int exp = (bits >> 23) & 0x000000FF;
      if (exp > maxExp) maxExp = exp;
    }

    // Round each number
    for (int i = start; i < end; i++) {
      unsigned int bits;
      memcpy(&bits, &array[i], sizeof(bits));
      unsigned int sign = bits & 0x80000000;
      unsigned int exp = (bits >> 23) & 0x000000FF;
      unsigned int mantissa = bits & 0x007FFFFF;
      if (exp) mantissa |= 0x00800000; // implicit leading bit for normal

      if (exp >= 255) continue; // Infinity or NaN

      // Two's complement
      mantissa = sign ? (~mantissa + 1) : mantissa;
      // Truncate to 7 mantissa bits (AIE2P bfp16ebs8 uses 7 mantissa bits)
      uint8_t valueInt8 = static_cast<uint8_t>(mantissa >> (23 - mbits + 1));

      // Arithmetic right shift
      if (maxExp - exp >= 32) {
        valueInt8 = sign ? 0xFF : 0x00;
      } else {
        valueInt8 = static_cast<int8_t>(valueInt8) >> (maxExp - exp);
      }
      res[currentIndex++] = valueInt8;
    }
    res[currentIndex - 9] = static_cast<uint8_t>(maxExp);
    currentIndex++;
    start = end;
    if (start >= size) break;
  }
  return res;
}

// ---- Shuffle: weight matrix (K×N) → L1 tile column-major with 1x2 super-blocks of 8x8 column-major sub-blocks

inline void shuffle_bf16_weight(
    const float* input, int rows, int cols,
    int L1_k, int L1_n,
    std::vector<float>& output)
{
  assert(rows % L1_k == 0);
  assert(cols % L1_n == 0);
  assert(L1_k % 8 == 0);
  assert(L1_n % 8 == 0);
  assert((L1_n / 8) % 2 == 0);  // 1x2 super-block requires even number of 8-column blocks

  // Outer: column-major over L1 tiles (B uses column-major tile order)
  // Inner: 1x2 super-blocks of 8x8 column-major sub-blocks
  output.resize(rows * cols);
  int L1_rows = rows / L1_k;
  int L1_cols = cols / L1_n;
  int out_idx = 0;

  for (int l1_c = 0; l1_c < L1_cols; l1_c++) {
    for (int l1_r = 0; l1_r < L1_rows; l1_r++) {
      // Extract L1 tile
      std::vector<float> tile(L1_k * L1_n);
      for (int i = 0; i < L1_k; i++) {
        for (int j = 0; j < L1_n; j++) {
          tile[i * L1_n + j] = input[(l1_r * L1_k + i) * cols + (l1_c * L1_n + j)];
        }
      }

      // Inner shuffle: 1x2 super-blocks of 8x8 column-major sub-blocks
      int block_rows = L1_k / 8;
      int block_cols = L1_n / 8;
      for (int super_block_col = 0; super_block_col < block_cols; super_block_col += 2) {
        for (int super_block_row = 0; super_block_row < block_rows; super_block_row++) {
          for (int block_in_super = 0; block_in_super < 2; block_in_super++) {
            int current_block_col = super_block_col + block_in_super;
            int current_block_row = super_block_row;
            // 8x8 sub-block: column-major
            for (int col_in_block = 0; col_in_block < 8; col_in_block++) {
              for (int row_in_block = 0; row_in_block < 8; row_in_block++) {
                int orig_row = current_block_row * 8 + row_in_block;
                int orig_col = current_block_col * 8 + col_in_block;
                output[out_idx++] = tile[orig_row * L1_n + orig_col];
              }
            }
          }
        }
      }
    }
  }
}

// ---- Shuffle: activation matrix (M×K) → L1 tile row-major with 2x1 super-blocks of 8x8 row-major sub-blocks

inline void shuffle_bf16_activation(
    const float* input, int rows, int cols,
    int L1_m, int L1_k,
    std::vector<float>& output)
{
  assert(rows % L1_m == 0);
  assert(cols % L1_k == 0);
  assert(L1_m % 8 == 0);
  assert(L1_k % 8 == 0);
  assert((L1_m / 8) % 2 == 0);  // 2x1 super-block requires even number of 8-row blocks

  // Outer: row-major over L1 tiles (A uses row-major tile order)
  // Inner: 2x1 super-blocks of 8x8 row-major sub-blocks
  output.resize(rows * cols);
  int L1_rows = rows / L1_m;
  int L1_cols = cols / L1_k;
  int out_idx = 0;

  for (int l1_r = 0; l1_r < L1_rows; l1_r++) {
    for (int l1_c = 0; l1_c < L1_cols; l1_c++) {
      // Extract L1 tile
      std::vector<float> tile(L1_m * L1_k);
      for (int i = 0; i < L1_m; i++) {
        for (int j = 0; j < L1_k; j++) {
          tile[i * L1_k + j] = input[(l1_r * L1_m + i) * cols + (l1_c * L1_k + j)];
        }
      }

      // Inner shuffle: 2x1 super-blocks of 8x8 row-major sub-blocks
      int block_rows = L1_m / 8;
      int block_cols = L1_k / 8;
      for (int super_block_row = 0; super_block_row < block_rows; super_block_row += 2) {
        for (int super_block_col = 0; super_block_col < block_cols; super_block_col++) {
          for (int block_in_super = 0; block_in_super < 2; block_in_super++) {
            int current_block_row = super_block_row + block_in_super;
            int current_block_col = super_block_col;
            // 8x8 sub-block: row-major
            for (int row_in_block = 0; row_in_block < 8; row_in_block++) {
              for (int col_in_block = 0; col_in_block < 8; col_in_block++) {
                int orig_row = current_block_row * 8 + row_in_block;
                int orig_col = current_block_col * 8 + col_in_block;
                output[out_idx++] = tile[orig_row * L1_k + orig_col];
              }
            }
          }
        }
      }
    }
  }
}

// ---- C output: unshuffle from NPU output back to row-major

inline std::vector<float> unshuffle_bf16_output(
    const float* input, int M, int N,
    int L1_m, int L1_n)
{
  assert(M % L1_m == 0);
  assert(N % L1_n == 0);
  assert(L1_m % 16 == 0);
  assert(L1_n % 16 == 0);

  // NPU output is in L1-row-major order, with each L1 tile in 2x2 super-blocks of 8x8 row-major sub-blocks
  int n_aie_rows = 4;  // config2 uses 4 core rows
  int L1_group_m = n_aie_rows * L1_m;  // 512 for m=128
  int L1_rows = M / L1_group_m;
  int L1_cols = N / L1_n;

  std::vector<float> output(M * N);
  int in_idx = 0;

  for (int l1_r = 0; l1_r < L1_rows; l1_r++) {
    for (int l1_c = 0; l1_c < L1_cols; l1_c++) {
      // Read one L1 group (n_aie_rows * L1_m) × L1_n
      std::vector<float> group(L1_group_m * L1_n);
      for (size_t i = 0; i < group.size(); i++) {
        group[i] = input[in_idx++];
      }

      // Unshuffle: 2x2 super-blocks of 8x8 row-major sub-blocks within the L1 group
      std::vector<float> unshuffled(L1_group_m * L1_n);
      int blocks_per_col = L1_group_m / 8;
      int blocks_per_row = L1_n / 8;
      int sg_idx = 0;
      for (int super_block_row = 0; super_block_row < blocks_per_col; super_block_row += 2) {
        for (int super_block_col = 0; super_block_col < blocks_per_row; super_block_col += 2) {
          for (int block_row = 0; block_row < 2; block_row++) {
            for (int block_col = 0; block_col < 2; block_col++) {
              int cbr = super_block_row + block_row;
              int cbc = super_block_col + block_col;
              for (int rib = 0; rib < 8; rib++) {
                for (int cib = 0; cib < 8; cib++) {
                  int out_row = cbr * 8 + rib;
                  int out_col = cbc * 8 + cib;
                  unshuffled[out_row * L1_n + out_col] = group[sg_idx++];
                }
              }
            }
          }
        }
      }

      // Copy to final output
      for (int i = 0; i < L1_group_m; i++) {
        for (int j = 0; j < L1_n; j++) {
          output[(l1_r * L1_group_m + i) * N + (l1_c * L1_n + j)] = unshuffled[i * L1_n + j];
        }
      }
    }
  }

  return output;
}

// ---- BFP decode: bfp16ebs8 bytes → float

inline std::vector<float> bfp16ebs8ToFloat(int size, const uint8_t* array) {
  std::vector<float> res(static_cast<size_t>(static_cast<double>(size) / 1.125));
  int block = 8;
  int tempIndx = 0;

  for (int i = 0; i < size; i += block + 1) {
    uint8_t sharedExponent = array[i];
    float multiplier;
    if (sharedExponent >= 127) {
      multiplier = 1.0f * (1 << (sharedExponent - 127));
    } else {
      multiplier = 1.0f / (1 << (127 - sharedExponent));
    }
    multiplier /= 64.0f;  // 2^6 = 64: the 7-bit mantissa [−64, 63] maps to [−1.0, ~0.98)

    for (int j = 1; j < block + 1; j++) {
      int8_t value = static_cast<int8_t>(array[i + j]);
      res[tempIndx++] = static_cast<float>(value) * multiplier;
    }
  }
  return res;
}

// ---- Full weight prep: float BF16 weight matrix (K×N) → BFP16-encoded shuffled bytes
// Returns the byte buffer suitable for NPU xclbin BO B (group_id 4)

inline std::vector<uint8_t> prep_weights_for_npu(
    const float* weights, int K, int N,
    int l1_k = 64, int l1_n = 128)
{
  // Step 1: Shuffle into NPU layout
  std::vector<float> shuffled;
  shuffle_bf16_weight(weights, K, N, l1_k, l1_n, shuffled);

  // Step 2: BFP-encode
  std::vector<uint8_t> bfp = floatToBfp16(8, K * N, shuffled.data());

  return bfp;
}

// ---- Full activation prep: float BF16 input matrix (M×K) → BFP16-encoded shuffled bytes
// Returns the byte buffer suitable for NPU xclbin BO A (group_id 3)

inline std::vector<uint8_t> prep_activation_for_npu(
    const float* activation, int M, int K,
    int l1_m = 128, int l1_k = 64)
{
  // Step 1: Shuffle into NPU layout
  std::vector<float> shuffled;
  shuffle_bf16_activation(activation, M, K, l1_m, l1_k, shuffled);

  // Step 2: BFP-encode
  std::vector<uint8_t> bfp = floatToBfp16(8, M * K, shuffled.data());

  return bfp;
}

// ---- Full output decode: NPU output bytes → float row-major matrix
// Returns the decoded row-major output

inline std::vector<float> decode_npu_output(
    const uint8_t* npu_output, int M, int N,
    int l1_m = 128, int l1_n = 128)
{
  // Step 1: BFP-decode
  int c_volume = static_cast<int>(static_cast<double>(M * N) * 9.0 / 8.0);
  std::vector<float> decoded = bfp16ebs8ToFloat(c_volume, npu_output);

  // Step 2: Unshuffle
  std::vector<float> result = unshuffle_bf16_output(decoded.data(), M, N, l1_m, l1_n);

  return result;
}

} // namespace npu

#endif // NPU_WEIGHT_PREP_H
