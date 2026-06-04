// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#pragma once

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#include "qwen3_constants.h"

namespace {

constexpr int32_t kActSliceBf16Acc32 = 256;
constexpr int32_t kGroupSizeAcc32 = qwen3::kQ4GroupSize;
constexpr int32_t kGroupsPerChunkAcc32 =
    kActSliceBf16Acc32 / kGroupSizeAcc32;
constexpr int32_t kRowsPerLaneAcc32 = qwen3::kMainRowsPerTile / 2;
constexpr int32_t kScaleBf16Acc32 =
    qwen3::kMainRowsPerTile * kGroupsPerChunkAcc32;
constexpr int32_t kScaleBytesAcc32 = kScaleBf16Acc32 * 2;
constexpr int32_t kDataOffsetBytesAcc32 = kScaleBytesAcc32 * 2;
constexpr int32_t kDataBytesPerLaneAcc32 =
    kActSliceBf16Acc32 * (kRowsPerLaneAcc32 / 2);
constexpr int32_t kGroupBytesPerLaneAcc32 =
    kGroupSizeAcc32 * (kRowsPerLaneAcc32 / 2);
using Vec16Acc32 = aie::vector<bfloat16, kRowsPerLaneAcc32>;
using Vec32Acc32 = aie::vector<bfloat16, kGroupSizeAcc32>;
using Vec64Acc32 = aie::vector<bfloat16, kRowsPerLaneAcc32 * 4>;

__attribute__((always_inline)) static inline Vec64Acc32
load_q4_quad_acc32(const uint8_t *__restrict q4_data) {
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(q4_data);
  aie::vector<uint4, kRowsPerLaneAcc32 * 4> q4 =
      aie::load_v<kRowsPerLaneAcc32 * 4, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRowsPerLaneAcc32 * 4> q8 = aie::unpack(q4);
  return aie::to_float<bfloat16>(q8, 0);
}

__attribute__((always_inline)) static inline Vec16Acc32
dequant_half_acc32(const Vec16Acc32 &q, const Vec16Acc32 &scale,
                   const Vec16Acc32 &offset) {
  aie::accum<accfloat, kRowsPerLaneAcc32> scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline Vec32Acc32
pack_record_halves_acc32(const Vec16Acc32 &lo, const Vec16Acc32 &hi) {
  Vec32Acc32 out;
  out.insert(0, lo);
  out.insert(1, hi);
  return out;
}

__attribute__((always_inline)) static inline Vec32Acc32
act_record_pair_acc32(const Vec32Acc32 &act_group, int32_t lane) {
  Vec16Acc32 a =
      aie::broadcast<bfloat16, kRowsPerLaneAcc32>(act_group.get(lane));
  return pack_record_halves_acc32(a, a);
}

__attribute__((always_inline)) static inline v32accfloat
mac_record_dim_acc32(v32accfloat acc, const Vec16Acc32 &coeff0,
                     const Vec16Acc32 &coeff1, const Vec32Acc32 &act_group,
                     int32_t lane) {
  return mac_elem_32_conf(
      static_cast<v32bfloat16>(pack_record_halves_acc32(coeff0, coeff1)),
      static_cast<v32bfloat16>(act_record_pair_acc32(act_group, lane)), acc, 0,
      0, 0);
}

__attribute__((always_inline)) static inline void consume_q4_quad_acc32(
    v32accfloat &acc, const uint8_t *__restrict lane0_q4_quad,
    const uint8_t *__restrict lane1_q4_quad, const Vec16Acc32 &scale0,
    const Vec16Acc32 &offset0, const Vec16Acc32 &scale1,
    const Vec16Acc32 &offset1, const Vec32Acc32 &act_group, int32_t dim) {
  Vec64Acc32 q0 = load_q4_quad_acc32(lane0_q4_quad);
  Vec64Acc32 q1 = load_q4_quad_acc32(lane1_q4_quad);

  acc = mac_record_dim_acc32(
      acc, dequant_half_acc32(q0.template extract<kRowsPerLaneAcc32>(0),
                              scale0, offset0),
      dequant_half_acc32(q1.template extract<kRowsPerLaneAcc32>(0), scale1,
                         offset1),
      act_group, dim);
  chess_separator_scheduler();

  acc = mac_record_dim_acc32(
      acc, dequant_half_acc32(q0.template extract<kRowsPerLaneAcc32>(1),
                              scale0, offset0),
      dequant_half_acc32(q1.template extract<kRowsPerLaneAcc32>(1), scale1,
                         offset1),
      act_group, dim + 1);
  chess_separator_scheduler();

  acc = mac_record_dim_acc32(
      acc, dequant_half_acc32(q0.template extract<kRowsPerLaneAcc32>(2),
                              scale0, offset0),
      dequant_half_acc32(q1.template extract<kRowsPerLaneAcc32>(2), scale1,
                         offset1),
      act_group, dim + 2);
  chess_separator_scheduler();

  acc = mac_record_dim_acc32(
      acc, dequant_half_acc32(q0.template extract<kRowsPerLaneAcc32>(3),
                              scale0, offset0),
      dequant_half_acc32(q1.template extract<kRowsPerLaneAcc32>(3), scale1,
                         offset1),
      act_group, dim + 3);
  chess_separator_scheduler();
}

__attribute__((always_inline)) static inline void consume_record_group_acc32(
    v32accfloat &acc, const uint8_t *__restrict lane0_q4_group,
    const uint8_t *__restrict lane1_q4_group,
    const bfloat16 *__restrict scale_group,
    const bfloat16 *__restrict offset_group, const Vec32Acc32 &act_group) {
  Vec16Acc32 scale0 =
      aie::load_v<kRowsPerLaneAcc32, aie_dm_resource::a>(scale_group);
  Vec16Acc32 offset0 =
      aie::load_v<kRowsPerLaneAcc32, aie_dm_resource::b>(offset_group);
  Vec16Acc32 scale1 = aie::load_v<kRowsPerLaneAcc32, aie_dm_resource::a>(
      scale_group + kRowsPerLaneAcc32);
  Vec16Acc32 offset1 = aie::load_v<kRowsPerLaneAcc32, aie_dm_resource::b>(
      offset_group + kRowsPerLaneAcc32);

  consume_q4_quad_acc32(acc, lane0_q4_group + 0 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 0 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 0);
  consume_q4_quad_acc32(acc, lane0_q4_group + 1 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 1 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 4);
  consume_q4_quad_acc32(acc, lane0_q4_group + 2 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 2 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 8);
  consume_q4_quad_acc32(acc, lane0_q4_group + 3 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 3 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 12);
  consume_q4_quad_acc32(acc, lane0_q4_group + 4 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 4 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 16);
  consume_q4_quad_acc32(acc, lane0_q4_group + 5 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 5 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 20);
  consume_q4_quad_acc32(acc, lane0_q4_group + 6 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 6 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 24);
  consume_q4_quad_acc32(acc, lane0_q4_group + 7 * kRowsPerLaneAcc32 * 2,
                        lane1_q4_group + 7 * kRowsPerLaneAcc32 * 2, scale0,
                        offset0, scale1, offset1, act_group, 28);
}

template <int32_t Group>
__attribute__((always_inline)) static inline void consume_group_acc32(
    v32accfloat &acc, const uint8_t *__restrict lane0_q4,
    const uint8_t *__restrict lane1_q4, const bfloat16 *__restrict scale,
    const bfloat16 *__restrict offset, const bfloat16 *__restrict activation) {
  Vec32Acc32 act = aie::load_v<kGroupSizeAcc32, aie_dm_resource::c>(
      activation + Group * kGroupSizeAcc32);
  consume_record_group_acc32(
      acc, lane0_q4 + Group * kGroupBytesPerLaneAcc32,
      lane1_q4 + Group * kGroupBytesPerLaneAcc32,
      scale + Group * qwen3::kMainRowsPerTile,
      offset + Group * qwen3::kMainRowsPerTile, act);
}

template <int32_t Group, int32_t Groups>
__attribute__((always_inline)) static inline void consume_group_range_acc32(
    v32accfloat &acc, const uint8_t *__restrict lane0_q4,
    const uint8_t *__restrict lane1_q4, const bfloat16 *__restrict scale,
    const bfloat16 *__restrict offset, const bfloat16 *__restrict activation) {
  consume_group_acc32<Group>(acc, lane0_q4, lane1_q4, scale, offset,
                             activation);
  if constexpr (Group + 1 < Groups) {
    consume_group_range_acc32<Group + 1, Groups>(acc, lane0_q4, lane1_q4,
                                                 scale, offset, activation);
  }
}

__attribute__((noinline)) static void
accum_q4nx_chunk_acc32(v32accfloat &acc,
                       const bfloat16 *__restrict packed_chunk,
                       const int32_t *__restrict activation_words) {
  const bfloat16 *__restrict scales = packed_chunk;
  const bfloat16 *__restrict offsets = reinterpret_cast<const bfloat16 *>(
      reinterpret_cast<const uint8_t *>(packed_chunk) + kScaleBytesAcc32);
  const uint8_t *__restrict packed_data =
      reinterpret_cast<const uint8_t *>(packed_chunk) + kDataOffsetBytesAcc32;
  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);
  const uint8_t *__restrict lane0_q4 = packed_data;
  const uint8_t *__restrict lane1_q4 = packed_data + kDataBytesPerLaneAcc32;
  for (int32_t qgroup = 0; qgroup < kGroupsPerChunkAcc32; qgroup++)
      chess_loop_range(kGroupsPerChunkAcc32, kGroupsPerChunkAcc32) {
    Vec32Acc32 act = aie::load_v<kGroupSizeAcc32, aie_dm_resource::c>(
        activation + qgroup * kGroupSizeAcc32);
    consume_record_group_acc32(
        acc, lane0_q4 + qgroup * kGroupBytesPerLaneAcc32,
        lane1_q4 + qgroup * kGroupBytesPerLaneAcc32,
        scales + qgroup * qwen3::kMainRowsPerTile,
        offsets + qgroup * qwen3::kMainRowsPerTile, act);
  }
}

__attribute__((always_inline)) static inline void
consume_locked_chunk_acc32(v32accfloat &acc,
                           const bfloat16 *__restrict packed_chunk,
                           const int32_t *__restrict activation_words) {
  acquire_greater_equal(qwen3::kMainActivationFullCoreLock, 1);
  acquire_greater_equal(qwen3::kMainWeightFullCoreLock, 1);
  accum_q4nx_chunk_acc32(acc, packed_chunk, activation_words);
  release(qwen3::kMainActivationEmptyCoreLock, 1);
  release(qwen3::kMainWeightEmptyCoreLock, 1);
}

__attribute__((always_inline)) static inline void
emit_record_acc32(v32accfloat acc, int32_t *__restrict record,
                  int32_t header) {
  record[0] = header;
  bfloat16 *__restrict payload = reinterpret_cast<bfloat16 *>(record + 1);
  v32bfloat16 out = to_v32bfloat16(acc);
  aie::store_unaligned_v<kRowsPerLaneAcc32>(
      payload, Vec16Acc32(extract_v16bfloat16(out, 0)), 2);
  aie::store_unaligned_v<kRowsPerLaneAcc32>(
      payload + kRowsPerLaneAcc32, Vec16Acc32(extract_v16bfloat16(out, 1)),
      2);
}

template <int32_t ChunksPerRecord>
__attribute__((noinline)) static void run_projection_record_acc32(
    const bfloat16 *__restrict wt_ping, const bfloat16 *__restrict wt_pong,
    const int32_t *__restrict act_ping, const int32_t *__restrict act_pong,
    int32_t *__restrict record_ping, int32_t *__restrict record_pong,
    int32_t header, int32_t *record_toggle) {
  static_assert((ChunksPerRecord & 1) == 0,
                "Main16 acc32 body expects ping/pong chunk pairs");
  constexpr int32_t kChunkPairs = ChunksPerRecord / 2;
  v32accfloat acc = broadcast_zero_to_v32accfloat();
  for (int32_t pair = 0; pair < kChunkPairs; pair++)
      chess_loop_range(kChunkPairs, kChunkPairs) {
    (void)pair;
    consume_locked_chunk_acc32(acc, wt_ping, act_ping);
    consume_locked_chunk_acc32(acc, wt_pong, act_pong);
  }

  acquire_greater_equal(qwen3::kMainRecordEmptyCoreLock, 1);
  int32_t *__restrict record =
      ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
  emit_record_acc32(acc, record, header);
  *record_toggle += 1;
  release(qwen3::kMainRecordFullCoreLock, 1);
}

template <int32_t Records, int32_t ChunksPerRecord, int32_t Header>
__attribute__((noinline)) static void run_projection_body_acc32(
    const bfloat16 *__restrict wt_ping, const bfloat16 *__restrict wt_pong,
    const int32_t *__restrict act_ping, const int32_t *__restrict act_pong,
    int32_t *__restrict record_ping, int32_t *__restrict record_pong,
    int32_t *record_toggle) {
  for (int32_t block = 0; block < Records; block++)
      chess_loop_range(Records, Records) {
    (void)block;
    run_projection_record_acc32<ChunksPerRecord>(
        wt_ping, wt_pong, act_ping, act_pong, record_ping, record_pong, Header,
        record_toggle);
  }
}

} // namespace
