// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#include "qwen3_constants.h"
#include "record_format.h"

namespace {

#ifndef __SIGN_SIGNED
#define __SIGN_SIGNED 1
#endif

constexpr int32_t kActSliceBf16 = 256;
constexpr int32_t kGroupSize = qwen3::kQ4GroupSize;
constexpr int32_t kGroupsPerChunk = kActSliceBf16 / kGroupSize;
constexpr int32_t kQ4NxScaleBf16 = qwen3::kMainRowsPerTile * kGroupsPerChunk;
constexpr int32_t kQ4NxScaleBytes = kQ4NxScaleBf16 * 2;
constexpr int32_t kQ4NxOffsetBytes = kQ4NxScaleBytes;
constexpr int32_t kQ4NxDataOffsetBytes = kQ4NxScaleBytes + kQ4NxOffsetBytes;
constexpr int32_t kQ4NxRowsPerLane = qwen3::kMainRowsPerTile / 2;
constexpr int32_t kQ4NxDataBytesPerLane =
    kActSliceBf16 * (kQ4NxRowsPerLane / 2);
constexpr int32_t kQ4NxGroupBytesPerLane =
    kGroupSize * (kQ4NxRowsPerLane / 2);
using Acc16 = aie::accum<accfloat, kQ4NxRowsPerLane>;

__attribute__((always_inline)) static inline Acc16 zero_accum16() {
  return aie::zeros<accfloat, kQ4NxRowsPerLane>();
}

__attribute__((always_inline)) static inline void accum_q4nx_lane(
    Acc16 &acc, const uint8_t *__restrict packed_lane,
    const bfloat16 *__restrict scale_lane,
    const bfloat16 *__restrict offset_lane,
    const bfloat16 *__restrict activation) {
  for (int32_t qgroup = 0; qgroup < kGroupsPerChunk; qgroup++)
      chess_prepare_for_pipelining chess_loop_range(8, 8) {
    aie::vector<bfloat16, kQ4NxRowsPerLane> scale_vec =
        aie::load_v<kQ4NxRowsPerLane>(scale_lane +
                                      qgroup * qwen3::kMainRowsPerTile);
    aie::vector<bfloat16, kQ4NxRowsPerLane> offset_vec =
        aie::load_v<kQ4NxRowsPerLane>(offset_lane +
                                      qgroup * qwen3::kMainRowsPerTile);
    aie::vector<bfloat16, kGroupSize> act_group =
        aie::load_v<kGroupSize>(activation + qgroup * kGroupSize);
    const uint8_t *__restrict group_data =
        packed_lane + qgroup * kQ4NxGroupBytesPerLane;

    for (int32_t dim = 0; dim < kGroupSize; dim += 2)
        chess_prepare_for_pipelining chess_loop_range(16, 16) {
      // Each lane stores 8 packed bytes per dim; load_v<32>(uint4*) consumes
      // two dims, so the base advances by 16 bytes per dim pair.
      const uint4 *__restrict q4_ptr = reinterpret_cast<const uint4 *>(
          group_data + (dim / 2) * kQ4NxRowsPerLane);
      aie::vector<uint4, qwen3::kMainRowsPerTile> q4 =
          aie::load_v<qwen3::kMainRowsPerTile>(q4_ptr);
      aie::vector<uint8, qwen3::kMainRowsPerTile> q8 = aie::unpack(q4);
      aie::vector<uint16, qwen3::kMainRowsPerTile> q16 = aie::unpack(q8);
      aie::vector<bfloat16, qwen3::kMainRowsPerTile> q_bf16 =
          aie::to_float<bfloat16>(q16, 0);

      aie::vector<bfloat16, kQ4NxRowsPerLane> q0 =
          q_bf16.template extract<kQ4NxRowsPerLane>(0);
      Acc16 scaled0 = aie::mul(q0, scale_vec);
      aie::vector<bfloat16, kQ4NxRowsPerLane> dequant0 =
          aie::add(scaled0.template to_vector<bfloat16>(), offset_vec);
      aie::vector<bfloat16, kQ4NxRowsPerLane> act0 =
          aie::broadcast<bfloat16, kQ4NxRowsPerLane>(act_group.get(dim));
      acc = aie::mac(acc, dequant0, act0);

      aie::vector<bfloat16, kQ4NxRowsPerLane> q1 =
          q_bf16.template extract<kQ4NxRowsPerLane>(1);
      Acc16 scaled1 = aie::mul(q1, scale_vec);
      aie::vector<bfloat16, kQ4NxRowsPerLane> dequant1 =
          aie::add(scaled1.template to_vector<bfloat16>(), offset_vec);
      aie::vector<bfloat16, kQ4NxRowsPerLane> act1 =
          aie::broadcast<bfloat16, kQ4NxRowsPerLane>(act_group.get(dim + 1));
      acc = aie::mac(acc, dequant1, act1);
    }
  }
}

__attribute__((always_inline)) static inline void
accum_q4nx_chunk(Acc16 &acc0, Acc16 &acc1, bfloat16 *packed_chunk,
                 int32_t *activation_words) {
  bfloat16 *scales = packed_chunk;
  bfloat16 *offsets = reinterpret_cast<bfloat16 *>(
      reinterpret_cast<uint8_t *>(packed_chunk) + kQ4NxScaleBytes);
  const uint8_t *packed_data =
      reinterpret_cast<uint8_t *>(packed_chunk) + kQ4NxDataOffsetBytes;
  bfloat16 *activation = reinterpret_cast<bfloat16 *>(activation_words);

  accum_q4nx_lane(acc0, packed_data, scales, offsets, activation);
  accum_q4nx_lane(acc1, packed_data + kQ4NxDataBytesPerLane,
                  scales + kQ4NxRowsPerLane, offsets + kQ4NxRowsPerLane,
                  activation);
}

__attribute__((always_inline)) static inline void
emit_record_payload(Acc16 &acc0, Acc16 &acc1, int32_t *record) {
  bfloat16 *payload = reinterpret_cast<bfloat16 *>(record + 1);
  aie::store_v(payload, acc0.template to_vector<bfloat16>());
  aie::store_v(payload + kQ4NxRowsPerLane,
               acc1.template to_vector<bfloat16>());
}

__attribute__((always_inline)) static inline void
emit_record(Acc16 &acc0, Acc16 &acc1, int32_t *record, int32_t header) {
  record[0] = header;
  emit_record_payload(acc0, acc1, record);
}

static void run_projection_phase(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                 int32_t *act_ping, int32_t *act_pong,
                                 int32_t *record_ping, int32_t *record_pong,
                                 int32_t record_header, int32_t records,
                                 int32_t chunks_per_record,
                                 int32_t *record_toggle) {
  for (int32_t block = 0; block < records; block++)
      chess_loop_range(1, 48) {
    Acc16 acc0 = zero_accum16();
    Acc16 acc1 = zero_accum16();

    for (int32_t chunk = 0; chunk < chunks_per_record; chunk++)
        chess_loop_range(16, 48) {
      acquire_greater_equal(qwen3::kMainActivationFullCoreLock, 1);
      acquire_greater_equal(qwen3::kMainWeightFullCoreLock, 1);

      bfloat16 *wt = (chunk & 1) == 0 ? wt_ping : wt_pong;
      int32_t *act = (chunk & 1) == 0 ? act_ping : act_pong;
      accum_q4nx_chunk(acc0, acc1, wt, act);

      release(qwen3::kMainActivationEmptyCoreLock, 1);
      release(qwen3::kMainWeightEmptyCoreLock, 1);
    }

    acquire_greater_equal(qwen3::kMainRecordEmptyCoreLock, 1);
    int32_t *record = ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
    emit_record(acc0, acc1, record, record_header);
    *record_toggle += 1;
    release(qwen3::kMainRecordFullCoreLock, 1);
  }
}

} // namespace

extern "C" {

void q4nx_main16_layer_scheduler(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                 int32_t *act_ping, int32_t *act_pong,
                                 int32_t *record_ping, int32_t *record_pong,
                                 int32_t group, int32_t row, int32_t num_rows,
                                 int32_t phase_limit) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  (void)group;
  (void)row;
  (void)num_rows;
  int32_t record_toggle = 0;
  if (phase_limit > qwen3::kQPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kQCompactPacketId,
                         qwen3::kQBodyRecords, qwen3::kQChunksPerRecord,
                         &record_toggle);
  }
  if (phase_limit > qwen3::kKPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kKCompactPacketId,
                         qwen3::kKvBodyRecords, qwen3::kKvChunksPerRecord,
                         &record_toggle);
  }
  if (phase_limit > qwen3::kVPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kVCompactPacketId,
                         qwen3::kKvBodyRecords, qwen3::kKvChunksPerRecord,
                         &record_toggle);
  }
  if (phase_limit > qwen3::kOPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kOCompactPacketId,
                         qwen3::kOBodyRecords, qwen3::kOChunksPerRecord,
                         &record_toggle);
  }
  if (phase_limit > qwen3::kGatePhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kFfnCompactPacketId,
                         qwen3::kUpGateReplays,
                         qwen3::kUpGateChunksPerReplay, &record_toggle);
  }
  if (phase_limit > qwen3::kDownPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kDownCompactPacketId,
                         qwen3::kDownBodyRecords,
                         qwen3::kDownChunksPerRecord, &record_toggle);
  }
}

} // extern "C"
