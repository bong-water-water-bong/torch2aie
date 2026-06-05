// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#ifndef MAIN16_CHUNK_SLOT_UNROLL_QUADS
#define MAIN16_CHUNK_SLOT_UNROLL_QUADS 0
#endif

namespace {

constexpr int kRows = 16;
constexpr int kRowsPerTile = 32;
constexpr int kGroupSize = 32;
constexpr int kGroups = 8;
constexpr int kActSliceBf16 = kGroups * kGroupSize;
constexpr int kScaleBf16 = kRowsPerTile * kGroups;
constexpr int kScaleBytes = kScaleBf16 * 2;
constexpr int kOffsetBytes = kScaleBytes;
constexpr int kDataOffsetBytes = kScaleBytes + kOffsetBytes;
constexpr int kQ4GroupBytesPerLane = kGroupSize * (kRows / 2);
constexpr int kQ4DataBytesPerLane = kActSliceBf16 * (kRows / 2);
constexpr int kQ4QuadBytesPerLane = kRows * 2;

using V16 = aie::vector<bfloat16, kRows>;
using V32 = aie::vector<bfloat16, kGroupSize>;
using V64 = aie::vector<bfloat16, kRows * 4>;
using Acc16 = aie::accum<accfloat, kRows>;
using RawVec = v32bfloat16;
using RawAcc = v32accfloat;

__attribute__((always_inline)) static inline RawAcc zero_acc() {
  return broadcast_zero_to_v32accfloat();
}

__attribute__((always_inline)) static inline RawAcc mac_cell(RawAcc acc,
                                                            RawVec coeff,
                                                            RawVec act) {
  return mac_elem_32_conf(coeff, act, acc, 0, 0, 0);
}

template <int DimQuad>
__attribute__((always_inline)) static inline V64
load_q4_quad(const uint8_t *__restrict lane_group_data) {
  static_assert(DimQuad >= 0 && DimQuad < kGroupSize / 4);
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(
      lane_group_data + DimQuad * kQ4QuadBytesPerLane);
  aie::vector<uint4, kRows * 4> q4 =
      aie::load_v<kRows * 4, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 4> q8 = aie::unpack(q4);
  return aie::to_float<bfloat16>(q8, 0);
}

__attribute__((always_inline)) static inline V64
load_q4_quad_runtime(const uint8_t *__restrict lane_group_data, int dim_quad) {
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(
      lane_group_data + dim_quad * kQ4QuadBytesPerLane);
  aie::vector<uint4, kRows * 4> q4 =
      aie::load_v<kRows * 4, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 4> q8 = aie::unpack(q4);
  return aie::to_float<bfloat16>(q8, 0);
}

__attribute__((always_inline)) static inline V16
dequant_half(const V16 &q, const V16 &scale, const V16 &offset) {
  Acc16 scaled = aie::mul(q, scale);
  return aie::add(scaled.template to_vector<bfloat16>(), offset);
}

__attribute__((always_inline)) static inline RawVec
pack_coeff(const V16 &lo, const V16 &hi) {
  return ::concat(static_cast<v16bfloat16>(lo), static_cast<v16bfloat16>(hi));
}

template <int Lane>
__attribute__((always_inline)) static inline RawVec
broadcast_lane16(const V32 &act_group) {
  static_assert(Lane >= 0 && Lane < kGroupSize);
  V16 half = aie::broadcast<bfloat16, kRows>(act_group.get(Lane));
  return ::concat(static_cast<v16bfloat16>(half),
                  static_cast<v16bfloat16>(half));
}

__attribute__((always_inline)) static inline RawVec
broadcast_lane16_runtime(const V32 &act_group, int lane) {
  V16 half = aie::broadcast<bfloat16, kRows>(act_group.get(lane));
  return ::concat(static_cast<v16bfloat16>(half),
                  static_cast<v16bfloat16>(half));
}

template <int Lane>
__attribute__((always_inline)) static inline RawAcc
consume_dim(RawAcc acc, const V16 &q_lo, const V16 &q_hi,
            const V16 &scale_lo, const V16 &scale_hi, const V16 &offset_lo,
            const V16 &offset_hi, const V32 &act_group) {
  V16 coeff_lo = dequant_half(q_lo, scale_lo, offset_lo);
  V16 coeff_hi = dequant_half(q_hi, scale_hi, offset_hi);
  return mac_cell(acc, pack_coeff(coeff_lo, coeff_hi),
                  broadcast_lane16<Lane>(act_group));
}

__attribute__((always_inline)) static inline RawAcc
consume_dim_runtime(RawAcc acc, const V16 &q_lo, const V16 &q_hi,
                    const V16 &scale_lo, const V16 &scale_hi,
                    const V16 &offset_lo, const V16 &offset_hi,
                    const V32 &act_group, int lane) {
  V16 coeff_lo = dequant_half(q_lo, scale_lo, offset_lo);
  V16 coeff_hi = dequant_half(q_hi, scale_hi, offset_hi);
  return mac_cell(acc, pack_coeff(coeff_lo, coeff_hi),
                  broadcast_lane16_runtime(act_group, lane));
}

template <int DimQuad>
__attribute__((always_inline)) static inline RawAcc
consume_quad(RawAcc acc, const uint8_t *__restrict q4_lo,
             const uint8_t *__restrict q4_hi, const V16 &scale_lo,
             const V16 &scale_hi, const V16 &offset_lo,
             const V16 &offset_hi, const V32 &act_group) {
  static_assert(DimQuad >= 0 && DimQuad < kGroupSize / 4);
  V64 q_lo = load_q4_quad<DimQuad>(q4_lo);
  V64 q_hi = load_q4_quad<DimQuad>(q4_hi);
  constexpr int lane = DimQuad * 4;
  acc = consume_dim<lane + 0>(acc, q_lo.template extract<kRows>(0),
                              q_hi.template extract<kRows>(0), scale_lo,
                              scale_hi, offset_lo, offset_hi, act_group);
  acc = consume_dim<lane + 1>(acc, q_lo.template extract<kRows>(1),
                              q_hi.template extract<kRows>(1), scale_lo,
                              scale_hi, offset_lo, offset_hi, act_group);
  acc = consume_dim<lane + 2>(acc, q_lo.template extract<kRows>(2),
                              q_hi.template extract<kRows>(2), scale_lo,
                              scale_hi, offset_lo, offset_hi, act_group);
  acc = consume_dim<lane + 3>(acc, q_lo.template extract<kRows>(3),
                              q_hi.template extract<kRows>(3), scale_lo,
                              scale_hi, offset_lo, offset_hi, act_group);
  return acc;
}

__attribute__((always_inline)) static inline RawAcc
consume_quad_runtime(RawAcc acc, const uint8_t *__restrict q4_lo,
                     const uint8_t *__restrict q4_hi, int dim_quad,
                     const V16 &scale_lo, const V16 &scale_hi,
                     const V16 &offset_lo, const V16 &offset_hi,
                     const V32 &act_group) {
  V64 q_lo = load_q4_quad_runtime(q4_lo, dim_quad);
  V64 q_hi = load_q4_quad_runtime(q4_hi, dim_quad);
  const int lane = dim_quad * 4;
  acc = consume_dim_runtime(acc, q_lo.template extract<kRows>(0),
                            q_hi.template extract<kRows>(0), scale_lo,
                            scale_hi, offset_lo, offset_hi, act_group,
                            lane + 0);
  acc = consume_dim_runtime(acc, q_lo.template extract<kRows>(1),
                            q_hi.template extract<kRows>(1), scale_lo,
                            scale_hi, offset_lo, offset_hi, act_group,
                            lane + 1);
  acc = consume_dim_runtime(acc, q_lo.template extract<kRows>(2),
                            q_hi.template extract<kRows>(2), scale_lo,
                            scale_hi, offset_lo, offset_hi, act_group,
                            lane + 2);
  acc = consume_dim_runtime(acc, q_lo.template extract<kRows>(3),
                            q_hi.template extract<kRows>(3), scale_lo,
                            scale_hi, offset_lo, offset_hi, act_group,
                            lane + 3);
  return acc;
}

__attribute__((always_inline)) static inline RawAcc
consume_group(RawAcc acc, const uint8_t *__restrict packed_data,
              const bfloat16 *__restrict scales,
              const bfloat16 *__restrict offsets,
              const bfloat16 *__restrict activation, int group) {
  const int group_row = group * kRowsPerTile;
  const int data_group = group * kQ4GroupBytesPerLane;

  V16 scale_lo = aie::load_v<kRows, aie_dm_resource::a>(scales + group_row);
  V16 scale_hi =
      aie::load_v<kRows, aie_dm_resource::a>(scales + group_row + kRows);
  V16 offset_lo = aie::load_v<kRows, aie_dm_resource::b>(offsets + group_row);
  V16 offset_hi =
      aie::load_v<kRows, aie_dm_resource::b>(offsets + group_row + kRows);
  V32 act_group = aie::load_v<kGroupSize, aie_dm_resource::c>(
      activation + group * kGroupSize);

  const uint8_t *__restrict q4_lo = packed_data + data_group;
  const uint8_t *__restrict q4_hi =
      packed_data + kQ4DataBytesPerLane + data_group;

#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 1
  acc = consume_quad<0>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 2
  acc = consume_quad<1>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 3
  acc = consume_quad<2>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 4
  acc = consume_quad<3>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 5
  acc = consume_quad<4>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 6
  acc = consume_quad<5>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 7
  acc = consume_quad<6>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS >= 8
  acc = consume_quad<7>(acc, q4_lo, q4_hi, scale_lo, scale_hi, offset_lo,
                        offset_hi, act_group);
#endif
#if MAIN16_CHUNK_SLOT_UNROLL_QUADS < 8
  for (int dim_quad = MAIN16_CHUNK_SLOT_UNROLL_QUADS; dim_quad < 8; dim_quad++)
      chess_loop_range(8 - MAIN16_CHUNK_SLOT_UNROLL_QUADS,
                       8 - MAIN16_CHUNK_SLOT_UNROLL_QUADS) {
    acc = consume_quad_runtime(acc, q4_lo, q4_hi, dim_quad, scale_lo, scale_hi,
                               offset_lo, offset_hi, act_group);
  }
#endif
  return acc;
}

__attribute__((always_inline)) static inline RawAcc
consume_chunk(const bfloat16 *__restrict packed_chunk,
              const bfloat16 *__restrict activation) {
  const bfloat16 *__restrict scales = packed_chunk;
  const bfloat16 *__restrict offsets = reinterpret_cast<const bfloat16 *>(
      reinterpret_cast<const uint8_t *>(packed_chunk) + kScaleBytes);
  const uint8_t *__restrict packed_data =
      reinterpret_cast<const uint8_t *>(packed_chunk) + kDataOffsetBytes;

  RawAcc acc = zero_acc();
  for (int group = 0; group < kGroups; group++)
      chess_loop_range(kGroups, kGroups) {
    acc = consume_group(acc, packed_data, scales, offsets, activation, group);
  }
  return acc;
}

} // namespace

extern "C" {

void main16_q4nx_chunk_slot_i32_probe(int32_t *__restrict activation_words,
                                      int32_t *__restrict weight_words,
                                      int32_t *__restrict output_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);
  const bfloat16 *__restrict weight =
      reinterpret_cast<const bfloat16 *>(weight_words);
  bfloat16 *__restrict output = reinterpret_cast<bfloat16 *>(output_words);

  RawAcc acc = consume_chunk(weight, activation);
  *reinterpret_cast<RawVec *>(output) = to_v32bfloat16(acc);
}

} // extern "C"
