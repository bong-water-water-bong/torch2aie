// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#ifndef MAIN16_STEADY_SECTION_WINDOW
#define MAIN16_STEADY_SECTION_WINDOW 0
#endif

namespace {

constexpr int kRows = 16;
constexpr int kGroupSize = 32;
constexpr int kQ4CellBytes = kRows;

using V16 = aie::vector<bfloat16, kRows>;
using V32 = aie::vector<bfloat16, kGroupSize>;
using Acc32 = aie::accum<accfloat, kGroupSize>;
using RawVec = v32bfloat16;
using RawAcc = v32accfloat;

__attribute__((always_inline)) static inline RawVec
expand_q4_cell(const uint8_t *__restrict qptr) {
  const uint4 *__restrict q4p = reinterpret_cast<const uint4 *>(qptr);
  aie::vector<uint4, kGroupSize> q4 =
      aie::load_v<kGroupSize, aie_dm_resource::d>(q4p);
  aie::vector<uint8, kGroupSize> q8 = aie::unpack(q4);
  V32 q = aie::to_float<bfloat16>(q8, 0);
  return static_cast<RawVec>(q);
}

__attribute__((always_inline)) static inline RawVec
broadcast_lane16(const V32 &act, int lane) {
  V16 half = aie::broadcast<bfloat16, kRows>(act.get(lane));
  return ::concat(static_cast<v16bfloat16>(half),
                  static_cast<v16bfloat16>(half));
}

__attribute__((always_inline)) static inline RawAcc zero_acc() {
  return broadcast_zero_to_v32accfloat();
}

__attribute__((always_inline)) static inline RawAcc mac_cell(RawAcc acc,
                                                            RawVec lhs,
                                                            RawVec rhs) {
  return mac_elem_32_conf(lhs, rhs, acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline RawAcc mul_cell(RawVec lhs,
                                                            RawVec rhs) {
  V32 lhs_v(lhs);
  V32 rhs_v(rhs);
  Acc32 acc = aie::mul(lhs_v, rhs_v);
  return static_cast<RawAcc>(acc);
}

__attribute__((always_inline)) static inline RawAcc sub_acc(RawAcc lhs,
                                                           RawAcc rhs) {
  Acc32 lhs_acc(lhs);
  Acc32 rhs_acc(rhs);
  Acc32 out = aie::sub(lhs_acc, rhs_acc);
  return static_cast<RawAcc>(out);
}

__attribute__((always_inline)) static inline RawVec coeff_from_acc(RawAcc acc) {
  return to_v32bfloat16(acc);
}

__attribute__((always_inline)) static inline RawVec
replace_lo_with_hi(RawVec dst, RawVec src) {
  return ::concat(::extract_v16bfloat16(src, 1),
                  ::extract_v16bfloat16(dst, 1));
}

__attribute__((always_inline)) static inline RawAcc
carry_lo_acc_half(RawAcc dst, RawAcc src) {
  return ::concat(::extract_v16accfloat(src, 0),
                  ::extract_v16accfloat(dst, 1));
}

__attribute__((always_inline)) static inline RawAcc
carry_hi_acc_half(RawAcc dst, RawAcc src) {
  return ::concat(::extract_v16accfloat(dst, 0),
                  ::extract_v16accfloat(src, 1));
}

#define PRODUCE_MUL_SUB_CONSUME(q, prod_lane, cons_lane)                       \
  do {                                                                         \
    RawVec prod_b = broadcast_lane16(act0, prod_lane);                         \
    RawAcc prod_acc = sub_acc(mul_cell(q, prod_b), zero);                      \
    RawVec coeff = coeff_from_acc(prod_acc);                                   \
    RawVec cons_b = broadcast_lane16(act0, cons_lane);                         \
    acc = mac_cell(acc, coeff, cons_b);                                        \
  } while (0)

#define PRODUCE_MAC_SUB_CONSUME(q, prod_lane, cons_lane)                       \
  do {                                                                         \
    RawVec prod_b = broadcast_lane16(act0, prod_lane);                         \
    RawAcc prod_acc = sub_acc(mac_cell(zero, q, prod_b), zero);                \
    RawVec coeff = coeff_from_acc(prod_acc);                                   \
    RawVec cons_b = broadcast_lane16(act0, cons_lane);                         \
    acc = mac_cell(acc, coeff, cons_b);                                        \
  } while (0)

#define PRODUCE_MAC_CONSUME(q, prod_lane, cons_lane)                           \
  do {                                                                         \
    RawVec prod_b = broadcast_lane16(act0, prod_lane);                         \
    RawAcc prod_acc = mac_cell(zero, q, prod_b);                               \
    RawVec coeff = coeff_from_acc(prod_acc);                                   \
    RawVec cons_b = broadcast_lane16(act0, cons_lane);                         \
    acc = mac_cell(acc, coeff, cons_b);                                        \
  } while (0)

#define PRODUCE_MAC_CONSUME_EXTRA(q, prod_lane, cons_lane)                     \
  do {                                                                         \
    RawVec prod_b = broadcast_lane16(act0, prod_lane);                         \
    RawAcc prod_acc = mac_cell(zero, q, prod_b);                               \
    RawVec coeff = coeff_from_acc(prod_acc);                                   \
    RawVec cons_b = broadcast_lane16(act0, cons_lane);                         \
    acc = mac_cell(acc, coeff, cons_b);                                        \
    acc = mac_cell(acc, q, prod_b);                                            \
  } while (0)

} // namespace

extern "C" {

void main16_q4nx_steady_section_probe(
    int32_t *__restrict q4_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const uint8_t *__restrict q4 = reinterpret_cast<const uint8_t *>(q4_words);
  const bfloat16 *__restrict act =
      reinterpret_cast<const bfloat16 *>(activation_words);
  bfloat16 *__restrict out = reinterpret_cast<bfloat16 *>(out_words);

  V32 act0 = aie::load_v<kGroupSize, aie_dm_resource::c>(act);
  RawAcc zero = zero_acc();
  RawAcc acc = zero_acc();

#if MAIN16_STEADY_SECTION_WINDOW == 0
  RawVec q0 = expand_q4_cell(q4 + 0 * kQ4CellBytes);
  PRODUCE_MUL_SUB_CONSUME(q0, 0, 16);
  PRODUCE_MAC_CONSUME_EXTRA(q0, 8, 24);

  RawVec q1 = expand_q4_cell(q4 + 1 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q1, 1, 17);
  PRODUCE_MAC_CONSUME(q1, 9, 25);

  RawVec q2 = expand_q4_cell(q4 + 2 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q2, 2, 18);
  PRODUCE_MAC_CONSUME(q2, 10, 26);

#elif MAIN16_STEADY_SECTION_WINDOW == 1
  RawVec q3 = expand_q4_cell(q4 + 3 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q3, 3, 19);
  PRODUCE_MAC_CONSUME(q3, 11, 27);

  RawVec q4v = expand_q4_cell(q4 + 4 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q4v, 4, 20);
  PRODUCE_MAC_CONSUME(q4v, 12, 28);

  RawVec q5 = expand_q4_cell(q4 + 5 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q5, 5, 21);
  PRODUCE_MAC_CONSUME(q5, 13, 29);

#elif MAIN16_STEADY_SECTION_WINDOW == 2
  RawVec q6 = expand_q4_cell(q4 + 6 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q6, 6, 22);
  PRODUCE_MAC_CONSUME(q6, 14, 30);

  RawVec q7 = expand_q4_cell(q4 + 7 * kQ4CellBytes);
  PRODUCE_MAC_SUB_CONSUME(q7, 7, 23);
  PRODUCE_MAC_CONSUME_EXTRA(q7, 15, 31);
#elif MAIN16_STEADY_SECTION_WINDOW == 3
  RawAcc acc1 = zero_acc();
  RawAcc acc3 = zero_acc();
  RawAcc acc4 = zero_acc();

  // Tail cells from the previous section.  The first operation must consume
  // them, matching MyLM's section boundary shape.
  RawVec prev_q9 = expand_q4_cell(q4 + 0 * kQ4CellBytes);
  RawVec prev_q10 = expand_q4_cell(q4 + 1 * kQ4CellBytes);
  acc1 = mac_cell(acc1, prev_q9, prev_q10);

  // vups/add/sub/convert for a previous q cell, consumed nearby.
  RawAcc deq9 = sub_acc(mul_cell(prev_q9, broadcast_lane16(act0, 0)), zero);
  RawVec coeff9 = coeff_from_acc(deq9);
  acc3 = mac_cell(acc3, coeff9, broadcast_lane16(act0, 16));

  // A second q cell produces a coeff and immediately forms a mixed half-vector.
  RawAcc deq10 = sub_acc(mac_cell(zero, prev_q10, broadcast_lane16(act0, 1)),
                         zero);
  RawVec coeff10 = coeff_from_acc(deq10);
  RawVec mixed = replace_lo_with_hi(coeff9, coeff10);
  RawVec q_cur = expand_q4_cell(q4 + 2 * kQ4CellBytes);
  acc4 = mac_cell(acc4, mixed, q_cur);

  // Late tail production for the next section.
  RawVec next_q9 = expand_q4_cell(q4 + 3 * kQ4CellBytes);
  RawAcc next_deq = sub_acc(mac_cell(zero, next_q9, broadcast_lane16(act0, 3)),
                            zero);
  RawVec next_coeff = coeff_from_acc(next_deq);
  acc4 = mac_cell(acc4, next_coeff, broadcast_lane16(act0, 19));

  acc = mac_cell(acc1, coeff_from_acc(acc3), broadcast_lane16(act0, 2));
  acc = mac_cell(acc, coeff_from_acc(acc4), broadcast_lane16(act0, 4));
#elif MAIN16_STEADY_SECTION_WINDOW == 4
  RawVec q0 = expand_q4_cell(q4 + 0 * kQ4CellBytes);
  RawVec q1 = expand_q4_cell(q4 + 1 * kQ4CellBytes);
  RawVec q2 = expand_q4_cell(q4 + 2 * kQ4CellBytes);

  RawAcc acc0 = mac_cell(zero_acc(), q0, q1);
  RawAcc acc1 = mac_cell(zero_acc(), q1, q2);
  RawAcc carried0 = carry_lo_acc_half(acc0, acc1);
  RawAcc carried1 = carry_hi_acc_half(acc1, acc0);
  RawVec coeff0 = coeff_from_acc(carried0);
  RawVec coeff1 = coeff_from_acc(carried1);
  acc = mac_cell(acc, coeff0, broadcast_lane16(act0, 0));
  acc = mac_cell(acc, coeff1, broadcast_lane16(act0, 1));
#else
#error "unsupported MAIN16_STEADY_SECTION_WINDOW"
#endif

  *reinterpret_cast<RawVec *>(out) = coeff_from_acc(acc);
}

} // extern "C"
