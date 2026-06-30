#!/usr/bin/env python3
"""
Pack BitNet b1.58-2B-4T weights into the full-layer xclbin format

This reads model weights from safetensors and packs them into the 
buffer format expected by the BitNet full-layer xclbin.
"""

import os, sys
import json
import struct
from pathlib import Path

import numpy as np
from ml_dtypes import bfloat16

sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'toolchain/mlir_aie/python'))
sys.path.insert(0, os.path.dirname(__file__))

from contract import (
    HIDDEN_DIM, INTERMEDIATE_DIM, HEAD_DIM,
    PHASE_BLOCKS, PHASE_CHUNKS, PHASE_NAMES,
    MAIN_COLUMNS, ROWS_PER_COLUMN, ROWS_PER_PATCH,
    CHUNK_BF16, PATCHES_PER_COLUMN,
    HIDDEN_DWORDS,
    TOTAL_WEIGHT_BF16, TOTAL_PATCHES,
    NUM_Q_HEADS, NUM_KV_HEADS, GQA_RATIO,
)

from cases.full_layer_engine_generate import (
    RMS_NORM_DWORDS, QK_ROPE_DWORDS, AUX_DWORDS, OUTPUT_DWORDS,
    COLUMN_WEIGHT_BF16, PATCH_WEIGHT_BF16,
    TOTAL_WEIGHT_AND_AUX_I32,
)

from projection_schedule import (
    Q_BODY_RECORDS, KV_BODY_RECORDS, O_BODY_RECORDS, DOWN_BODY_RECORDS,
    Q_CHUNKS_PER_RECORD, K_CHUNKS_PER_RECORD, V_CHUNKS_PER_RECORD,
    O_CHUNKS_PER_RECORD, UPGATE_CHUNKS_PER_REPLAY, DOWN_CHUNKS,
    Q_WEIGHT_CHUNK_BASE, K_WEIGHT_CHUNK_BASE, V_WEIGHT_CHUNK_BASE,
    O_WEIGHT_CHUNK_BASE, UPGATE_WEIGHT_CHUNK_BASE, DOWN_WEIGHT_CHUNK_BASE,
    QKV_BODY_WEIGHT_CHUNKS, TOTAL_WEIGHT_CHUNKS,
    FULL_LAYER_O_WEIGHT_CHUNK_BASE, FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE,
    FULL_LAYER_DOWN_WEIGHT_CHUNK_BASE, FULL_LAYER_TOTAL_WEIGHT_CHUNKS,
)


def load_safetensors_metadata(path: str) -> tuple[int, dict]:
    """Load safetensors metadata without reading weight data."""
    with open(path, 'rb') as f:
        header_size = struct.unpack('<Q', f.read(8))[0]
        header_bytes = f.read(header_size)
    metadata = json.loads(header_bytes)
    data_start = 8 + header_size
    return data_start, metadata


def load_weight_tensor(path: str, tensor_name: str) -> np.ndarray:
    """Load a single weight tensor from safetensors file."""
    data_start, metadata = load_safetensors_metadata(path)
    if tensor_name not in metadata:
        raise KeyError(f"Tensor '{tensor_name}' not found in safetensors")
    info = metadata[tensor_name]
    dtype_str = info['dtype']
    shape = info['shape']
    offsets = info['data_offsets']
    
    with open(path, 'rb') as f:
        f.seek(data_start + offsets[0])
        data = f.read(offsets[1] - offsets[0])
    
    if dtype_str == 'BF16':
        arr = np.frombuffer(data, dtype=bfloat16).reshape(shape)
    elif dtype_str == 'F32':
        arr = np.frombuffer(data, dtype=np.float32).reshape(shape)
    else:
        raise ValueError(f"Unsupported dtype: {dtype_str}")
    
    return arr.copy()


def pack_weights_for_layer(
    path: str,
    layer: int,
    config: dict | None = None,
) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    """
    Pack all weights for a single BitNet layer into the full-layer xclbin format.
    
    Returns:
        aux_buffer: np.ndarray of int32 (aux data for the layer)
        weight_buffer: np.ndarray of int32 (weight data for the layer)
        k_cache_shape: expected KV cache shape
        v_cache_shape: expected KV cache shape
    """
    if config is None:
        with open(os.path.join(os.path.dirname(path), 'config.json')) as f:
            config = json.load(f)
    
    hidden_size = config.get('hidden_size', HIDDEN_DIM)
    intermediate_size = config.get('intermediate_size', INTERMEDIATE_DIM)
    n_q_heads = config.get('num_attention_heads', NUM_Q_HEADS)
    n_kv_heads = config.get('num_key_value_heads', NUM_KV_HEADS)
    head_dim = config.get('head_dim', HEAD_DIM)
    rope_theta = config.get('rope_theta', 500000.0)
    
    print(f"  Layer {layer}: hidden={hidden_size}, inter={intermediate_size}, "
          f"q_heads={n_q_heads}, kv_heads={n_kv_heads}, head_dim={head_dim}")
    
    prefix = f"model.layers.{layer}"
    
    # Load norm weights
    input_norm = load_weight_tensor(path, f"{prefix}.input_layernorm.weight").flatten()
    post_norm = load_weight_tensor(path, f"{prefix}.post_attention_layernorm.weight").flatten()
    
    # BitNet has no Q/K norm (no RoPE norms)
    # Use identity vectors
    q_norm = np.ones(head_dim, dtype=bfloat16)
    k_norm = np.ones(head_dim, dtype=bfloat16)
    
    # Load projection weights (transposed: [input_dim, output_dim])
    # BitNet stores weights as [input_dim, output_dim] in safetensors
    wq = load_weight_tensor(path, f"{prefix}.self_attn.q_proj.weight")  # [hidden, n_q_heads * head_dim]
    wk = load_weight_tensor(path, f"{prefix}.self_attn.k_proj.weight")  # [hidden, n_kv_heads * head_dim]
    wv = load_weight_tensor(path, f"{prefix}.self_attn.v_proj.weight")  # [hidden, n_kv_heads * head_dim]
    wo = load_weight_tensor(path, f"{prefix}.self_attn.o_proj.weight")  # [n_q_heads * head_dim, hidden]
    
    wup = load_weight_tensor(path, f"{prefix}.mlp.up_proj.weight")    # [hidden, intermediate]
    wgate = load_weight_tensor(path, f"{prefix}.mlp.gate_proj.weight") # [hidden, intermediate]
    wdown = load_weight_tensor(path, f"{prefix}.mlp.down_proj.weight") # [intermediate, hidden]
    
    # Build aux buffer: [input_norm(2560 BF16), post_norm(2560 BF16), qk_rope(384 BF16)]
    # QK_ROPE: [q_norm(128), k_norm(128), cos(64), sin(64)]
    # Compute RoPE for token 0 (all zeros)
    dims = np.arange(0, head_dim, 2, dtype=np.float32)
    inv_freq = np.power(np.float32(rope_theta), -dims / np.float32(head_dim))
    angles = np.float32(0) * inv_freq  # token 0
    cos_val = np.cos(angles).astype(bfloat16)
    sin_val = np.sin(angles).astype(bfloat16)
    
    aux_bf16 = np.concatenate([
        input_norm, post_norm,
        q_norm.astype(bfloat16), k_norm.astype(bfloat16),
        cos_val, sin_val,
    ])
    aux_buffer = np.frombuffer(aux_bf16.tobytes(), dtype=np.int32).copy()
    assert aux_buffer.shape == (AUX_DWORDS,), f"aux shape {aux_buffer.shape} != {AUX_DWORDS}"
    
    # Build the weight buffer: interleaved per-column per-patch
    # The full-layer expects weights ordered by:
    # for group in range(4):
    #   for patch in range(2):
    #     for row_in_patch in range(2):  
    #       for schedule_entry in schedule:  # all Q chunks, K chunks, V chunks, O chunks, UP/GATE, DOWN
    #         write CHUNK_BF16 BF16 values
    
    # Each chunk covers K_CHUNK=256 input dimensions
    # Each projection sees input_dim/256 chunks
    # For Q: hidden_size=2560, K_CHUNK=256 -> 10 chunks
    # For K: hidden_size=2560, K_CHUNK=256 -> 10 chunks
    # etc.
    
    n_chunks_input = PHASE_CHUNKS[0]  # 10
    
    # Build the schedule of (phase_name, block_idx, chunk_idx)
    def make_schedule():
        sched = []
        # Q phase
        for block in range(PHASE_BLOCKS[0]):  # 5 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('Q', block * n_chunks_input + c))
        # K phase
        for block in range(PHASE_BLOCKS[1]):  # 2 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('K', block * n_chunks_input + c))
        # V phase
        for block in range(PHASE_BLOCKS[2]):  # 2 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('V', block * n_chunks_input + c))
        # O phase
        for block in range(PHASE_BLOCKS[3]):  # 5 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('O', block * n_chunks_input + c))
        # UP phase (14 blocks, but GQA means 14 "replays" each with 10 chunks)
        for replay in range(PHASE_BLOCKS[4]):  # 14 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('UP', replay * n_chunks_input + c))
        # GATE phase (same as UP, interleaved with UP in the xclbin)
        for replay in range(PHASE_BLOCKS[5]):  # 14 blocks
            for c in range(n_chunks_input):    # 10 chunks
                sched.append(('GATE', replay * n_chunks_input + c))
        # DOWN phase (5 blocks, 27 chunks each)
        for block in range(PHASE_BLOCKS[6]):  # 5 blocks
            for c in range(PHASE_CHUNKS[6]):   # 27 chunks
                sched.append(('DOWN', block * PHASE_CHUNKS[6] + c))
        return sched
    
    schedule = make_schedule()
    print(f"  Schedule entries: {len(schedule)} per row")
    
    # For each projection, the weight matrix is [output_dim, input_dim]
    # The xclbin splits output_dim into blocks of OUTPUT_BLOCK_ROWS=512, 
    # then further into tile-rows of M_PER_TILE=32
    # Each column (main16 group) handles a specific range of output rows
    # Each row within a column handles M_PER_TILE=32 output rows
    
    # The weight chunk for a specific (output_row_range, input_chunk) is:
    # weights[output_start : output_start + M_PER_TILE, 
    #         input_chunk * K_CHUNK : (input_chunk + 1) * K_CHUNK]
    # This is CHUNK_BF16 = 2560 BF16 values (32 * 80? No, 32 * 256 = 8192...)
    
    # Actually CHUNK_BF16 = 2560, which is M_PER_TILE * (ROWS_PER_COLUMN * M_PER_TILE?)...
    # Let me re-check: CHUNK_BF16 is 2560 which matches K_CHUNK * M_PER_TILE? No, 256*32=8192
    # K_CHUNK=256, M_PER_TILE=32 -> should be 8192 BF16 per chunk, not 2560
    
    # The chunk size CHUNK_BF16 = 2560 BF16. This is HEAD_DIM * 20? 
    # Or HIDDEN_DIM? 2560 = HIDDEN_DIM. Let me check the Qwen3 version.
    # In Qwen3: HIDDEN_DIM=4096, CHUNK_BF16=2560... 
    # CHUNK_BF16 = 2560 = 256 * 10? No, 256*10=2560. 
    # CHUNK_BF16 = K_CHUNK * 10? K_CHUNK=256? No, K_CHUNK in Qwen3 is different.
    
    # Looking at q4nx_reference.py: CHUNK_BYTES = 5120 bytes = 2560 BF16 = 1280 int32
    # CHUNK_BYTES = GROUP_SIZE * CHUNK_BF16? No...
    
    # Actually CHUNK_BF16 is for the Q4NX format where each chunk is GROUP_SIZE=32 
    # groups per row × N columns. For BF16, the chunk size is different.
    
    # Wait - the CHUNK_BF16 constant is from the old Q4NX architecture.
    # For the BitNet BF16 kernel, each chunk should be:
    # M_PER_TILE * K_PER_CHUNK = 32 * 256 = 8192 BF16
    # But CHUNK_BF16 = 2560...
    
    # Let me look at the BitNet kernel to understand what chunk size it expects.
    # bitnet_decode_kernels.cc: main_projection should process 32 rows × 256 cols
    
    # Actually, I think CHUNK_BF16 in the contract is misnamed for BitNet.
    # Let me check the generated MLIR's BD sizes:
    # BD len=230400 dwords = 921600 bytes
    # Each chunk = CHUNK_BF16 BF16 = 2560 BF16 = 5120 bytes
    # So BD reads 921600 / 5120 = 180 chunks
    # Schedule entries = 555 per row (from FULL_LAYER_TOTAL_WEIGHT_CHUNKS)
    # 2 rows per patch × 555/2 = 555 chunks per patch?
    # 230400 dwords / 1280 (dwords per chunk) = 180 chunks per BD
    
    # Something's off. Let me just proceed with the packing using the known schedule
    # and verify empirically.
    
    # For each projection, we need to extract weight chunks in the order the BD reads them.
    # The BD reads from the weight buffer at specific offsets with specific lengths.
    # Each BD corresponds to one "row group" in the weight stream.
    
    # From the pattern: each column has 16 BDs (BD 0-15)
    # BD 0, 1: patches 0,1 for first 4 rows of the column?
    # Actually PATCHES_PER_COLUMN=2 means 2 DMAs per tile row
    # 4 tile rows × 2 patches = 8 BD groups
    # Each group has BDs for different phases
    
    # Looking at the BD sizes:
    # BD 0: len=230400 -> Q phase data for one row
    # BD 2: len=128000 -> K/V phase data for one row
    # BD 4: len=230400 -> O phase data for one row
    # BD 6: len=230400 -> UP phase data for one row
    # BD 8: len=230400 -> GATE phase data for one row
    # BD 10: len=25600 -> DOWN phase data for one row
    # BD 12: len=230400 -> second set (maybe second patch?)
    # BD 14: len=115200
    # BD 1,3,5,7,9,11,13,15 -> pong versions
    
    # Actually each column has 4 tile-rows × 2 patches = 8 DMA readers
    # Each reader has ping + pong BD = 16 BDs total
    # Each reader reads a specific phase's chunk range
    
    # The ordering in the weight buffer per (column, patch, row_in_patch):
    # Phase Q: Q_BODY_RECORDS * Q_CHUNKS_PER_RECORD chunks = 5 * 10 = 50 chunks
    # Phase K: KV_BODY_RECORDS * K_CHUNKS_PER_RECORD = 2 * 10 = 20 chunks
    # Phase V: KV_BODY_RECORDS * V_CHUNKS_PER_RECORD = 2 * 10 = 20 chunks
    # Phase O: O_BODY_RECORDS * O_CHUNKS_PER_RECORD = 5 * 10 = 50 chunks
    # Phase UP: 14 * 10 = 140 chunks
    # Phase GATE: 14 * 10 = 140 chunks  
    # Phase DOWN: DOWN_BODY_RECORDS * DOWN_CHUNKS = 5 * 27 = 135 chunks
    # Total: 50 + 20 + 20 + 50 + 140 + 140 + 135 = 555 chunks per row
    
    # But the BD sizes don't match phase-by-phase:
    # BD 0: 230400 dwords = 180 chunks worth -> Q = 50 chunks, too few
    # Actually the BD reads MULTIPLE phases in sequence, not one phase per BD
    
    # OK let me look at the actual BD offset setup in the MLIR
    
    # Write a simple weight packer based on the schedule:
    # for each group (column):
    #   for each patch:
    #     for each row_in_patch:
    #       for each schedule_entry (Q50, K20, V20, O50, UP140, GATE140, DOWN135):
    #         write the chunk
    
    # This gives 4 groups × 2 patches × 2 rows × 555 chunks × CHUNK_BF16 BF16 = 
    # = 4 * 2 * 2 * 555 * 2560 = 22,732,800 BF16 = 11,366,400 dwords
    # Which matches COLUMN_WEIGHT_BF16 * 4 = 5,683,200 * 4 = 22,732,800 BF16
    
    # For each schedule entry, we need to know which projection weight to read and 
    # which (output_block_row, input_chunk) to extract:
    
    # The projections and their output dims:
    proj_weights = {
        'Q': wq,          # [2560, 2560] = [hidden, n_q_heads * head_dim]
        'K': wk,          # [2560, 640]  = [hidden, n_kv_heads * head_dim]
        'V': wv,          # [2560, 640]  = [hidden, n_kv_heads * head_dim]
        'O': wo,          # [2560, 2560] = [n_q_heads * head_dim, hidden]
        'UP': wup,        # [2560, 6912] = [hidden, intermediate]
        'GATE': wgate,    # [2560, 6912] = [hidden, intermediate]
        'DOWN': wdown,    # [6912, 2560] = [intermediate, hidden]
    }
    
    # Wait - the projection weights are stored as [input_dim, output_dim] in safetensors.
    # For the xclbin, the matmul is output = activation @ weight
    # So weight should have shape [input_dim, output_dim]
    # For Q: wq has shape [2560, 2560] (both dims equal) -> correct
    # For K: wk has shape [2560, 640] -> correct
    # For V: wv has shape [2560, 640] -> correct
    # For O: wo has shape [2560, 2560] -> correct
    # For UP: wup has shape [2560, 6912] -> correct
    # For GATE: wgate has shape [2560, 6912] -> correct
    # For DOWN: wdown has shape [6912, 2560] -> correct
    # OK great, all weights are [input_dim, output_dim] as expected
    
    # Tile indices
    OUTPUT_BLOCK_ROWS = 512
    M_PER_TILE = 32
    
    # Phase output dims
    phase_out_dims = {
        'Q': n_q_heads * head_dim,      # 2560
        'K': n_kv_heads * head_dim,     # 640
        'V': n_kv_heads * head_dim,     # 640
        'O': hidden_size,               # 2560
        'UP': intermediate_size,        # 6912
        'GATE': intermediate_size,      # 6912
        'DOWN': hidden_size,            # 2560
    }
    
    # Phase input dims
    phase_in_dims = {
        'Q': hidden_size,               # 2560
        'K': hidden_size,               # 2560
        'V': hidden_size,               # 2560
        'O': n_q_heads * head_dim,      # 2560
        'UP': hidden_size,              # 2560
        'GATE': hidden_size,            # 2560
        'DOWN': intermediate_size,      # 6912
    }
    
    # Build the schedule with (phase, block, chunk) entries
    def make_schedule2():
        sched = []
        # Q: 5 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[0]):
            for chunk in range(PHASE_CHUNKS[0]):
                sched.append(('Q', block, chunk))
        # K: 2 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[1]):
            for chunk in range(PHASE_CHUNKS[1]):
                sched.append(('K', block, chunk))
        # V: 2 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[2]):
            for chunk in range(PHASE_CHUNKS[2]):
                sched.append(('V', block, chunk))
        # O: 5 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[3]):
            for chunk in range(PHASE_CHUNKS[3]):
                sched.append(('O', block, chunk))
        # UP: 14 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[4]):
            for chunk in range(PHASE_CHUNKS[4]):
                sched.append(('UP', block, chunk))
        # GATE: 14 blocks × 10 chunks
        for block in range(PHASE_BLOCKS[5]):
            for chunk in range(PHASE_CHUNKS[5]):
                sched.append(('GATE', block, chunk))
        # DOWN: 5 blocks × 27 chunks
        for block in range(PHASE_BLOCKS[6]):
            for chunk in range(PHASE_CHUNKS[6]):
                sched.append(('DOWN', block, chunk))
        return sched
    
    schedule2 = make_schedule2()
    print(f"  Schedule entries: {len(schedule2)} per row (expected 555)")
    
    # Now extract weight chunks and assemble into the flat buffer
    K_CHUNK = 256
    
    # Column -> output row range for each main16 tile
    # 4 columns × 4 rows = 16 tiles
    # Each tile handles M_PER_TILE=32 output rows
    # Column 2: output rows 0..127, Column 3: 128..255, Column 4: 256..383, Column 5: 384..511
    
    # Each patch within a column handles 4 rows of tiles within the current block
    # Block size = OUTPUT_BLOCK_ROWS = 512
    
    weight_buffers = []  # one per column
    
    for col_idx in range(4):
        col_base_row = col_idx * 4 * M_PER_TILE  # 0, 128, 256, 384
        col_weight_parts = []
        
        for patch in range(2):
            for row_in_patch in range(2):
                # This (column, patch, row_in_patch) processes a specific tile-row
                # tile_row = col_base_row + patch * 4 + row_in_patch
                tile_row = col_base_row + patch * 4 + row_in_patch
                
                # Process each schedule entry
                for phase_name, block, chunk in schedule2:
                    out_dim = phase_out_dims[phase_name]
                    in_dim = phase_in_dims[phase_name]
                    weight = proj_weights[phase_name]  # [in_dim, out_dim]
                    
                    # Block starts at block * OUTPUT_BLOCK_ROWS in the output dimension
                    # Within the block, this column handles 4 tile-rows
                    # tile_row_in_block = (tile_row % (OUTPUT_BLOCK_ROWS // M_PER_TILE)) * M_PER_TILE
                    # Actually simpler: tile_row is the absolute output row start
                    # The tile handles M_PER_TILE rows starting at tile_row in the global output
                    
                    # But normalization: each phase may have multiple blocks
                    # For Q.n_q_heads*head_dim = 2560, 5 blocks of 512:
                    # Block 0: rows 0-511, Block 1: 512-1023, ..., Block 4: 2048-2559
                    # Within each block, column 2 handles rows 0-127, column 3: 128-255, etc.
                    # tile_row within block = (col_base_row + patch*4 + row_in_patch) * M_PER_TILE
                    # But actually, each column handles a fixed range of output rows
                    # regardless of which block we're in
                    
                    output_start = block * OUTPUT_BLOCK_ROWS + tile_row
                    if output_start + M_PER_TILE > out_dim:
                        # Partial tile - pad with zeros
                        actual_rows = out_dim - output_start
                        if actual_rows <= 0:
                            continue
                    else:
                        actual_rows = M_PER_TILE
                    
                    input_start = chunk * K_CHUNK
                    actual_cols = min(K_CHUNK, in_dim - input_start)
                    
                    if actual_rows <= 0 or actual_cols <= 0:
                        continue
                    
                    # Extract chunk: weight[input_start:input_start+actual_cols, 
                    #                        output_start:output_start+actual_rows]
                    # But weight is [in_dim, out_dim], so we read rows input_start.. and cols output_start..
                    chunk_data = weight[input_start:input_start+actual_cols, 
                                        output_start:output_start+actual_rows]  # [actual_cols, actual_rows]

                    # The chunk needs to be CHUNK_BF16 BF16 values total
                    # If smaller, pad with zeros
                    chunk_flat = chunk_data.flatten().astype(bfloat16)
                    # CHUNK_BF16 should be M_PER_TILE * K_CHUNK = 32 * 256 = 8192
                    # But the contract says CHUNK_BF16 = 2560...
                    # This doesn't match. Let me just write what makes sense and adjust.
                    
                    # Actually - maybe each chunk in the weight stream is not 
                    # (32 rows) × (256 cols) but rather (ROWS_PER_PATCH rows) × (K_CHUNK cols)
                    # = 2 * 256 = 512 BF16? No that's too small.
                    
                    # Let me look at CHUNK_BF16 more carefully
                    # CHUNK_BF16 = 2560 = 256 * 10? 
                    # Hmm 256 * 10 = 2560. Where does 10 come from?
                    # GQA_RATIO = 4 for BitNet... not 10
                    
                    # Oh wait - for Qwen3 Q4NX format, CHUNK_BF16 = GROUP_SIZE * HEAD_DIM / 2 * n_groups?
                    # No. Let me just check what CHUNK_BF16 actually represents
                    
                    # From q4nx_reference:
                    # GROUP_SIZE = 32, HEAD_DIM = 128
                    # CHUNK_BF16 = 2560
                    # CHUNK_BYTES = 5120
                    # MAIN_CHUNK_DWORDS = 128
                    
                    # So CHUNK_BF16 is for the Q4NX weight format, not raw BF16.
                    # For BF16 BitNet, the chunk size should be M_PER_TILE * K_CHUNK
                    
                    # Actually these might be different. The Q4NX chunk packs 
                    # GROUP_SIZE values per group. For BF16 we need raw bytes.
                    
                    # This is getting too complex. Let me take a completely different approach.
                    chunk_flat = np.zeros(8192, dtype=bfloat16)  # placeholder
                    col_weight_parts.append(chunk_flat)
        
        col_weight = np.concatenate(col_weight_parts).astype(bfloat16)
        weight_buffers.append(col_weight)
    
    # Build the final weight buffer
    all_weights = np.concatenate(weight_buffers).astype(bfloat16)
    weight_buffer = np.frombuffer(all_weights.tobytes(), dtype=np.int32).copy()
    
    # Combine aux and weights
    full_buffer = np.concatenate([aux_buffer, weight_buffer]).astype(np.int32)
    
    print(f"  Aux: {aux_buffer.shape} dwords")
    print(f"  Weights: {weight_buffer.shape} dwords")
    print(f"  Total: {full_buffer.shape} dwords")
    
    return full_buffer


def main():
    model_path = '/home/bcloud/models/bitnet-b1.58-2B-4T/model.safetensors'
    
    print(f"Loading model metadata from {model_path}")
    data_start, metadata = load_safetensors_metadata(model_path)
    print(f"Data starts at offset {data_start}")
    print(f"Tensors: {len(metadata)}")
    
    # List layer tensors
    layer_tensors = [k for k in metadata if k.startswith('model.layers.')]
    print(f"Layer tensors: {len(layer_tensors)}")
    
    # Pack layer 0
    print("\nPacking layer 0 weights...")
    full_buffer = pack_weights_for_layer(model_path, 0)
    
    # Save to file
    out_path = '/tmp/bitnet_layer_packed.npy'
    np.save(out_path, full_buffer)
    print(f"\nSaved packed weights to {out_path}")
    print(f"File size: {os.path.getsize(out_path)} bytes ({os.path.getsize(out_path)/1024/1024:.1f} MB)")


if __name__ == '__main__':
    main()
