// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <stdint.h>

extern "C" {

void ffn_swiglu_slice_bf16_inputs(int32_t *input, bfloat16 *output,
                                  int32_t dwords, int32_t slice) {
  (void)input;
  (void)slice;
  for (int32_t idx = 0; idx < dwords; idx++)
      chess_prepare_for_pipelining chess_loop_range(512, 512) {
    output[idx] = static_cast<bfloat16>(0.0f);
  }
}

} // extern "C"
