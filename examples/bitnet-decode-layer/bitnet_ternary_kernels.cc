// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

// BitNet ternary 2-bit packed matmul AIE kernel for Strix Halo NPU.
// Decodes packed uint8 → ternary BF16 and accumulates with activation.
//
// Packed format: each uint8 contains 4 ternary values:
//   bits[0:1] = value 0: 00→-1, 01→0, 10→+1, 11→-1
//   bits[2:3] = value 1
//   bits[4:5] = value 2
//   bits[6:7] = value 3

#include <aie_api/aie.hpp>
#include <aie_api/utils.hpp>
#include <adf/intrinsics.h>
#include <stdint.h>

#include "bitnet_constants.h"

namespace {

using namespace bitnet;

// ── Constants ──────────────────────────────────────────────────
// Each tile processes kRowLanes output rows in parallel
constexpr int32_t kRowLanes = kMainRowsPerTileRevised;  // 32

// Process 4 ternary values (1 byte) per iteration lane
constexpr int32_t kTernaryPerIter = 4;

// 32 output lanes × 4 ternary values = 128 values processed in 256-dim stride
// 256/4 = 64 iterations per chunk, but we vectorize:
//   8 lanes × 4 ternary = 32 input dims processed at once
//   256 / 32 = 8 iterations
constexpr int32_t kInputPerVec = 8 * kTernaryPerIter;  // 32
constexpr int32_t kChunkIterations = kActChunkBf16 / kInputPerVec;  // 8

// Scale is per-row-lane: 32 bf16 per chunk

using Acc = aie::accum<accfloat, kRowLanes>;
constexpr int32_t kPack64Rows = kRowLanes * 2;  // 64 (total rows per tile)
constexpr int32_t kScaleBf16PerChunk = kRowLanes;  // 32
constexpr int32_t kTernaryBytesPerChunk = kActChunkBf16 / kTernaryValuesPerByte;  // 64
constexpr int32_t kChunkWeightBytes = kTernaryBytesPerChunk + kScaleBf16PerChunk * 2;  // 64 + 64 = 128
constexpr int32_t kChunkDmaBf16 = (kChunkWeightBytes + 127) / 128 * 64;  // round to 128B boundary

// ── Zero accumulators ──────────────────────────────────────────
__attribute__((always_inline)) static inline Acc zero_acc() {
  return aie::zeros<accfloat, kRowLanes>();
}

// ── Ternary decode: 8 bytes → 32 BF16 ternary values ───────────
// Load 8 packed bytes, extract 32 ternary values, decode to BF16.
// Result is a 32-element BF16 vector.
__attribute__((always_inline)) static inline aie::vector<bfloat16, 32>
decode_ternary_8bytes(const uint8_t *__restrict base, int32_t byte_offset) {
  // Load 8 bytes from weight data
  aie::vector<uint8, 8> bytes = aie::load_v<8>(base + byte_offset);
  
  // We need to extract 2-bit values from each byte and assemble.
  // AIE2P can unpack uint8 to uint16, then use shifts.
  // Strategy: unpack each byte's 4 nibbles into separate uint8 lanes.
  // 
  // For each byte: bits[0:1][2:3][4:5][6:7] → 4 values {0-3}
  // 
  // Approach: expand each 2-bit field to a full byte, then convert to BF16.
  // Since AIE has aie::to_float<uint8>, we map:
  //   0 → 0 (which maps to -1.0)
  //   1 → 1 (which maps to  0.0)  
  //   2 → 2 (which maps to +1.0)
  //   3 → 3 (which maps to -1.0)
  //
  // After to_float: subtract 1.0, clamp values > 1.0 to -1.0
  
  // Step 1: Broadcast bytes to 32-element uint8, then extract each pair of bits
  // We'll do this more directly:
  
  // Actually, we can use uint8→uint16 unpacking and then 
  // extract 2-bit groups using shifts
  
  // Since AIE2P has v32uint8 support, let's use a 32-byte load for efficiency
  // Each iteration processes 8 bytes → 32 ternary values
  
  aie::vector<uint8, 8> shift0 = {0, 2, 4, 6, 0, 2, 4, 6};  // shift amounts per lane
  aie::vector<uint8, 8> lane_bits = aie::lsr(bytes, shift0);  // extract 2-bit field to low bits
  aie::vector<uint8, 8> mask3 = aie::broadcast<uint8, 8>(3);
  aie::vector<uint8, 8> nibbles = aie::and_(lane_bits, mask3);  // isolate 2 bits
  
  // Convert to BF16: nibbles ∈ {0,1,2,3}
  aie::vector<bfloat16, 8> nibbles_bf16 = aie::to_float<bfloat16>(nibbles, 0);
  // nibbles_bf16 = {0.0, 1.0, 2.0, 3.0}
  
  // Map to ternary: 0→-1.0, 1→0.0, 2→+1.0, 3→-1.0
  aie::vector<bfloat16, 8> ones_bf16 = aie::broadcast<bfloat16, 8>(1.0f);
  aie::vector<bfloat16, 8> minus_ones_bf16 = aie::broadcast<bfloat16, 8>(-1.0f);
  
  // Subtract 1: {0→-1, 1→0, 2→1, 3→2}
  nibbles_bf16 = aie::sub(nibbles_bf16, ones_bf16);
  
  // If > 1.0, set to -1.0 (for value 3→2→-1)
  aie::mask<8> overflow = aie::gt(nibbles_bf16, ones_bf16);
  nibbles_bf16 = aie::select(nibbles_bf16, minus_ones_bf16, overflow);
  
  // Now we have 8 ternary BF16 values. But we need 32. 
  // For efficiency, we process 4 bytes at a time, producing 16 values.
  // Let's restructure: load 4 bytes, produce 16 values.
  // 
  // With AIE2P, we can do:
  //   load 4 uint8 → uint16[4] → extract nibbles → convert
  
  // Full approach with 4 bytes:
  aie::vector<uint8, 4> b4 = bytes.template extract<4>(0);
  // For aie2p, extract 2-bit from each of 4 lanes
  // Lane 0: bits[0:1], Lane 1: bits[2:3], Lane 2: bits[4:5], Lane 3: bits[6:7]
  
  // Use a shift-accumulate pattern for each lane.
  // For each of 4 lanes, shift by 0/2/4/6 to extract 2-bit field
  // Then combine into 4×4 = 16 values.
  
  return aie::zeros<bfloat16, 32>();  // placeholder
}

// ── Accumulate ternary chunk ───────────────────────────────────
// Process one activation chunk (256 BF16) against one weight chunk
// (64 bytes packed ternary + 32 bf16 scales).
__attribute__((always_inline)) static inline void
accum_ternary_chunk(Acc &acc,
                    const uint8_t *__restrict weight_data,
                    const bfloat16 *__restrict weight_scales,
                    const bfloat16 *__restrict activation) {
  // Load scales once (32 lanes)
  aie::vector<bfloat16, kRowLanes> scale_vec = aie::load_v<kRowLanes>(weight_scales);
  
  // Process 256 input dims in kChunkIterations (8) iterations
  // Each iteration processes kInputPerVec (32) input values.
  // For each iteration, we need 8 packed bytes → 32 ternary values.
  
  // With 32 output lanes, we do parallel MAC: acc[l] += tern_val[t] * act[t] * scale[l]
  // This is: acc = mac(acc, broadcast(tern_val * act), scale)
  
  for (int32_t iter = 0; iter < kChunkIterations; iter++)
      chess_loop_range(kChunkIterations, kChunkIterations) {
    
    // Load 8 bytes of packed ternary (→ 32 values)
    int32_t byte_offset = iter * 8;
    
    // For each of 8 bytes, process individually:
    for (int32_t b = 0; b < 8; b++) {
      uint8_t packed = weight_data[byte_offset + b];
      
      // Extract 4 × 2-bit values
      uint8_t v0 = (packed >> 0) & 3;
      uint8_t v1 = (packed >> 2) & 3;
      uint8_t v2 = (packed >> 4) & 3;
      uint8_t v3 = (packed >> 6) & 3;
      
      // Map to ternary BF16 (0→-1, 1→0, 2→+1, 3→-1)
      bfloat16 t0 = (v0 == 0) ? -1.0f : (v0 == 2) ? 1.0f : 0.0f;
      (void)t0;
      bfloat16 t1 = (v1 == 0) ? -1.0f : (v1 == 2) ? 1.0f : 0.0f;
      bfloat16 t2 = (v2 == 0) ? -1.0f : (v2 == 2) ? 1.0f : 0.0f;
      bfloat16 t3 = (v3 == 0) ? -1.0f : (v3 == 2) ? 1.0f : 0.0f;
      
      // Load 4 activation values
      bfloat16 a0 = activation[iter * 32 + b * 4 + 0];
      bfloat16 a1 = activation[iter * 32 + b * 4 + 1];
      bfloat16 a2 = activation[iter * 32 + b * 4 + 2];
      bfloat16 a3 = activation[iter * 32 + b * 4 + 3];
      
      // Compute product tern_val * act_val (scalar)
      bfloat16 p0 = t0 * a0;
      bfloat16 p1 = t1 * a1;
      bfloat16 p2 = t2 * a2;
      bfloat16 p3 = t3 * a3;
      
      // Broadcast result to 32-lane vector and MAC with scale
      // acc[l] += p * scale[l]
      // Since we can't easily do vec_scalar_mac, we use aie::mac with vectors
      aie::vector<bfloat16, kRowLanes> p0_vec = aie::broadcast<bfloat16, kRowLanes>(p0);
      acc = aie::mac(acc, p0_vec, scale_vec);
      
      aie::vector<bfloat16, kRowLanes> p1_vec = aie::broadcast<bfloat16, kRowLanes>(p1);
      acc = aie::mac(acc, p1_vec, scale_vec);
      
      aie::vector<bfloat16, kRowLanes> p2_vec = aie::broadcast<bfloat16, kRowLanes>(p2);
      acc = aie::mac(acc, p2_vec, scale_vec);
      
      aie::vector<bfloat16, kRowLanes> p3_vec = aie::broadcast<bfloat16, kRowLanes>(p3);
      acc = aie::mac(acc, p3_vec, scale_vec);
    }
  }
}

// ── Record Output ──────────────────────────────────────────────
__attribute__((always_inline)) static inline void
emit_record(Acc &acc, int32_t *record, int32_t header) {
  record[0] = header;
  bfloat16 *payload = reinterpret_cast<bfloat16 *>(record + 1);
  aie::store_v(payload, acc.template to_vector<bfloat16>());
}

// ── Projection Body Runner ─────────────────────────────────────
template <int32_t Records, int32_t ChunksPerRecord>
__attribute__((noinline)) static void
run_projection_body(const uint8_t *__restrict wt_ping,
                    const uint8_t *__restrict wt_pong,
                    const int32_t *__restrict act_ping,
                    const int32_t *__restrict act_pong,
                    int32_t *__restrict record_ping,
                    int32_t *__restrict record_pong,
                    int32_t record_header,
                    int32_t *record_toggle) {
  for (int32_t block = 0; block < Records; block++)
      chess_loop_range(Records, Records) {
    Acc acc = zero_acc();
    
    for (int32_t chunk = 0; chunk < ChunksPerRecord; chunk++)
        chess_loop_range(ChunksPerRecord, ChunksPerRecord) {
      
      // Wait for data availability
      acquire_greater_equal(kMainActivationFullCoreLock, 1);
      acquire_greater_equal(kMainWeightFullCoreLock, 1);
      
      const uint8_t *wt = (chunk & 1) == 0 ? wt_ping : wt_pong;
      const int32_t *act = (chunk & 1) == 0 ? act_ping : act_pong;
      
      const bfloat16 *scales = reinterpret_cast<const bfloat16 *>(wt + kTernaryBytesPerChunk);
      const bfloat16 *act_bf16 = reinterpret_cast<const bfloat16 *>(act);
      
      accum_ternary_chunk(acc, wt, scales, act_bf16);
      
      release(kMainActivationEmptyCoreLock, 1);
      release(kMainWeightEmptyCoreLock, 1);
    }
    
    acquire_greater_equal(kMainRecordEmptyCoreLock, 1);
    int32_t *record = ((*record_toggle) & 1) == 0 ? record_ping : record_pong;
    emit_record(acc, record, record_header);
    *record_toggle += 1;
    release(kMainRecordFullCoreLock, 1);
  }
}

// ── Phase-specific runners ────────────────────────────────────

__attribute__((always_inline)) static inline void
run_q_body(uint8_t *wt_ping, uint8_t *wt_pong,
           int32_t *act_ping, int32_t *act_pong,
           int32_t *record_ping, int32_t *record_pong,
           int32_t *record_toggle) {
  run_projection_body<kQRecordsPerTile, kQChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kQCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_k_body(uint8_t *wt_ping, uint8_t *wt_pong,
           int32_t *act_ping, int32_t *act_pong,
           int32_t *record_ping, int32_t *record_pong,
           int32_t *record_toggle) {
  run_projection_body<kKRecordsPerTile, kQChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kKCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_v_body(uint8_t *wt_ping, uint8_t *wt_pong,
           int32_t *act_ping, int32_t *act_pong,
           int32_t *record_ping, int32_t *record_pong,
           int32_t *record_toggle) {
  run_projection_body<kVRecordsPerTile, kQChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kVCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_o_body(uint8_t *wt_ping, uint8_t *wt_pong,
           int32_t *act_ping, int32_t *act_pong,
           int32_t *record_ping, int32_t *record_pong,
           int32_t *record_toggle) {
  run_projection_body<kORecordsPerTile, kQChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kOCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_upgate_body(uint8_t *wt_ping, uint8_t *wt_pong,
                int32_t *act_ping, int32_t *act_pong,
                int32_t *record_ping, int32_t *record_pong,
                int32_t *record_toggle) {
  run_projection_body<kUpGateRecordsPerTile, kUpGateChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kFfnCompactPacketId, record_toggle);
}

__attribute__((always_inline)) static inline void
run_down_body(uint8_t *wt_ping, uint8_t *wt_pong,
              int32_t *act_ping, int32_t *act_pong,
              int32_t *record_ping, int32_t *record_pong,
              int32_t *record_toggle) {
  run_projection_body<kDownRecordsPerTile, kDownChunksPerRecord>(
      wt_ping, wt_pong, act_ping, act_pong,
      record_ping, record_pong, kDownCompactPacketId, record_toggle);
}

} // anonymous namespace

extern "C" {

// ── Main Scheduler ─────────────────────────────────────────────
// Entry point called by each main16 tile core.
void bitnet_main16_layer_scheduler(uint8_t *wt_ping, uint8_t *wt_pong,
                                   int32_t *act_ping, int32_t *act_pong,
                                   int32_t *record_ping, int32_t *record_pong,
                                   int32_t group, int32_t row,
                                   int32_t num_rows, int32_t phase_limit) {
  ::aie::set_rounding(aie::rounding_mode::conv_even);
  (void)group;
  (void)row;
  (void)num_rows;
  
  int32_t record_toggle = 0;
  
  if (phase_limit == kQPhase + 1) {
    run_q_body(wt_ping, wt_pong, act_ping, act_pong,
               record_ping, record_pong, &record_toggle);
    return;
  }
  
  if (phase_limit >= kMain16PhaseLimitQkv) {
    run_q_body(wt_ping, wt_pong, act_ping, act_pong,
               record_ping, record_pong, &record_toggle);
    run_k_body(wt_ping, wt_pong, act_ping, act_pong,
               record_ping, record_pong, &record_toggle);
    run_v_body(wt_ping, wt_pong, act_ping, act_pong,
               record_ping, record_pong, &record_toggle);
  }
  if (phase_limit >= kMain16PhaseLimitQkvo) {
    run_o_body(wt_ping, wt_pong, act_ping, act_pong,
               record_ping, record_pong, &record_toggle);
  }
  if (phase_limit >= kMain16PhaseLimitUpGate) {
    run_upgate_body(wt_ping, wt_pong, act_ping, act_pong,
                    record_ping, record_pong, &record_toggle);
    run_upgate_body(wt_ping, wt_pong, act_ping, act_pong,
                    record_ping, record_pong, &record_toggle);
  }
  if (phase_limit >= kMain16PhaseLimitFull) {
    run_down_body(wt_ping, wt_pong, act_ping, act_pong,
                  record_ping, record_pong, &record_toggle);
  }
}

} // extern "C"
