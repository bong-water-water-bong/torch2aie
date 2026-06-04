# mlir-aie + Chess Quick Reference

This file is a compact engineering reference for agents working in this repo.
It should capture stable performance rules and toolchain facts, not a running
experiment diary.

## Local Toolchain

- Source `scripts/env.sh` before building. Use the checked-in binaries under
  `toolchain/`; do not assume a system mlir-aie, Peano, XRT, or venv.
- Chess entry point: `toolchain/bin/xchesscc_wrapper`, forwarding to
  `toolchain/mlir_aie/bin/xchesscc_wrapper`.
- AIE2P / Strix kernel compile uses `xchesscc -p me -C Release_LLVM` with
  `-D__AIENGINE__ -D__AIE_ARCH__=21 -D__AIEARCH__=21`.
- xclbin generation uses `aiecc --aietools=toolchain/aietools --unified
  --dynamic-objFifos`.
- IRON reference MHA uses Peano and is only a reference point. This repo's
  attention path uses direct mlir-aie Python dialect plus Chess kernels.

## References

- AMD UG1079, Kernel Pragmas:
  https://docs.amd.com/r/2021.1-English/ug1079-ai-engine-kernel-coding/Kernel-Pragmas
- AMD UG1079, Loop Flattening and Unrolling:
  https://docs.amd.com/r/en-US/ug1079-ai-engine-kernel-coding/Loop-Flattening-and-Unrolling
- AMD UG1079, Scheduling Separator:
  https://docs.amd.com/r/en-US/ug1079-ai-engine-kernel-coding/Scheduling-Separator
- AMD UG1639, AI Engine-ML v2 Intrinsics reference for AIE2P / `npu2`:
  https://download.amd.com/docnav/aiengine/xilinx2025_2/aiengine_ml_v2_intrinsics/intrinsics/index.html
- AMD UG1529, AI Engine API reference for portable `aie::` C++ APIs:
  https://download.amd.com/docnav/aiengine/xilinx2025_2/aiengine_api/aie_api/doc/index.html

## AMD Doc TOC

- UG1639 AIE-ML v2 Intrinsics is the low-level AIE2P / `npu2` reference. Top
  level: Data Types, Intrinsics, Compiler optimizations, Native only.
- UG1639 Data Types: Vector Data Types, Accumulator Data Types, Scalar Data
  Types.
- UG1639 Intrinsics: Load/Store Operations, Scalar Operations, Vector
  Conversions, Vector Operations.
- UG1639 Load/Store: Addressing intrinsics, Streams, Load 4x Operations.
- UG1639 Scalar Operations: Integer Operations, Locks, Events, Cycle Counter,
  Core ID, Configuration / Mode Settings.
- UG1639 Vector Conversions: Broadcast, BF16-to-integer conversions, Casting,
  Shift-Round-Saturate, Upshift, Pack/Unpack, Extract/Set/Insert/Concatenate
  vector, Extract/insert element.
- UG1639 Vector Operations: Add/Subtract, Bitwise logical, Compare/Select,
  Initialization, Shuffle, Multiply Accumulate, Shift, Shift element.
- UG1639 Native only: Stream access.
- UG1529 AIE API is the portable C++ `aie::` API reference. Top level:
  Overview, Changelog, Deprecated List, API Reference.
- UG1529 API Reference topics: Basic Types, Configuration, Memory,
  Initialization, Arithmetic, Bits, Comparison, Reduction, Reshaping,
  Floating-point Conversion, Elementary Functions, Matrix Multiplication, FFT,
  Special Multiplications, Lookup Tables, Operator Overloading, ADF
  Interoperability, Utility functions/classes.
- UG1529 Basic Types subtopics: Basic Type Initialization, Vector and
  Accumulator Conversions, Concepts for Basic Types, Accumulator Element Types,
  Lazy Operations.
- UG1529 Utility subtopics: Architecture helpers, Print functions, Loop
  functions, Loop unrolling, Loop pipelining, Non-portable optimizations,
  Register pinning.

## Chess Pragmas

- Use pragmas only on loops whose bounds and body shape you understand. They are
  scheduling hints, not correctness fixes.
- `chess_loop_range(min, max)` / `AIE_LOOP_RANGE(min, max)` must describe real
  loop counts. An optimistic minimum can produce invalid scheduling decisions.
- Compile-time constant loops often do not need `loop_range`; measure before
  adding it.
- `chess_prepare_for_pipelining` is useful for tight leaf loops where software
  pipelining has a chance to select a better schedule. Non-leaf loops can produce
  warnings; do not remove or add the pragma based only on the warning.
- `chess_flatten_loop` and `chess_unroll_loop` can improve tiny loops, but they
  duplicate or reshape code and can increase program memory. Check ELF maps after
  use.
- Large `always_inline` helpers can overflow AIE program memory. Inline only
  after trimming unused symbols and confirming the resulting PM size.
- `chess_storage(...)` / AIE register qualifiers appear in AIE API internals; do
  not add storage qualifiers casually unless solving a specific register pressure
  or data movement issue.

## AIE API / Intrinsics

- Prefer fixed-shape vector code in hot kernels: `aie::load_v`, `aie::store_v`,
  `aie::broadcast`, `aie::select`, `aie::reduce_*`, and `aie::mmul`.
- Use `restrict` pointers for independent buffers. Prefer AIE vector loads and
  stores over scalar loops when the layout is fixed.
- `aie::select(v1, v2, mask)` returns `v1` where the mask lane is false and
  `v2` where the mask lane is true.
- Keep the rounding mode explicit for bf16 paths:
  `::aie::set_rounding(aie::rounding_mode::conv_even)`.
- `aie::load_v` / `aie::store_v` assume vector alignment. On AIE2P,
  `vector<bfloat16,16>` needs 32-byte alignment. A MyLM compact packet payload
  starts at `compact + 1` dword, only 4-byte aligned, so bf16 vector reads from
  that payload must use `aie::load_unaligned_v<16>(ptr, 2)`.
- `aie::store_unaligned_v` is only for genuinely unaligned destinations. For
  c1r2 residual/down, hidden/output block bases are 32-byte aligned, so keep
  `store_v` there and fix only the compact payload read side.
- For matmul tiles, reuse the local `aie::mmul` template shapes before inventing
  a new microkernel. Current bf16 AIE2P emulation uses 8x8x8 shapes.

## AIE LUT / Linear Approx

- `aie::lut<4,...>` is not a plain linear array. For 32-bit values on AIE2P,
  duplicate at 4-entry bank granularity:
  `{e0,e1,e2,e3,e0,e1,e2,e3,e4,e5,e6,e7,e4,e5,e6,e7,...}`.
  Duplicating only 2 entries causes segment aliases such as `0,3,0,3`.
- For `aie::linear_approx<bfloat16, aie::lut<4, float, bfloat16>>`, the table
  entry is `(slope, offset)` and the API computes `slope * input + offset`.
  Slope storage is bf16-like; use a slope value whose low fp32 mantissa bits are
  zero.
- MyLM c6r2 SwiGLU indexes 64 SiLU segments by
  `segment = clamp(floor(gate * 64), -512, 511) + 512 >> 4`. A vector
  `linear_approx` implementation can pass `gate * 4` as the lookup input and
  store `slope / 4` in the LUT, so the computed value remains
  `slope * gate + offset`.
- Always validate LUT layout with an index probe or isolated kernel before
  trusting the source shape. A wrong LUT layout can still compile cleanly and
  look vectorized in `.lst`.

## MyLM Qwen3 c1r2 / c6r2 Reverse Notes

- MyLM Main16 is one static dispatcher/body chain, not seven independent
  projection programs. Normal mode runs `0x1870 -> 0x1e80 -> 0x2490 -> 0x2aa0`
  with records `12 x 0x1`, `8 x 0x4`, `48 x 0x8`, `8 x 0x4`.
- Treat Main16 body order and replay count as ABI. Header `0x4` is reused by O
  and down, so do not distinguish those phases by inventing new packet IDs.
- Production Main16 code should use fixed body shapes: Q/K/V fused as one
  12-record body, then O, up/gate, and down. Q-only `phase_limit=1` is an
  isolated microbench compatibility path, not the full-layer scheduler shape.
- Static body duplication is acceptable when it matches the MyLM dispatcher
  model and improves Chess scheduling determinism. Do not collapse it back to
  dynamic `records/chunks_per_record` helpers just to reduce object size; first
  compare opcode density, PM size, and NPU time against the MyLM-style gates.
- Main16 isolated gates now cover the body chain directly:
  `kernel-main16-q4nx-run` checks Q-only, `kernel-main16-q4nx-qkv-run` checks
  the fused 12-record Q/K/V body, and `kernel-main16-q4nx-full-run` checks the
  full `12/8/48/8` record chain.
- MyLM c1r2 is the full-vector station: hidden/RMS1 -> 12 packet0 replays,
  O residual + RMS2 -> 48 packet0 replays, down residual -> final hidden. The
  normal layer path is selected by the host writing c1r2 mode 1 and releasing
  L6.
- c1r2 bd3 is a manual-header full-vector packet0 replay channel: one header
  dword plus 2048 payload dwords. L3 release values are replay counts
  `12`, `48`, and `1`; do not replace them with arbitrary host-visible tensors.
- MyLM c1r2 residual/down vector add lowers to
  `vlda.conv.fp32.bf16 -> vadd.f -> vst.conv.bf16.fp32`, with `crrnd` loaded
  from local state around `0x73042`. A naive AIE API
  `aie::add(bfloat16,bfloat16)` is not equivalent to scalar
  `bf16_rne(float(a) + float(b))`.
- c1r2 residual/down vector add is reachable with AIE API, no raw asm:
  aligned hidden/output uses `aie::load_v<16>` / `aie::store_v`, compact payload
  uses `aie::load_unaligned_v<16>(compact_payload + lane, 2)`, bf16 vectors are
  converted to `aie::accum<accfloat,16>`, then `aie::add`, then
  `store_v(sum.to_vector<bfloat16>())`. The verified opcode shape is
  `VLDA.CONV.fp32.bf16 + VLDB/VSHIFT/VCONV.fp32.bf16 + VADD.f +
  VST.CONV.bf16.fp32`.
- Set `::aie::set_rounding(aie::rounding_mode::conv_even)` before c1r2 bf16
  vector conversion/store. Without it the add-only gate writes correct data but
  has 1-LSB bf16 mismatches versus scalar `bf16_rne`.
- Do not implement c1r2 vector add by extracting vector lanes and scalar
  storing them. Chess can schedule `ST.s16` before the corresponding
  `VCONV/VEXTRACT`, writing stale registers. Use vector `store_v` for this path.
- c1r2 vector add is the default production path; the old scalar residual/down
  fallback and `--vector-add` wrapper path were removed. Verified gates:
  `make -C examples/qwen3-decode-layer kernel-full-vector-add-run` and
  `make -C examples/qwen3-decode-layer kernel-full-vector-run`. Representative
  isolated full-vector time improved from the old scalar path at about
  `3787 us` to about `2634 us` on this machine.
- MyLM c6r2 is the SwiGLU slice station. One 512-dword input is two halves:
  `up[512 bf16]` first, `gate[512 bf16]` second. It emits 512 bf16
  `SiLU(gate) * up`, i.e. 256 dwords.
- MyLM c6r2 disassembly shows the hot path shape:
  `vfloor.s32.bf16`, clamp to `0x1ff`, `vldb.4x64`, `vmul.f`, and
  `vst.conv.bf16.fp32`. This is the target opcode shape for the torch2aie
  SwiGLU kernel.
- The c6r2 input is assembled by the row1 compact tree, not direct 17-dword
  records: per-column `17+16+16+16=65`, c1r1
  `65+64+64+64=257`, then c6r2 DMA0 drops two headers to get 512 dwords.
  Adjacent global packets must pair as up payload then gate payload.

## Direct mlir-aie Dialect

- For performance examples, prefer direct dialect generation over IRON
  `Program` / `Worker` / `ObjectFifo` / `Runtime` when tile placement, FIFO
  topology, DMA order, or RTP writes are part of the optimization.
- Direct designs should use `mlir_mod_ctx`, `@device(AIEDevice.npu2)`,
  `tile(...)`, `object_fifo(...)`, `object_fifo_link(...)`, `@core(...)`,
  `buffer(...)`, and `@runtime_sequence(...)`.
- Keep object FIFO names stable when the host or generated instruction flow has
  been validated. For prefill attention, the important names are `inQ`, `inQ2`,
  `inK`, `inV`, `memO`, and `memO2`.
- Use `dimensionsToStream` explicitly on mem-tile fanout/fanin FIFOs. This is
  the direct-dialect equivalent of IRON `dims_to_stream`.
- Use `shim_dma_single_bd_task`, `dma_start_task`, `dma_await_task`, and
  `dma_free_task` in `runtime_sequence` for host DMA. For the current
  `seq=512,p8` attention shape, expect 6 DMA tasks: Q0, Q1, K, V, O0, O1.
- RTP writes should match what cores actually read. The current attention
  design writes two RTP values for QK/PV stages and four for softmax, for 64
  `aiex.npu.rtp_write` ops at `p8`.
- Do not blindly replace RTP-controlled core loops with compile-time constants.
  A fixed-bound experiment reduced sequence instructions but slowed core
  execution, so dynamic RTP loop shape is currently preferred.

## Attention Kernel Rules

- Do not mutate the QK score tile in-place for causal masking and then read it
  again under Chess. Leave scores as input and write the masked softmax result
  into `P`.
- Setting masked lanes to bf16 lowest before `exp2` is not enough. Masked lanes
  must be selected to zero after `exp2` before storing `P` and before reducing
  the softmax denominator.
- Keep the hot softmax path specialized for 64 columns. Generic iterator-based
  partial softmax is not the fast path here.
- Do not split full 64-column rows into a separate softmax function unless a new
  measurement proves it wins. The extra branch and function body can hurt Chess
  scheduling.
- Trim unused extern kernel symbols before aggressive inlining. Removing unused
  generic softmax/mask and scalar matmul/zero frees enough PM for the current
  inline masked64 softmax shape.
- The current fastest shape is: trimmed symbol set plus inline masked64 softmax.
  Representative p8 softmax-core PM is about 12.5K.
- `examples/prefill_attention/design.py` is intentionally direct mlir-aie
  dialect, not IRON. Use it as the attention optimization entry point.

## Matmul / Copy Guardrails

- The outer `z` loop pragma in the local mmul helper is intentionally kept even
  though Chess warns about a non-leaf loop. Removing the warning did not provide
  a stable end-to-end win.
- Do not enable `-DOPT_PERF_ENABLED` globally for this attention example without
  rechecking PM; it can overflow program memory by activating extra flattening.
- The generic `passThrough.cc` may warn that its loop minimum could be 8. A local
  exact-range replacement made the warning disappear but did not improve
  end-to-end latency, so the generic kernel remains the default.

## Build And Measure

- Do not run two NPU host processes at the same time.
- Always verify correctness and performance after codegen-affecting edits.
  Chess can make small source changes faster, slower, or too large for PM.
- Use the same C++ host and deterministic data when comparing with IRON xclbins.
- Run both orders when comparing two xclbins; NPU state and first-run effects can
  move results by several microseconds.
- Inspect PM and symbol size with `*.elf.map` and `*.lst` under
  `examples/*/build/*.mlir.prj/`.
- Build artifacts under `examples/*/build`, `_build`, and generated executables
  are ignored and should not be committed.

Useful commands:

```bash
. ./scripts/env.sh
make -C examples/prefill_attention clean run SEQ_LEN=512 PIPELINES=8 WARMUP=3 ITERS=10 VERIFY=true VERBOSITY=1
examples/prefill_attention/prefill_attention.exe \
  -x examples/prefill_attention/build/final_h1_kv0_s512_d64_p8.xclbin \
  -i examples/prefill_attention/build/insts_h1_kv0_s512_d64_p8.txt \
  -k MLIR_AIE --seq-len 512 --heads 1 --kv-heads 0 --head-dim 64 \
  --pipelines 8 --warmup 5 --iters 30 --verify=true -v 1
```

## Current Baseline

- Prefill attention `seq=512, head_dim=64, heads=1, kv_heads=0, pipelines=8`
  should be around the low-330 us range on this machine with the direct dialect
  generator.
- Original IRON reference measured slower on the same C++ host in prior local
  comparisons.
