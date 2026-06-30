#!/usr/bin/env python3
"""
Quick test: pack BitNet weights into full-layer format and run on NPU.

Uses the exact same projection streaming logic as the Qwen3 model
to generate the weight stream, then calls the full-layer xclbin via pyxrt.
"""

import os, sys, ctypes, json, struct, math
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
    NUM_Q_HEADS, NUM_KV_HEADS,
    C1R2_PACKET_DWORDS, C1R2_QKV_REPLAYS, C1R2_UPGATE_REPLAYS,
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
)

MODEL_PATH = '/home/bcloud/models/bitnet-b1.58-2B-4T/model.safetensors'

# --- Utility: load from safetensors ---
def load_safetensors_metadata(path):
    with open(path, 'rb') as f:
        header_size = struct.unpack('<Q', f.read(8))[0]
        header_bytes = f.read(header_size)
    return json.loads(header_bytes)

def load_bf16_tensor(path, name):
    meta = load_safetensors_metadata(path)
    info = meta[name]
    with open(path, 'rb') as f:
        f.seek(8 + meta['__header_size__'] if '__header_size__' in meta else 0)
        # Re-read properly
    return _read_tensor(path, info)

def _read_tensor(path, info):
    with open(path, 'rb') as f:
        # Read header
        header_size = struct.unpack('<Q', f.read(8))[0]
        f.seek(8 + header_size + info['data_offsets'][0])
        data = f.read(info['data_offsets'][1] - info['data_offsets'][0])
    return np.frombuffer(data, dtype=bfloat16).reshape(info['shape']).copy()

def load_json(path):
    with open(path) as f:
        return json.load(f)

# --- Step 1: Load model weights for a layer ---
print("=" * 60)
print("Loading BitNet b1.58-2B-4T model weights")
print("=" * 60)

config = load_json('/home/bcloud/models/bitnet-b1.58-2B-4T/config.json')
h, ih = HIDDEN_DIM, INTERMEDIATE_DIM

layer = 0
prefix = f"model.layers.{layer}"

print(f"\nLoading layer {layer} weights...")
wq = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.self_attn.q_proj.weight"])   # [2560, 2560]
wk = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.self_attn.k_proj.weight"])   # [2560, 640]
wv = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.self_attn.v_proj.weight"])   # [2560, 640]
wo = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.self_attn.o_proj.weight"])   # [2560, 2560] (note: transposed)
wup = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.mlp.up_proj.weight"])       # [2560, 6912]
wgate = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.mlp.gate_proj.weight"])   # [2560, 6912]
wdown = _read_tensor(MODEL_PATH, load_safetensors_metadata(MODEL_PATH)[f"{prefix}.mlp.down_proj.weight"])   # [6912, 2560]

# Sanity check shapes
print(f"  wq: {wq.shape}, wk: {wk.shape}, wv: {wv.shape}, wo: {wo.shape}")
print(f"  wup: {wup.shape}, wgate: {wgate.shape}, wdown: {wdown.shape}")

# Note: wo from safetensors is [2560, 2560] = [q_heads*head_dim, hidden]
# But the matmul needs [hidden, output_dim]
# For O: activation[1 × 2560] @ wo^T[2560 × 2560] = [2560]
# wo is already [2560, 2560] which is [input, output] — correct!
# Q/K/V are [2560, output] which is [input, output] — correct!
# UP/GATE are [2560, 6912] — correct!
# DOWN is [6912, 2560] — correct!

# --- Step 2: Create chunk arrays (BF16 chunks of CHUNK_BF16 values) ---
# Each chunk = CHUNK_BF16 = 2560 BF16 values
# For a projection with [input_dim, output_dim]:
#   Total elements = input_dim * output_dim
#   Number of chunks = total_elements / CHUNK_BF16
#   Each chunk covers specific (input_range, output_range)

# The xclbin indexes chunks by row_chunk:
#   row_chunk = block * 16 + group * 4 + patch * 2 + row_in_patch
#   source = row_chunk * projection.chunks + input_chunk
# 
# This means:
#   - projection.chunks = input_dim / K_CHUNK (number of input chunks)
#   - Each row_chunk represents M_PER_TILE = 32 output rows
#   - source indexes the flat chunk array

K_CHUNK = 256
M_PER_TILE = 32
OUTPUT_BLOCK_ROWS = 512

def make_bf16_chunks(weight, label):
    """
    Create BF16 chunks for a projection weight matrix [input_dim, output_dim].
    
    The weight is split into output tiles of M_PER_TILE rows, each with 
    input_dim / K_CHUNK chunks of size M_PER_TILE * K_CHUNK.
    
    Returns: np.ndarray of shape [num_tile_rows * num_input_chunks, CHUNK_BF16]
    """
    in_dim, out_dim = weight.shape
    num_out_tiles = (out_dim + M_PER_TILE - 1) // M_PER_TILE  # ceil
    num_in_chunks = (in_dim + K_CHUNK - 1) // K_CHUNK  # ceil
    
    # But we need chunks of CHUNK_BF16 values
    # M_PER_TILE * K_CHUNK = 32 * 256 = 8192
    # CHUNK_BF16 = 2560
    # 8192 / 2560 = 3.2 -- not integer!
    
    # This means the chunk size doesn't match the tile size!
    # The weight stream chunk has a DIFFERENT geometry than the matmul chunk.
    # Each weight-stream chunk contains CHUNK_BF16=2560 BF16 values.
    # The packing formula:
    #   source = row_chunk * projection.input_chunks + input_chunk
    # means that for a given output tile (row_chunk) and input chunk (input_chunk),
    # we take a slice of the weight matrix.
    
    # For Q4NX, the slice is GROUP_SIZE x HEAD_DIM/2 x ... packed format.
    # For BF16, the slice must be exactly CHUNK_BF16 values.
    
    # Since 2560 = 32 * 80, and K_CHUNK = 256, and M_PER_TILE = 32:
    # A matmul tile needs 32*256 = 8192 BF16 values
    # But the weight stream transports only 2560 at a time
    # So the kernel must do 8192/2560 = 3.2 reads... still not integer
    
    # Unless the chunk geometry is different. Let me check:
    # ACT_SLICE_BF16 = 256 activation values
    # For Q: 2560/256 = 10 input chunks per row_chunk
    # Each chunk = 2560 BF16 = 32 rows × 80 cols? No, 32*80=2560
    # So each chunk is [32 rows × 80 cols] = 2560 BF16 per row
    # But COLUMNS = 256 input dims, not 80!
    
    # Wait: ACT_SLICE_BF16 = 256 and K_CHUNK = 256. 
    # But CHUNK_BF16 = 2560 ≠ 256 * 32 = 8192.
    # Let me check: CHUNK_BF16 / M_PER_TILE = 2560/32 = 80
    # So each chunk has 32 rows × 80 columns = 2560 BF16
    # But the activation is 256 columns...
    
    # Maybe the chunk is NOT the full matmul chunk, but a sub-chunk?
    # The kernel reads 256 columns, but the weight stream brings 80 at a time?
    # That would mean the kernel needs 256/80 = 3.2 chunks per full matmul...
    
    # This doesn't make sense. Let me check the Q4NX chunk geometry:
    # CHUNK_BF16 = 2560, GROUP_SIZE = 32
    # GROUPS_PER_CHUNK = 2560 / 32 = 80 groups
    # Each group encodes 32 values in Q4 (16 bytes) + scale
    # In unpacked BF16, these 32 values become 32 BF16 = 64 bytes
    # But the Q4NX chunk is PACKED, not unpacked BF16.
    
    # For Q4NX: each chunk has 32 rows × 256 cols, packed as:
    #   80 groups × (16 packed bytes + 2 scale bytes + ...)
    # The unpacked size would be 8192 BF16 (16384 bytes)
    # But the PACKED size is 2560 BF16 (5120 bytes) = CHUNK_BYTES
    
    # So CHUNK_BF16 refers to the UNPACKED BF16 size for Q4NX data!
    # For raw BF16 weights (BitNet), the chunk should contain 32×256 = 8192 BF16 values
    # NOT 2560 BF16 values.
    
    # But the weight_stream format uses CHUNK_BF16 as the unit...
    # This means for BF16 BitNet, we need to restructure the weight stream!
    
    # Wait, the xclbin was generated by the SAME generator with CHUNK_BF16=2560.
    # The kernel is main_projection_bitnet_fast which reads BF16 weights.
    # The DMA BDs have length=230400 dwords = 921600 bytes = 180 chunks of 2560 BF16
    # 180 * 2560 = 460800 BF16 values per BD read
    # 460800 / (32*256) = 460800 / 8192 = 56.25 matmul chunks...
    # Still not integer!

    # OK this number 460800 = 180 * 2560. And the schedule has 555 entries per row.
    # 555 * 2560 / (32*256) = 1420800 / 8192 = 173.4... no
    # 555 * 2560 = 1420800 = sum of all phases' weight for one row
    # 1420800 / 8192 = 173.4... still not integer

    # Let me try different: the BD length is in WORDS (int32 = 4 bytes)
    # 230400 * 4 = 921600 bytes
    # How many BF16 values = 921600 / 2 = 460800 BF16
    # 460800 / 2560 = 180 chunks
    # 460800 / 8192 = 56.25... hmm

    # Actually, maybe the BD reads MULTIPLE patches worth of data?
    # Or maybe the "chunk" in the weight stream is only PART of a matmul tile?

    # One more possibility: each "schedule entry" writes CHUNK_BF16 values to the stream.
    # For a schedule with 555 entries and CHUNK_BF16 = 2560, that's 1,420,800 BF16 per row.
    # But the actual weight data for a tile row is 32 × input_dim = 32 × 2560 = 81920 BF16
    # 1420800 / 81920 = 17.34... still doesn't work.

    # The issue is that CHUNK_BF16 = 2560 is a Q4NX packing artifact that doesn't 
    # correspond to BF16 tile geometry.
    
    # For the BF16 BITNET full-layer xclbin, the actual chunk format being used by
    # the kernel may be different from CHUNK_BF16.
    
    # Let me check what the actual BF16 kernel reads:
    # From bitnet_constants.h: kRecordPayloadBf16 = 32 (17-1)*2 = 32
    # The compact record format writes kRecordPayloadBf16 values per record
    # The kernel does 8 groups of 32 input cols, and there are... hmm
    
    # Let me just try: treat each "chunk" as M_PER_TILE * K_CHUNK = 32 * 256 = 8192 BF16
    # and pack them accordingly. If the chunk size doesn't match, pyxrt will tell us.
    
    print(f"\n  {label}: in={in_dim}, out={out_dim}")
    print(f"    num_out_tiles={num_out_tiles}, num_in_chunks={num_in_chunks}")
    
    # Total chunks: num_out_tiles * num_in_chunks
    total_chunks = num_out_tiles * num_in_chunks
    print(f"    total_chunks={total_chunks}")
    
    # Each chunk: M_PER_TILE * K_CHUNK elements (but truncated if edge)
    chunks_list = []
    for ot in range(num_out_tiles):
        out_start = ot * M_PER_TILE
        out_end = min(out_start + M_PER_TILE, out_dim)
        actual_rows = out_end - out_start
        
        for ic in range(num_in_chunks):
            in_start = ic * K_CHUNK
            in_end = min(in_start + K_CHUNK, in_dim)
            actual_cols = in_end - in_start
            
            # Slice the weight matrix
            chunk = weight[in_start:in_end, out_start:out_end]  # [actual_cols, actual_rows]
            chunk_flat = chunk.flatten()
            
            # Pad if needed
            expected = M_PER_TILE * K_CHUNK
            if chunk_flat.size < expected:
                padded = np.zeros(expected, dtype=bfloat16)
                padded[:chunk_flat.size] = chunk_flat
                chunk_flat = padded
            
            chunks_list.append(chunk_flat)
    
    chunks = np.stack(chunks_list)
    print(f"    chunks.shape: {chunks.shape}")
    print(f"    chunks[0].shape: {chunks[0].shape}")
    print(f"    Expected total per tile row: {num_in_chunks} chunks of {M_PER_TILE*K_CHUNK} = {num_in_chunks * M_PER_TILE * K_CHUNK}")
    print(f"    Actual total per tile row: {in_dim * M_PER_TILE} BF16 values")
    
    return chunks


# Create chunks for each projection
print("\n--- Creating BF16 weight chunks ---")
# The chunks need to be in [in_dim, out_dim] layout
chunks_q = make_bf16_chunks(wq, "Q")    # [2560, 2560]
chunks_k = make_bf16_chunks(wk, "K")    # [2560, 640]
chunks_v = make_bf16_chunks(wv, "V")    # [2560, 640]
chunks_o = make_bf16_chunks(wo, "O")    # [2560, 2560]
chunks_up = make_bf16_chunks(wup, "UP")    # [2560, 6912]
chunks_gate = make_bf16_chunks(wgate, "GATE")  # [2560, 6912]
chunks_down = make_bf16_chunks(wdown, "DOWN")  # [6912, 2560]

chunk_by_phase = {
    'Q': chunks_q,
    'K': chunks_k,
    'V': chunks_v,
    'O': chunks_o,
    'UP': chunks_up,
    'GATE': chunks_gate,
    'DOWN': chunks_down,
}

# --- Step 3: Build the schedule ---
print("\n--- Building weight stream schedule ---")
# The schedule is: (projection_phase, block_idx, input_chunk)
# Blocks correspond to output block size groups
# For Q (2560 output dim): 5 blocks of 512
# Each column handles 4 tile rows within the block = 128 output rows
# The formula: row_chunk = block * 16 + group * 4 + patch * 2 + row_in_patch

# The projections and their chunk counts
proj_info = {
    'Q': dict(blocks=PHASE_BLOCKS[0], chunks_per_record=Q_CHUNKS_PER_RECORD),
    'K': dict(blocks=PHASE_BLOCKS[1], chunks_per_record=K_CHUNKS_PER_RECORD),
    'V': dict(blocks=PHASE_BLOCKS[2], chunks_per_record=V_CHUNKS_PER_RECORD),
    'O': dict(blocks=PHASE_BLOCKS[3], chunks_per_record=O_CHUNKS_PER_RECORD),
    'UP': dict(blocks=PHASE_BLOCKS[4], chunks_per_record=UPGATE_CHUNKS_PER_REPLAY),
    'GATE': dict(blocks=PHASE_BLOCKS[5], chunks_per_record=UPGATE_CHUNKS_PER_REPLAY),
    'DOWN': dict(blocks=PHASE_BLOCKS[6], chunks_per_record=DOWN_CHUNKS),
}

# QKV body phases
schedule = []
for phase in ('Q', 'K', 'V'):
    info = proj_info[phase]
    for block in range(info['blocks']):
        for chunk in range(info['chunks_per_record']):
            schedule.append((phase, block, chunk))

# O phase
info = proj_info['O']
for block in range(info['blocks']):
    for chunk in range(info['chunks_per_record']):
        schedule.append(('O', block, chunk))

# UP + GATE interleaved
for block in range(proj_info['UP']['blocks']):
    for phase in ('UP', 'GATE'):
        for chunk in range(proj_info[phase]['chunks_per_record']):
            schedule.append((phase, block, chunk))

# DOWN phase
info = proj_info['DOWN']
for block in range(info['blocks']):
    for chunk in range(info['chunks_per_record']):
        schedule.append(('DOWN', block, chunk))

print(f"Schedule length: {len(schedule)} entries")
print(f"  Q: {proj_info['Q']['blocks']*proj_info['Q']['chunks_per_record']}")
print(f"  K: {proj_info['K']['blocks']*proj_info['K']['chunks_per_record']}")
print(f"  V: {proj_info['V']['blocks']*proj_info['V']['chunks_per_record']}")
print(f"  O: {proj_info['O']['blocks']*proj_info['O']['chunks_per_record']}")
print(f"  UP: {proj_info['UP']['blocks']*proj_info['UP']['chunks_per_record']}")
print(f"  GATE: {proj_info['GATE']['blocks']*proj_info['GATE']['chunks_per_record']}")
print(f"  DOWN: {proj_info['DOWN']['blocks']*proj_info['DOWN']['chunks_per_record']}")
print(f"  Total: {sum(p['blocks']*p['chunks_per_record'] for p in proj_info.values())}")

# --- Step 4: Build the weight stream ---
print("\n--- Building weight stream buffer ---")

# For each projection chunk array, infer the chunks-per-row (input chunks)
# from its shape
chunks_per = {}
for phase, chunks in chunk_by_phase.items():
    n_chunks, chunk_size = chunks.shape
    out_tiles = proj_info[phase]['blocks'] * (512 // M_PER_TILE)  # blocks * 16 tile rows
    chunks_per_phase = n_chunks // out_tiles if out_tiles > 0 else 0
    chunks_per[phase] = chunks_per_phase
    print(f"  {phase}: {n_chunks} chunks total, {out_tiles} output tiles, {chunks_per_phase} chunks per tile row")
