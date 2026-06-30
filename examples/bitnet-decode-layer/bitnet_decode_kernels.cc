// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// BitNet b1.58-2B-4T full-layer main16 projection kernel.
// BF16×BF16 matmul using compact record protocol.
// Adapted from qwen3_decode_kernels.cc — replaces Q4NX dequant with
// direct BF16 accumulation using AIE intrinsic patterns.
//
// Each AIE tile processes 32 output rows × 256 activation columns.
// Uses 16-lane SIMD: aie::accum<accfloat, 16>

#include <aie_api/aie.hpp>
#include <aie_api/utils.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#include "bitnet_constants.h"
#include "record_format.h"

namespace {

constexpr int32_t kActSliceBf16 = 256;
constexpr int32_t kGroupSize = 32;
constexpr int32_t kRowsPerLane = bitnet::kMainRowsPerTile / 2;  // = 16
constexpr int32_t kActGroupWords = kGroupSize / 2;  // = 16 (i32 words for 32 BF16)

using Acc16 = aie::accum<accfloat, kRowsPerLane>;

__attribute__((always_inline)) static inline Acc16 zero_accum16() {
    return aie::zeros<accfloat, kRowsPerLane>();
}

// Process one group of 32 activation columns for 16 weight rows.
// For each of 8 quads (4 activation × 2 weight halves), mac.
__attribute__((always_inline)) static inline void
accum_bf16_group(Acc16 &acc, const bfloat16 *__restrict wt_row,
                 const bfloat16 *__restrict act_group) {
    // 32 activation columns processed as 2 × 16-element halves
    aie::vector<bfloat16, kRowsPerLane> act_lo =
        aie::load_v<kRowsPerLane>(act_group);
    aie::vector<bfloat16, kRowsPerLane> act_hi =
        aie::load_v<kRowsPerLane>(act_group + kRowsPerLane);

    // 16 weight rows × 32 columns: process as 2 halves × 16 elements
    aie::vector<bfloat16, kRowsPerLane> wt_lo =
        aie::load_v<kRowsPerLane>(wt_row);
    aie::vector<bfloat16, kRowsPerLane> wt_hi =
        aie::load_v<kRowsPerLane>(wt_row + kRowsPerLane);

    // mac: accumulate outer product (broadcast style)
    // aie::mac(acc, wt_elem, act_row) — element-wise multiply-add
    // Each wt_elem acts on the full 16 activation lanes
    for (int32_t r = 0; r < kRowsPerLane; r++) {
        aie::vector<bfloat16, kRowsPerLane> wt_lo_bcast =
            aie::broadcast<bfloat16, kRowsPerLane>(wt_lo.get(r));
        aie::vector<bfloat16, kRowsPerLane> wt_hi_bcast =
            aie::broadcast<bfloat16, kRowsPerLane>(wt_hi.get(r));
        acc = aie::mac(acc, wt_lo_bcast, act_lo);
        acc = aie::mac(acc, wt_hi_bcast, act_hi);
    }
}

// Process a full chunk of 256 activation columns for 32 weight rows.
// The chunk has 8 groups of 32.
__attribute__((always_inline)) static inline void
accum_bf16_chunk(Acc16 &acc0, Acc16 &acc1,
                 const bfloat16 *__restrict wt_chunk,
                 const bfloat16 *__restrict act_chunk) {
    // Weights stored as [32 rows][256 cols] = 8192 BF16 elements
    // Activations stored as [256 cols] = 256 BF16 elements
    constexpr int32_t kGroups = kActSliceBf16 / kGroupSize;  // = 8
    for (int32_t g = 0; g < kGroups; g++) {
        const bfloat16 *act_g = act_chunk + g * kGroupSize;
        // First 16 rows
        const bfloat16 *wt_lo = wt_chunk + g * kGroupSize;
        accum_bf16_group(acc0, wt_lo, act_g);
        // Second 16 rows (rows 16-31)
        const bfloat16 *wt_hi = wt_chunk + kActSliceBf16 * kRowsPerLane + g * kGroupSize;
        accum_bf16_group(acc1, wt_hi, act_g);
    }
}

__attribute__((always_inline)) static inline void
emit_record_payload(Acc16 &acc0, Acc16 &acc1, int32_t *record) {
    bfloat16 *payload = reinterpret_cast<bfloat16 *>(record + 1);
    aie::store_v(payload, acc0.template to_vector<bfloat16>());
    aie::store_v(payload + kRowsPerLane,
                 acc1.template to_vector<bfloat16>());
}

__attribute__((always_inline)) static inline void
emit_record(Acc16 &acc0, Acc16 &acc1, int32_t *record, int32_t header) {
    record[0] = header;
    emit_record_payload(acc0, acc1, record);
}

__attribute__((always_inline)) static inline void
acquire_lock(int32_t lock_num, int32_t val) {
    acquire_greater_equal(lock_num, val);
}

__attribute__((always_inline)) static inline void
release_lock(int32_t lock_num, int32_t val) {
    release(lock_num, val);
}

template <int32_t Records, int32_t ChunksPerRecord>
__attribute__((noinline)) static void
run_projection_body(const bfloat16 *__restrict wt_ping,
                    const bfloat16 *__restrict wt_pong,
                    const int32_t *__restrict act_ping,
                    const int32_t *__restrict act_pong,
                    int32_t *__restrict record_ping,
                    int32_t *__restrict record_pong,
                    int32_t record_header,
                    int32_t *record_toggle) {
    (void)act_ping;
    (void)act_pong;
    for (int32_t block = 0; block < Records; block++)
        chess_loop_range(Records, Records) {
        Acc16 acc0 = zero_accum16();
        Acc16 acc1 = zero_accum16();

        for (int32_t chunk = 0; chunk < ChunksPerRecord; chunk++)
            chess_loop_range(ChunksPerRecord, ChunksPerRecord) {
            acquire_lock(bitnet::kMainActivationFullCoreLock, 1);
            acquire_lock(bitnet::kMainWeightFullCoreLock, 1);

            const bfloat16 *__restrict wt =
                (chunk & 1) == 0 ? wt_ping : wt_pong;
            const bfloat16 *__restrict act =
                (chunk & 1) == 0
                    ? reinterpret_cast<const bfloat16 *>(act_ping)
                    : reinterpret_cast<const bfloat16 *>(act_pong);
            accum_bf16_chunk(acc0, acc1, wt, act);

            release_lock(bitnet::kMainActivationEmptyCoreLock, 1);
            release_lock(bitnet::kMainWeightEmptyCoreLock, 1);
        }

        acquire_lock(bitnet::kMainRecordEmptyCoreLock, 1);
        int32_t *record =
            ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
        emit_record(acc0, acc1, record, record_header);
        *record_toggle += 1;
        release_lock(bitnet::kMainRecordFullCoreLock, 1);
    }
}

// Convenience wrappers
__attribute__((always_inline)) static inline void
run_q_only_body(bfloat16 *wt_ping, bfloat16 *wt_pong,
                int32_t *act_ping, int32_t *act_pong,
                int32_t *record_ping, int32_t *record_pong,
                int32_t *record_toggle) {
    run_projection_body<bitnet::kQBodyRecords, bitnet::kQChunksPerRecord>(
        wt_ping, wt_pong, act_ping, act_pong,
        record_ping, record_pong,
        bitnet::kQCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_qkv_body(bfloat16 *wt_ping, bfloat16 *wt_pong,
             int32_t *act_ping, int32_t *act_pong,
             int32_t *record_ping, int32_t *record_pong,
             int32_t *record_toggle) {
    constexpr int32_t kQkvBodyRecords =
        bitnet::kQBodyRecords + bitnet::kKvBodyRecords + bitnet::kKvBodyRecords;
    run_projection_body<kQkvBodyRecords, bitnet::kQChunksPerRecord>(
        wt_ping, wt_pong, act_ping, act_pong,
        record_ping, record_pong,
        bitnet::kQCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_o_body(bfloat16 *wt_ping, bfloat16 *wt_pong,
           int32_t *act_ping, int32_t *act_pong,
           int32_t *record_ping, int32_t *record_pong,
           int32_t *record_toggle) {
    run_projection_body<bitnet::kOBodyRecords, bitnet::kOChunksPerRecord>(
        wt_ping, wt_pong, act_ping, act_pong,
        record_ping, record_pong,
        bitnet::kOCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_upgate_body(bfloat16 *wt_ping, bfloat16 *wt_pong,
                int32_t *act_ping, int32_t *act_pong,
                int32_t *record_ping, int32_t *record_pong,
                int32_t *record_toggle) {
    run_projection_body<bitnet::kUpGateReplays, bitnet::kUpGateChunksPerReplay>(
        wt_ping, wt_pong, act_ping, act_pong,
        record_ping, record_pong,
        bitnet::kFfnCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_down_body(bfloat16 *wt_ping, bfloat16 *wt_pong,
              int32_t *act_ping, int32_t *act_pong,
              int32_t *record_ping, int32_t *record_pong,
              int32_t *record_toggle) {
    run_projection_body<bitnet::kDownBodyRecords, bitnet::kDownChunksPerRecord>(
        wt_ping, wt_pong, act_ping, act_pong,
        record_ping, record_pong,
        bitnet::kDownCompactPacketId, record_toggle);
}

} // namespace

extern "C" {

void bitnet_main16_layer_scheduler(bfloat16 *wt_ping, bfloat16 *wt_pong,
                                   int32_t *act_ping, int32_t *act_pong,
                                   int32_t *record_ping, int32_t *record_pong,
                                   int32_t group, int32_t row,
                                   int32_t num_rows, int32_t phase_limit) {
    ::aie::set_rounding(aie::rounding_mode::conv_even);
    (void)group;
    (void)row;
    (void)num_rows;
    int32_t record_toggle = 0;

    if (phase_limit == bitnet::kQPhase + 1) {
        run_q_only_body(wt_ping, wt_pong, act_ping, act_pong,
                        record_ping, record_pong, &record_toggle);
        return;
    }

    if (phase_limit >= bitnet::kMain16PhaseLimitQkv) {
        run_qkv_body(wt_ping, wt_pong, act_ping, act_pong,
                     record_ping, record_pong, &record_toggle);
    }
    if (phase_limit >= bitnet::kMain16PhaseLimitQkvo) {
        run_o_body(wt_ping, wt_pong, act_ping, act_pong,
                   record_ping, record_pong, &record_toggle);
    }
    if (phase_limit >= bitnet::kMain16PhaseLimitUpGate) {
        run_upgate_body(wt_ping, wt_pong, act_ping, act_pong,
                        record_ping, record_pong, &record_toggle);
    }
    if (phase_limit >= bitnet::kMain16PhaseLimitFull) {
        run_down_body(wt_ping, wt_pong, act_ping, act_pong,
                      record_ping, record_pong, &record_toggle);
    }
}

} // extern "C"
