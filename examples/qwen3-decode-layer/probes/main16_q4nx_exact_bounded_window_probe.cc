// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#if defined(MAIN16_BOUNDED_MAC32_ONLY) &&                                     \
    !defined(MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES)
#define MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES 1
#endif

namespace {

constexpr int kRows = 16;
constexpr int kActGroup = 32;
constexpr int kGroupsPerChunk = 8;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kActGroup * (kRows / 2);
using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kActGroup>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;

struct ExactWindowState {
  v16accfloat acc;
  Vec64 q;
  Vec16 scale;
  Vec16 offset;
};

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

__attribute__((always_inline)) static inline Vec32 duplicate_half(const Vec16 &v) {
  return pack_halves(v, v);
}

__attribute__((always_inline)) static inline Vec32
act_single(const Vec32 &act_group, int lane) {
  return duplicate_half(aie::broadcast<bfloat16, kRows>(act_group.get(lane)));
}

__attribute__((always_inline)) static inline v16accfloat
native_mac16(const Vec16 &coeff, const Vec32 &act_group, int lane,
             v16accfloat acc) {
  return mac_elem_16_conf(static_cast<v32bfloat16>(duplicate_half(coeff)),
                          static_cast<v32bfloat16>(act_single(act_group, lane)),
                          acc, 0, 0, 0);
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline v16accfloat
native_mac16_pair_mac32(const Vec16 &coeff0, const Vec16 &coeff1,
                        const Vec32 &act_group, int lane0, int lane1,
                        v16accfloat acc) {
  v32accfloat products =
      mac_elem_32_conf(static_cast<v32bfloat16>(pack_halves(coeff0, coeff1)),
                       static_cast<v32bfloat16>(act_pair(act_group, lane0, lane1)),
                       broadcast_zero_to_v32accfloat(), 0, 0, 0);
  v16accfloat acc0 = add(acc, extract_v16accfloat(products, 0));
  return add(acc0, extract_v16accfloat(products, 1));
}
#endif

__attribute__((always_inline)) static inline void
init_state(ExactWindowState &s, const uint8_t *__restrict q4_group,
           const bfloat16 *__restrict scale_group,
           const bfloat16 *__restrict offset_group) {
  s.acc = broadcast_zero_to_v16accfloat();
  s.q = load_q4_quad(q4_group);
  s.scale = aie::load_v<kRows, aie_dm_resource::a>(scale_group);
  s.offset = aie::load_v<kRows, aie_dm_resource::b>(offset_group);
}

__attribute__((always_inline)) static inline void
consume_q4_quad(ExactWindowState &s, const Vec32 &act_group, int dim) {
  Vec16 q0 = s.q.template extract<kRows>(0);
  s.acc = native_mac16(dequant_half(q0, s.scale, s.offset), act_group, dim,
                       s.acc);
  chess_separator_scheduler();

  Vec16 q1 = s.q.template extract<kRows>(1);
  s.acc = native_mac16(dequant_half(q1, s.scale, s.offset), act_group, dim + 1,
                       s.acc);
  chess_separator_scheduler();

  Vec16 q2 = s.q.template extract<kRows>(2);
  s.acc = native_mac16(dequant_half(q2, s.scale, s.offset), act_group, dim + 2,
                       s.acc);
  chess_separator_scheduler();

  Vec16 q3 = s.q.template extract<kRows>(3);
  s.acc = native_mac16(dequant_half(q3, s.scale, s.offset), act_group, dim + 3,
                       s.acc);
  chess_separator_scheduler();
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline void
consume_q4_quad_mac32(ExactWindowState &s, const Vec32 &act_group, int dim) {
  Vec16 q0 = s.q.template extract<kRows>(0);
  Vec16 q1 = s.q.template extract<kRows>(1);
  s.acc = native_mac16_pair_mac32(dequant_half(q0, s.scale, s.offset),
                                  dequant_half(q1, s.scale, s.offset),
                                  act_group, dim, dim + 1, s.acc);
  chess_separator_scheduler();

  Vec16 q2 = s.q.template extract<kRows>(2);
  Vec16 q3 = s.q.template extract<kRows>(3);
  s.acc = native_mac16_pair_mac32(dequant_half(q2, s.scale, s.offset),
                                  dequant_half(q3, s.scale, s.offset),
                                  act_group, dim + 2, dim + 3, s.acc);
  chess_separator_scheduler();
}
#endif

__attribute__((always_inline)) static inline void
consume_prefetch_same_group(ExactWindowState &s,
                            const uint8_t *__restrict next_q4,
                            const Vec32 &act_group, int dim) {
  Vec64 next = load_q4_quad(next_q4);
  consume_q4_quad(s, act_group, dim);
  s.q = next;
  chess_separator_scheduler();
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline void
consume_prefetch_same_group_mac32(ExactWindowState &s,
                                  const uint8_t *__restrict next_q4,
                                  const Vec32 &act_group, int dim) {
  Vec64 next = load_q4_quad(next_q4);
  consume_q4_quad_mac32(s, act_group, dim);
  s.q = next;
  chess_separator_scheduler();
}
#endif

__attribute__((always_inline)) static inline void
consume_prefetch_next_group(ExactWindowState &s,
                            const uint8_t *__restrict next_q4,
                            const bfloat16 *__restrict next_scale,
                            const bfloat16 *__restrict next_offset,
                            const Vec32 &act_group, int dim) {
  Vec64 next_q = load_q4_quad(next_q4);
  Vec16 next_s = aie::load_v<kRows, aie_dm_resource::a>(next_scale);
  Vec16 next_z = aie::load_v<kRows, aie_dm_resource::b>(next_offset);
  consume_q4_quad(s, act_group, dim);
  s.q = next_q;
  s.scale = next_s;
  s.offset = next_z;
  chess_separator_scheduler();
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline void
consume_prefetch_next_group_mac32(ExactWindowState &s,
                                  const uint8_t *__restrict next_q4,
                                  const bfloat16 *__restrict next_scale,
                                  const bfloat16 *__restrict next_offset,
                                  const Vec32 &act_group, int dim) {
  Vec64 next_q = load_q4_quad(next_q4);
  Vec16 next_s = aie::load_v<kRows, aie_dm_resource::a>(next_scale);
  Vec16 next_z = aie::load_v<kRows, aie_dm_resource::b>(next_offset);
  consume_q4_quad_mac32(s, act_group, dim);
  s.q = next_q;
  s.scale = next_s;
  s.offset = next_z;
  chess_separator_scheduler();
}
#endif

__attribute__((always_inline)) static inline void
consume_group_prefetch_next(ExactWindowState &s,
                            const uint8_t *__restrict group_q4,
                            const uint8_t *__restrict next_group_q4,
                            const bfloat16 *__restrict next_scale,
                            const bfloat16 *__restrict next_offset,
                            const Vec32 &act_group) {
  consume_prefetch_same_group(s, group_q4 + 1 * kQ4QuadBytes, act_group, 0);
  consume_prefetch_same_group(s, group_q4 + 2 * kQ4QuadBytes, act_group, 4);
  consume_prefetch_same_group(s, group_q4 + 3 * kQ4QuadBytes, act_group, 8);
  consume_prefetch_same_group(s, group_q4 + 4 * kQ4QuadBytes, act_group, 12);
  consume_prefetch_same_group(s, group_q4 + 5 * kQ4QuadBytes, act_group, 16);
  consume_prefetch_same_group(s, group_q4 + 6 * kQ4QuadBytes, act_group, 20);
  consume_prefetch_same_group(s, group_q4 + 7 * kQ4QuadBytes, act_group, 24);
  consume_prefetch_next_group(s, next_group_q4, next_scale, next_offset,
                              act_group, 28);
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline void
consume_group_prefetch_next_mac32(ExactWindowState &s,
                                  const uint8_t *__restrict group_q4,
                                  const uint8_t *__restrict next_group_q4,
                                  const bfloat16 *__restrict next_scale,
                                  const bfloat16 *__restrict next_offset,
                                  const Vec32 &act_group) {
  consume_prefetch_same_group_mac32(s, group_q4 + 1 * kQ4QuadBytes, act_group, 0);
  consume_prefetch_same_group_mac32(s, group_q4 + 2 * kQ4QuadBytes, act_group, 4);
  consume_prefetch_same_group_mac32(s, group_q4 + 3 * kQ4QuadBytes, act_group, 8);
  consume_prefetch_same_group_mac32(s, group_q4 + 4 * kQ4QuadBytes, act_group, 12);
  consume_prefetch_same_group_mac32(s, group_q4 + 5 * kQ4QuadBytes, act_group, 16);
  consume_prefetch_same_group_mac32(s, group_q4 + 6 * kQ4QuadBytes, act_group, 20);
  consume_prefetch_same_group_mac32(s, group_q4 + 7 * kQ4QuadBytes, act_group, 24);
  consume_prefetch_next_group_mac32(s, next_group_q4, next_scale, next_offset,
                                    act_group, 28);
}
#endif

__attribute__((always_inline)) static inline void
consume_final_group(ExactWindowState &s, const uint8_t *__restrict group_q4,
                    const Vec32 &act_group) {
  consume_prefetch_same_group(s, group_q4 + 1 * kQ4QuadBytes, act_group, 0);
  consume_prefetch_same_group(s, group_q4 + 2 * kQ4QuadBytes, act_group, 4);
  consume_prefetch_same_group(s, group_q4 + 3 * kQ4QuadBytes, act_group, 8);
  consume_prefetch_same_group(s, group_q4 + 4 * kQ4QuadBytes, act_group, 12);
  consume_prefetch_same_group(s, group_q4 + 5 * kQ4QuadBytes, act_group, 16);
  consume_prefetch_same_group(s, group_q4 + 6 * kQ4QuadBytes, act_group, 20);
  consume_prefetch_same_group(s, group_q4 + 7 * kQ4QuadBytes, act_group, 24);
  consume_q4_quad(s, act_group, 28);
}

#ifdef MAIN16_BOUNDED_ENABLE_MAC32
__attribute__((always_inline)) static inline void
consume_final_group_mac32(ExactWindowState &s, const uint8_t *__restrict group_q4,
                          const Vec32 &act_group) {
  consume_prefetch_same_group_mac32(s, group_q4 + 1 * kQ4QuadBytes, act_group, 0);
  consume_prefetch_same_group_mac32(s, group_q4 + 2 * kQ4QuadBytes, act_group, 4);
  consume_prefetch_same_group_mac32(s, group_q4 + 3 * kQ4QuadBytes, act_group, 8);
  consume_prefetch_same_group_mac32(s, group_q4 + 4 * kQ4QuadBytes, act_group, 12);
  consume_prefetch_same_group_mac32(s, group_q4 + 5 * kQ4QuadBytes, act_group, 16);
  consume_prefetch_same_group_mac32(s, group_q4 + 6 * kQ4QuadBytes, act_group, 20);
  consume_prefetch_same_group_mac32(s, group_q4 + 7 * kQ4QuadBytes, act_group, 24);
  consume_q4_quad_mac32(s, act_group, 28);
}
#endif

__attribute__((always_inline)) static inline void
store_acc(const ExactWindowState &s, bfloat16 *__restrict out) {
  *reinterpret_cast<v16bfloat16 *>(out) = to_v16bfloat16_conf(s.acc, rnd_conv_even);
}

#ifdef MAIN16_BOUNDED_ENABLE_DUAL_MAC32
__attribute__((always_inline)) static inline void
run_2g_lane_mac32(const uint8_t *__restrict lane_q4,
                  const bfloat16 *__restrict scale,
                  const bfloat16 *__restrict offset,
                  const bfloat16 *__restrict activation,
                  int row_offset, bfloat16 *__restrict out) {
  ExactWindowState lane;
  init_state(lane, lane_q4 + 0 * kQ4GroupBytes,
             scale + 0 * kRows * 2 + row_offset,
             offset + 0 * kRows * 2 + row_offset);
  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 0 * kQ4GroupBytes, lane_q4 + 1 * kQ4GroupBytes,
      scale + 1 * kRows * 2 + row_offset,
      offset + 1 * kRows * 2 + row_offset, act0);
  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_final_group_mac32(lane, lane_q4 + 1 * kQ4GroupBytes, act1);
  store_acc(lane, out + row_offset);
}

__attribute__((always_inline)) static inline void
run_3g_lane_mac32(const uint8_t *__restrict lane_q4,
                  const bfloat16 *__restrict scale,
                  const bfloat16 *__restrict offset,
                  const bfloat16 *__restrict activation,
                  int row_offset, bfloat16 *__restrict out) {
  ExactWindowState lane;
  init_state(lane, lane_q4 + 0 * kQ4GroupBytes,
             scale + 0 * kRows * 2 + row_offset,
             offset + 0 * kRows * 2 + row_offset);
  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 0 * kQ4GroupBytes, lane_q4 + 1 * kQ4GroupBytes,
      scale + 1 * kRows * 2 + row_offset,
      offset + 1 * kRows * 2 + row_offset, act0);
  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 1 * kQ4GroupBytes, lane_q4 + 2 * kQ4GroupBytes,
      scale + 2 * kRows * 2 + row_offset,
      offset + 2 * kRows * 2 + row_offset, act1);
  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_final_group_mac32(lane, lane_q4 + 2 * kQ4GroupBytes, act2);
  store_acc(lane, out + row_offset);
}

__attribute__((always_inline)) static inline void
run_8g_lane_mac32(const uint8_t *__restrict lane_q4,
                  const bfloat16 *__restrict scale,
                  const bfloat16 *__restrict offset,
                  const bfloat16 *__restrict activation,
                  int row_offset, bfloat16 *__restrict out) {
  ExactWindowState lane;
  init_state(lane, lane_q4 + 0 * kQ4GroupBytes,
             scale + 0 * kRows * 2 + row_offset,
             offset + 0 * kRows * 2 + row_offset);
  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 0 * kQ4GroupBytes, lane_q4 + 1 * kQ4GroupBytes,
      scale + 1 * kRows * 2 + row_offset,
      offset + 1 * kRows * 2 + row_offset, act0);
  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 1 * kQ4GroupBytes, lane_q4 + 2 * kQ4GroupBytes,
      scale + 2 * kRows * 2 + row_offset,
      offset + 2 * kRows * 2 + row_offset, act1);
  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 2 * kQ4GroupBytes, lane_q4 + 3 * kQ4GroupBytes,
      scale + 3 * kRows * 2 + row_offset,
      offset + 3 * kRows * 2 + row_offset, act2);
  Vec32 act3 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 3 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 3 * kQ4GroupBytes, lane_q4 + 4 * kQ4GroupBytes,
      scale + 4 * kRows * 2 + row_offset,
      offset + 4 * kRows * 2 + row_offset, act3);
  Vec32 act4 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 4 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 4 * kQ4GroupBytes, lane_q4 + 5 * kQ4GroupBytes,
      scale + 5 * kRows * 2 + row_offset,
      offset + 5 * kRows * 2 + row_offset, act4);
  Vec32 act5 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 5 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 5 * kQ4GroupBytes, lane_q4 + 6 * kQ4GroupBytes,
      scale + 6 * kRows * 2 + row_offset,
      offset + 6 * kRows * 2 + row_offset, act5);
  Vec32 act6 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 6 * kActGroup);
  consume_group_prefetch_next_mac32(
      lane, lane_q4 + 6 * kQ4GroupBytes, lane_q4 + 7 * kQ4GroupBytes,
      scale + 7 * kRows * 2 + row_offset,
      offset + 7 * kRows * 2 + row_offset, act6);
  Vec32 act7 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 7 * kActGroup);
  consume_final_group_mac32(lane, lane_q4 + 7 * kQ4GroupBytes, act7);
  store_acc(lane, out + row_offset);
}
#endif

} // namespace

extern "C" {

#ifndef MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES
void main16_q4nx_exact_bounded_2g_probe(uint8_t *__restrict q4_lane_data,
                                        bfloat16 *__restrict scale,
                                        bfloat16 *__restrict offset,
                                        bfloat16 *__restrict activation,
                                        bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 0 * kQ4GroupBytes,
                              q4_lane_data + 1 * kQ4GroupBytes,
                              scale + 1 * kRows, offset + 1 * kRows, act0);

  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_final_group(state, q4_lane_data + 1 * kQ4GroupBytes, act1);
  store_acc(state, out);
}

void main16_q4nx_exact_bounded_3g_probe(uint8_t *__restrict q4_lane_data,
                                        bfloat16 *__restrict scale,
                                        bfloat16 *__restrict offset,
                                        bfloat16 *__restrict activation,
                                        bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 0 * kQ4GroupBytes,
                              q4_lane_data + 1 * kQ4GroupBytes,
                              scale + 1 * kRows, offset + 1 * kRows, act0);

  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 1 * kQ4GroupBytes,
                              q4_lane_data + 2 * kQ4GroupBytes,
                              scale + 2 * kRows, offset + 2 * kRows, act1);

  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_final_group(state, q4_lane_data + 2 * kQ4GroupBytes, act2);
  store_acc(state, out);
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_MAC32) &&                                  \
    (defined(MAIN16_BOUNDED_MAC32_ONLY) ||                                    \
     !defined(MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES))
void main16_q4nx_exact_bounded_2g_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 0 * kQ4GroupBytes,
                                    q4_lane_data + 1 * kQ4GroupBytes,
                                    scale + 1 * kRows, offset + 1 * kRows,
                                    act0);

  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_final_group_mac32(state, q4_lane_data + 1 * kQ4GroupBytes, act1);
  store_acc(state, out);
}

void main16_q4nx_exact_bounded_3g_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 0 * kQ4GroupBytes,
                                    q4_lane_data + 1 * kQ4GroupBytes,
                                    scale + 1 * kRows, offset + 1 * kRows,
                                    act0);

  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 1 * kQ4GroupBytes,
                                    q4_lane_data + 2 * kQ4GroupBytes,
                                    scale + 2 * kRows, offset + 2 * kRows,
                                    act1);

  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_final_group_mac32(state, q4_lane_data + 2 * kQ4GroupBytes, act2);
  store_acc(state, out);
}
#endif

#ifdef MAIN16_BOUNDED_ENABLE_8G
void main16_q4nx_exact_bounded_8g_probe(uint8_t *__restrict q4_lane_data,
                                        bfloat16 *__restrict scale,
                                        bfloat16 *__restrict offset,
                                        bfloat16 *__restrict activation,
                                        bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 0 * kQ4GroupBytes,
                              q4_lane_data + 1 * kQ4GroupBytes,
                              scale + 1 * kRows, offset + 1 * kRows, act0);
  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 1 * kQ4GroupBytes,
                              q4_lane_data + 2 * kQ4GroupBytes,
                              scale + 2 * kRows, offset + 2 * kRows, act1);
  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 2 * kQ4GroupBytes,
                              q4_lane_data + 3 * kQ4GroupBytes,
                              scale + 3 * kRows, offset + 3 * kRows, act2);
  Vec32 act3 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 3 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 3 * kQ4GroupBytes,
                              q4_lane_data + 4 * kQ4GroupBytes,
                              scale + 4 * kRows, offset + 4 * kRows, act3);
  Vec32 act4 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 4 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 4 * kQ4GroupBytes,
                              q4_lane_data + 5 * kQ4GroupBytes,
                              scale + 5 * kRows, offset + 5 * kRows, act4);
  Vec32 act5 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 5 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 5 * kQ4GroupBytes,
                              q4_lane_data + 6 * kQ4GroupBytes,
                              scale + 6 * kRows, offset + 6 * kRows, act5);
  Vec32 act6 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 6 * kActGroup);
  consume_group_prefetch_next(state, q4_lane_data + 6 * kQ4GroupBytes,
                              q4_lane_data + 7 * kQ4GroupBytes,
                              scale + 7 * kRows, offset + 7 * kRows, act6);
  Vec32 act7 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 7 * kActGroup);
  consume_final_group(state, q4_lane_data + 7 * kQ4GroupBytes, act7);
  store_acc(state, out);
}

void main16_q4nx_exact_bounded_8g_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_8g_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#ifdef MAIN16_BOUNDED_ENABLE_8G_MAC32
void main16_q4nx_exact_bounded_8g_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  ExactWindowState state;
  init_state(state, q4_lane_data + 0 * kQ4GroupBytes, scale + 0 * kRows,
             offset + 0 * kRows);

  Vec32 act0 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 0 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 0 * kQ4GroupBytes,
                                    q4_lane_data + 1 * kQ4GroupBytes,
                                    scale + 1 * kRows, offset + 1 * kRows,
                                    act0);
  Vec32 act1 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 1 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 1 * kQ4GroupBytes,
                                    q4_lane_data + 2 * kQ4GroupBytes,
                                    scale + 2 * kRows, offset + 2 * kRows,
                                    act1);
  Vec32 act2 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 2 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 2 * kQ4GroupBytes,
                                    q4_lane_data + 3 * kQ4GroupBytes,
                                    scale + 3 * kRows, offset + 3 * kRows,
                                    act2);
  Vec32 act3 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 3 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 3 * kQ4GroupBytes,
                                    q4_lane_data + 4 * kQ4GroupBytes,
                                    scale + 4 * kRows, offset + 4 * kRows,
                                    act3);
  Vec32 act4 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 4 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 4 * kQ4GroupBytes,
                                    q4_lane_data + 5 * kQ4GroupBytes,
                                    scale + 5 * kRows, offset + 5 * kRows,
                                    act4);
  Vec32 act5 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 5 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 5 * kQ4GroupBytes,
                                    q4_lane_data + 6 * kQ4GroupBytes,
                                    scale + 6 * kRows, offset + 6 * kRows,
                                    act5);
  Vec32 act6 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 6 * kActGroup);
  consume_group_prefetch_next_mac32(state, q4_lane_data + 6 * kQ4GroupBytes,
                                    q4_lane_data + 7 * kQ4GroupBytes,
                                    scale + 7 * kRows, offset + 7 * kRows,
                                    act6);
  Vec32 act7 = aie::load_v<kActGroup, aie_dm_resource::c>(
      activation + 7 * kActGroup);
  consume_final_group_mac32(state, q4_lane_data + 7 * kQ4GroupBytes, act7);
  store_acc(state, out);
}

void main16_q4nx_exact_bounded_8g_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_8g_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#ifdef MAIN16_BOUNDED_ENABLE_8G_DUAL_MAC32
void main16_q4nx_exact_bounded_8g_dual_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  const uint8_t *__restrict lane0_q4 = q4_lane_data;
  const uint8_t *__restrict lane1_q4 =
      q4_lane_data + kGroupsPerChunk * kQ4GroupBytes;
  run_8g_lane_mac32(lane0_q4, scale, offset, activation, 0, out);
  run_8g_lane_mac32(lane1_q4, scale, offset, activation, kRows, out);
}

void main16_q4nx_exact_bounded_8g_dual_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_8g_dual_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_DUAL_MAC32) &&                             \
    !defined(MAIN16_BOUNDED_DUAL_SKIP_2G)
void main16_q4nx_exact_bounded_2g_dual_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  const uint8_t *__restrict lane0_q4 = q4_lane_data;
  const uint8_t *__restrict lane1_q4 = q4_lane_data + 2 * kQ4GroupBytes;
  run_2g_lane_mac32(lane0_q4, scale, offset, activation, 0, out);
  run_2g_lane_mac32(lane1_q4, scale, offset, activation, kRows, out);
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_DUAL_MAC32) &&                             \
    !defined(MAIN16_BOUNDED_DUAL_SKIP_3G)
void main16_q4nx_exact_bounded_3g_dual_mac32_probe(
    uint8_t *__restrict q4_lane_data, bfloat16 *__restrict scale,
    bfloat16 *__restrict offset, bfloat16 *__restrict activation,
    bfloat16 *__restrict out) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  const uint8_t *__restrict lane0_q4 = q4_lane_data;
  const uint8_t *__restrict lane1_q4 = q4_lane_data + 3 * kQ4GroupBytes;
  run_3g_lane_mac32(lane0_q4, scale, offset, activation, 0, out);
  run_3g_lane_mac32(lane1_q4, scale, offset, activation, kRows, out);
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_DUAL_MAC32) &&                             \
    !defined(MAIN16_BOUNDED_DUAL_SKIP_2G)
void main16_q4nx_exact_bounded_2g_dual_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_2g_dual_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_DUAL_MAC32) &&                             \
    !defined(MAIN16_BOUNDED_DUAL_SKIP_3G)
void main16_q4nx_exact_bounded_3g_dual_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_3g_dual_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#ifndef MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES
void main16_q4nx_exact_bounded_2g_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_2g_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}

void main16_q4nx_exact_bounded_3g_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_3g_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

#if defined(MAIN16_BOUNDED_ENABLE_MAC32) &&                                  \
    (defined(MAIN16_BOUNDED_MAC32_ONLY) ||                                    \
     !defined(MAIN16_BOUNDED_DISABLE_DEFAULT_ENTRIES))
void main16_q4nx_exact_bounded_2g_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_2g_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}

void main16_q4nx_exact_bounded_3g_mac32_i32_probe(
    int32_t *__restrict q4_lane_words, int32_t *__restrict scale_words,
    int32_t *__restrict offset_words, int32_t *__restrict activation_words,
    int32_t *__restrict out_words) {
  main16_q4nx_exact_bounded_3g_mac32_probe(
      reinterpret_cast<uint8_t *>(q4_lane_words),
      reinterpret_cast<bfloat16 *>(scale_words),
      reinterpret_cast<bfloat16 *>(offset_words),
      reinterpret_cast<bfloat16 *>(activation_words),
      reinterpret_cast<bfloat16 *>(out_words));
}
#endif

} // extern "C"
