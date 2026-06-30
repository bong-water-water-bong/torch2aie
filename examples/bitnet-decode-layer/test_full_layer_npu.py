#!/usr/bin/env python3
"""
BitNet full-layer test: CORRECTED weight packing, runs on NPU with default xclbin.
"""

import os, sys, struct, json, time, traceback
import numpy as np
from ml_dtypes import bfloat16

sys.path.insert(0, '/home/bcloud/torch2aie/toolchain/mlir_aie/python')
sys.path.insert(0, '/home/bcloud/torch2aie/examples/bitnet-decode-layer')

from contract import (
    HIDDEN_DIM, INTERMEDIATE_DIM, HEAD_DIM, HIDDEN_DWORDS,
    PHASE_BLOCKS, CHUNK_BF16, ROWS_PER_PATCH, MAIN_COLUMNS,
    PATCHES_PER_COLUMN, ROWS_PER_COLUMN, K_CHUNK, M_PER_TILE,
    OUTPUT_BLOCK_ROWS,
)
from cases.full_layer_engine_generate import (
    AUX_DWORDS, RMS_NORM_DWORDS, QK_ROPE_DWORDS,
    TOTAL_WEIGHT_AND_AUX_I32,
)
from cases.full_layer_engine_reference import (
    Q_WEIGHT_CHUNK_BASE, K_WEIGHT_CHUNK_BASE, V_WEIGHT_CHUNK_BASE,
    FULL_LAYER_O_WEIGHT_CHUNK_BASE, FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE,
    FULL_LAYER_DOWN_WEIGHT_CHUNK_BASE,
    COLUMN_WEIGHT_BF16, PATCH_WEIGHT_BF16, _chunk_for_tile,
)
from projection_schedule import (
    Q_CHUNKS_PER_RECORD, K_CHUNKS_PER_RECORD, V_CHUNKS_PER_RECORD,
    O_CHUNKS_PER_RECORD, UPGATE_CHUNKS_PER_REPLAY, DOWN_CHUNKS,
)

MODEL_PATH = '/home/bcloud/models/bitnet-b1.58-2B-4T/model.safetensors'
XCLBIN_PATH = '/home/bcloud/torch2aie/build/bitnet-b1.58-2B-4T-full-layer/design.xclbin'
INST_PATH = '/home/bcloud/torch2aie/build/bitnet-b1.58-2B-4T-full-layer/design.bin'


def load_tensor(path, name):
    meta = None
    with open(path, 'rb') as f:
        hdr_sz = struct.unpack('<Q', f.read(8))[0]
        meta = json.loads(f.read(hdr_sz).decode('utf-8'))
    info = meta[name]
    with open(path, 'rb') as f:
        hdr_sz = struct.unpack('<Q', f.read(8))[0]
        f.seek(8 + hdr_sz + info['data_offsets'][0])
        data = f.read(info['data_offsets'][1] - info['data_offsets'][0])
    dtype = np.uint8 if info['dtype'] == 'U8' else bfloat16
    return np.frombuffer(data, dtype=dtype).reshape(info['shape']).copy()


def dequantize_ternary(uw, scale):
    f = uw.flatten()
    t = np.zeros(f.size * 4, np.float32)
    for i in range(f.size):
        b = int(f[i])
        for j in range(4):
            v = (b >> (j*2)) & 3
            t[i*4 + j] = -1.0 if v == 0 else (0.0 if v == 1 else (1.0 if v == 2 else -1.0))
    s = float(scale[0])
    return (t.reshape(uw.shape[0]*4, uw.shape[1]) * s).astype(bfloat16)


def make_packed_weights(weight_T_dict):
    """Build the weight stream filling directly into packed layout."""
    total_bf16 = len(MAIN_COLUMNS) * COLUMN_WEIGHT_BF16
    packed = np.zeros(total_bf16, dtype=bfloat16)
    
    SC = 4  # sub-chunks per tile
    
    configs = [
        (Q_WEIGHT_CHUNK_BASE, weight_T_dict['wq_T'], PHASE_BLOCKS[0], Q_CHUNKS_PER_RECORD, 'Q'),
        (K_WEIGHT_CHUNK_BASE, weight_T_dict['wk_T'], PHASE_BLOCKS[1], K_CHUNKS_PER_RECORD, 'K'),
        (V_WEIGHT_CHUNK_BASE, weight_T_dict['wv_T'], PHASE_BLOCKS[2], V_CHUNKS_PER_RECORD, 'V'),
        (FULL_LAYER_O_WEIGHT_CHUNK_BASE, weight_T_dict['wo_T'], PHASE_BLOCKS[3], O_CHUNKS_PER_RECORD, 'O'),
        (FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE, weight_T_dict['wup_T'], PHASE_BLOCKS[4], UPGATE_CHUNKS_PER_REPLAY, 'UP'),
        (FULL_LAYER_UPGATE_WEIGHT_CHUNK_BASE, weight_T_dict['wgate_T'], PHASE_BLOCKS[5], UPGATE_CHUNKS_PER_REPLAY, 'GATE'),
        (FULL_LAYER_DOWN_WEIGHT_CHUNK_BASE, weight_T_dict['wdown_T'], PHASE_BLOCKS[6], DOWN_CHUNKS, 'DOWN'),
    ]
    
    for base, wt, nblocks, nchunks, name in configs:
        in_dim, out_dim = wt.shape
        for b in range(nblocks):
            for c in range(nchunks):
                for g in range(len(MAIN_COLUMNS)):
                    for p in range(PATCHES_PER_COLUMN):
                        for ri in range(ROWS_PER_PATCH):
                            rib = g * 4 + p * 2 + ri
                            global_row = b * OUTPUT_BLOCK_ROWS + rib * M_PER_TILE
                            o_start = global_row
                            o_end = min(o_start + M_PER_TILE, out_dim)
                            actual_rows = o_end - o_start
                            
                            i_start = c * K_CHUNK
                            i_end = min(i_start + K_CHUNK, in_dim)
                            actual_cols = i_end - i_start
                            
                            sub = c % SC
                            sub_cs = sub * 80
                            sub_ce = min(sub_cs + 80, actual_cols)
                            
                            data = np.zeros(CHUNK_BF16, dtype=bfloat16)
                            if actual_rows > 0 and sub_ce > sub_cs:
                                w = wt[i_start + sub_cs : i_start + sub_ce,
                                       o_start : o_end]
                                flat = w.flatten()
                                data[:flat.size] = flat[:CHUNK_BF16]
                            
                            slot = base + b * nchunks + c
                            offset = (g * COLUMN_WEIGHT_BF16
                                      + p * PATCH_WEIGHT_BF16
                                      + slot * ROWS_PER_PATCH * CHUNK_BF16
                                      + ri * CHUNK_BF16)
                            packed[offset : offset + CHUNK_BF16] = data
    
    return packed


def verify_packed(packed, name, base):
    """Verify a phase's packed data."""
    total_sum = 0.0
    total_nz = 0
    for g in range(len(MAIN_COLUMNS)):
        for ri in range(ROWS_PER_COLUMN):
            chunk = _chunk_for_tile(packed, g, ri, base)
            s = chunk.astype(np.float32).sum()
            nz = np.count_nonzero(np.abs(chunk) > 1e-6)
            total_sum += s
            total_nz += nz
    print(f"  {name}: total_chunks_sum={total_sum:.2f}, total_nz={total_nz}")


def main():
    print("=" * 70)
    print("BitNet Full-Layer NPU Test (corrected weight packing)")
    print("=" * 70)
    
    layer = 0
    prefix = f"model.layers.{layer}"
    t_start = time.time()
    
    # 1. Load weights
    print("\n1. Loading weights...")
    t0 = time.time()
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
    input_norm = load_tensor(MODEL_PATH, f'{prefix}.input_layernorm.weight')
    post_attn_norm = load_tensor(MODEL_PATH, f'{prefix}.post_attention_layernorm.weight')
    print(f"  Loaded in {time.time()-t0:.2f}s")
    
    weight_T_dict = {
        'wq_T': wq.T, 'wk_T': wk.T, 'wv_T': wv.T,
        'wo_T': wo.T, 'wup_T': wup.T, 'wgate_T': wgate.T, 'wdown_T': wdown.T,
    }
    
    # 2. Build packed weights
    print("\n2. Building weight stream...")
    t0 = time.time()
    packed = make_packed_weights(weight_T_dict)
    nz_total = np.count_nonzero(np.abs(packed) > 1e-6)
    print(f"  Built in {time.time()-t0:.2f}s, non-zero: {nz_total}/{packed.size}")
    
    # 3. Verify packing
    print("\n3. Verifying packed data...")
    verify_packed(packed, "Q", 0)
    verify_packed(packed, "K", 50)
    verify_packed(packed, "V", 70)
    verify_packed(packed, "O", 90)
    verify_packed(packed, "UP", 140)
    verify_packed(packed, "DOWN", 420)
    
    # 4. Build aux + weight buffer
    print("\n4. Building final buffer...")
    q_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    k_norm = np.ones(HEAD_DIM, dtype=bfloat16)
    rope_theta = 500000.0
    dims = np.arange(0, HEAD_DIM, 2, dtype=np.float32)
    inv_freq = np.power(np.float32(rope_theta), -dims / np.float32(HEAD_DIM))
    angles = np.float32(0) * inv_freq
    cos_val = np.cos(angles).astype(bfloat16)
    sin_val = np.sin(angles).astype(bfloat16)
    aux_bf16 = np.concatenate([input_norm, post_attn_norm, q_norm, k_norm, cos_val, sin_val])
    aux = np.frombuffer(aux_bf16.tobytes(), dtype=np.int32).copy()
    weight_words = np.frombuffer(packed.tobytes(), dtype=np.int32).copy()
    buffer = np.concatenate([aux, weight_words]).astype(np.int32)
    
    print(f"  Buffer: {buffer.shape[0]} dwords ({buffer.nbytes/1e6:.1f} MB)")
    assert buffer.shape[0] == TOTAL_WEIGHT_AND_AUX_I32, \
        f"Size mismatch: {buffer.shape[0]} != {TOTAL_WEIGHT_AND_AUX_I32}"
    
    # 5. Run on NPU
    print("\n5. Running on NPU...")
    import pyxrt
    
    device = pyxrt.device(0)
    xclbin = pyxrt.xclbin(str(XCLBIN_PATH))
    device.register_xclbin(xclbin)
    context = pyxrt.hw_context(device, xclbin.get_uuid())
    kernel = pyxrt.kernel(context, xclbin.get_kernels()[0].get_name())
    
    with open(INST_PATH, 'rb') as f:
        inst_data = f.read()
    
    gi = kernel.group_id(1)
    gd = kernel.group_id(3)
    
    bo_inst = pyxrt.bo(device, len(inst_data), pyxrt.bo.cacheable, gi)
    bo_hidden = pyxrt.bo(device, HIDDEN_DWORDS*4, pyxrt.bo.host_only, gd)
    bo_output = pyxrt.bo(device, HIDDEN_DWORDS*4, pyxrt.bo.host_only, gd)
    bo_k = pyxrt.bo(device, 32768, pyxrt.bo.host_only, gd)
    bo_v = pyxrt.bo(device, 32768, pyxrt.bo.host_only, gd)
    bo_w = pyxrt.bo(device, buffer.nbytes, pyxrt.bo.host_only, gd)
    
    bo_inst.write(inst_data, 0)
    
    hv = np.random.randn(HIDDEN_DIM).astype(np.float32).astype(bfloat16)
    bo_hidden.write(np.frombuffer(hv.tobytes(), dtype=np.int32).copy().tobytes(), 0)
    bo_output.write(bytes(HIDDEN_DWORDS*4), 0)
    bo_k.write(bytes(32768), 0)
    bo_v.write(bytes(32768), 0)
    bo_w.write(buffer.tobytes(), 0)
    
    print("  Starting kernel...")
    t0 = time.time()
    run = kernel(3, bo_inst, len(inst_data), bo_k, bo_v, bo_w, bo_output, bo_hidden)
    state = run.wait(60000)
    tk = time.time() - t0
    print(f"  Kernel: {tk:.3f}s state={state}")
    
    out_i32 = np.frombuffer(bo_output.read(HIDDEN_DWORDS*4, 0), dtype=np.int32).copy()
    out_f32 = np.frombuffer(out_i32.tobytes(), dtype=bfloat16).astype(np.float32)
    
    total_time = time.time() - t_start
    print(f"\n{'=' * 70}")
    print(f"RESULTS")
    print(f"{'=' * 70}")
    print(f"  Total time: {total_time:.2f}s")
    print(f"  Output[0:16]: {out_f32[:16]}")
    nz = np.count_nonzero(np.abs(out_f32) > 1e-6)
    print(f"  Non-zero: {nz}/{HIDDEN_DIM}")
    if nz > 0:
        print(f"  Range: [{out_f32.min():.4f}, {out_f32.max():.4f}]")


try:
    main()
except Exception as e:
    print(f"\nERROR: {e}")
    traceback.print_exc()
