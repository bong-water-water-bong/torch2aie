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

void bitnet_postprocess_absorb_qkv_payload_record(
    int32_t *record_payload, int32_t *q_body, int32_t *k_body, int32_t *v_body,
    int32_t record_index) {
  (void)record_payload;
  (void)q_body;
  (void)k_body;
  (void)v_body;
  (void)record_index;
}

void bitnet_postprocess_body_payload(
    int32_t *q_body, int32_t *k_body, int32_t *v_body, int32_t *qk_rope_side,
    int32_t *q_payload, int32_t *current_k, int32_t *current_v,
    int32_t *current_token_buf, int32_t q_dwords, int32_t current_dwords) {
  (void)q_body;
  (void)k_body;
  (void)v_body;
  (void)qk_rope_side;
  (void)current_token_buf;
  zero_i32(q_payload, q_dwords);
  zero_i32(current_k, current_dwords);
  zero_i32(current_v, current_dwords);
}

void qwen3_postprocess_q4nx_qkv_payload(
    int32_t *qkv_body, int32_t *qk_rope_side, int32_t *q_payload,
    int32_t *current_k, int32_t *current_v, int32_t *current_token_buf,
    int32_t q_dwords, int32_t current_dwords) {
  bitnet_postprocess_body_payload(qkv_body, qkv_body, qkv_body, qk_rope_side,
                                      q_payload, current_k, current_v,
                                      current_token_buf, q_dwords,
                                      current_dwords);
}

} // extern "C"
