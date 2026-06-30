// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <adf/intrinsics.h>
#include <stdint.h>

#include "qwen3_constants.h"

namespace {

constexpr int32_t kChunkDwords = 1280; // 2560 bf16 values.

static volatile int32_t g_weight_path_sink;

__attribute__((always_inline)) static inline void consume_weight_chunk(
    bfloat16 *packed_chunk) {
  volatile int32_t *words =
      reinterpret_cast<volatile int32_t *>(packed_chunk);
  g_weight_path_sink ^= words[0];
  g_weight_path_sink ^= words[kChunkDwords - 1];
}

static void consume_phase(bfloat16 *wt_ping, bfloat16 *wt_pong,
                          int32_t records, int32_t chunks_per_record) {
  for (int32_t block = 0; block < records; block++)
      chess_loop_range(1, 48) {
    for (int32_t chunk = 0; chunk < chunks_per_record; chunk++)
        chess_prepare_for_pipelining chess_loop_range(16, 48) {
      acquire_greater_equal(qwen3::kMainWeightFullCoreLock, 1);
      consume_weight_chunk((chunk & 1) == 0 ? wt_ping : wt_pong);
      release(qwen3::kMainWeightEmptyCoreLock, 1);
    }
  }
}

} // namespace

extern "C" {

void q4nx_main16_weight_stream_consume(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                       int32_t group, int32_t row,
                                       int32_t phase_limit) {
  (void)group;
  (void)row;

  if (phase_limit > qwen3::kQPhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kQBodyRecords,
                  qwen3::kQChunksPerRecord);
  }
  if (phase_limit > qwen3::kKPhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kKvBodyRecords,
                  qwen3::kKvChunksPerRecord);
  }
  if (phase_limit > qwen3::kVPhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kKvBodyRecords,
                  qwen3::kKvChunksPerRecord);
  }
  if (phase_limit > qwen3::kOPhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kOBodyRecords,
                  qwen3::kOChunksPerRecord);
  }
  if (phase_limit > qwen3::kGatePhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kUpGateReplays,
                  qwen3::kUpGateChunksPerReplay);
  }
  if (phase_limit > qwen3::kDownPhase) {
    consume_phase(wt_ping, wt_pong, qwen3::kDownBodyRecords,
                  qwen3::kDownChunksPerRecord);
  }
}

} // extern "C"
