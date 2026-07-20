#!/usr/bin/env python3
"""Fused Qwen3 decode using aie.iron.ObjectFifo for deadlock-free lock protocol.
Uses our existing Chess-compiled kernels via link_with.
"""
import sys, os, numpy as np
from pathlib import Path
from ml_dtypes import bfloat16

sys.path.insert(0, '/home/bcloud/mlir-aie/build/python')
sys.path.insert(0, '/home/bcloud/torch2aie/toolchain/xrt/python')

from aie.iron import ObjectFifo, Kernel, Program, Runtime, Worker
from aie.iron.device import NPU2

# Qwen3-0.6B dimensions
H, NH, NKV, HD, IM = 1024, 16, 8, 128, 3072
N_COLS = 4  # main compute columns

def build_fused_decode(build_dir="/tmp/fused_iron_build"):
    dev = NPU2()
    
    # --- Buffer types ---
    hidden_ty = np.ndarray[(H,), np.dtype[bfloat16]]
    qkv_ty = np.ndarray[(NH*HD + 2*NKV*HD,), np.dtype[bfloat16]]  # 4096
    attn_out_ty = np.ndarray[(H,), np.dtype[bfloat16]]
    ffn_hidden_ty = np.ndarray[(IM,), np.dtype[bfloat16]]
    
    # --- ObjectFifos ---
    # Main16 Q4NX input path
    fifo_act = ObjectFifo(hidden_ty, name="act", num_cols=N_COLS)
    fifo_wt = ObjectFifo(qkv_ty, name="wt", num_cols=N_COLS)
    fifo_rec = ObjectFifo(hidden_ty, name="rec", num_cols=N_COLS)
    
    # Edge core fifos
    fifo_edge_q = ObjectFifo(qkv_ty, name="edge_q", num_cols=2)
    fifo_edge_k = ObjectFifo(hidden_ty, name="edge_k", num_cols=2)
    fifo_edge_v = ObjectFifo(hidden_ty, name="edge_v", num_cols=2)
    
    # Post-process / attention fifos
    fifo_post = ObjectFifo(hidden_ty, name="post", num_cols=1)
    fifo_attn = ObjectFifo(hidden_ty, name="attn", num_cols=1)
    
    # --- Kernel instances (linking to our Chess-compiled .o files) ---
    KERNEL_DIR = '/home/bcloud/torch2aie/build/qwen3_decode_layer_objects'
    
    main16_kernel = Kernel(
        "q4nx_main16_layer_scheduler",
        link_with=f"{KERNEL_DIR}/main_projection_q4nx_fast.o",
        arg_types=[hidden_ty, hidden_ty, hidden_ty, hidden_ty],
    )
    
    post_kernel = Kernel(
        "qwen3_postprocess_qkv",
        link_with=f"{KERNEL_DIR}/postprocess_qkv.o",
        arg_types=[qkv_ty, hidden_ty, hidden_ty],
    )
    
    attn_kernel = Kernel(
        "qwen3_edge_attention",
        link_with=f"{KERNEL_DIR}/edge_attention.o",
        arg_types=[hidden_ty, hidden_ty, hidden_ty],
    )
    
    # --- Workers ---
    workers = [
        Worker(main16_kernel, [fifo_act.cons(), fifo_wt.cons(), fifo_rec.prod()]),
        Worker(post_kernel, [fifo_rec.cons(), fifo_edge_q.prod(), fifo_edge_k.prod()]),
        Worker(attn_kernel, [fifo_edge_q.cons(), fifo_edge_k.cons(), fifo_attn.prod()]),
    ]
    
    # --- Runtime (memory mapping + DMA scheduling) ---
    rt = Runtime()
    
    # External host buffers
    host_hidden_ty = np.ndarray[(128 * H,), np.dtype[bfloat16]]  # capacity=128 tokens
    
    with rt.sequence(host_hidden_ty, qkv_ty) as (hidden_buf, weight_buf):
        rt.start(*workers)
        
        # Main16: feed activation + weights, drain records
        for col in range(N_COLS):
            rt.fill(fifo_act.prod(), hidden_buf, ...) 
            rt.fill(fifo_wt.prod(), weight_buf, ...)
            rt.drain(fifo_rec.cons(), hidden_buf, ...)
    
    return Program(dev, rt)

if __name__ == "__main__":
    print("Building fused ObjectFifo design...")
    prog = build_fused_decode()
    mlir = prog.resolve_program()
    out = Path("/tmp/fused_iron.mlir")
    out.write_text(str(mlir))
    print(f"MLIR written to {out} ({len(str(mlir))} chars)")
