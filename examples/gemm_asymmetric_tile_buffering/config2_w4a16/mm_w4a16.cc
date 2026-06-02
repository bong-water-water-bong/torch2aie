//===- mm_bfp_mixed.cc ------------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// Copyright (C) 2026, Advanced Micro Devices, Inc.
//
//===----------------------------------------------------------------------===//

#include "aie_kernel_utils.h"
#include <aie_api/aie.hpp>
#include <stdint.h>

template <int M, int N>
void zero_vectorized_v64bfp16ebs8(bfp16ebs8 *__restrict cOut) {
  int const vectorSize = 64;

  const aie::accum<accfloat, vectorSize> acc =
      aie::zeros<accfloat, vectorSize>();

  aie::block_vector_output_buffer_stream<bfp16ebs8, vectorSize> outStreamC(
      cOut);

  for (int i = 0; i < M * N / 64; i++) {
    outStreamC << acc.to_vector<bfp16ebs8>();
  }
}

constexpr int DIV = 6;
constexpr int M = 192 / DIV;
constexpr int K = 128;
constexpr int N = 96;
constexpr int m = 192 / DIV;
constexpr int k = 128;
constexpr int n = 96;
constexpr int r = 8;
constexpr int s = 8;
constexpr int t = 8;
#ifndef W4_GROUP_SIZE
#define W4_GROUP_SIZE 32
#endif
constexpr int w4_group_size = W4_GROUP_SIZE;
constexpr int w4_groups_per_l1_k = k / w4_group_size;
constexpr int w4_metadata_values_per_l1 = w4_groups_per_l1_k * n;
constexpr int w4_scale_bytes = w4_metadata_values_per_l1 * sizeof(bfloat16);
constexpr int w4_zero_offset = w4_scale_bytes;
constexpr int w4_payload_offset = w4_scale_bytes * 2;
constexpr int w4_packet_bytes = w4_payload_offset + (k * n) / 2;
static_assert(w4_group_size == 32, "config2_w4a16 follows MyLM Q4NX group=32");
static_assert(k % w4_group_size == 0);
static_assert(w4_group_size % 8 == 0);

extern "C" {

static int g_counter = 0;
alignas(aie::vector_decl_align) static bfp16ebs8 g_dequantized_B[k * n / 8];

static inline aie::vector<bfloat16, 64>
broadcast_8cols_x_8rows_bf16(bfloat16 *__restrict values, int metadata_base) {
  return aie::concat(aie::broadcast<bfloat16, 8>(values[metadata_base + 0]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 1]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 2]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 3]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 4]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 5]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 6]),
                     aie::broadcast<bfloat16, 8>(values[metadata_base + 7]));
}

static inline void dequant_w4a16_8x8_to_bfp16(
    uint8_t *__restrict packed, int stream_idx, bfloat16 *__restrict scales,
    bfloat16 *__restrict zeros, int metadata_base,
    aie::block_vector_output_buffer_stream<bfp16ebs8, 64> &out_stream) {
  uint4 *__restrict packed4 = (uint4 *)(packed + stream_idx / 2);
  aie::vector<uint4, 64> q4 = aie::load_v<64>(packed4);
  aie::vector<uint8, 64> q8 = q4.unpack();
  aie::vector<bfloat16, 64> q_bf16 = aie::to_float<bfloat16>(q8);
  aie::vector<bfloat16, 64> zero_vec =
      broadcast_8cols_x_8rows_bf16(zeros, metadata_base);
  aie::vector<bfloat16, 64> scale_vec =
      broadcast_8cols_x_8rows_bf16(scales, metadata_base);
  aie::vector<bfloat16, 64> centered = aie::sub(q_bf16, zero_vec);
  aie::accum<accfloat, 64> dequantized = aie::mul(centered, scale_vec);
  out_stream.push(dequantized.template to_vector<bfp16ebs8>());
}

static void dequant_w4a16_l1_to_bfp16(uint8_t *__restrict packet,
                                      bfp16ebs8 *__restrict out_bfp) {
  bfloat16 *__restrict scales = (bfloat16 *)packet;
  bfloat16 *__restrict zeros = (bfloat16 *)(packet + w4_zero_offset);
  uint8_t *__restrict packed = packet + w4_payload_offset;

  int stream_idx = 0;

  aie::block_vector_output_buffer_stream<bfp16ebs8, 64> out_stream(out_bfp);
  for (int super_block_col = 0; super_block_col < n / 8; super_block_col += 2) {
    for (int super_block_row = 0; super_block_row < k / 8; super_block_row++) {
      int group = (super_block_row * 8) / w4_group_size;
      for (int block_in_super = 0; block_in_super < 2; block_in_super++) {
        int current_block_col = super_block_col + block_in_super;
        int metadata_base = group * n + current_block_col * 8;
        dequant_w4a16_8x8_to_bfp16(packed, stream_idx, scales, zeros,
                                   metadata_base, out_stream);
        stream_idx += 64;
      }
    }
  }
}

void matmul_vectorized_bfp16(bfp16ebs8 *__restrict pA, bfp16ebs8 *__restrict pB,
                             bfp16ebs8 *__restrict pC) {
  event0();
  pC += g_counter * m * n / 8; // divde by 8 because 1 address have 8 data
  if (g_counter == DIV - 1) {
    g_counter = 0;
  } else {
    g_counter = g_counter + 1;
  }

  int run_num = 1;
  for (int run = 0; run < run_num; run++) {
    // each ouput block contains 8x8 elements
    for (int block_row = 0; block_row < m / 16; block_row = block_row + 1) {
      for (int block_col = 0; block_col < n / 16; block_col = block_col + 1) {

        aie::block_vector_input_buffer_stream<bfp16ebs8, 64> pB_stream(pB);
        pB_stream.seek(2 * block_col * k / 8);

        aie::block_vector_input_buffer_stream<bfp16ebs8, 64> pA_stream(pA);
        int A_stream_index = 2 * block_row * k / 8;
        pA_stream.seek(A_stream_index);

        aie::block_vector<bfp16ebs8, 64> chess_storage(ex0) A0_data_bfp =
            pA_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex2) A1_data_bfp =
            pA_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex1) B0_data_bfp =
            pB_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex3) B1_data_bfp =
            pB_stream.pop();

        int C_stream_index = (block_row * n / 16 + block_col) * 4;
        aie::block_vector_input_buffer_stream<bfp16ebs8, 64> pC0In_stream(pC);
        pC0In_stream.seek(C_stream_index);
        aie::block_vector_input_buffer_stream<bfp16ebs8, 64> pC1In_stream(pC);
        pC1In_stream.seek(C_stream_index + 2);

        aie::accum<accfloat, 64> chess_storage(dm0)
            acc0_data(pC0In_stream.pop());
        aie::accum<accfloat, 64> chess_storage(dm2)
            acc1_data(pC0In_stream.pop());
        aie::accum<accfloat, 64> chess_storage(dm1)
            acc2_data(pC1In_stream.pop());
        aie::accum<accfloat, 64> chess_storage(dm3)
            acc3_data(pC1In_stream.pop());

        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);

        aie::block_vector<bfp16ebs8, 64> chess_storage(ex4) A0_data_bfp_pong =
            pA_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex6) A1_data_bfp_pong =
            pA_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex5) B0_data_bfp_pong =
            pB_stream.pop();
        aie::block_vector<bfp16ebs8, 64> chess_storage(ex7) B1_data_bfp_pong =
            pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);
        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();

        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);

        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();

        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);

        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);
        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);

        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);
        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);
        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);
        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);
        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);
        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);
        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);
        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();
        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);

        A0_data_bfp = pA_stream.pop();
        A1_data_bfp = pA_stream.pop();
        B0_data_bfp = pB_stream.pop();
        B1_data_bfp = pB_stream.pop();

        acc0_data = mac_8x8_8x8T(A0_data_bfp, B0_data_bfp, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp, B1_data_bfp, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp, B0_data_bfp, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp, B1_data_bfp, acc3_data);

        A0_data_bfp_pong = pA_stream.pop();
        A1_data_bfp_pong = pA_stream.pop();
        B0_data_bfp_pong = pB_stream.pop();
        B1_data_bfp_pong = pB_stream.pop();

        acc0_data = mac_8x8_8x8T(A0_data_bfp_pong, B0_data_bfp_pong, acc0_data);
        acc1_data = mac_8x8_8x8T(A0_data_bfp_pong, B1_data_bfp_pong, acc1_data);
        acc2_data = mac_8x8_8x8T(A1_data_bfp_pong, B0_data_bfp_pong, acc2_data);
        acc3_data = mac_8x8_8x8T(A1_data_bfp_pong, B1_data_bfp_pong, acc3_data);

        aie::block_vector_output_buffer_stream<bfp16ebs8, 64> pC0Out_stream(pC);
        pC0Out_stream.seek(C_stream_index);
        pC0Out_stream.push(acc0_data.template to_vector<bfp16ebs8>());
        pC0Out_stream.push(acc1_data.template to_vector<bfp16ebs8>());
        pC0Out_stream.push(acc2_data.template to_vector<bfp16ebs8>());
        pC0Out_stream.push(acc3_data.template to_vector<bfp16ebs8>());
      }
    }
  }
}

void zero_kernel(bfp16ebs8 *__restrict cOut) {
  zero_vectorized_v64bfp16ebs8<DIM_M, DIM_N>(cOut);
}

void matmul_vectorized_w4a16(bfp16ebs8 *__restrict pA,
                             uint8_t *__restrict pB_w4,
                             bfp16ebs8 *__restrict pC) {
  if (g_counter == 0) {
    dequant_w4a16_l1_to_bfp16(pB_w4, g_dequantized_B);
  }
  matmul_vectorized_bfp16(pA, g_dequantized_B, pC);
}
}
