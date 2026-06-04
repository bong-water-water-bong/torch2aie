// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kHalfRows = 8;
constexpr int kRecordRows = 32;
constexpr int kActGroup = 32;
constexpr int kGroups = 1;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kActGroup * (kRows / 2);
using Vec8 = aie::vector<bfloat16, kHalfRows>;
using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kActGroup>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;

__attribute__((always_inline)) static inline Vec16 pack8(const Vec8 &lo,
                                                         const Vec8 &hi) {
  Vec16 out;
  out.insert(0, lo);
  out.insert(1, hi);
  return out;
}

__attribute__((always_inline)) static inline Vec32 duplicate16(const Vec16 &v) {
  Vec32 out;
  out.insert(0, v);
  out.insert(1, v);
  return out;
}

__attribute__((always_inline)) static inline Vec64
load_q4_quad(const uint8_t *__restrict q4_data) {
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(q4_data);
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

__attribute__((always_inline)) static inline v8accfloat
mac8_cell(const Vec8 &coeff8, const Vec32 &act_group, int lane,
          v8accfloat acc8, int half) {
  Vec8 zero8 = aie::zeros<bfloat16, kHalfRows>();
  Vec8 act8 = aie::broadcast<bfloat16, kHalfRows>(act_group.get(lane));
  Vec16 coeff16 = half == 0 ? pack8(coeff8, zero8) : pack8(zero8, coeff8);
  Vec16 act16 = half == 0 ? pack8(act8, zero8) : pack8(zero8, act8);
  v16accfloat acc16 = set_v16accfloat(half, acc8);
  v16accfloat out16 =
      mac_elem_16_conf(static_cast<v32bfloat16>(duplicate16(coeff16)),
                       static_cast<v32bfloat16>(duplicate16(act16)), acc16, 0,
                       0, 0);
  return extract_v8accfloat(out16, half);
}

__attribute__((always_inline)) static inline void
consume_q4_quad_acc8(v8accfloat &acc_lo, v8accfloat &acc_hi,
                     const uint8_t *__restrict q4_quad, const Vec16 &scale,
                     const Vec16 &offset, const Vec32 &act_group, int dim) {
  Vec64 q = load_q4_quad(q4_quad);

  Vec16 c0 = dequant_half(q.template extract<kRows>(0), scale, offset);
  acc_lo = mac8_cell(c0.template extract<kHalfRows>(0), act_group, dim, acc_lo,
                     0);
  acc_hi = mac8_cell(c0.template extract<kHalfRows>(1), act_group, dim, acc_hi,
                     1);
  chess_separator_scheduler();

  Vec16 c1 = dequant_half(q.template extract<kRows>(1), scale, offset);
  acc_lo = mac8_cell(c1.template extract<kHalfRows>(0), act_group, dim + 1,
                     acc_lo, 0);
  acc_hi = mac8_cell(c1.template extract<kHalfRows>(1), act_group, dim + 1,
                     acc_hi, 1);
  chess_separator_scheduler();

  Vec16 c2 = dequant_half(q.template extract<kRows>(2), scale, offset);
  acc_lo = mac8_cell(c2.template extract<kHalfRows>(0), act_group, dim + 2,
                     acc_lo, 0);
  acc_hi = mac8_cell(c2.template extract<kHalfRows>(1), act_group, dim + 2,
                     acc_hi, 1);
  chess_separator_scheduler();

  Vec16 c3 = dequant_half(q.template extract<kRows>(3), scale, offset);
  acc_lo = mac8_cell(c3.template extract<kHalfRows>(0), act_group, dim + 3,
                     acc_lo, 0);
  acc_hi = mac8_cell(c3.template extract<kHalfRows>(1), act_group, dim + 3,
                     acc_hi, 1);
  chess_separator_scheduler();
}

__attribute__((always_inline)) static inline v16accfloat
join_acc8(v8accfloat lo, v8accfloat hi) {
  v16accfloat out = undef_v16accfloat();
  out = insert(out, 0, lo);
  return insert(out, 1, hi);
}

__attribute__((always_inline)) static inline void
store_record(v8accfloat acc0_lo, v8accfloat acc0_hi, v8accfloat acc1_lo,
             v8accfloat acc1_hi, int32_t *__restrict record_words) {
  record_words[0] = 0x1;
  bfloat16 *__restrict payload =
      reinterpret_cast<bfloat16 *>(record_words + 1);
  *reinterpret_cast<v16bfloat16 *>(payload) =
      to_v16bfloat16_conf(join_acc8(acc0_lo, acc0_hi), rnd_conv_even);
  *reinterpret_cast<v16bfloat16 *>(payload + kRows) =
      to_v16bfloat16_conf(join_acc8(acc1_lo, acc1_hi), rnd_conv_even);
}

} // namespace

extern "C" {

void main16_q4nx_record_cell_1g_acc8_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict record_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  const uint8_t *__restrict q4_lane_data =
      reinterpret_cast<const uint8_t *>(q4_lane_words);
  const bfloat16 *__restrict scale =
      reinterpret_cast<const bfloat16 *>(scale_words);
  const bfloat16 *__restrict offset =
      reinterpret_cast<const bfloat16 *>(offset_words);
  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);

  const uint8_t *__restrict lane0_q4 = q4_lane_data;
  const uint8_t *__restrict lane1_q4 =
      q4_lane_data + kGroups * kQ4GroupBytes;
  Vec16 scale0 = aie::load_v<kRows, aie_dm_resource::a>(scale);
  Vec16 offset0 = aie::load_v<kRows, aie_dm_resource::b>(offset);
  Vec16 scale1 = aie::load_v<kRows, aie_dm_resource::a>(scale + kRows);
  Vec16 offset1 = aie::load_v<kRows, aie_dm_resource::b>(offset + kRows);
  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(activation);

  v8accfloat acc0_lo = extract_v8accfloat(broadcast_zero_to_v16accfloat(), 0);
  v8accfloat acc0_hi = extract_v8accfloat(broadcast_zero_to_v16accfloat(), 1);
  v8accfloat acc1_lo = extract_v8accfloat(broadcast_zero_to_v16accfloat(), 0);
  v8accfloat acc1_hi = extract_v8accfloat(broadcast_zero_to_v16accfloat(), 1);

  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 0 * kQ4QuadBytes, scale0,
                       offset0, act0, 0);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 0 * kQ4QuadBytes, scale1,
                       offset1, act0, 0);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 1 * kQ4QuadBytes, scale0,
                       offset0, act0, 4);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 1 * kQ4QuadBytes, scale1,
                       offset1, act0, 4);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 2 * kQ4QuadBytes, scale0,
                       offset0, act0, 8);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 2 * kQ4QuadBytes, scale1,
                       offset1, act0, 8);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 3 * kQ4QuadBytes, scale0,
                       offset0, act0, 12);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 3 * kQ4QuadBytes, scale1,
                       offset1, act0, 12);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 4 * kQ4QuadBytes, scale0,
                       offset0, act0, 16);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 4 * kQ4QuadBytes, scale1,
                       offset1, act0, 16);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 5 * kQ4QuadBytes, scale0,
                       offset0, act0, 20);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 5 * kQ4QuadBytes, scale1,
                       offset1, act0, 20);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 6 * kQ4QuadBytes, scale0,
                       offset0, act0, 24);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 6 * kQ4QuadBytes, scale1,
                       offset1, act0, 24);
  consume_q4_quad_acc8(acc0_lo, acc0_hi, lane0_q4 + 7 * kQ4QuadBytes, scale0,
                       offset0, act0, 28);
  consume_q4_quad_acc8(acc1_lo, acc1_hi, lane1_q4 + 7 * kQ4QuadBytes, scale1,
                       offset1, act0, 28);

  store_record(acc0_lo, acc0_hi, acc1_lo, acc1_hi, record_words);
}

} // extern "C"
