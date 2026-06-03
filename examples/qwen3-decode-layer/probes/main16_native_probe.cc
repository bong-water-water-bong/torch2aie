// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <adf/intrinsics.h>
#include <stdint.h>

extern "C" {

void main16_native_unpack_probe(uint8_t *__restrict packed,
                                uint16_t *__restrict unpacked) {
  v64uint4 q4 = *reinterpret_cast<const v64uint4 *>(packed);
  v64uint8 q8 = unpack(q4);
  v64uint16 q16 = unpack(q8);
  *reinterpret_cast<v64uint16 *>(unpacked) = q16;
}

void main16_native_mac_probe(bfloat16 *__restrict coeff,
                             bfloat16 *__restrict activation,
                             bfloat16 *__restrict output) {
  v32bfloat16 coeff_vec = *reinterpret_cast<const v32bfloat16 *>(coeff);
  v32uint16 act_bits = *reinterpret_cast<const v32uint16 *>(activation);
  v32bfloat16 act_vec = (v32bfloat16)broadcast_elem(act_bits, 0);
  v16accfloat acc = broadcast_zero_to_v16accfloat();
  acc = mac_elem_16_conf(coeff_vec, act_vec, acc, 0, 0, 0);
  v16bfloat16 result = to_v16bfloat16_conf(acc, rnd_conv_even);
  *reinterpret_cast<v16bfloat16 *>(output) = result;
}

} // extern "C"
