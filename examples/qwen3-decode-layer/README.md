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
- `run_full_layer.py`: build/check/run wrapper for the real Qwen3 layer
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

make -C examples/qwen3-decode-layer kernel-all-run
make -C examples/qwen3-decode-layer kernel-postprocess-qkv-run
make -C examples/qwen3-decode-layer kernel-full-vector-run
make -C examples/qwen3-decode-layer kernel-full-vector-profile-run
make -C examples/qwen3-decode-layer kernel-edge-attention-run
make -C examples/qwen3-decode-layer kernel-edge-attention-profile-run
make -C examples/qwen3-decode-layer kernel-main16-q4nx-run
make -C examples/qwen3-decode-layer kernel-main16-q4nx-chunk-slot-run
make -C examples/qwen3-decode-layer kernel-main16-q4nx-slot-scheduler-run
make -C examples/qwen3-decode-layer kernel-main16-q4nx-steady-cell-run
make -C examples/qwen3-decode-layer kernel-main16-q4nx-profile-run
make -C examples/qwen3-decode-layer kernel-swiglu-run

make -C examples/qwen3-decode-layer analyze-kernels
make -C examples/qwen3-decode-layer analyze-kernels KERNELS=postprocess_qkv.o
make -C examples/qwen3-decode-layer analyze-main16
make -C examples/qwen3-decode-layer analyze-dataflow
make -C examples/qwen3-decode-layer main16-q4nx-api-cell-probe
make -C examples/qwen3-decode-layer main16-q4nx-cell-state-carry-probe
make -C examples/qwen3-decode-layer main16-q4nx-chunk-slot-probe
make -C examples/qwen3-decode-layer main16-q4nx-steady-combo-probe
make -C examples/qwen3-decode-layer main16-q4nx-steady-section-probe
make -C examples/qwen3-decode-layer main16-q4nx-steady-cell-probe
make -C examples/qwen3-decode-layer main16-q4nx-slot-window-sep-offset-probe
make -C examples/qwen3-decode-layer main16-q4nx-section-cell-probe
```

The generated runtime ABI is the IRON QKV-prefix ABI:
`k_cache, v_cache, weights, hidden`.

The full-layer runtime ABI is:
`k_cache, v_cache, aux_prefixed_weights, output, hidden`.

Kernel tuning should start with an isolated kernel numerical microbench and a
single-object Chess report, then return to `full-run` only after that kernel
passes.  Current isolated gates:

- `kernel-postprocess-qkv-run`: links only `postprocess_qkv.o`; feeds the same
  12 header-stripped Q/K/V compact payload records plus Q/K norm and RoPE side
  data; checks Q payload, current-K stream, and current-V stream against the
  CPU oracle.
- `kernel-full-vector-run`: links only `full_vector_station.o`; feeds host
  hidden/norm vectors plus O/down compact packets; checks input replay, post
  replay, and final down residual output against the CPU oracle.
- `kernel-full-vector-profile-run`: links only
  `full_vector_station_profile.o`; feeds the same hidden/norm/compact streams
  but writes a debug cycle summary on the final output path.  This is a
  diagnostic gate, not an oracle gate.
- `kernel-edge-attention-run`: links only `edge_attention.o`; feeds one Q
  window and two K/V blocks; checks the bf16 carrier/streaming-softmax/V-accum
  path through the final attention output against the CPU oracle.
- `kernel-edge-attention-profile-run`: links only `edge_attention_profile.o`;
  feeds the same Q/K/V windows but writes a debug cycle summary on the final
  attention output path.  This is a diagnostic gate, not an oracle gate.
- `kernel-main16-q4nx-run`: links only `main_projection_q4nx_fast.o`; feeds one
  Main16 tile with a full Q phase activation/weight ping-pong stream; checks
  the eight strict 17-dword MyLM records against the Q4NX CPU oracle.
- `kernel-main16-q4nx-chunk-slot-run`: links only
  `main16_q4nx_chunk_slot_probe.o`; feeds the production one-chunk ABI
  (`128` dword activation plus `1280` dword Q4NX weight) and checks the
  16-dword record payload against the exact Q4NX CPU oracle.  Current local
  result: `504.5 us`, `mismatches=0`.
- `kernel-main16-q4nx-slot-scheduler-run`: builds the isolated Main16 Q-mode
  scheduler with `QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_kernels_chunk_slot.cc`.
  It preserves the production ping/pong locks, 16 chunks per record, record
  header ABI, and eight Q records, but swaps the hot chunk body to the acc32
  chunk-slot implementation.  Current local result: `1511.1 us`,
  `mismatches=0`.  The default production scheduler on the same gate is
  `1127.7 us`, so this variant is a correctness/ABI bridge, not a replacement
  yet.
- `kernel-main16-q4nx-profile-run`: links only
  `main_projection_q4nx_profile.o`; feeds the same Q phase stream but writes
  debug cycle records on the 17-dword output path.  This is a diagnostic gate,
  not an oracle gate.
- `kernel-swiglu-run`: links only `swiglu.o`; feeds one up/gate compact packet
  pair; checks table-sigmoid SwiGLU output against the CPU oracle.

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

`main16-q4nx-cell-state-carry-probe` compiles a small Chess object that verifies
the native intrinsic surface and register-cell carry patterns needed for the
Q4NX hot loop.  Current verified rules:

- `unpack(v64uint4)` and `unpack(v64uint8)` generate `VUNPACK`.
- `mac_elem_16_conf(v32bfloat16, v32bfloat16, v16accfloat, ...)` generates
  `VMAC.f`.
- To get `VEXTBCST.16`, load activation as `v32uint16`, use
  `broadcast_elem(v32uint16, idx)`, then cast the result to `v32bfloat16`.
  Broadcasting directly from `v32bfloat16` generates `VEXTBCST.32`.

`main16-q4nx-api-cell-probe` is the minimal API/intrinsic baseline for the
Main16 mixed-cell work.  It compiles the same one-MAC shape as four variants:
raw full `v32bfloat16`, half-pack with `insert`, half-pack with `aie::concat`,
and half-pack with raw `::concat`.  Current report:

- raw full `v32bfloat16`: `VMAC.F=1`, `VMOV=0`, `VST=0`, `[sp] refs=0`.
- all three mixed-half pack variants: `VMAC.F=1`, `VMOV=3`, `VST=0`,
  `[sp] refs=0`.

This proves Chess C++ can express MyLM-style mixed half cells without memory
scratch, but `concat` is not cleaner than the explicit `insert` sequence.  The
useful optimization frontier is therefore the Q4 load/dequant scheduling and
pointer-cell lifetime, not replacing `insert` with `concat` or globally pinning
registers.

`main16-q4nx-steady-combo-probe` combines the successful primitive pieces into
a 2-group steady_to_steady micro-probe.  It compiles five variants:

- `q4_1g`: one exact Q4 coeff primitive plus one mixed-half MAC.
- `q4_2g_mixed`: two Q4 groups and one cross-group mixed-half MAC.
- `acc_concat`: two Q4 groups plus accumulator half/quadrant `extract` and
  `concat`.
- `addmac`: two Q4 groups plus `addmac_elem_32_conf`.
- `combined`: Q4 primitive, mixed cells, accumulator concat, and addmac in one
  object.

Current report: all five variants are `VST=0` and `[sp] refs=0`.  The combined
variant generates `VUPS.4X=2`, `VUNPACK=2`, `VEXTBCST.16=4`, `VMAC.F=2`,
`VADDMAC.F=1`, `VCONV.BF16.FP32=12`, and `VMOV=9`.  This is a stronger signal
than the isolated `/tmp` probes: Q4 primitive, accumulator quadrant movement,
and addmac can coexist in Chess C++ without stack or scratch stores.

The remaining steady-cell `[sp] refs=4` boundary is therefore not caused by any
single primitive.  It appears when the expression is stretched into a longer
8-group chain and two sequential dim-pair chains.  The section-window probe
below narrows that down further: staged carry lifetimes are viable, but they
must stay in short slot windows.

`main16-q4nx-steady-section-probe` is the first attempt to express the MyLM
group2 steady_to_steady section as raw-cell Chess C++ instead of as group-level
exact dequant bodies.  The monolithic version tried to put the full single
section into one C++ function: 8 Q4 expands, 32 lane broadcasts, 17 coefficient
conversions, 33 MACs, 8 sub corrections, and one mul.  That shape reached
`chess-backend` but did not finish in a reasonable probe window, which is itself
a useful boundary: handing the full steady section to the backend as one large
C++ DAG is still too coarse.

The checked-in target therefore compiles small slot windows: `front`, `middle`,
`back`, `schedule`, and `acc_schedule`.  They are deliberately smaller live
ranges that approximate the group2 section in batches, plus two windows that
check the MyLM-style adjacency constraints directly.  Current report:

- `front`: `VUPS.4X=3`, `VUNPACK=3`, `VEXTBCST.16=12`, `VMAC.F=10`,
  `VADDMAC.F=2`, `VCONV.BF16.FP32=9`, `VMUL.F=1`, `VADD=3`, `VSUB.F=4`,
  `VST=0`, `[sp] refs=0`.
- `middle`: `VUPS.4X=3`, `VUNPACK=3`, `VEXTBCST.16=12`, `VMAC.F=9`,
  `VADDMAC.F=3`, `VCONV.BF16.FP32=9`, `VADD=3`, `VSUB.F=3`, `VST=0`,
  `[sp] refs=0`.
- `back`: `VUPS.4X=2`, `VUNPACK=2`, `VEXTBCST.16=8`, `VMAC.F=7`,
  `VADDMAC.F=2`, `VCONV.BF16.FP32=6`, `VADD=2`, `VSUB.F=2`, `VST=0`,
  `[sp] refs=0`.
- `schedule`: consumes previous q cells first, then keeps q/dequant, mixed
  half-cell construction, and nearby MACs in one short window.  It generates
  `VUPS.4X=4`, `VUNPACK=4`, `VEXTBCST.16=7`, `VMAC.F=6`, `VADDMAC.F=2`,
  `VCONV.BF16.FP32=9`, `VST=0`, `[sp] refs=0`.
- `acc_schedule`: isolates accumulator half-cell carry through raw
  `extract_v16accfloat`/`concat` and nearby MACs.  It generates `VMOV bm*`
  moves, `VUPS.4X=3`, `VUNPACK=3`, `VMAC.F=4`, `VST=0`, `[sp] refs=0`.

The sum of the three windows lands on the intended `8 VUPS / 8 VUNPACK /
32 VEXTBCST / 8 VADD` scale and keeps stack/scratch clean, but Chess fuses some
source MACs into `VADDMAC.F` and the conversion count includes the probe's final
sink.  A deliberately over-combined schedule window spilled to stack; splitting
that shape back into `schedule` and `acc_schedule` returned to `VST=0` and
`[sp] refs=0`.  The important rule for production Main16 is therefore: express
q-cell, mixed half-cell, and accumulator-cell carry as adjacent inline slot
windows, not as one large C++ DAG or a long-lived State object.

`main16-q4nx-chunk-slot-probe` is the first production-layout bridge from those
section probes back to the real Main16 chunk ABI.  It consumes one real
`1280`-dword Q4NX weight chunk and one real `128`-dword activation chunk, packs
the low/high 16-row halves into one `v32accfloat`, and emits the exact 16-dword
record payload.  The fully unrolled C++ version was too large for the backend
probe window; the checked-in fixed trip-count loop version compiles with
`VST=0`, `[sp] refs=0`, and passes the NPU strict oracle.  This is the correct
baseline for the next step: selectively replace the loop body with short
slot-window sections while keeping this production ABI gate green.

`main16-q4nx-slot-window-probe` is the narrower production-layout slot-window
gate.  It uses the same one-chunk ABI but computes only group0's first small
window, so the `.lst` directly tests whether the hot body can be written as
`consume previous coeff cell -> produce current coeff cell -> nearby MAC ->
carry next cell`.  Current boundary:

- `pair_limit=2`: clean native report (`VST=0`, `[sp] refs=0`) and strict NPU
  validation through `kernel-main16-q4nx-slot-window-run`
  (`664.6 us`, `mismatches=0`).
- `pair_limit=4` without a separator enters a long backend search; with
  `chess_separator_scheduler()` between pair windows it compiles cleanly
  (`VST=0`, `[sp] refs=0`) but with more NOPs.
- `pair_limit=8` also stays clean with separators (`VST=0`, `[sp] refs=0`,
  `NOPX=135`).
- `pair_limit=16` with separators crosses the current live-range boundary
  (`VST=15`, `[sp] refs=68`).
- A runtime loop and an `aie::pipelined_loop` peeled form using full
  `RawVec carry_coeff + RawVec carry_act` both spill.  The loop syntax is not
  enough; the carried state must be reduced to smaller half/cell variables
  before this can become a production Main16 body.
- `main16-q4nx-slot-window-sep-offset-probe` keeps separator-offset experiments
  in a separate source file so new helper shapes do not pollute this baseline.
  `chess_separator_scheduler(-4)` is the best current local fence: for
  `pair_limit=4`, hard separator `NOPX=57` becomes `51`; for `pair_limit=8`,
  hard separator `NOPX=135` becomes `122`; both stay `VST=0`, `[sp] refs=0`.
  At `pair_limit=16`, `-4` lowers NOPX (`278 -> 249`) but does not remove spill
  (`VST=15`, `[sp] refs=68`).

`qwen3_decode_kernels_chunk_slot.cc` extends the same acc32 chunk-slot body to
the real Main16 scheduler ABI.  It has already exposed one important production
detail: a 32-lane vector store to `record + 1` overwrites the header because the
payload is not vector-aligned; record payload stores must remain two 16-lane
stores, matching the default production kernel.  The variant is numerically
correct but currently slower than the default scheduler, so do not replace
`qwen3_decode_kernels.cc` with it wholesale.  Use it as the next optimization
surface: replace its fixed trip-count loop body with proven short slot-window
sections and keep comparing against the default Q-mode gate.

The chunk-slot quad-unroll knob is currently bounded: `UNROLL_QUADS=1` keeps the
native probe clean (`VST=0`, `[sp] refs=0`) but made the real Q-mode scheduler
slower (`1530.2 us`, strict pass) than the previous chunk-slot result
(`~1511 us`).  `UNROLL_QUADS=2` spills in native (`VST=4`, `[sp] refs=10`).
Leave the default at zero until a replacement body wins the NPU gate.

`kernel-main16-q4nx-bounded-run` is now the 8-group section-cell exact numeric
gate.  It uses the MyLM section names `fill`, `fill_to_steady`,
`steady_to_steady`, `pre_drain`, and `drain`, but keeps the current exact Q4NX
oracle before replacing the production Main16 body.

`kernel-main16-q4nx-steady-cell-run` is the narrow mixed-half transition gate:
eight Q4NX groups produce one `v32accfloat` result through two dim-pairs, each
with seven chained steady transitions.  The low half consumes the previous
group's high coefficient cell, and the high half consumes the current group's
low coefficient cell.  This is the first numeric gate for the MyLM-style
cell-level carry expression.

Current Chess boundary from this gate: the two-pair exact chain is numerically
stable on NPU and generates no vector scratch `VST`, but it still saves a q4
pointer cell to stack (`[sp] refs=4`).  Pinning the raw `v32accfloat` accumulator
with `chess_storage(dm*)` fails backend scheduling, and pinning mixed
`aie::vector<bfloat16, 32>` operands to `ex*` hits register type mismatches.
Do not copy the GEMM `chess_storage` pattern blindly onto these raw Main16 cell
types; first prove the resulting `.lst` keeps both data cells and pointer cells
off stack.

Also avoid three tempting rewrites that made the report worse: precomputing the
second q4 pair pointer created longer pointer live ranges and spilled data
cells, annotating the q4 pointer with `chess_storage(P)` increased stack use,
and interleaving both dim-pairs by group removed the base-pointer pattern but
kept too many carry cells live at once.  The current best 2-pair expression is
therefore the simple sequential pair chain; the next useful experiment is a
lower-level q4 load/cell primitive, not more C++ pointer hoisting.

After weight stream/full-graph overlap is fixed, the next Main16 compute step
is a MyLM-style fill/steady/drain Q4NX microkernel that interleaves load,
unpack, coefficient construction, and MAC.  Keep MLIR-AIE for
topology/BD/locks/runtime; optimize only the linked Chess hot loop until the
opcode report approaches the MyLM shape.
