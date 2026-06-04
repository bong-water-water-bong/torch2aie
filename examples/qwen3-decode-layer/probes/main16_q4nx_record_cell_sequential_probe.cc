// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#define MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES 1
#define MAIN16_BOUNDED_ENABLE_MAC32 1
#define MAIN16_BOUNDED_ENABLE_DUAL_MAC32 1
#define MAIN16_BOUNDED_DUAL_SKIP_2G 1
#define MAIN16_BOUNDED_DUAL_SKIP_3G 1
#include "main16_q4nx_exact_bounded_window_probe.cc"

extern "C" {

void main16_q4nx_record_cell_2g_sequential_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict record_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  uint8_t *__restrict q4_lane_data =
      reinterpret_cast<uint8_t *>(q4_lane_words);
  bfloat16 *__restrict scale = reinterpret_cast<bfloat16 *>(scale_words);
  bfloat16 *__restrict offset = reinterpret_cast<bfloat16 *>(offset_words);
  bfloat16 *__restrict activation =
      reinterpret_cast<bfloat16 *>(activation_words);
  bfloat16 *__restrict payload =
      reinterpret_cast<bfloat16 *>(record_words + 1);

  record_words[0] = 0x1;
  run_2g_lane_mac32(q4_lane_data, scale, offset, activation, 0, payload);
  run_2g_lane_mac32(q4_lane_data + 2 * kQ4GroupBytes, scale, offset,
                    activation, kRows, payload);
}

} // extern "C"
