// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <stdint.h>

namespace {

static void zero_i32(int32_t *values, int32_t dwords) {
  for (int32_t idx = 0; idx < dwords; idx++)
      chess_prepare_for_pipelining chess_loop_range(1, 2048) {
    values[idx] = 0;
  }
}

} // namespace

extern "C" {

void qwen3_attention_bf16_make_carrier_masked(
    int32_t *q_window, int32_t *k_window, int32_t *carrier, int32_t window,
    int32_t block, int32_t blocks, int32_t tail_tokens, int32_t q_dwords,
    int32_t k_dwords, int32_t carrier_dwords) {
  (void)q_window;
  (void)k_window;
  (void)window;
  (void)block;
  (void)blocks;
  (void)tail_tokens;
  (void)q_dwords;
  (void)k_dwords;
  zero_i32(carrier, carrier_dwords);
}

void qwen3_attention_bf16_init_accum(int32_t *accum, int32_t *state,
                                     int32_t accum_lanes,
                                     int32_t state_dwords) {
  zero_i32(accum, accum_lanes);
  zero_i32(state, state_dwords);
}

void qwen3_attention_bf16_accum_block(
    int32_t *v_window, int32_t *carrier, int32_t *accum, int32_t *state,
    int32_t block, int32_t v_dwords, int32_t carrier_dwords,
    int32_t accum_lanes, int32_t state_dwords) {
  (void)v_window;
  (void)carrier;
  (void)accum;
  (void)state;
  (void)block;
  (void)v_dwords;
  (void)carrier_dwords;
  (void)accum_lanes;
  (void)state_dwords;
}

void qwen3_attention_bf16_finish_accum(int32_t *accum, int32_t *state,
                                       int32_t *output, int32_t output_dwords,
                                       int32_t accum_lanes,
                                       int32_t state_dwords) {
  (void)accum;
  (void)state;
  (void)accum_lanes;
  (void)state_dwords;
  zero_i32(output, output_dwords);
}

} // extern "C"
