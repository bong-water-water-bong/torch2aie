// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kRecordRows = 32;
constexpr int kActGroup = 32;
constexpr int kGroups2 = 2;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kActGroup * (kRows / 2);
using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kActGroup>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;

#ifndef MAIN16_RECORD_CELL_ENTRY
#define MAIN16_RECORD_CELL_ENTRY main16_q4nx_record_cell_2g_i32_probe
#endif

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

__attribute__((always_inline)) static inline Vec32
pack_halves(const Vec16 &lo, const Vec16 &hi) {
  Vec32 out;
  out.insert(0, lo);
  out.insert(1, hi);
  return out;
}

__attribute__((always_inline)) static inline Vec32
act_pair(const Vec32 &act_group, int lane0, int lane1) {
  Vec16 a0 = aie::broadcast<bfloat16, kRows>(act_group.get(lane0));
  Vec16 a1 = aie::broadcast<bfloat16, kRows>(act_group.get(lane1));
  return pack_halves(a0, a1);
}

__attribute__((always_inline)) static inline Vec32
duplicate_half(const Vec16 &v) {
  return pack_halves(v, v);
}

__attribute__((always_inline)) static inline v16accfloat
mac_single_dim(const Vec16 &coeff, const Vec32 &act_group, int lane,
               v16accfloat acc) {
  Vec16 act = aie::broadcast<bfloat16, kRows>(act_group.get(lane));
  return mac_elem_16_conf(static_cast<v32bfloat16>(duplicate_half(coeff)),
                          static_cast<v32bfloat16>(duplicate_half(act)), acc,
                          0, 0, 0);
}

__attribute__((always_inline)) static inline v16accfloat
mac_dim_pair(const Vec16 &coeff0, const Vec16 &coeff1,
             const Vec32 &act_group, int lane0, int lane1, v16accfloat acc) {
#ifdef MAIN16_RECORD_CELL_USE_MAC16
  v16accfloat acc0 = mac_single_dim(coeff0, act_group, lane0, acc);
  return mac_single_dim(coeff1, act_group, lane1, acc0);
#else
  v32accfloat products =
      mac_elem_32_conf(static_cast<v32bfloat16>(pack_halves(coeff0, coeff1)),
                       static_cast<v32bfloat16>(act_pair(act_group, lane0, lane1)),
                       broadcast_zero_to_v32accfloat(), 0, 0, 0);
  v16accfloat acc0 = add(acc, extract_v16accfloat(products, 0));
  return add(acc0, extract_v16accfloat(products, 1));
#endif
}

__attribute__((always_inline)) static inline void
consume_q4_quad(v16accfloat &acc, const uint8_t *__restrict q4_quad,
                const Vec16 &scale, const Vec16 &offset,
                const Vec32 &act_group, int dim) {
  Vec64 q = load_q4_quad(q4_quad);
  Vec16 q0 = q.template extract<kRows>(0);
  Vec16 q1 = q.template extract<kRows>(1);
  acc = mac_dim_pair(dequant_half(q0, scale, offset),
                     dequant_half(q1, scale, offset), act_group, dim, dim + 1,
                     acc);
  chess_separator_scheduler();

  Vec16 q2 = q.template extract<kRows>(2);
  Vec16 q3 = q.template extract<kRows>(3);
  acc = mac_dim_pair(dequant_half(q2, scale, offset),
                     dequant_half(q3, scale, offset), act_group, dim + 2,
                     dim + 3, acc);
  chess_separator_scheduler();
}

__attribute__((always_inline)) static inline void
consume_record_group(const uint8_t *__restrict lane0_q4_group,
                     const uint8_t *__restrict lane1_q4_group,
                     const bfloat16 *__restrict scale_group,
                     const bfloat16 *__restrict offset_group,
                     const Vec32 &act_group, v16accfloat &acc0,
                     v16accfloat &acc1) {
  Vec16 scale0 = aie::load_v<kRows, aie_dm_resource::a>(scale_group);
  Vec16 offset0 = aie::load_v<kRows, aie_dm_resource::b>(offset_group);
  Vec16 scale1 = aie::load_v<kRows, aie_dm_resource::a>(scale_group + kRows);
  Vec16 offset1 = aie::load_v<kRows, aie_dm_resource::b>(offset_group + kRows);

  consume_q4_quad(acc0, lane0_q4_group + 0 * kQ4QuadBytes, scale0, offset0,
                  act_group, 0);
  consume_q4_quad(acc1, lane1_q4_group + 0 * kQ4QuadBytes, scale1, offset1,
                  act_group, 0);
  consume_q4_quad(acc0, lane0_q4_group + 1 * kQ4QuadBytes, scale0, offset0,
                  act_group, 4);
  consume_q4_quad(acc1, lane1_q4_group + 1 * kQ4QuadBytes, scale1, offset1,
                  act_group, 4);
  consume_q4_quad(acc0, lane0_q4_group + 2 * kQ4QuadBytes, scale0, offset0,
                  act_group, 8);
  consume_q4_quad(acc1, lane1_q4_group + 2 * kQ4QuadBytes, scale1, offset1,
                  act_group, 8);
  consume_q4_quad(acc0, lane0_q4_group + 3 * kQ4QuadBytes, scale0, offset0,
                  act_group, 12);
  consume_q4_quad(acc1, lane1_q4_group + 3 * kQ4QuadBytes, scale1, offset1,
                  act_group, 12);
  consume_q4_quad(acc0, lane0_q4_group + 4 * kQ4QuadBytes, scale0, offset0,
                  act_group, 16);
  consume_q4_quad(acc1, lane1_q4_group + 4 * kQ4QuadBytes, scale1, offset1,
                  act_group, 16);
  consume_q4_quad(acc0, lane0_q4_group + 5 * kQ4QuadBytes, scale0, offset0,
                  act_group, 20);
  consume_q4_quad(acc1, lane1_q4_group + 5 * kQ4QuadBytes, scale1, offset1,
                  act_group, 20);
  consume_q4_quad(acc0, lane0_q4_group + 6 * kQ4QuadBytes, scale0, offset0,
                  act_group, 24);
  consume_q4_quad(acc1, lane1_q4_group + 6 * kQ4QuadBytes, scale1, offset1,
                  act_group, 24);
  consume_q4_quad(acc0, lane0_q4_group + 7 * kQ4QuadBytes, scale0, offset0,
                  act_group, 28);
  consume_q4_quad(acc1, lane1_q4_group + 7 * kQ4QuadBytes, scale1, offset1,
                  act_group, 28);
}

__attribute__((always_inline)) static inline void
store_payload_pair(v16accfloat acc0, v16accfloat acc1,
                   int32_t *__restrict record_words) {
  record_words[0] = 0x1;
  bfloat16 *__restrict payload =
      reinterpret_cast<bfloat16 *>(record_words + 1);
  aie::store_unaligned_v<kRows>(
      payload, Vec16(to_v16bfloat16_conf(acc0, rnd_conv_even)), 2);
  aie::store_unaligned_v<kRows>(
      payload + kRows, Vec16(to_v16bfloat16_conf(acc1, rnd_conv_even)), 2);
}

} // namespace

extern "C" {

void MAIN16_RECORD_CELL_ENTRY(
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
      q4_lane_data + kGroups2 * kQ4GroupBytes;
  v16accfloat acc0 = broadcast_zero_to_v16accfloat();
  v16accfloat acc1 = broadcast_zero_to_v16accfloat();

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(activation);
  consume_record_group(lane0_q4 + 0 * kQ4GroupBytes,
                       lane1_q4 + 0 * kQ4GroupBytes, scale + 0 * kRecordRows,
                       offset + 0 * kRecordRows, act0, acc0, acc1);
  Vec32 act1 =
      aie::load_v<kActGroup, aie_dm_resource::c>(activation + kActGroup);
  consume_record_group(lane0_q4 + 1 * kQ4GroupBytes,
                       lane1_q4 + 1 * kQ4GroupBytes, scale + 1 * kRecordRows,
                       offset + 1 * kRecordRows, act1, acc0, acc1);

  store_payload_pair(acc0, acc1, record_words);
}

} // extern "C"
