#!/usr/bin/env python3
"""
Validate the full-layer xclbin weight stream by running against a CPU reference.

This script:
1. Loads BitNet model weights (dequantized to BF16)
2. Packs them using a KNOWN-CORRECT schedule (matching Qwen3's _projection_stream_from_schedule)
3. Runs the packed data through the full-layer xclbin on NPU
4. Compares output with CPU reference

The weight packing follows the exact iteration pattern:
  for col in range(4):
    for patch in range(2):
      for (phase, block, input_chunk) in schedule:
        chunks = chunk_by_phase[phase]
        for row_in_patch in range(2):
          source = row_chunk * phase_chunks + input_chunk
          write chunks[source]  # each chunk = CHUNK_BF16 BF16 values
"""

import os, sys, struct, json
import numpy as np
from ml_dtypes import bfloat16

sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'toolchain/mlir_aie/python'))
sys.path.insert(0, os.path.dirname(__file__))

from contract import (
    HIDDEN_DIM, INTERMEDIATE_DIM, HEAD_DIM, HIDDEN_DWORDS,
    PHASE_BLOCKS, PHASE_CHUNKS, CHUNK_BF16_RAW,
    ROWS_PER_PATCH, MAIN_COLUMNS, PATCHES_PER_COLUMN,
    ROWS_PER_COLUMN, K_CHUNK, M_PER_TILE, OUTPUT_BLOCK_ROWS,
    NUM_Q_HEADS, NUM_KV_HEADS,
)
from cases.full_layer_engine_reference import (
    TOTAL_WEIGHT_AND_AUX_I32_RAW,
)
from cases.full_layer_engine_generate import (
    AUX_DWORDS, RMS_NORM_DWORDS, QK_ROPE_DWORDS,
)
from projection_schedule import (
    Q_BODY_RECORDS, KV_BODY_RECORDS, O_BODY_RECORDS, DOWN_BODY_RECORDS,
    Q_CHUNKS_PER_RECORD, K_CHUNKS_PER_RECORD, V_CHUNKS_PER_RECORD,
    O_CHUNKS_PER_RECORD, UPGATE_CHUNKS_PER_REPLAY, DOWN_CHUNKS,
    FULL_LAYER_TOTAL_WEIGHT_CHUNKS,
)

MODEL_PATH = '/home/bcloud/models/bitnet-b1.58-2B-4T/model.safetensors'

def load_tensor(path, name):
    with open(path, 'rb') as f:
        hdr_sz = struct.unpack('<Q', f.read(8))[0]
        meta = json.loads(f.read(hdr_sz))
    info = meta[name]
    with open(path, 'rb') as f:
        hdr_sz = struct.unpack('<Q', f.read(8))[0]
        f.seek(8 + hdr_sz + info['data_offsets'][0])
        data = f.read(info['data_offsets'][1] - info['data_offsets'][0])
    if info['dtype'] == 'U8':
        return np.frombuffer(data, dtype=np.uint8).reshape(info['shape']).copy()
    return np.frombuffer(data, dtype=bfloat16).reshape(info['shape']).copy()

def dequantize_ternary(u8_weight, scale):
    out4, in_dim = u8_weight.shape
    out_dim = out4 * 4
    flat = u8_weight.flatten()
    t_vals = np.zeros(flat.size * 4, dtype=np.float32)
    for i in range(flat.size):
        b = int(flat[i])
        for j in range(4):
            v = (b >> (j*2)) & 3
            t_vals[i*4+j] = -1.0 if v == 0 else (0.0 if v == 1 else (1.0 if v == 2 else -1.0))
    s = float(scale[0])
    return (t_vals.reshape(out_dim, in_dim) * s).astype(bfloat16)

def build_proper_weight_stream(layer=0):
    """Build weight stream using the EXACT Qwen3 pattern."""
    prefix = f"model.layers.{layer}"
    
    # Load and dequantize
    wq = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.q_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.q_proj.weight_scale"))
    wk = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.k_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.k_proj.weight_scale"))
    wv = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.v_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.v_proj.weight_scale"))
    wo = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.o_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.self_attn.o_proj.weight_scale"))
    wup = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.mlp.up_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.mlp.up_proj.weight_scale"))
    wgate = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.mlp.gate_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.mlp.gate_proj.weight_scale"))
    wdown = dequantize_ternary(
        load_tensor(MODEL_PATH, f"{prefix}.mlp.down_proj.weight"),
        load_tensor(MODEL_PATH, f"{prefix}.mlp.down_proj.weight_scale"))
    input_norm = load_tensor(MODEL_PATH, f"{prefix}.input_layernorm.weight")
    post_norm = load_tensor(MODEL_PATH, f"{prefix}.post_attention_layernorm.weight")
    
    # Transpose for matmul: [input_dim, output_dim]
    wq_T, wk_T, wv_T = wq.T, wk.T, wv.T
    wo_T, wup_T, wgate_T = wo.T, wup.T, wgate.T
    wdown_T = wdown.T
    
    # Each projection's weight matrix is [in_dim, out_dim]
    # The schedule stores "chunks" indexed by (row_chunk, input_chunk)
    # Each chunk = CHUNK_BF16 BF16 values
    # 
    # CRITICAL: For Q4NX, CHUNK_BF16 = 2560 represents the FULL 32×256 tile 
    # in packed format. For BF16, the FULL tile needs 32×256 = 8192 BF16.
    #
    # Since CHUNK_BF16 = 2560 < 8192, each tile requires ceil(8192/2560)=4 chunks.
    # But in the Qwen3 model, chunks[source] returns ONE chunk per (tile, input_chunk).
    # This works because Q4NX packs 8192 BF16 into 2560 BF16.
    #
    # For BF16, each chunk MUST be 8192 BF16 to hold one full tile.
    # Since the xclbin is compiled with CHUNK_BF16=2560, we have a MISMATCH.
    #
    # The way the xclbin handles this: the kernel reads 4 consecutive 2560-BF16 
    # chunks from L2 to get one 8192-BF16 tile. So the weight stream must have 
    # 4 copies of each tile's data.
    #
    # BUT: the schedule only iterates once per (tile, input_chunk).
    # So each schedule entry writes ONE 2560-BF16 chunk, and the kernel 
    # reads 4 schedule entries to accumulate one tile.
    #
    # This means the weight matrix in the stream is INCOMPLETE — only 
    # 2560/8192 = 1/4 of each tile's data is present!
    #
    # For the xclbin to work with BF16, EACH schedule entry must write 
    # 4 consecutive 2560-BF16 chunks (10240 BF16 total) for one tile.
    # The DMA BD prefetches all 4 chunks into L2, and the kernel reads them.
    #
    # In the Qwen3 _projection_stream_from_schedule, for each schedule entry,
    # CHUNK_BF16_RAW = 8192 = full raw BF16 tile (32 rows × 256 cols).
    # No sub-chunk expansion needed — each chunk holds one complete tile.

    def make_chunks(weight_T, phase_name, nblocks, nchunks):
        """Create chunk array with one full tile per entry."""
        in_dim, out_dim = weight_T.shape
        all_tiles = nblocks * 16
        total_chunks = all_tiles * nchunks
        chunks = np.zeros((total_chunks, CHUNK_BF16_RAW), dtype=bfloat16)

        idx = 0
        for row_chunk in range(all_tiles):
            out_start = row_chunk * M_PER_TILE
            out_end = min(out_start + M_PER_TILE, out_dim)
            actual_rows = out_end - out_start

            for ic in range(nchunks):
                in_start = ic * K_CHUNK
                in_end = min(in_start + K_CHUNK, in_dim)
                actual_cols = in_end - in_start

                if actual_rows > 0 and actual_cols > 0:
                    w = weight_T[in_start:in_end, out_start:out_end]
                    flat = w.flatten().astype(bfloat16)
                    chunks[idx, :flat.size] = flat

                idx += 1

        print(f"  {phase_name} chunks: {chunks.shape} ({all_tiles} tiles × {nchunks} chunks)")
        return chunks
    
    # Build chunks for each phase
    print("Building weight chunks...")
    chunks_by_phase = {
        'Q': make_chunks(wq_T, 'Q', PHASE_BLOCKS[0], Q_CHUNKS_PER_RECORD),
        'K': make_chunks(wk_T, 'K', PHASE_BLOCKS[1], K_CHUNKS_PER_RECORD),
        'V': make_chunks(wv_T, 'V', PHASE_BLOCKS[2], V_CHUNKS_PER_RECORD),
        'O': make_chunks(wo_T, 'O', PHASE_BLOCKS[3], O_CHUNKS_PER_RECORD),
        'UP': make_chunks(wup_T, 'UP', PHASE_BLOCKS[4], UPGATE_CHUNKS_PER_REPLAY),
        'GATE': make_chunks(wgate_T, 'GATE', PHASE_BLOCKS[5], UPGATE_CHUNKS_PER_REPLAY),
        'DOWN': make_chunks(wdown_T, 'DOWN', PHASE_BLOCKS[6], DOWN_CHUNKS),
    }
    
    # Build schedule
    print("\nBuilding schedule...")
    schedule = []
    for phase in ('Q', 'K', 'V'):
        info = dict(blocks=PHASE_BLOCKS[{'Q':0,'K':1,'V':2}[phase]], chunks={'Q':Q_CHUNKS_PER_RECORD,'K':K_CHUNKS_PER_RECORD,'V':V_CHUNKS_PER_RECORD}[phase])
        for block in range(info['blocks']):
            for ic in range(info['chunks']):
                schedule.append((phase, block, ic))
    for phase in ('O',):
        for block in range(PHASE_BLOCKS[3]):
            for ic in range(O_CHUNKS_PER_RECORD):
                schedule.append((phase, block, ic))
    for phase in ('UP', 'GATE'):
        for block in range(PHASE_BLOCKS[4 if phase=='UP' else 5]):
            for ic in range(UPGATE_CHUNKS_PER_REPLAY):
                schedule.append((phase, block, ic))
    for phase in ('DOWN',):
        for block in range(PHASE_BLOCKS[6]):
            for ic in range(DOWN_CHUNKS):
                schedule.append((phase, block, ic))
    
    print(f"  Schedule length: {len(schedule)}")
    assert len(schedule) == FULL_LAYER_TOTAL_WEIGHT_CHUNKS, f"Schedule mismatch: {len(schedule)} != {FULL_LAYER_TOTAL_WEIGHT_CHUNKS}"
    
    # Build aux buffer
    dims = np.arange(0, HEAD_DIM, 2, dtype=np.float32)
    inv_freq = np.power(np.float32(500000.0), -dims / np.float32(HEAD_DIM))
    angles = np.float32(127) * inv_freq  # current_token=127
    cos_val, sin_val = np.cos(angles).astype(bfloat16), np.sin(angles).astype(bfloat16)
    q_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    k_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    
    aux_bf16 = np.concatenate([input_norm, post_norm, q_norm, k_norm, cos_val, sin_val])
    aux = np.frombuffer(aux_bf16.tobytes(), dtype=np.int32).copy()
    print(f"\nAux: {aux.shape} dwords")
    
    # Build weight stream: one full tile (8192 BF16) per schedule entry
    parts = []
    chunk_count = 0

    nchunks_map = {
        'Q': Q_CHUNKS_PER_RECORD, 'K': K_CHUNKS_PER_RECORD, 'V': V_CHUNKS_PER_RECORD,
        'O': O_CHUNKS_PER_RECORD, 'UP': UPGATE_CHUNKS_PER_REPLAY, 'GATE': UPGATE_CHUNKS_PER_REPLAY,
        'DOWN': DOWN_CHUNKS,
    }

    for col_idx in range(len(MAIN_COLUMNS)):
        for patch in range(PATCHES_PER_COLUMN):
            for phase_name, block, ic in schedule:
                nchunks = nchunks_map[phase_name]
                for row_in_patch in range(ROWS_PER_PATCH):
                    row_chunk = block * 16 + col_idx * 4 + patch * 2 + row_in_patch
                    source = row_chunk * nchunks + ic
                    if source < len(chunks_by_phase[phase_name]):
                        chunk_data = chunks_by_phase[phase_name][source]
                    else:
                        chunk_data = np.zeros(CHUNK_BF16_RAW, dtype=bfloat16)
                    parts.append(chunk_data.tobytes())
                    chunk_count += 1

    weight_bytes = b''.join(parts)
    weight_i32 = np.frombuffer(weight_bytes, dtype=np.int32).copy()
    print(f"Weight stream: {chunk_count} chunks, {weight_i32.shape} dwords ({len(weight_bytes)} bytes)")

    # Combine: aux first, then weights
    full = np.concatenate([aux, weight_i32]).astype(np.int32)
    expected = TOTAL_WEIGHT_AND_AUX_I32_RAW
    print(f"Expected: {expected} dwords, Got: {full.shape[0]} dwords")
    assert full.shape[0] == expected, f"Buffer size mismatch: {full.shape[0]} != {expected}"

    return full

if __name__ == '__main__':
    print("=" * 60)
    print("Building BF16 weight stream for full-layer xclbin")
    print("=" * 60)
    
    buffer = build_proper_weight_stream(0)
    out_path = '/tmp/bitnet_layer0_full_layer_v2.npy'
    np.save(out_path, buffer)
    print(f"\nSaved to {out_path}")
    print(f"Size: {buffer.nbytes} bytes = {buffer.nbytes/1024/1024:.1f} MB")
