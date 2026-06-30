#!/usr/bin/env python3
"""End-to-end test: Pack BitNet weights + run full-layer xclbin on NPU.
Uses the fixed pack_full_layer.py (CHUNK_BF16_RAW=8192, no SUB_CHUNKS)."""

import os, sys, struct, json
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'toolchain/mlir_aie/python'))
sys.path.insert(0, os.path.dirname(__file__))

import numpy as np
from ml_dtypes import bfloat16
from pack_full_layer import build_proper_weight_stream

MODEL_PATH = '/home/bcloud/models/bitnet-b1.58-2B-4T/model.safetensors'
XCLBIN_PATH = os.path.join(os.path.dirname(__file__),
    'build/bitnet-b1.58-2B-4T-full-layer/design.xclbin')
INST_PATH = os.path.join(os.path.dirname(__file__),
    'build/bitnet-b1.58-2B-4T-full-layer/design.bin')


def main():
    layer = 0
    print("=" * 60)
    print(f"BitNet Full-Layer XCLBIN Test (Layer {layer})")
    print("=" * 60)

    # Pack weights using the verified CHUNK_BF16_RAW packer
    print("\n1. Packing weights...")
    buffer = build_proper_weight_stream(layer)
    print(f"  Buffer: {buffer.shape} dwords ({buffer.nbytes/1024/1024:.1f} MB)")

    # Run on NPU
    print("\n2. Loading xclbin...")
    import pyxrt

    device = pyxrt.device(0)
    print(f"  Device: {device.get_info(pyxrt.xrt_info_device.name)}")

    xclbin = pyxrt.xclbin(XCLBIN_PATH)
    uuid = xclbin.get_uuid()
    device.register_xclbin(xclbin)
    context = pyxrt.hw_context(device, uuid)

    kernels = xclbin.get_kernels()
    kname = kernels[0].get_name()
    kernel = pyxrt.kernel(context, kname)
    print(f"  Kernel: {kname}")

    with open(INST_PATH, 'rb') as f:
        inst_data = f.read()
    print(f"  Instructions: {len(inst_data)} bytes")

    # Create BOs
    instr_grp = kernel.group_id(1)
    flags = pyxrt.bo.cacheable
    inst_bo = pyxrt.bo(device, len(inst_data), flags, instr_grp)
    inst_bo.write(inst_data, 0)

    # Data BOs — CORRECT order matching runtime_sequence:
    # %k_cache (40960 dwords), %v_cache (40960 dwords), %weights, %output, %hidden
    k_cache_bo = pyxrt.bo(device, 163840, pyxrt.bo.host_only, 65536)
    k_cache_bo.write(bytes(163840), 0)

    v_cache_bo = pyxrt.bo(device, 163840, pyxrt.bo.host_only, 65536)
    v_cache_bo.write(bytes(163840), 0)

    w_bo = pyxrt.bo(device, buffer.nbytes, pyxrt.bo.host_only, 65536)
    w_bo.write(buffer.tobytes(), 0)

    o_bo = pyxrt.bo(device, 5120, pyxrt.bo.host_only, 65536)
    o_bo.write(bytes(5120), 0)

    # Non-zero hidden — ones to avoid RMS norm NaN
    hidden_bf16 = np.ones(2560, dtype=np.float16).view(np.int32)
    h_bo = pyxrt.bo(device, 5120, pyxrt.bo.host_only, 65536)
    h_bo.write(hidden_bf16.tobytes(), 0)

    # Sync all
    for bo in [inst_bo, k_cache_bo, v_cache_bo, w_bo, o_bo, h_bo]:
        bo.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)

    # CORRECT: k_cache, v_cache, weights, output, hidden
    print(f"\n3. Running kernel...")
    import time
    t0 = time.time()
    run = kernel(3, inst_bo, len(inst_data), k_cache_bo, v_cache_bo, w_bo, o_bo, h_bo)
    state = run.wait()
    elapsed = time.time() - t0
    print(f"  State: {state}")
    print(f"  Elapsed: {elapsed:.3f}s")

    if state != pyxrt.ert_cmd_state.ERT_CMD_STATE_COMPLETED:
        print(f"  FAILED: kernel did not complete")
        return 1

    # Read output
    o_bo.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)
    output_words = np.frombuffer(o_bo.read(5120, 0), dtype=np.int32).copy()
    output_bf16 = np.frombuffer(output_words.tobytes(), dtype=np.float16).astype(np.float32)

    nonzero = np.count_nonzero(np.abs(output_bf16) > 1e-6)
    nans = np.count_nonzero(np.isnan(output_bf16))
    print(f"\n4. Results:")
    print(f"  Output[:8]: {output_bf16[:8]}")
    print(f"  Non-zero: {nonzero}")
    print(f"  NaN count: {nans}")
    if not np.all(np.isnan(output_bf16)):
        print(f"  Range: [{np.nanmin(output_bf16):.6f}, {np.nanmax(output_bf16):.6f}]")

    if nans > 0:
        print("  ⚠️ NaN in output — check weight packing or hidden state")
    elif nonzero == 0:
        print("  ⚠️ All zeros — kernel may be producing identity output")
    else:
        print("  ✅ Kernel produced non-zero, non-NaN output!")

    print("\n5. Done!")
    return 0


if __name__ == '__main__':
    exit(main())
