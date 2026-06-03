# Qwen3 Decode Layer

This example is the strict torch2aie port of the IRON Qwen3 Q/K/V prefix
slice.  It uses MLIR-AIE for the physical dataflow and Chess-compiled C++ role
kernels.  It does not use source assembly or raw core replacement.

The ABI follows `/home/taowen/projects/IRON/explain-qwen3-layer.md`:

```text
c1r2 full-vector replay -> c1r1 bridge -> Main16 Q/K/V
  -> row1 17-dword record gather
  -> c1r1 257-dword compact packet
  -> c1r3 postprocess
  -> packet8/9 current K/V cache writeback
```

Main16 remains fixed:

```text
activation DMA0: BD0/1, 0x8000/0xc000, lock L0/L1, 128 dword
weight     DMA1: BD2/3, 0x2800/0x4000, lock L2/L3, 1280 dword Q4NX
record    MM2S1: BD4/5, 0x3c1c/0x541c, lock L5/L4, 17 dword
```

## Files

- `design.py`: emits the strict QKV-prefix MLIR from the ported IRON generator.
- `cases/full_layer_qkv_prefix_generate.py`: local copy of the IRON topology,
  BD, lock, packet route, and runtime sequence generator.
- `qwen3_decode_kernels.cc`: Chess C++ implementation of the Main16 scheduler
  entry `q4nx_main16_layer_scheduler`.
- `postprocess_qkv.cc` and `full_vector_station.cc`: Chess C++ edge role
  kernels used by the QKV-prefix path.
- `run_qkv_prefix.py`: build/check/run wrapper for the real NPU path.

## Run

```bash
make -C examples/qwen3-decode-layer check
make -C examples/qwen3-decode-layer build
make -C examples/qwen3-decode-layer run
```

The generated runtime ABI is the IRON QKV-prefix ABI:
`k_cache, v_cache, weights, hidden`.
