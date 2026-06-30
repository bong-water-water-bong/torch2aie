#pragma once

#include <stdint.h>

namespace bitnet {

constexpr int32_t kMainRowsPerTile = 32;
constexpr int32_t kKChunk = 256;
constexpr int32_t kRecordDwords = 17;
constexpr int32_t kRecordPayloadDwords = kRecordDwords - 1;
constexpr int32_t kRecordPayloadBf16 = kRecordPayloadDwords * 2;

constexpr int32_t kQPhase = 0;
constexpr int32_t kKPhase = 1;
constexpr int32_t kVPhase = 2;
constexpr int32_t kOPhase = 3;
constexpr int32_t kUpPhase = 4;
constexpr int32_t kGatePhase = 5;
constexpr int32_t kDownPhase = 6;

constexpr int32_t kMain16PhaseLimitQkv = kVPhase + 1;
constexpr int32_t kMain16PhaseLimitQkvo = kOPhase + 1;
constexpr int32_t kMain16PhaseLimitUpGate = kGatePhase + 1;
constexpr int32_t kMain16PhaseLimitFull = kDownPhase + 1;

constexpr int32_t kQCompactPacketId = 0x1;
constexpr int32_t kKCompactPacketId = 0x1;
constexpr int32_t kVCompactPacketId = 0x1;
constexpr int32_t kOCompactPacketId = 0x4;
constexpr int32_t kFfnCompactPacketId = 0x8;
constexpr int32_t kDownCompactPacketId = 0x4;

constexpr int32_t kMainActivationEmptyLock = 0;
constexpr int32_t kMainActivationFullLock = 1;
constexpr int32_t kMainWeightEmptyLock = 2;
constexpr int32_t kMainWeightFullLock = 3;
constexpr int32_t kMainRecordEmptyLock = 4;
constexpr int32_t kMainRecordFullLock = 5;
constexpr int32_t kCoreLocalLockBase = 0x30;
constexpr int32_t kMainActivationEmptyCoreLock = kCoreLocalLockBase + kMainActivationEmptyLock;
constexpr int32_t kMainActivationFullCoreLock = kCoreLocalLockBase + kMainActivationFullLock;
constexpr int32_t kMainWeightEmptyCoreLock = kCoreLocalLockBase + kMainWeightEmptyLock;
constexpr int32_t kMainWeightFullCoreLock = kCoreLocalLockBase + kMainWeightFullLock;
constexpr int32_t kMainRecordEmptyCoreLock = kCoreLocalLockBase + kMainRecordEmptyLock;
constexpr int32_t kMainRecordFullCoreLock = kCoreLocalLockBase + kMainRecordFullLock;

// BitNet b1.58-2B-4T dimensions
constexpr int32_t kHiddenDim = 2560;
constexpr int32_t kIntermediateDim = 6912;
constexpr int32_t kHeadDim = 128;
constexpr int32_t kNumQHeads = 20;
constexpr int32_t kNumKvHeads = 5;      // GQA ratio = 4
constexpr int32_t kGqaRatio = 4;

// Output block rows (main columns × M_PER_TILE = 4 × 128 / rows_per_patch ... no)
// 512 = 16 tiles × 32 rows = 4 columns × 4 rows × 32 rows/tile = 512
// Actually: OUTPUT_BLOCK_ROWS = len(MAIN_COLUMNS) * M_PER_TILE * ROWS_PER_COLUMN
// = 4 * 32 * 4 = 512
constexpr int32_t kOutputBlockRows = 512;

// Compact record payload length
// Q: main columns × main rows = 4 × 4 = 16 payload bf16 per compact record
constexpr int32_t kCompactPayloadBf16 = 4 * 4 * kRecordPayloadBf16;  // = 256

// Weight chunk bases — these are index offsets into the weight L2 buffer
// Calculations based on patch counts from contract.py:
// Q: 40 patches, K: 16, V: 16, O: 40, UP: 112, GATE: 112, DOWN: 40
// Each patch = 2 rows × CHUNK_BF16 bf16
constexpr int32_t kKWeightChunkBase = 40;              // after Q (40 patches)
constexpr int32_t kVWeightChunkBase = 40 + 16;         // after Q+K
constexpr int32_t kFullLayerOWeightChunkBase = 40 + 16 + 16;  // after Q+K+V
constexpr int32_t kFullLayerUpGateWeightChunkBase = 40 + 16 + 16 + 40;  // after Q+K+V+O
constexpr int32_t kFullLayerDownWeightChunkBase = 40 + 16 + 16 + 40 + 112 + 112;  // after Q+K+V+O+UP+GATE

// Sub-phase replay counts
constexpr int32_t kQBodyRecords = 5;
constexpr int32_t kKvBodyRecords = 2;
constexpr int32_t kOBodyRecords = 5;
constexpr int32_t kUpGateReplays = 28;
constexpr int32_t kDownBodyRecords = 5;

constexpr int32_t kQChunksPerRecord = 10;
constexpr int32_t kKvChunksPerRecord = 10;
constexpr int32_t kOChunksPerRecord = 10;
constexpr int32_t kUpGateChunksPerReplay = 10;
constexpr int32_t kDownChunksPerRecord = 27;

} // namespace bitnet
