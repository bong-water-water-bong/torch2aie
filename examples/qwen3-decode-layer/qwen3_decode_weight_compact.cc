// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <adf/intrinsics.h>
#include <stdint.h>

#include "qwen3_constants.h"
#include "record_format.h"

namespace {

constexpr int32_t kChunkDwords = 1280; // 2560 bf16 values.

static volatile int32_t g_weight_compact_sink;

__attribute__((always_inline)) static inline void consume_weight_chunk(
    bfloat16 *packed_chunk) {
  volatile int32_t *words =
      reinterpret_cast<volatile int32_t *>(packed_chunk);
  g_weight_compact_sink ^= words[0];
  g_weight_compact_sink ^= words[kChunkDwords - 1];
}

__attribute__((always_inline)) static inline void zero_record_payload(
    int32_t *record) {
  for (int32_t idx = 1; idx < qwen3::kRecordDwords; idx++)
      chess_prepare_for_pipelining chess_loop_range(16, 16) {
    record[idx] = 0;
  }
}

__attribute__((always_inline)) static inline void emit_zero_body_record(
    int32_t *record, int32_t phase, int32_t block, int32_t group,
    int32_t row) {
  record[0] = qwen3::body_record_header(phase, block, group, row);
  zero_record_payload(record);
}

__attribute__((always_inline)) static inline void emit_zero_projection_record(
    int32_t *record, int32_t phase, int32_t group, int32_t row) {
  record[0] = qwen3::projection_record_header(phase, group, row);
  zero_record_payload(record);
}

static void run_weight_compact_phase(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                     int32_t *record_ping,
                                     int32_t *record_pong, int32_t phase,
                                     int32_t records,
                                     int32_t chunks_per_record, int32_t group,
                                     int32_t row, int32_t *record_toggle) {
  for (int32_t block = 0; block < records; block++)
      chess_loop_range(1, 48) {
    for (int32_t chunk = 0; chunk < chunks_per_record; chunk++)
        chess_prepare_for_pipelining chess_loop_range(16, 48) {
      acquire_greater_equal(qwen3::kMainWeightFullCoreLock, 1);
      consume_weight_chunk((chunk & 1) == 0 ? wt_ping : wt_pong);
      release(qwen3::kMainWeightEmptyCoreLock, 1);
    }

    acquire_greater_equal(qwen3::kMainRecordEmptyCoreLock, 1);
    int32_t *record = ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
    if (phase == qwen3::kUpPhase) {
      const int32_t logical_phase =
          (block & 1) == 0 ? qwen3::kUpPhase : qwen3::kGatePhase;
      emit_zero_projection_record(record, logical_phase, group, row);
    } else {
      emit_zero_body_record(record, phase, block, group, row);
    }
    *record_toggle += 1;
    release(qwen3::kMainRecordFullCoreLock, 1);
  }
}

} // namespace

extern "C" {

void q4nx_main16_weight_compact_consume(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                        int32_t *record_ping,
                                        int32_t *record_pong, int32_t group,
                                        int32_t row, int32_t phase_limit) {
  int32_t record_toggle = 0;
  if (phase_limit > qwen3::kQPhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kQPhase, qwen3::kQBodyRecords,
                             qwen3::kQChunksPerRecord, group, row,
                             &record_toggle);
  }
  if (phase_limit > qwen3::kKPhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kKPhase, qwen3::kKvBodyRecords,
                             qwen3::kKvChunksPerRecord, group, row,
                             &record_toggle);
  }
  if (phase_limit > qwen3::kVPhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kVPhase, qwen3::kKvBodyRecords,
                             qwen3::kKvChunksPerRecord, group, row,
                             &record_toggle);
  }
  if (phase_limit > qwen3::kOPhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kOPhase, qwen3::kOBodyRecords,
                             qwen3::kOChunksPerRecord, group, row,
                             &record_toggle);
  }
  if (phase_limit > qwen3::kGatePhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kUpPhase, qwen3::kUpGateReplays,
                             qwen3::kUpGateChunksPerReplay, group, row,
                             &record_toggle);
  }
  if (phase_limit > qwen3::kDownPhase) {
    run_weight_compact_phase(wt_ping, wt_pong, record_ping, record_pong,
                             qwen3::kDownPhase, qwen3::kDownBodyRecords,
                             qwen3::kDownChunksPerRecord, group, row,
                             &record_toggle);
  }
}

} // extern "C"
