# Qwen3 Decode Layer

This example is the strict torch2aie port of the IRON Qwen3 Q/K/V prefix and
single-layer decode frontier.  It uses MLIR-AIE for the physical dataflow and
Chess-compiled C++ role kernels.  It does not use source assembly or raw core
replacement.

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

Compact record headers use the MyLM phase words, not a torch2aie-specific
debug header:

```text
Q/K/V    header 0x1 -> c1r3 postprocess, header stripped
O/down   header 0x4 -> c1r2 full-vector station, header preserved
up/gate  header 0x8 -> c6r2 SwiGLU, header stripped
```

The same packet id can appear on another physical source/destination pair
inside the layer, for example packet1 for down activation replay and packet8
for current-K writeback.  Do not split the compact ABI back into packet10..15.

## Files

- `design.py`: emits the strict QKV-prefix MLIR from the ported IRON generator.
- `cases/full_layer_qkv_prefix_generate.py`: local copy of the IRON topology,
  BD, lock, packet route, and runtime sequence generator.
- `qwen3_decode_kernels.cc`: Chess C++ implementation of the Main16 scheduler
  entry `q4nx_main16_layer_scheduler`.
- `qwen3_decode_weight_only.cc`: full-graph Main16 consume/drop microbench
  kernel.  It keeps activation, record, and downstream paths alive while
  removing Q4NX dequant/MAC.
- `qwen3_decode_weight_path.cc`: isolated Main16 weight-path consume/drop
  kernel.  It only consumes DMA1 weight locks.
- `edge_attention.cc` and `swiglu.cc`: Chess C++ edge role kernels used by the
  full-layer path.
- `postprocess_qkv.cc` and `full_vector_station.cc`: Chess C++ edge role
  kernels used by the QKV-prefix path.
- `run_qkv_prefix.py`: build/check/run wrapper for the real NPU path.
- `run_full_layer.py`: build/check/run wrapper for the real Qwen3-8B layer
  frontier.
- `run_weight_stream.py`: full-graph weight-stream consume/drop timing wrapper.
- `*_light.cc`: full-graph weight-stream probe role kernels that keep the
  production packet/BD/lock topology while replacing post-c1r1 compute with
  lightweight zero/pass-through behavior.
- `run_weight_path.py`: isolated DDR weight BO -> shim -> memtile row1 ->
  Main16 DMA1 timing wrapper.
- `run_weight_compact.py`: exact row1/c1r1 compact-tree timing wrapper.  It
  consumes real Q4NX weights, emits Main16 records, gathers them through the
  MyLM two-level compact tree, then sinks c1r1 packets to host memory.

## Run

```bash
make -C examples/qwen3-decode-layer check
make -C examples/qwen3-decode-layer build
make -C examples/qwen3-decode-layer run

make -C examples/qwen3-decode-layer full-check
make -C examples/qwen3-decode-layer full-build
make -C examples/qwen3-decode-layer full-run

make -C examples/qwen3-decode-layer weight-stream-run
make -C examples/qwen3-decode-layer weight-stream-light-edge-run
make -C examples/qwen3-decode-layer weight-stream-light-attention-run
make -C examples/qwen3-decode-layer weight-path-run
make -C examples/qwen3-decode-layer weight-compact-run

make -C examples/qwen3-decode-layer analyze-kernels
make -C examples/qwen3-decode-layer analyze-kernels KERNELS=postprocess_qkv.o
make -C examples/qwen3-decode-layer analyze-main16
make -C examples/qwen3-decode-layer analyze-dataflow
make -C examples/qwen3-decode-layer native-probe
```

The generated runtime ABI is the IRON QKV-prefix ABI:
`k_cache, v_cache, weights, hidden`.

The full-layer runtime ABI is:
`k_cache, v_cache, aux_prefixed_weights, output, hidden`.

On the local NPU, the current Chess C++ full-layer frontier passes layer0/token31
against the CPU oracle and runs in about `37,000 us`.  Main16 uses an AIE API
vector Q4 unpack/dequant/MAC path; the earlier scalar correctness baseline was
about `5,389,748 us`.

## Performance frontier

The full layer streams `115 MiB` of Q4NX weights.  A `5 ms` full-layer target
therefore requires at least `22.46 GiB/s` sustained weight bandwidth before
counting activation, KV cache, or control traffic.

Current local measurements:

- Full layer, numerically checked: about `37,000 us`, effective `3.03 GiB/s`.
- Full graph with Main16 Q4NX compute replaced by consume/drop:
  `41,205 us`, effective `2.73 GiB/s`.
- Same full graph and Main16 consume/drop, but with post-c1r1 edge kernels
  replaced by lightweight stubs: `10,830 us`, effective `10.37 GiB/s`.
- Same full graph and Main16 consume/drop, but with only attention kernels
  replaced by lightweight stubs: `28,342 us`, effective `3.96 GiB/s`.
- Exact row1/c1r1 compact-tree sink, with Main16 emitting real 17-dword
  records and c1r1 packets kept to host memory: `9,128 us`, effective
  `12.30 GiB/s`.
- Isolated weight path, preserving DDR weight BO -> shim -> memtile row1 ->
  Main16 DMA1: `8,031 us`, effective `13.98 GiB/s`.
- IRON row1 stream reference: `8,717 us`, effective `12.883 GiB/s`.

The isolated path, exact compact-tree probe, and light-edge full graph all
reach the short-term 10+ GiB/s frontier.  The current production full-layer
slowdown is therefore not the raw row1 weight stream, the two-level compact
tree, or the static full-graph BD/lock topology alone; it comes from the
post-c1r1 production edge compute/backpressure in full-vector station,
attention, SwiGLU, and their activation replay coupling.  The next priority is
to make those production edge stages lighter or more decoupled while keeping
Main16 DMA1 running ahead.

The light-attention-only probe shows production attention is not the only
post-c1r1 bottleneck: replacing attention alone improves the full-graph
weight-stream probe from `41.2 ms` to `28.3 ms`, while replacing all post-c1r1
edge compute reaches `10.8 ms`.  The next split should focus on the full-vector
station, postprocess, and SwiGLU roles.

`analyze-dataflow` reports the full-layer chunk/replay/compact fanout.  The
current schedule has `1472` weight chunks per Main16 tile, `23552` weight
chunks for the full graph, and the same number of DMA0 activation chunk
acquires.  It also reports the row1/c1r1 compact packet counts and the measured
slowdown ratios between the isolated weight path, the exact compact-tree probe,
the light-edge full graph, and the production-edge full graph.

`analyze-main16` reports whole-core static opcode counts, PM size, NOPs, and
the bandwidth lower bound for the current build artifact.  Treat those opcode
counts as a direction check, not as MyLM hot-loop dynamic counts.

`analyze-kernels` is the fast per-role Chess report.  It compiles each linked
role object independently and summarizes the generated `.lst`: instruction
lines, loop count, max loop listing span, `.swstall`, compiler warnings, vector
opcode counts, and NOP totals.  Use `KERNELS=<object>.o` for a single touched
kernel before paying for a full 27-core build.  Current useful next targets are
the `edge_attention.o` loop #3 warning and the `full_vector_station.o` loop #8
warning.

`native-probe` compiles a small Chess object that verifies the native intrinsic
surface needed for the Q4NX hot loop.  Current verified rules:

- `unpack(v64uint4)` and `unpack(v64uint8)` generate `VUNPACK`.
- `mac_elem_16_conf(v32bfloat16, v32bfloat16, v16accfloat, ...)` generates
  `VMAC.f`.
- To get `VEXTBCST.16`, load activation as `v32uint16`, use
  `broadcast_elem(v32uint16, idx)`, then cast the result to `v32bfloat16`.
  Broadcasting directly from `v32bfloat16` generates `VEXTBCST.32`.

After weight stream/full-graph overlap is fixed, the next Main16 compute step
is a MyLM-style fill/steady/drain Q4NX microkernel that interleaves load,
unpack, coefficient construction, and MAC.  Keep MLIR-AIE for
topology/BD/locks/runtime; optimize only the linked Chess hot loop until the
opcode report approaches the MyLM shape.
