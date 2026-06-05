// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <aie_api/utils.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#ifndef MAIN16_SLOT_WINDOW_PAIR_LIMIT
#define MAIN16_SLOT_WINDOW_PAIR_LIMIT 2
#endif

#ifndef MAIN16_SLOT_WINDOW_RUNTIME_LOOP
#define MAIN16_SLOT_WINDOW_RUNTIME_LOOP 0
#endif

#ifndef MAIN16_SLOT_WINDOW_SEPARATOR_KIND
#define MAIN16_SLOT_WINDOW_SEPARATOR_KIND 0
#endif

#ifndef MAIN16_SLOT_WINDOW_SEPARATOR_OFFSET
#define MAIN16_SLOT_WINDOW_SEPARATOR_OFFSET 0
#endif

#ifndef MAIN16_SLOT_WINDOW_PEELED_LOOP
#define MAIN16_SLOT_WINDOW_PEELED_LOOP 0
#endif

// Production-layout short-window probe for the Main16 Q4NX hot body.
//
// This is deliberately not a full chunk loop.  It keeps one coefficient cell
// live across slot windows, consumes it first, then produces the next cell late
// for the following window.  The goal is to make Chess see the MyLM-style
// register cell state machine rather than a group-level mathematical loop.

namespace {

constexpr int kRows = 16;
constexpr int kRowsPerTile = 32;
constexpr int kGroupSize = 32;
constexpr int kGroups = 8;
constexpr int kScaleBf16 = kRowsPerTile * kGroups;
constexpr int kScaleBytes = kScaleBf16 * 2;
constexpr int kOffsetBytes = kScaleBytes;
constexpr int kDataOffsetBytes = kScaleBytes + kOffsetBytes;
constexpr int kQ4GroupBytesPerLane = kGroupSize * (kRows / 2);
constexpr int kQ4DataBytesPerLane = kGroups * kQ4GroupBytesPerLane;
constexpr int kQ4PairBytesPerLane = kRows;

using V16 = aie::vector<bfloat16, kRows>;
using V32 = aie::vector<bfloat16, kGroupSize>;
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

__attribute__((always_inline)) static inline void slot_separator() {
#if MAIN16_SLOT_WINDOW_SEPARATOR_KIND == 1
  chess_separator_scheduler();
#elif MAIN16_SLOT_WINDOW_SEPARATOR_KIND == 2
  chess_separator_scheduler(MAIN16_SLOT_WINDOW_SEPARATOR_OFFSET);
#endif
}

template <int LanePair>
__attribute__((always_inline)) static inline void
load_q4_pair(const uint8_t *__restrict lane_group_data, V16 &q0, V16 &q1) {
  static_assert(LanePair >= 0 && LanePair < kGroupSize / 2);
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(
      lane_group_data + LanePair * kQ4PairBytesPerLane);
  aie::vector<uint4, kRows * 2> q4 =
      aie::load_v<kRows * 2, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 2> q8 = aie::unpack(q4);
  V32 q = aie::to_float<bfloat16>(q8, 0);
  q0 = q.template extract<kRows>(0);
  q1 = q.template extract<kRows>(1);
}

__attribute__((always_inline)) static inline void
load_q4_pair_runtime(const uint8_t *__restrict lane_group_data, int lane_pair,
                     V16 &q0, V16 &q1) {
  const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(
      lane_group_data + lane_pair * kQ4PairBytesPerLane);
  aie::vector<uint4, kRows * 2> q4 =
      aie::load_v<kRows * 2, aie_dm_resource::d>(q4_ptr);
  aie::vector<uint8, kRows * 2> q8 = aie::unpack(q4);
  V32 q = aie::to_float<bfloat16>(q8, 0);
  q0 = q.template extract<kRows>(0);
  q1 = q.template extract<kRows>(1);
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

template <int LanePair>
__attribute__((always_inline)) static inline void
coeff_pair(const uint8_t *__restrict q4_lo, const uint8_t *__restrict q4_hi,
           const V16 &scale_lo, const V16 &scale_hi, const V16 &offset_lo,
           const V16 &offset_hi, RawVec &coeff0, RawVec &coeff1) {
  V16 q_lo0;
  V16 q_lo1;
  V16 q_hi0;
  V16 q_hi1;
  load_q4_pair<LanePair>(q4_lo, q_lo0, q_lo1);
  load_q4_pair<LanePair>(q4_hi, q_hi0, q_hi1);
  coeff0 = pack_coeff(dequant_half(q_lo0, scale_lo, offset_lo),
                      dequant_half(q_hi0, scale_hi, offset_hi));
  coeff1 = pack_coeff(dequant_half(q_lo1, scale_lo, offset_lo),
                      dequant_half(q_hi1, scale_hi, offset_hi));
}

__attribute__((always_inline)) static inline void
coeff_pair_runtime(const uint8_t *__restrict q4_lo,
                   const uint8_t *__restrict q4_hi, int lane_pair,
                   const V16 &scale_lo, const V16 &scale_hi,
                   const V16 &offset_lo, const V16 &offset_hi,
                   RawVec &coeff0, RawVec &coeff1) {
  V16 q_lo0;
  V16 q_lo1;
  V16 q_hi0;
  V16 q_hi1;
  load_q4_pair_runtime(q4_lo, lane_pair, q_lo0, q_lo1);
  load_q4_pair_runtime(q4_hi, lane_pair, q_hi0, q_hi1);
  coeff0 = pack_coeff(dequant_half(q_lo0, scale_lo, offset_lo),
                      dequant_half(q_hi0, scale_hi, offset_hi));
  coeff1 = pack_coeff(dequant_half(q_lo1, scale_lo, offset_lo),
                      dequant_half(q_hi1, scale_hi, offset_hi));
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

template <int LanePair>
__attribute__((always_inline)) static inline void
slot_pair_window(RawAcc &acc, RawVec &carry_coeff, RawVec &carry_act,
                 const uint8_t *__restrict q4_lo,
                 const uint8_t *__restrict q4_hi, const V16 &scale_lo,
                 const V16 &scale_hi, const V16 &offset_lo,
                 const V16 &offset_hi, const V32 &act_group) {
  static_assert(LanePair > 0 && LanePair < kGroupSize / 2);

  // Consume the previous register cell before producing the next one.
  acc = mac_cell(acc, carry_coeff, carry_act);

  RawVec coeff0;
  RawVec coeff1;
  coeff_pair<LanePair>(q4_lo, q4_hi, scale_lo, scale_hi, offset_lo, offset_hi,
                       coeff0, coeff1);

  constexpr int lane = LanePair * 2;
  acc = mac_cell(acc, coeff0, broadcast_lane16<lane>(act_group));
  carry_coeff = coeff1;
  carry_act = broadcast_lane16<lane + 1>(act_group);
}

__attribute__((always_inline)) static inline void
slot_pair_window_runtime(RawAcc &acc, RawVec &carry_coeff, RawVec &carry_act,
                         const uint8_t *__restrict q4_lo,
                         const uint8_t *__restrict q4_hi, int lane_pair,
                         const V16 &scale_lo, const V16 &scale_hi,
                         const V16 &offset_lo, const V16 &offset_hi,
                         const V32 &act_group) {
  acc = mac_cell(acc, carry_coeff, carry_act);

  RawVec coeff0;
  RawVec coeff1;
  coeff_pair_runtime(q4_lo, q4_hi, lane_pair, scale_lo, scale_hi, offset_lo,
                     offset_hi, coeff0, coeff1);

  const int lane = lane_pair * 2;
  acc = mac_cell(acc, coeff0, broadcast_lane16_runtime(act_group, lane));
  carry_coeff = coeff1;
  carry_act = broadcast_lane16_runtime(act_group, lane + 1);
}

__attribute__((always_inline)) static inline RawAcc
first_group_short_window(const bfloat16 *__restrict packed_chunk,
                         const bfloat16 *__restrict activation) {
  const bfloat16 *__restrict scales = packed_chunk;
  const bfloat16 *__restrict offsets = reinterpret_cast<const bfloat16 *>(
      reinterpret_cast<const uint8_t *>(packed_chunk) + kScaleBytes);
  const uint8_t *__restrict packed_data =
      reinterpret_cast<const uint8_t *>(packed_chunk) + kDataOffsetBytes;

  V16 scale_lo = aie::load_v<kRows, aie_dm_resource::a>(scales);
  V16 scale_hi = aie::load_v<kRows, aie_dm_resource::a>(scales + kRows);
  V16 offset_lo = aie::load_v<kRows, aie_dm_resource::b>(offsets);
  V16 offset_hi = aie::load_v<kRows, aie_dm_resource::b>(offsets + kRows);
  V32 act_group = aie::load_v<kGroupSize, aie_dm_resource::c>(activation);

  const uint8_t *__restrict q4_lo = packed_data;
  const uint8_t *__restrict q4_hi = packed_data + kQ4DataBytesPerLane;

  RawAcc acc = zero_acc();
  RawVec coeff0;
  RawVec coeff1;
  coeff_pair<0>(q4_lo, q4_hi, scale_lo, scale_hi, offset_lo, offset_hi,
                coeff0, coeff1);
  acc = mac_cell(acc, coeff0, broadcast_lane16<0>(act_group));
  RawVec carry_coeff = coeff1;
  RawVec carry_act = broadcast_lane16<1>(act_group);

#if MAIN16_SLOT_WINDOW_RUNTIME_LOOP
  for (int lane_pair = 1; lane_pair < kGroupSize / 2; lane_pair++)
      chess_loop_range(kGroupSize / 2 - 1, kGroupSize / 2 - 1) {
    slot_pair_window_runtime(acc, carry_coeff, carry_act, q4_lo, q4_hi,
                             lane_pair, scale_lo, scale_hi, offset_lo,
                             offset_hi, act_group);
  }
#elif MAIN16_SLOT_WINDOW_PEELED_LOOP
  aie::pipelined_loop<kGroupSize / 2,
                      aie::loop_options{.peel_front = 1, .peel_back = 1}>(
      kGroupSize / 2, [&](auto lane_pair_idx) __aie_inline {
        const int lane_pair = static_cast<int>(lane_pair_idx);
        if constexpr (lane_pair_idx.in_front()) {
          // The preloaded pair0 above is the front peel.
        } else if constexpr (lane_pair_idx.in_loop()) {
          slot_pair_window_runtime(acc, carry_coeff, carry_act, q4_lo, q4_hi,
                                   lane_pair, scale_lo, scale_hi, offset_lo,
                                   offset_hi, act_group);
        } else {
          slot_pair_window_runtime(acc, carry_coeff, carry_act, q4_lo, q4_hi,
                                   lane_pair, scale_lo, scale_hi, offset_lo,
                                   offset_hi, act_group);
          acc = mac_cell(acc, carry_coeff, carry_act);
        }
      });
  return acc;
#else
  slot_pair_window<1>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
#if MAIN16_SLOT_WINDOW_PAIR_LIMIT >= 4
  slot_pair_window<2>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<3>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
#endif
#if MAIN16_SLOT_WINDOW_PAIR_LIMIT >= 8
  slot_pair_window<4>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<5>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<6>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<7>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
#endif
#if MAIN16_SLOT_WINDOW_PAIR_LIMIT >= 16
  slot_pair_window<8>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<9>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                      scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<10>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<11>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<12>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<13>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<14>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
  slot_pair_window<15>(acc, carry_coeff, carry_act, q4_lo, q4_hi, scale_lo,
                       scale_hi, offset_lo, offset_hi, act_group);
  slot_separator();
#endif
#endif

  return mac_cell(acc, carry_coeff, carry_act);
}

} // namespace

extern "C" {

void main16_q4nx_slot_window_i32_probe(int32_t *__restrict activation_words,
                                       int32_t *__restrict weight_words,
                                       int32_t *__restrict output_words) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);

  const bfloat16 *__restrict activation =
      reinterpret_cast<const bfloat16 *>(activation_words);
  const bfloat16 *__restrict weight =
      reinterpret_cast<const bfloat16 *>(weight_words);
  bfloat16 *__restrict output = reinterpret_cast<bfloat16 *>(output_words);

  RawAcc acc = first_group_short_window(weight, activation);
  *reinterpret_cast<RawVec *>(output) = to_v32bfloat16(acc);
}

} // extern "C"
