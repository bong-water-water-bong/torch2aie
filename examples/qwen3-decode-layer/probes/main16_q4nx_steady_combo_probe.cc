// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#ifndef MAIN16_STEADY_COMBO_KIND
#define MAIN16_STEADY_COMBO_KIND 0
#endif

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kQ4GroupBytes = kGroupSize * (kRows / 2);

using V16 = aie::vector<bfloat16, kRows>;
using V32 = aie::vector<bfloat16, kGroupSize>;
using A32 = v32accfloat;

__attribute__((always_inline)) static inline V32 pack_halves(const V16 &lo,
                                                             const V16 &hi) {
  V32 v;
  v.insert(0, lo);
  v.insert(1, hi);
  return v;
}

__attribute__((always_inline)) static inline v32bfloat16
pack_halves_raw(const V16 &lo, const V16 &hi) {
  return static_cast<v32bfloat16>(pack_halves(lo, hi));
}

__attribute__((always_inline)) static inline A32
mac_halves(A32 acc, const V16 &lhs_lo, const V16 &lhs_hi,
           const V16 &rhs_lo, const V16 &rhs_hi) {
  return mac_elem_32_conf(pack_halves_raw(lhs_lo, lhs_hi),
                          pack_halves_raw(rhs_lo, rhs_hi), acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline A32
addmac_halves(A32 acc, A32 acc_hi, const V16 &lhs_lo, const V16 &lhs_hi,
              const V16 &rhs_lo, const V16 &rhs_hi) {
  return addmac_elem_32_conf(pack_halves_raw(lhs_lo, lhs_hi),
                             pack_halves_raw(rhs_lo, rhs_hi), acc_hi, acc, 0,
                             0, 0, 0);
}

__attribute__((always_inline)) static inline A32 concat_acc_halves(A32 lo_acc,
                                                                   A32 hi_acc) {
  v16accfloat lo = ::extract_v16accfloat(lo_acc, 0);
  v16accfloat hi = ::extract_v16accfloat(hi_acc, 1);
  return ::concat(lo, hi);
}

__attribute__((always_inline)) static inline V16
dequant_half(const V16 &q, const V16 &scale, const V16 &offset) {
  aie::accum<accfloat, kRows> scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline void
q4_coeff_pair(const uint8_t *__restrict qptr,
              const bfloat16 *__restrict scale,
              const bfloat16 *__restrict offset, V16 &c0, V16 &c1) {
  const uint4 *__restrict q4p = reinterpret_cast<const uint4 *>(qptr);
  aie::vector<uint4, kRows * 2> q4 =
      aie::load_v<kRows * 2, aie_dm_resource::d>(q4p);
  aie::vector<uint8, kRows * 2> q8 = aie::unpack(q4);
  V32 q = aie::to_float<bfloat16>(q8, 0);
  V16 scale_v = aie::load_v<kRows, aie_dm_resource::a>(scale);
  V16 offset_v = aie::load_v<kRows, aie_dm_resource::b>(offset);
  c0 = dequant_half(q.template extract<kRows>(0), scale_v, offset_v);
  c1 = dequant_half(q.template extract<kRows>(1), scale_v, offset_v);
}

__attribute__((always_inline)) static inline void
act_pair(const bfloat16 *__restrict act, int dim_base, V16 &a0, V16 &a1) {
  V32 actv = aie::load_v<kGroupSize, aie_dm_resource::c>(act);
  a0 = aie::broadcast<bfloat16, kRows>(actv.get(dim_base));
  a1 = aie::broadcast<bfloat16, kRows>(actv.get(dim_base + 1));
}

__attribute__((always_inline)) static inline void
load_group_pair(const uint8_t *__restrict qptr,
                const bfloat16 *__restrict scale,
                const bfloat16 *__restrict offset,
                const bfloat16 *__restrict act, int dim_base, V16 &c0,
                V16 &c1, V16 &a0, V16 &a1) {
  q4_coeff_pair(qptr, scale, offset, c0, c1);
  act_pair(act, dim_base, a0, a1);
}

} // namespace

extern "C" {

void main16_q4nx_steady_combo_probe(
    int32_t *__restrict q4_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const uint8_t *__restrict q4 = reinterpret_cast<const uint8_t *>(q4_words);
  const bfloat16 *__restrict scale =
      reinterpret_cast<const bfloat16 *>(scale_words);
  const bfloat16 *__restrict offset =
      reinterpret_cast<const bfloat16 *>(offset_words);
  const bfloat16 *__restrict act =
      reinterpret_cast<const bfloat16 *>(activation_words);
  bfloat16 *__restrict out = reinterpret_cast<bfloat16 *>(out_words);

  V16 c0_0;
  V16 c0_1;
  V16 a0_0;
  V16 a0_1;
  load_group_pair(q4, scale, offset, act, 0, c0_0, c0_1, a0_0, a0_1);

#if MAIN16_STEADY_COMBO_KIND == 0
  A32 acc = broadcast_zero_to_v32accfloat();
  acc = mac_halves(acc, c0_0, c0_1, a0_0, a0_1);
#else
  V16 c1_0;
  V16 c1_1;
  V16 a1_0;
  V16 a1_1;
  load_group_pair(q4 + kQ4GroupBytes, scale + kRows, offset + kRows,
                  act + kGroupSize, 0, c1_0, c1_1, a1_0, a1_1);

#if MAIN16_STEADY_COMBO_KIND == 1
  A32 acc = broadcast_zero_to_v32accfloat();
  acc = mac_halves(acc, c0_1, c1_0, a0_1, a1_0);
#elif MAIN16_STEADY_COMBO_KIND == 2
  A32 acc0 = broadcast_zero_to_v32accfloat();
  A32 acc1 = broadcast_zero_to_v32accfloat();
  acc0 = mac_halves(acc0, c0_0, c0_1, a0_0, a0_1);
  acc1 = mac_halves(acc1, c1_0, c1_1, a1_0, a1_1);
  A32 acc = concat_acc_halves(acc0, acc1);
#elif MAIN16_STEADY_COMBO_KIND == 3
  A32 acc = broadcast_zero_to_v32accfloat();
  A32 acc_hi = broadcast_zero_to_v32accfloat();
  acc_hi = mac_halves(acc_hi, c0_0, c0_1, a0_0, a0_1);
  acc = addmac_halves(acc, acc_hi, c0_1, c1_0, a0_1, a1_0);
#elif MAIN16_STEADY_COMBO_KIND == 4
  A32 acc0 = broadcast_zero_to_v32accfloat();
  A32 acc1 = broadcast_zero_to_v32accfloat();
  acc0 = mac_halves(acc0, c0_0, c0_1, a0_0, a0_1);
  acc1 = mac_halves(acc1, c1_0, c1_1, a1_0, a1_1);
  A32 mixed = concat_acc_halves(acc0, acc1);
  A32 acc = addmac_halves(mixed, acc0, c0_1, c1_0, a0_1, a1_0);
#else
#error "unsupported MAIN16_STEADY_COMBO_KIND"
#endif
#endif

  *reinterpret_cast<v32bfloat16 *>(out) = to_v32bfloat16(acc);
}

} // extern "C"
