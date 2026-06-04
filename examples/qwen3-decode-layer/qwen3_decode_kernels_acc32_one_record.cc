// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include "qwen3_decode_kernels_acc32_impl.h"

extern "C" {

void q4nx_main16_record_cell_one_record_scheduler(
    bfloat16 *wt_ping, bfloat16 *wt_pong, int32_t *act_ping,
    int32_t *act_pong, int32_t *record_ping, int32_t *record_pong,
    int32_t group, int32_t row, int32_t num_rows, int32_t phase_limit) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  (void)group;
  (void)row;
  (void)num_rows;
  (void)phase_limit;
  int32_t record_toggle = 0;
  run_projection_body_acc32<1, qwen3::kQChunksPerRecord,
                            qwen3::kQCompactPacketId>(
      wt_ping, wt_pong, act_ping, act_pong, record_ping, record_pong,
      &record_toggle);
}

} // extern "C"
