#pragma once

#include <stdint.h>

namespace bitnet {

// BitNet b1.58-2B-4T architecture constants
constexpr int32_t kHiddenDim = 2560;
constexpr int32_t kIntermediateDim = 6912;
constexpr int32_t kNumHeads = 20;
constexpr int32_t kNumKVHeads = 5;
constexpr int32_t kHeadDim = 128;

// AIE tile configuration
constexpr int32_t kMainRowsPerTile = 64;     // 64 output rows per main16 tile
constexpr int32_t kMainCols = 4;              // 4 columns of main tiles (2-5)
constexpr int32_t kMainRows = 4;              // 4 rows of main tiles (2-5)

// Chunk and dataflow
constexpr int32_t kActChunkBf16 = 256;        // Activation dimension per chunk
constexpr int32_t kChunkDwords = kActChunkBf16 / 2;  // = 128
  
// Ternary 2-bit packing: 4 values per uint8
// Each byte: lanes [0:1] [2:3] [4:5] [6:7] → ternary {-1,0,+1}
// Value mapping: 0b00=-1, 0b01=0, 0b10=+1, 0b11=-1
constexpr int32_t kTernaryValuesPerByte = 4;
constexpr int32_t kTernaryBytesPerChunk = kActChunkBf16 / kTernaryValuesPerByte;  // = 64

// Weight format per chunk:
//   [kTernaryBytesPerChunk bytes of packed ternary]
//   [kMainRowsPerTile * sizeof(bfloat16) bytes of per-row weight_scale]
//   = 64 + 128 = 192 bytes = 96 bf16 words
// But we align to 128-byte DMA, so pad to 256 bytes = 128 bf16 words
constexpr int32_t kTernaryChunkBf16 = 128;    // DMA granules of 256 bytes
constexpr int32_t kTernaryChunkBytes = kTernaryChunkBf16 * 2;  // 256

// Record format: same as Q4NX (header + payload)
constexpr int32_t kRecordDwords = 17;
constexpr int32_t kRecordPayloadDwords = kRecordDwords - 1;  // 16
constexpr int32_t kRecordPayloadBf16 = kRecordPayloadDwords * 2;  // 32
// kMainRowsPerTile = 64 → 128 bytes → fits in record payload (32 bf16 = 64 bytes)
// Actually we can only output kRecordPayloadBf16 = 32 bf16 per record
// So each record outputs 32 of 64 rows → need 2 records per tile per block
// OR: reduce kMainRowsPerTile to 32 (same as Q4NX)
// Let's use 32 to keep record format compatible.

// Revised with kMainRowsPerTile = 32:
constexpr int32_t kMainRowsPerTileRevised = 32;
constexpr int32_t kRecordsPerBlock = 1;       // 32 rows fit in one record payload (32 bf16)
constexpr int32_t kOutputRowsPerBlock = kMainRowsPerTileRevised;  // 32

// Phase IDs
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

// Header/Packet IDs (keeping Q4NX values for compatibility)
constexpr int32_t kQCompactPacketId = 0x1;
constexpr int32_t kKCompactPacketId = 0x1;
constexpr int32_t kVCompactPacketId = 0x1;
constexpr int32_t kOCompactPacketId = 0x4;
constexpr int32_t kFfnCompactPacketId = 0x8;
constexpr int32_t kDownCompactPacketId = 0x4;

// Lock IDs (same as Q4NX)
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

// Schedule: Phase decomposition for BitNet dimensions
// Q:    [2560, 2560] → 2560/32 * 2560/256 = 80 * 10 = 800 chunks total
//       Per tile (4×4 grid): each tile gets N/4 * M/4 rows
//       Each tile: 10 chunks * 20 rows = 200 chunks per tile
//       200 × 16 tiles / (256/32 output rows per record) = ? 
// Let's compute properly:
//   Output blocks per phase = output_dim / kOutputRowsPerBlock / num_main_tiles
//   Q: 2560/32/16 = 5 blocks per tile
//   K: 640/32/16 = 1.25 → round up → 2, but only 4 tiles needed
//   V: same as K
//   O: 2560/32/16 = 5 blocks per tile
//   Gate: 6912/32/16 = 13.5 → 14 blocks per tile
//   Up: 14 blocks per tile
//   Down: 2560/32/16 = 5 blocks per tile (input is 6912 though)
// 
// Actually, the tiling is more complex (rows × columns). Let's simplify:
// Each main tile handles a rectangular tile of the output matrix.
// With 4 cols × 4 rows = 16 tiles:
//   Q: out=2560 → each tile row handles 2560/4 = 640 output rows
//      in=2560 → each tile col handles 2560/4 = 640 input cols
//      chunks = 640/256 * 640/32 = 2.5 * 20 = 50 chunks per tile for Q
//      records = 640/32 = 20 records per tile for Q
//
// This is getting complex. Let's just define for a SINGLE tile's schedule.
// Each main tile handles one (output_row_block, input_col_block) pair.
// For BitNet:
//   output_rows_per_tile = 32
//   input_cols_per_tile = 256 (= kActChunkBf16)

// Records per phase (per tile):
// Q:    output_dim/32/16 = 5.0 blocks per tile → 5 records
// K:    output_dim/32/16/4 = 640/32/64 = 0.3... need to handle GQA
//   Actually K=output=640 = 5*128 = 5 heads × 128 dim → 20 output rows per 4-tile col
//   GQA: 20 Q heads, 5 KV heads → GQA ratio 4:1
//   K only needs 4 tiles (1 column) for 5 heads × 128 dim output = 640
//   640/32/4 = 5 records per K tile
// V: same as K

// For a full layer, the tile processes multiple phases sequentially.
// Each phase has a fixed schedule of (chunks_read, records_output).

// Phase 0 (Q): 2560/32*2560/256 = 800 chunks → 2560/(32*16) = 5 records per tile
//   chunks/record = 800/5/16 = 10 chunks per record

constexpr int32_t kQChunksPerRecord = 10;
constexpr int32_t kQRecordsPerTile = 5;
constexpr int32_t kKRecordsPerTile = 5;   // (640/32)/(4 tiles in 1 col)
constexpr int32_t kVRecordsPerTile = 5;
constexpr int32_t kORecordsPerTile = 5;
constexpr int32_t kUpGateRecordsPerTile = 14;  // ceil(6912/32/16)
constexpr int32_t kDownRecordsPerTile = 5;
constexpr int32_t kUpGateChunksPerRecord = 27;  // ceil(6912/256/14)
constexpr int32_t kDownChunksPerRecord = 27;    // input=6912, 256 per chunk

// Total records per tile in a full layer
constexpr int32_t kFullLayerRecordsPerTile = 
    kQRecordsPerTile + kKRecordsPerTile + kVRecordsPerTile + 
    kORecordsPerTile + 2 * kUpGateRecordsPerTile + kDownRecordsPerTile;
// = 5 + 5 + 5 + 5 + 28 + 5 = 53 records per tile

// Total chunks per tile for a full layer
constexpr int32_t kFullLayerChunksPerTile = 
    kQRecordsPerTile * kQChunksPerRecord +
    kKRecordsPerTile * kQChunksPerRecord +     // same chunk dim for K
    kVRecordsPerTile * kQChunksPerRecord +
    kORecordsPerTile * kQChunksPerRecord +
    2 * kUpGateRecordsPerTile * kUpGateChunksPerRecord +
    kDownRecordsPerTile * kDownChunksPerRecord;
// = 5*10 + 5*10 + 5*10 + 5*10 + 28*27 + 5*27 = 200 + 756 + 135 = 1091

} // namespace bitnet
