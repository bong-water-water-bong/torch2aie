// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

namespace {

constexpr int kRows = 16;
constexpr int kRecordRows = 32;
constexpr int kActGroup = 32;
constexpr int kQ4QuadBytes = kRows * 2;
constexpr int kQ4GroupBytes = kActGroup * (kRows / 2);
using Vec16 = aie::vector<bfloat16, kRows>;
using Vec32 = aie::vector<bfloat16, kActGroup>;
using Vec64 = aie::vector<bfloat16, kRows * 4>;

#ifndef MAIN16_RECORD_CELL_ACC32_GROUPS
#define MAIN16_RECORD_CELL_ACC32_GROUPS 2
#endif

#ifndef MAIN16_RECORD_CELL_ACC32_ENTRY
#define MAIN16_RECORD_CELL_ACC32_ENTRY main16_q4nx_record_cell_2g_acc32_i32_probe
#endif

constexpr int kGroups = MAIN16_RECORD_CELL_ACC32_GROUPS;

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
act_record_pair(const Vec32 &act_group, int lane) {
  Vec16 a = aie::broadcast<bfloat16, kRows>(act_group.get(lane));
  return pack_halves(a, a);
}

__attribute__((always_inline)) static inline v32accfloat
mac_record_dim(v32accfloat acc, const Vec16 &coeff0, const Vec16 &coeff1,
               const Vec32 &act_group, int lane) {
  return mac_elem_32_conf(static_cast<v32bfloat16>(pack_halves(coeff0, coeff1)),
                          static_cast<v32bfloat16>(act_record_pair(act_group, lane)),
                          acc, 0, 0, 0);
}

__attribute__((always_inline)) static inline void
consume_q4_quad(v32accfloat &acc, const uint8_t *__restrict lane0_q4_quad,
                const uint8_t *__restrict lane1_q4_quad, const Vec16 &scale0,
                const Vec16 &offset0, const Vec16 &scale1,
                const Vec16 &offset1, const Vec32 &act_group, int dim) {
  Vec64 q0 = load_q4_quad(lane0_q4_quad);
  Vec64 q1 = load_q4_quad(lane1_q4_quad);

  acc = mac_record_dim(acc, dequant_half(q0.template extract<kRows>(0), scale0,
                                         offset0),
                       dequant_half(q1.template extract<kRows>(0), scale1,
                                    offset1),
                       act_group, dim);
  chess_separator_scheduler();

  acc = mac_record_dim(acc, dequant_half(q0.template extract<kRows>(1), scale0,
                                         offset0),
                       dequant_half(q1.template extract<kRows>(1), scale1,
                                    offset1),
                       act_group, dim + 1);
  chess_separator_scheduler();

  acc = mac_record_dim(acc, dequant_half(q0.template extract<kRows>(2), scale0,
                                         offset0),
                       dequant_half(q1.template extract<kRows>(2), scale1,
                                    offset1),
                       act_group, dim + 2);
  chess_separator_scheduler();

  acc = mac_record_dim(acc, dequant_half(q0.template extract<kRows>(3), scale0,
                                         offset0),
                       dequant_half(q1.template extract<kRows>(3), scale1,
                                    offset1),
                       act_group, dim + 3);
  chess_separator_scheduler();
}

__attribute__((always_inline)) static inline void
consume_record_group(v32accfloat &acc, const uint8_t *__restrict lane0_q4_group,
                     const uint8_t *__restrict lane1_q4_group,
                     const bfloat16 *__restrict scale_group,
                     const bfloat16 *__restrict offset_group,
                     const Vec32 &act_group) {
  Vec16 scale0 = aie::load_v<kRows, aie_dm_resource::a>(scale_group);
  Vec16 offset0 = aie::load_v<kRows, aie_dm_resource::b>(offset_group);
  Vec16 scale1 = aie::load_v<kRows, aie_dm_resource::a>(scale_group + kRows);
  Vec16 offset1 = aie::load_v<kRows, aie_dm_resource::b>(offset_group + kRows);

  consume_q4_quad(acc, lane0_q4_group + 0 * kQ4QuadBytes,
                  lane1_q4_group + 0 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 0);
  consume_q4_quad(acc, lane0_q4_group + 1 * kQ4QuadBytes,
                  lane1_q4_group + 1 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 4);
  consume_q4_quad(acc, lane0_q4_group + 2 * kQ4QuadBytes,
                  lane1_q4_group + 2 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 8);
  consume_q4_quad(acc, lane0_q4_group + 3 * kQ4QuadBytes,
                  lane1_q4_group + 3 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 12);
  consume_q4_quad(acc, lane0_q4_group + 4 * kQ4QuadBytes,
                  lane1_q4_group + 4 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 16);
  consume_q4_quad(acc, lane0_q4_group + 5 * kQ4QuadBytes,
                  lane1_q4_group + 5 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 20);
  consume_q4_quad(acc, lane0_q4_group + 6 * kQ4QuadBytes,
                  lane1_q4_group + 6 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 24);
  consume_q4_quad(acc, lane0_q4_group + 7 * kQ4QuadBytes,
                  lane1_q4_group + 7 * kQ4QuadBytes, scale0, offset0, scale1,
                  offset1, act_group, 28);
}

__attribute__((always_inline)) static inline void
store_payload_pair(v32accfloat acc, int32_t *__restrict record_words) {
  record_words[0] = 0x1;
  bfloat16 *__restrict payload =
      reinterpret_cast<bfloat16 *>(record_words + 1);
  v32bfloat16 out = to_v32bfloat16(acc);
  aie::store_unaligned_v<kRows>(
      payload, Vec16(extract_v16bfloat16(out, 0)), 2);
  aie::store_unaligned_v<kRows>(
      payload + kRows, Vec16(extract_v16bfloat16(out, 1)), 2);
}

template <int Group>
__attribute__((always_inline)) static inline void
consume_group_index(v32accfloat &acc, const uint8_t *__restrict lane0_q4,
                    const uint8_t *__restrict lane1_q4,
                    const bfloat16 *__restrict scale,
                    const bfloat16 *__restrict offset,
                    const bfloat16 *__restrict activation) {
  Vec32 act =
      aie::load_v<kActGroup, aie_dm_resource::c>(activation + Group * kActGroup);
  consume_record_group(acc, lane0_q4 + Group * kQ4GroupBytes,
                       lane1_q4 + Group * kQ4GroupBytes,
                       scale + Group * kRecordRows,
                       offset + Group * kRecordRows, act);
}

template <int Group, int Groups>
__attribute__((always_inline)) static inline void
consume_group_range(v32accfloat &acc, const uint8_t *__restrict lane0_q4,
                    const uint8_t *__restrict lane1_q4,
                    const bfloat16 *__restrict scale,
                    const bfloat16 *__restrict offset,
                    const bfloat16 *__restrict activation) {
  consume_group_index<Group>(acc, lane0_q4, lane1_q4, scale, offset,
                             activation);
  if constexpr (Group + 1 < Groups) {
    consume_group_range<Group + 1, Groups>(acc, lane0_q4, lane1_q4, scale,
                                           offset, activation);
  }
}

} // namespace

extern "C" {

void MAIN16_RECORD_CELL_ACC32_ENTRY(
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
  v32accfloat acc = broadcast_zero_to_v32accfloat();

  consume_group_range<0, kGroups>(acc, lane0_q4, lane1_q4, scale, offset,
                                  activation);
  store_payload_pair(acc, record_words);
}

} // extern "C"
