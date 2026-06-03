// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <aie_api/aie.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#include "qwen3_constants.h"
#include "record_format.h"

namespace {

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

static uint16_t bf16_bits(float value) {
  union {
    float f32;
    uint32_t u32;
  } bits = {value};
  const uint32_t lsb = (bits.u32 >> 16) & 1u;
  bits.u32 += 0x7fffu + lsb;
  return static_cast<uint16_t>(bits.u32 >> 16);
}

static int32_t pack_bf16_pair(uint16_t lo, uint16_t hi) {
  return static_cast<int32_t>(static_cast<uint32_t>(lo) |
                              (static_cast<uint32_t>(hi) << 16));
}

static float bf16_round_to_float(float value) {
  union {
    uint32_t u32;
    float f32;
  } bits = {static_cast<uint32_t>(bf16_bits(value)) << 16};
  return bits.f32;
}

static uint8_t q4_value(const uint8_t *packed, int32_t row, int32_t col) {
  const int32_t lane = row >= kQ4NxRowsPerLane ? 1 : 0;
  const int32_t row_in_lane = row - lane * kQ4NxRowsPerLane;
  const int32_t byte_idx = row_in_lane / 2;
  const int32_t lane_base = lane * kQ4NxDataBytesPerLane;
  const uint8_t byte =
      packed[lane_base + col * (kQ4NxRowsPerLane / 2) + byte_idx];
  return (row_in_lane & 1) == 0 ? (byte & 0x0f) : (byte >> 4);
}

static void clear_accum(float *acc, int32_t num_rows) {
  for (int32_t row = 0; row < qwen3::kMainRowsPerTile; row++)
      chess_prepare_for_pipelining chess_loop_range(32, 32) {
    if (row < num_rows) {
      acc[row] = 0.0f;
    }
  }
}

static void accum_q4nx_chunk(float *acc, bfloat16 *packed_chunk,
                             int32_t *activation_words, int32_t num_rows) {
  bfloat16 *scales = packed_chunk;
  bfloat16 *offsets = reinterpret_cast<bfloat16 *>(
      reinterpret_cast<uint8_t *>(packed_chunk) + kQ4NxScaleBytes);
  const uint8_t *packed_data =
      reinterpret_cast<uint8_t *>(packed_chunk) + kQ4NxDataOffsetBytes;
  bfloat16 *activation = reinterpret_cast<bfloat16 *>(activation_words);

  for (int32_t out_row = 0; out_row < qwen3::kMainRowsPerTile; out_row++)
      chess_prepare_for_pipelining chess_loop_range(32, 32) {
    if (out_row < num_rows) {
      float row_acc = acc[out_row];
      for (int32_t qgroup = 0; qgroup < kGroupsPerChunk; qgroup++)
          chess_loop_range(8, 8) {
        const float scale =
            static_cast<float>(scales[qgroup * qwen3::kMainRowsPerTile + out_row]);
        const float offset =
            static_cast<float>(offsets[qgroup * qwen3::kMainRowsPerTile + out_row]);
        for (int32_t lane = 0; lane < kGroupSize; lane++)
            chess_prepare_for_pipelining chess_loop_range(32, 32) {
          const int32_t col = qgroup * kGroupSize + lane;
          const float q =
              static_cast<float>(q4_value(packed_data, out_row, col));
          const float act = static_cast<float>(activation[col]);
          const float scaled = bf16_round_to_float(q * scale);
          const float coeff = bf16_round_to_float(scaled + offset);
          row_acc += coeff * act;
        }
      }
      acc[out_row] = row_acc;
    }
  }
}

static void emit_record_payload(float *acc, int32_t *record) {
  for (int32_t idx = 0; idx < qwen3::kRecordPayloadDwords; idx++)
      chess_prepare_for_pipelining chess_loop_range(16, 16) {
    record[1 + idx] =
        pack_bf16_pair(bf16_bits(acc[2 * idx]), bf16_bits(acc[2 * idx + 1]));
  }
}

static void emit_body_record(float *acc, int32_t *record, int32_t phase,
                             int32_t block, int32_t group, int32_t row) {
  record[0] = qwen3::body_record_header(phase, block, group, row);
  emit_record_payload(acc, record);
}

static void emit_projection_record(float *acc, int32_t *record, int32_t phase,
                                   int32_t group, int32_t row) {
  record[0] = qwen3::projection_record_header(phase, group, row);
  emit_record_payload(acc, record);
}

static void run_projection_phase(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                 int32_t *act_ping, int32_t *act_pong,
                                 int32_t *record_ping, int32_t *record_pong,
                                 int32_t phase, int32_t records,
                                 int32_t chunks_per_record, int32_t group,
                                 int32_t row, int32_t num_rows,
                                 int32_t *record_toggle, float *acc) {
  for (int32_t block = 0; block < records; block++)
      chess_loop_range(1, 48) {
    clear_accum(acc, num_rows);

    for (int32_t chunk = 0; chunk < chunks_per_record; chunk++)
        chess_loop_range(16, 48) {
      acquire_greater_equal(qwen3::kMainActivationFullCoreLock, 1);
      acquire_greater_equal(qwen3::kMainWeightFullCoreLock, 1);

      bfloat16 *wt = (chunk & 1) == 0 ? wt_ping : wt_pong;
      int32_t *act = (chunk & 1) == 0 ? act_ping : act_pong;
      accum_q4nx_chunk(acc, wt, act, num_rows);

      release(qwen3::kMainActivationEmptyCoreLock, 1);
      release(qwen3::kMainWeightEmptyCoreLock, 1);
    }

    acquire_greater_equal(qwen3::kMainRecordEmptyCoreLock, 1);
    int32_t *record = ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
    if (phase == qwen3::kUpPhase) {
      const int32_t logical_phase =
          (block & 1) == 0 ? qwen3::kUpPhase : qwen3::kGatePhase;
      emit_projection_record(acc, record, logical_phase, group, row);
    } else {
      emit_body_record(acc, record, phase, block, group, row);
    }
    *record_toggle += 1;
    release(qwen3::kMainRecordFullCoreLock, 1);
  }
}

} // namespace

extern "C" {

alignas(64) float qwen3_main16_accum[qwen3::kMainRowsPerTile];

void q4nx_main16_layer_scheduler(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                 int32_t *act_ping, int32_t *act_pong,
                                 int32_t *record_ping, int32_t *record_pong,
                                 int32_t group, int32_t row, int32_t num_rows,
                                 int32_t phase_limit) {
  int32_t record_toggle = 0;
  if (phase_limit > qwen3::kQPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kQPhase, qwen3::kQBodyRecords,
                         qwen3::kQChunksPerRecord, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
  if (phase_limit > qwen3::kKPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kKPhase, qwen3::kKvBodyRecords,
                         qwen3::kKvChunksPerRecord, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
  if (phase_limit > qwen3::kVPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kVPhase, qwen3::kKvBodyRecords,
                         qwen3::kKvChunksPerRecord, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
  if (phase_limit > qwen3::kOPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kOPhase, qwen3::kOBodyRecords,
                         qwen3::kOChunksPerRecord, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
  if (phase_limit > qwen3::kGatePhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kUpPhase, qwen3::kUpGateReplays,
                         qwen3::kUpGateChunksPerReplay, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
  if (phase_limit > qwen3::kDownPhase) {
    run_projection_phase(wt_ping, wt_pong, act_ping, act_pong, record_ping,
                         record_pong, qwen3::kDownPhase, qwen3::kDownBodyRecords,
                         qwen3::kDownChunksPerRecord, group, row, num_rows,
                         &record_toggle, qwen3_main16_accum);
  }
}

} // extern "C"
