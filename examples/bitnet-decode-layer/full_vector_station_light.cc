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

void qkv_c1r2_summarize_compact(int32_t *compact, int32_t *summary,
                                int32_t dwords) {
  (void)compact;
  summary[0] = 0x51564F43;
  summary[1] = dwords;
  for (int32_t idx = 2; idx < 8; idx++) {
    summary[idx] = 0;
  }
}

void full_c1r2_make_input_norm_replay(int32_t *hidden, int32_t *norm_weight,
                                      int32_t *replay,
                                      int32_t payload_dwords) {
  (void)hidden;
  (void)norm_weight;
  replay[0] = 0xC1000000;
  zero_i32(replay + 1, payload_dwords);
}

void full_c1r2_make_input_norm_payload(int32_t *hidden, int32_t *norm_weight,
                                       int32_t *payload,
                                       int32_t payload_dwords) {
  (void)hidden;
  (void)norm_weight;
  zero_i32(payload, payload_dwords);
}

void full_c1r2_add_o_compact_to_residual(int32_t *hidden, int32_t *compact,
                                         int32_t block) {
  (void)hidden;
  (void)compact;
  (void)block;
}

void full_c1r2_make_post_norm_replay(int32_t *residual, int32_t *norm_weight,
                                     int32_t *replay,
                                     int32_t payload_dwords) {
  (void)residual;
  (void)norm_weight;
  replay[0] = 0xC1000000;
  zero_i32(replay + 1, payload_dwords);
}

void full_c1r2_make_post_norm_payload(int32_t *residual, int32_t *norm_weight,
                                      int32_t *payload,
                                      int32_t payload_dwords) {
  (void)residual;
  (void)norm_weight;
  zero_i32(payload, payload_dwords);
}

void full_c1r2_write_down_block(int32_t *residual, int32_t *compact,
                                int32_t *output, int32_t block) {
  (void)residual;
  (void)compact;
  constexpr int32_t dwords_per_block = 256;
  zero_i32(output + block * dwords_per_block, dwords_per_block);
}

void full_c1r2_write_o_block(int32_t *compact, int32_t *output,
                             int32_t block) {
  (void)compact;
  constexpr int32_t dwords_per_block = 256;
  zero_i32(output + block * dwords_per_block, dwords_per_block);
}

} // extern "C"
