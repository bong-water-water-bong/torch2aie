// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kGroups = 8;
constexpr int kPairs = 2;
constexpr int kQ4PairBytes = kRows;
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

__attribute__((always_inline)) static inline A32
mac_halves(A32 acc, const V16 &lhs_lo, const V16 &lhs_hi,
           const V16 &rhs_lo, const V16 &rhs_hi) {
  V32 lhs = pack_halves(lhs_lo, lhs_hi);
  V32 rhs = pack_halves(rhs_lo, rhs_hi);
  return mac_elem_32_conf(static_cast<v32bfloat16>(lhs),
                          static_cast<v32bfloat16>(rhs), acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline V16
dequant_half(const V16 &q, const V16 &scale, const V16 &offset) {
  aie::accum<accfloat, kRows> scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline void
load_exact_coeff_pair(const uint8_t *__restrict qptr,
                      const bfloat16 *__restrict scale,
                      const bfloat16 *__restrict offset, V16 &coeff0,
                      V16 &coeff1) {
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(qptr);
  aie::vector<uint4, kRows * 2> q4 =
      aie::load_v<kRows * 2, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 2> q8 = aie::unpack(q4);
  V32 q = aie::to_float<bfloat16>(q8, 0);
  V16 scale_v = aie::load_v<kRows, aie_dm_resource::a>(scale);
  V16 offset_v = aie::load_v<kRows, aie_dm_resource::b>(offset);
  coeff0 = dequant_half(q.template extract<kRows>(0), scale_v, offset_v);
  coeff1 = dequant_half(q.template extract<kRows>(1), scale_v, offset_v);
}

__attribute__((always_inline)) static inline void
load_act_pair(const bfloat16 *__restrict act, int dim_base, V16 &act0,
              V16 &act1) {
  V32 act_group = aie::load_v<kGroupSize, aie_dm_resource::c>(act);
  act0 = aie::broadcast<bfloat16, kRows>(act_group.get(dim_base));
  act1 = aie::broadcast<bfloat16, kRows>(act_group.get(dim_base + 1));
}

__attribute__((always_inline)) static inline void
steady_transition(A32 &acc, V16 &carry_coeff_lo, V16 &carry_coeff_hi,
                  V16 &carry_act_lo, V16 &carry_act_hi,
                  const uint8_t *__restrict qptr,
                  const bfloat16 *__restrict scale,
                  const bfloat16 *__restrict offset,
                  const bfloat16 *__restrict act, int dim_base) {
  V16 new_coeff0;
  V16 new_coeff1;
  V16 new_act0;
  V16 new_act1;

  load_exact_coeff_pair(qptr, scale, offset, new_coeff0, new_coeff1);
  load_act_pair(act, dim_base, new_act0, new_act1);

  acc = mac_halves(acc, carry_coeff_hi, new_coeff0, carry_act_hi, new_act0);

  carry_coeff_lo = new_coeff0;
  carry_coeff_hi = new_coeff1;
  carry_act_lo = new_act0;
  carry_act_hi = new_act1;
}

template <int DimBase>
__attribute__((always_inline)) static inline void
run_pair_chain(A32 &acc, const uint8_t *__restrict q4_pair,
               const bfloat16 *__restrict scale,
               const bfloat16 *__restrict offset,
               const bfloat16 *__restrict activation) {
  static_assert(DimBase >= 0 && DimBase + 1 < kGroupSize);

  V16 c0;
  V16 c1;
  V16 a0;
  V16 a1;

  load_exact_coeff_pair(q4_pair, scale, offset, c0, c1);
  load_act_pair(activation, DimBase, a0, a1);

  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 1 * kQ4GroupBytes,
                    scale + 1 * kRows, offset + 1 * kRows,
                    activation + 1 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 2 * kQ4GroupBytes,
                    scale + 2 * kRows, offset + 2 * kRows,
                    activation + 2 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 3 * kQ4GroupBytes,
                    scale + 3 * kRows, offset + 3 * kRows,
                    activation + 3 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 4 * kQ4GroupBytes,
                    scale + 4 * kRows, offset + 4 * kRows,
                    activation + 4 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 5 * kQ4GroupBytes,
                    scale + 5 * kRows, offset + 5 * kRows,
                    activation + 5 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 6 * kQ4GroupBytes,
                    scale + 6 * kRows, offset + 6 * kRows,
                    activation + 6 * kGroupSize, DimBase);
  steady_transition(acc, c0, c1, a0, a1,
                    q4_pair + 7 * kQ4GroupBytes,
                    scale + 7 * kRows, offset + 7 * kRows,
                    activation + 7 * kGroupSize, DimBase);
}

__attribute__((always_inline)) static inline void
store_acc(A32 acc, bfloat16 *__restrict output) {
  *reinterpret_cast<v32bfloat16 *>(output) = to_v32bfloat16(acc);
}

} // namespace

extern "C" {

void main16_q4nx_steady_cell_i32_probe(
    int32_t *__restrict q4_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict output_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const uint8_t *__restrict q4 = reinterpret_cast<const uint8_t *>(q4_words);
  const bfloat16 *__restrict scale =
      reinterpret_cast<const bfloat16 *>(scale_words);
  const bfloat16 *__restrict offset =
      reinterpret_cast<const bfloat16 *>(offset_words);
  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);
  bfloat16 *__restrict output = reinterpret_cast<bfloat16 *>(output_words);

  A32 acc = broadcast_zero_to_v32accfloat();

  run_pair_chain<0>(acc, q4, scale, offset, activation);
  run_pair_chain<2>(acc, q4 + kQ4PairBytes, scale, offset, activation);

  store_acc(acc, output);
}

} // extern "C"
