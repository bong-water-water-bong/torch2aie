// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kGroupSize * (kRows / 2);

using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kGroupSize>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;

#ifndef MAIN16_CELL_STATE_ACCUMS
#define MAIN16_CELL_STATE_ACCUMS 1
#endif

__attribute__((always_inline)) static inline Vec32 pack_halves(const Vec16 &lo,
                                                               const Vec16 &hi) {
  Vec32 out;
  out.insert(0, lo);
  out.insert(1, hi);
  return out;
}

__attribute__((always_inline)) static inline Vec16
act_lane(const Vec32 &act_group, int lane) {
  return aie::broadcast<bfloat16, kRows>(act_group.get(lane));
}

__attribute__((always_inline)) static inline Vec64
load_q4_quad(const uint8_t *__restrict q4_group, int dim_quad) {
  const uint4 *__restrict q4_ptr =
      reinterpret_cast<const uint4 *>(q4_group + dim_quad * kQ4QuadBytes);
  aie::vector<uint4, kRows * 4> q4 =
      aie::load_v<kRows * 4, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 4> q8 = aie::unpack(q4);
  return aie::to_float<bfloat16>(q8, 0);
}

__attribute__((always_inline)) static inline Vec16
dequant_half(const Vec16 &q, const Vec16 &scale, const Vec16 &offset) {
  aie::accum<accfloat, kRows> scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline v32accfloat
mac_mixed_halves(v32accfloat acc, const Vec16 &left_lo,
                 const Vec16 &left_hi, const Vec16 &right_lo,
                 const Vec16 &right_hi) {
  Vec32 left = pack_halves(left_lo, left_hi);
  Vec32 right = pack_halves(right_lo, right_hi);
  return mac_elem_32_conf(static_cast<v32bfloat16>(left),
                          static_cast<v32bfloat16>(right), acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline void
load_group_cells(const uint8_t *__restrict q4_group,
                 const bfloat16 *__restrict scale_group,
                 const bfloat16 *__restrict offset_group,
                 const bfloat16 *__restrict activation_group, Vec16 &coeff0,
                 Vec16 &coeff1, Vec16 &act0, Vec16 &act1) {
  Vec16 scale = aie::load_v<kRows, aie_dm_resource::a>(scale_group);
  Vec16 offset = aie::load_v<kRows, aie_dm_resource::b>(offset_group);
  Vec32 act = aie::load_v<kGroupSize, aie_dm_resource::c>(activation_group);
  Vec64 q = load_q4_quad(q4_group, 0);

  coeff0 = dequant_half(q.template extract<kRows>(0), scale, offset);
  coeff1 = dequant_half(q.template extract<kRows>(1), scale, offset);
  act0 = act_lane(act, 0);
  act1 = act_lane(act, 1);
}

__attribute__((always_inline)) static inline v32accfloat
fill_to_steady(v32accfloat acc, const uint8_t *__restrict q4_group,
               const bfloat16 *__restrict scale_group,
               const bfloat16 *__restrict offset_group,
               const bfloat16 *__restrict activation_group,
               Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
               Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_group, scale_group, offset_group, activation_group,
                   coeff0, coeff1, act0, act1);

  acc = mac_mixed_halves(acc, coeff0, coeff1, act0, act1);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
  return acc;
}

template <int Group>
__attribute__((always_inline)) static inline v32accfloat
steady_to_steady(v32accfloat acc, const uint8_t *__restrict q4_base,
                 const bfloat16 *__restrict scale_base,
                 const bfloat16 *__restrict offset_base,
                 const bfloat16 *__restrict activation_base,
                 Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
                 Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_base + Group * kQ4GroupBytes, scale_base + Group * kRows,
                   offset_base + Group * kRows,
                   activation_base + Group * kGroupSize, coeff0, coeff1, act0,
                   act1);

  acc = mac_mixed_halves(acc, carry_coeff_hi, coeff0, carry_act_hi, act0);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
  return acc;
}

__attribute__((always_inline)) static inline void
fill_to_steady2(v32accfloat &acc1, v32accfloat &acc3,
                const uint8_t *__restrict q4_group,
                const bfloat16 *__restrict scale_group,
                const bfloat16 *__restrict offset_group,
                const bfloat16 *__restrict activation_group,
                Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
                Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_group, scale_group, offset_group, activation_group,
                   coeff0, coeff1, act0, act1);

  acc1 = mac_mixed_halves(acc1, coeff0, coeff1, act0, act1);
  acc3 = mac_mixed_halves(acc3, coeff1, coeff0, act1, act0);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
}

template <int Group>
__attribute__((always_inline)) static inline void
steady_to_steady2(v32accfloat &acc1, v32accfloat &acc3,
                  const uint8_t *__restrict q4_base,
                  const bfloat16 *__restrict scale_base,
                  const bfloat16 *__restrict offset_base,
                  const bfloat16 *__restrict activation_base,
                  Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
                  Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_base + Group * kQ4GroupBytes, scale_base + Group * kRows,
                   offset_base + Group * kRows,
                   activation_base + Group * kGroupSize, coeff0, coeff1, act0,
                   act1);

  acc1 = mac_mixed_halves(acc1, carry_coeff_hi, coeff0, carry_act_hi, act0);
  acc3 = mac_mixed_halves(acc3, carry_coeff_lo, coeff1, carry_act_lo, act1);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
}

__attribute__((always_inline)) static inline void
fill_to_steady3(v32accfloat &acc1, v32accfloat &acc3, v32accfloat &acc4,
                const uint8_t *__restrict q4_group,
                const bfloat16 *__restrict scale_group,
                const bfloat16 *__restrict offset_group,
                const bfloat16 *__restrict activation_group,
                Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
                Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_group, scale_group, offset_group, activation_group,
                   coeff0, coeff1, act0, act1);

  acc1 = mac_mixed_halves(acc1, coeff0, coeff1, act0, act1);
  acc3 = mac_mixed_halves(acc3, coeff1, coeff0, act1, act0);
  acc4 = mac_mixed_halves(acc4, coeff0, coeff0, act1, act1);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
}

template <int Group>
__attribute__((always_inline)) static inline void
steady_to_steady3(v32accfloat &acc1, v32accfloat &acc3, v32accfloat &acc4,
                  const uint8_t *__restrict q4_base,
                  const bfloat16 *__restrict scale_base,
                  const bfloat16 *__restrict offset_base,
                  const bfloat16 *__restrict activation_base,
                  Vec16 &carry_coeff_lo, Vec16 &carry_coeff_hi,
                  Vec16 &carry_act_lo, Vec16 &carry_act_hi) {
  Vec16 coeff0;
  Vec16 coeff1;
  Vec16 act0;
  Vec16 act1;
  load_group_cells(q4_base + Group * kQ4GroupBytes, scale_base + Group * kRows,
                   offset_base + Group * kRows,
                   activation_base + Group * kGroupSize, coeff0, coeff1, act0,
                   act1);

  acc1 = mac_mixed_halves(acc1, carry_coeff_hi, coeff0, carry_act_hi, act0);
  acc3 = mac_mixed_halves(acc3, carry_coeff_lo, coeff1, carry_act_lo, act1);
  acc4 = mac_mixed_halves(acc4, coeff0, carry_coeff_lo, act1, carry_act_hi);
  carry_coeff_lo = coeff0;
  carry_coeff_hi = coeff1;
  carry_act_lo = act0;
  carry_act_hi = act1;
}

__attribute__((always_inline)) static inline void
store_acc(v32accfloat acc, bfloat16 *__restrict output) {
  *reinterpret_cast<v32bfloat16 *>(output) = to_v32bfloat16(acc);
}

} // namespace

extern "C" {

void main16_q4nx_cell_state_carry_i32_probe(
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

  v32accfloat acc = broadcast_zero_to_v32accfloat();
  Vec16 carry_coeff_lo;
  Vec16 carry_coeff_hi;
  Vec16 carry_act_lo;
  Vec16 carry_act_hi;

#if MAIN16_CELL_STATE_ACCUMS >= 3
  v32accfloat acc3 = broadcast_zero_to_v32accfloat();
  v32accfloat acc4 = broadcast_zero_to_v32accfloat();

  fill_to_steady3(acc, acc3, acc4, q4, scale, offset, activation,
                  carry_coeff_lo, carry_coeff_hi, carry_act_lo, carry_act_hi);
  steady_to_steady3<1>(acc, acc3, acc4, q4, scale, offset, activation,
                       carry_coeff_lo, carry_coeff_hi, carry_act_lo,
                       carry_act_hi);
  steady_to_steady3<2>(acc, acc3, acc4, q4, scale, offset, activation,
                       carry_coeff_lo, carry_coeff_hi, carry_act_lo,
                       carry_act_hi);

  store_acc(acc, output);
  store_acc(acc3, output + kGroupSize);
  store_acc(acc4, output + kGroupSize * 2);
#elif MAIN16_CELL_STATE_ACCUMS == 2
  v32accfloat acc3 = broadcast_zero_to_v32accfloat();

  fill_to_steady2(acc, acc3, q4, scale, offset, activation, carry_coeff_lo,
                  carry_coeff_hi, carry_act_lo, carry_act_hi);
  steady_to_steady2<1>(acc, acc3, q4, scale, offset, activation,
                       carry_coeff_lo, carry_coeff_hi, carry_act_lo,
                       carry_act_hi);
  steady_to_steady2<2>(acc, acc3, q4, scale, offset, activation,
                       carry_coeff_lo, carry_coeff_hi, carry_act_lo,
                       carry_act_hi);

  store_acc(acc, output);
  store_acc(acc3, output + kGroupSize);
#else
  acc = fill_to_steady(acc, q4, scale, offset, activation, carry_coeff_lo,
                       carry_coeff_hi, carry_act_lo, carry_act_hi);
  acc = steady_to_steady<1>(acc, q4, scale, offset, activation, carry_coeff_lo,
                            carry_coeff_hi, carry_act_lo, carry_act_hi);
  acc = steady_to_steady<2>(acc, q4, scale, offset, activation, carry_coeff_lo,
                            carry_coeff_hi, carry_act_lo, carry_act_hi);

  store_acc(acc, output);
#endif
}

} // extern "C"
