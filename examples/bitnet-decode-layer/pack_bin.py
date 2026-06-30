#!/usr/bin/env python3
"""
Pack BitNet dequantized BF16 weights into the 555-chunk weight stream format
and save to a binary file that C++ can load directly.
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
    ROWS_PER_COLUMN, K_CHUNK, M_PER_TILE,
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

def build_weight_stream(model_path, layer):
    """Build the complete weight buffer for one BitNet layer."""
    prefix = f"model.layers.{layer}"
    print(f"Packing layer {layer}...")
    
    # Load and dequantize all projections
    wq = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.self_attn.q_proj.weight"),
        load_tensor(model_path, f"{prefix}.self_attn.q_proj.weight_scale"))
    wk = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.self_attn.k_proj.weight"),
        load_tensor(model_path, f"{prefix}.self_attn.k_proj.weight_scale"))
    wv = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.self_attn.v_proj.weight"),
        load_tensor(model_path, f"{prefix}.self_attn.v_proj.weight_scale"))
    wo = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.self_attn.o_proj.weight"),
        load_tensor(model_path, f"{prefix}.self_attn.o_proj.weight_scale"))
    wup = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.mlp.up_proj.weight"),
        load_tensor(model_path, f"{prefix}.mlp.up_proj.weight_scale"))
    wgate = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.mlp.gate_proj.weight"),
        load_tensor(model_path, f"{prefix}.mlp.gate_proj.weight_scale"))
    wdown = dequantize_ternary(
        load_tensor(model_path, f"{prefix}.mlp.down_proj.weight"),
        load_tensor(model_path, f"{prefix}.mlp.down_proj.weight_scale"))
    
    input_norm = load_tensor(model_path, f"{prefix}.input_layernorm.weight")
    post_norm = load_tensor(model_path, f"{prefix}.post_attention_layernorm.weight")
    
    # Transpose for matmul: [input_dim, output_dim]
    wq_T, wk_T, wv_T = wq.T, wk.T, wv.T
    wo_T, wup_T, wgate_T = wo.T, wup.T, wgate.T
    wdown_T = wdown.T
    
    print(f"  Weights: Q{wq_T.shape}, K{wk_T.shape}, V{wv_T.shape}, O{wo_T.shape}, UP{wup_T.shape}, GATE{wgate_T.shape}, DOWN{wdown_T.shape}")
    
    # Sub-chunks per logical tile
    SUB_CHUNKS = (K_CHUNK * M_PER_TILE + CHUNK_BF16_RAW - 1) // CHUNK_BF16_RAW  # = 4
    
    def make_chunks(weight_T, nblocks, nchunks):
        """Create chunks array [tiles_per_block * nblocks * nchunks * SUB_CHUNKS, CHUNK_BF16_RAW].
        tiles_per_block = 16 (4 columns × 4 tile-rows per column)
        """
        in_dim, out_dim = weight_T.shape
        tiles_per_block = 16  # fixed: 4 columns × 4 rows per column
        total_tiles = nblocks * tiles_per_block
        actual_tiles = (out_dim + M_PER_TILE - 1) // M_PER_TILE
        total_chunks = total_tiles * nchunks * SUB_CHUNKS
        chunks = np.zeros((total_chunks, CHUNK_BF16_RAW), dtype=bfloat16)
        cols_per_sub = CHUNK_BF16_RAW // M_PER_TILE  # = 80
        
        idx = 0
        for ot in range(total_tiles):
            out_start = ot * M_PER_TILE
            out_end = min(out_start + M_PER_TILE, out_dim)
            actual_rows = out_end - out_start
            if actual_rows <= 0:
                # Pad entire tile with zeros
                for ic in range(nchunks):
                    for sc in range(1):  # single full tile, no sub-chunks
                        # chunks[idx] already zero-initialized
                        idx += 1
                continue
            
            for ic in range(nchunks):
                in_start = ic * K_CHUNK
                in_end = min(in_start + K_CHUNK, in_dim)
                
                for sc in range(1):  # single full tile, no sub-chunks
                    sub_start = sc * cols_per_sub
                    sub_end = min(sub_start + cols_per_sub, in_end - in_start)
                    if sub_end <= sub_start:
                        chunks[idx].fill(0)
                    else:
                        w = weight_T[in_start + sub_start : in_start + sub_end, out_start:out_end]
                        flat = w.flatten()
                        chunks[idx, :flat.size] = flat
                    idx += 1
        
        print(f"    chunks shape: {chunks.shape}")
        return chunks
    
    # Build chunks for each projection
    proj_data = {
        'Q': (wq_T, PHASE_BLOCKS[0], Q_CHUNKS_PER_RECORD),
        'K': (wk_T, PHASE_BLOCKS[1], K_CHUNKS_PER_RECORD),
        'V': (wv_T, PHASE_BLOCKS[2], V_CHUNKS_PER_RECORD),
        'O': (wo_T, PHASE_BLOCKS[3], O_CHUNKS_PER_RECORD),
        'UP': (wup_T, PHASE_BLOCKS[4], UPGATE_CHUNKS_PER_REPLAY),
        'GATE': (wgate_T, PHASE_BLOCKS[5], UPGATE_CHUNKS_PER_REPLAY),
        'DOWN': (wdown_T, PHASE_BLOCKS[6], DOWN_CHUNKS),
    }
    
    chunks_by_phase = {}
    for name, (wt, nblocks, nchunks) in proj_data.items():
        print(f"\n  {name}:")
        chunks_by_phase[name] = make_chunks(wt, nblocks, nchunks)
    
    # Build aux buffer
    dims = np.arange(0, HEAD_DIM, 2, dtype=np.float32)
    inv_freq = np.power(np.float32(500000.0), -dims / np.float32(HEAD_DIM))
    angles = np.float32(0) * inv_freq
    cos_val, sin_val = np.cos(angles).astype(bfloat16), np.sin(angles).astype(bfloat16)
    q_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    k_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    
    aux_bf16 = np.concatenate([input_norm, post_norm, q_norm, k_norm, cos_val, sin_val])
    aux = np.frombuffer(aux_bf16.tobytes(), dtype=np.int32).copy()
    print(f"\nAux: {aux.shape} dwords")
    
    # Build weight stream using the schedule iteration
    # Schedule: Q(50), K(20), V(20), O(50), UP(140), GATE(140), DOWN(135) = 555
    parts = []
    total_chunks_written = 0
    
    for col_idx in range(len(MAIN_COLUMNS)):
        for patch in range(PATCHES_PER_COLUMN):
            for name, nblocks, nchunks in [
                ('Q', PHASE_BLOCKS[0], Q_CHUNKS_PER_RECORD),
                ('K', PHASE_BLOCKS[1], K_CHUNKS_PER_RECORD),
                ('V', PHASE_BLOCKS[2], V_CHUNKS_PER_RECORD),
                ('O', PHASE_BLOCKS[3], O_CHUNKS_PER_RECORD),
                ('UP', PHASE_BLOCKS[4], UPGATE_CHUNKS_PER_REPLAY),
                ('GATE', PHASE_BLOCKS[5], UPGATE_CHUNKS_PER_REPLAY),
                ('DOWN', PHASE_BLOCKS[6], DOWN_CHUNKS),
            ]:
                wt = proj_data[name][0]
                in_dim, out_dim = wt.shape
                num_tiles = (out_dim + M_PER_TILE - 1) // M_PER_TILE
                
                for block in range(nblocks):
                    for ic in range(nchunks):
                        for row_in_patch in range(ROWS_PER_PATCH):
                            row_chunk = block * 16 + col_idx * 4 + patch * 2 + row_in_patch
                            # source = row_chunk * nchunks + ic
                            # At this source, we have SUB_CHUNKS sub-chunks
                            for sc in range(1):  # single full tile, no sub-chunks
                                source = row_chunk * nchunks + ic
                                idx = source * SUB_CHUNKS + sc
                                chunk_data = chunks_by_phase[name][idx]
                                parts.append(chunk_data.tobytes())
                                total_chunks_written += 1
    
    weight_bytes = b''.join(parts)
    weight_i32 = np.frombuffer(weight_bytes, dtype=np.int32).copy()
    print(f"\nWeight stream: {weight_i32.shape} dwords ({len(weight_bytes)} bytes)")
    print(f"Total chunks written: {total_chunks_written}")
    
    # Combine aux + weights
    full = np.concatenate([aux, weight_i32]).astype(np.int32)
    expected = TOTAL_WEIGHT_AND_AUX_I32_RAW
    if full.shape[0] < expected:
        full = np.pad(full, (0, expected - full.shape[0]))
    elif full.shape[0] > expected:
        full = full[:expected]
    
    print(f"Final buffer: {full.shape} dwords ({full.nbytes} bytes)")
    return full


if __name__ == '__main__':
    for layer in range(1):  # Just layer 0 for now
        buffer = build_weight_stream(MODEL_PATH, layer)
        out_path = f'/tmp/bitnet_layer{layer}_full_layer_buffer.npy'
        np.save(out_path, buffer)
        print(f"\nSaved to {out_path}")
    
    print("\nDone! To load in C++:")
    print(f"  auto buffer = np::from_file('/tmp/bitnet_layer0_full_layer_buffer.npy');")
    print(f"  int32_t* data = buffer.data<int32_t>();")
    print(f"  size_t size = buffer.size();  // = {TOTAL_WEIGHT_AND_AUX_I32_RAW}")
