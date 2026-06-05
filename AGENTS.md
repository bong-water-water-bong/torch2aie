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
- Main16 compact record payload starts at `record_words + 1`, i.e. only
  2-bf16 aligned. Use `aie::store_unaligned_v<16>(payload, vec, 2)` for the two
  payload stores. A normal `v16bfloat16 *` store to this address aligns down and
  overwrites the header on hardware.
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
- Do not replace MLIR memref arguments with raw local-address casts such as
  `reinterpret_cast<T *>(0x2800)`. The Main16 buffers are pinned in MLIR, but
  the external Chess object still relies on the memref pointers passed by the
  generated core wrapper. A direct cast produced all-zero Main16 records on the
  Q-only gate.
- Do not assume that removing `record_toggle` is a win just because every
  Main16 body has an even replay count. A body-local `block & 1` ping/pong
  experiment stayed numerically correct but worsened the Main16 report
  (`NOP_TOTAL 729 -> 731`) and Q-only latency (about `1261 us -> 1300 us`).
- Do not manually expand Main16 chunk ping/pong pairs inside
  `run_projection_body` just to remove `(chunk & 1)`. Chess duplicated the hot
  loop body instead of making a tighter schedule: `object_bytes` grew about
  `60 KiB -> 110 KiB`, `instruction_lines 1781 -> 3301`, and
  `NOP_TOTAL 729 -> 1308`.
- Do not merge the two Main16 lane scale/zero loads into one 32-row
  scale/zero load plus `extract<16>()` unless a new report proves otherwise.
  It reduced object size slightly but worsened scheduling (`NOP_TOTAL 729 ->
  765`, software stalls `65 -> 71`) and slowed Q-only latency to about
  `1404 us`.
- For Main16 Q4NX, the profitable Chess shape is four activation dimensions per
  weight load. Load 64 `uint4` lanes, unpack once to 64 `uint8` lanes, then call
  `aie::to_float<bfloat16>(q8, 0)`. This reliably emits the AIE2P
  `VUPS.4x ... x2d/dm` form seen in MyLM-like windows. A naive two-dimension
  `uint8 -> to_float` also emits `VUPS.4X`, but it creates a poor schedule and
  slowed Q-only to about `1484 us`.
- Keep the Main16 four-dimension Q4 path even though it increases code size.
  The verified quad path improved representative isolated gates from about
  `1260 us -> 1133 us` for Q-only, `1674 us -> 1456 us` for Q/K/V, and
  `9796 us -> 7082 us` for the full `12/8/48/8` Main16 record chain, with zero
  numerical mismatches.
- Do not pin Main16 `Acc16` accumulators with direct `chess_storage(dm*)`.
  `aie::accum<accfloat,16>` maps to a 512-bit accumulator class, while `dm*`
  storage is for larger accumulator/register shapes; Chess rejects the direct
  qualifier. `aie::utils::locate_in_register<..., AIE_RegFile::Accum>` compiled
  for low and high accumulator registers, but both slowed Q-only to about
  `1425-1431 us` despite slightly fewer static NOPs.
- Main16 opcode counts are necessary but insufficient. The faster quad path has
  more static instructions and still spills, but it gives Chess the right
  `VUPS.4x x2d/dm` dependency shape and wins on hardware. Continue optimizing
  this path by shortening live ranges and reducing spills instead of reverting
  to the smaller pair path.
- Mark Main16 read-only weight and activation pointers as `const __restrict`
  through the hot helpers. This does not change the MyLM ABI, but it gives Chess
  better alias information; the quad path kept the same target opcode shape,
  reduced role-object `NOP_TOTAL` from `713` to `695`, improved Q-only from
  about `1113 us` to `1078 us`, and kept full-chain numerical validation clean.
- Do not change the Q4NX oracle or dequant algebra unless MyLM reverse evidence
  supports the same semantic change. A group-fused rewrite such as accumulating
  `sum(q * act)` and applying `scale/zero` once per group is not currently
  MyLM-proven and should stay out of production gates.
- Cross-group register carry is feasible in Chess C++ when the live state is
  small and inline. The useful granularity is not a full C++ group object: MyLM
  carries half-registers, accumulator cells, and pointer/scalar cells across
  `fill -> steady -> drain` boundaries.
- Mixed half-register operands need lower-level Chess C++ intrinsics. High-level
  AIE API does not directly expose the MyLM operand shape, but constructing
  `aie::vector<bf16,32>` halves and feeding them to `mac_elem_16_conf` can emit
  `VMOV wl*/wh*` followed by `VMAC.f` without stack spill. This is still Chess
  C++, not raw asm.
- `VUPS.4X` placement matters. The target schedule keeps
  `VUPS.4X -> VADD/VSUB -> VCONV/VMAC` close together; advancing all unpack/
  upshift work too early lengthens live ranges and invites spill/NOPs.
- Do not directly replace production Main16 group loops with full static
  `aie::unroll_for` quad bodies. A production experiment that changed only the
  inner group steady loop from `aie::pipelined_loop` to `aie::unroll_for`
  caused xchesscc to run for more than five minutes at very low CPU without
  producing an object. The useful direction is a bounded local window or
  separate small body, not dumping full exact static expansion into the complete
  Main16 role object.
- `aie::pipelined_loops` can express a front/back peeled
  `load q(i+1) -> MAC q(i)` window without stack spill, and the probe compiles
  to a normal loop with `VUPS.4X`/`VMAC.F`. However, replacing the production
  inner group loop with that form did not improve the role-object report
  (`object_bytes 72148`, `NOP_TOTAL 695`, `software_stalls 82` unchanged) and
  slowed Q-only isolated latency to about `1136 us` versus the current
  `~1078 us` baseline. Keep it as a reference shape, not the default production
  implementation.
- For Main16 slot-window work, do not treat `aie::pipelined_loop` as a magic
  fix if the loop-carried state is still wide. A production-layout probe with
  full `RawVec carry_coeff + RawVec carry_act` in a peeled loop compiled but
  spilled heavily (`VST=10`, `[sp] refs=42`). The issue is the width/lifetime of
  the carried cells, not the syntax of the loop.
- The current production-layout slot-window boundary is:
  `MAIN16_SLOT_WINDOW_PAIR_LIMIT=2` compiles cleanly (`VST=0`, `[sp]=0`) and the
  NPU strict gate `kernel-main16-q4nx-slot-window-run` passes for group0 dims
  0..3. `pair_limit=4/8` need `chess_separator_scheduler()` between pair
  windows to stay clean; `pair_limit=16` with separators still spills
  (`VST=15`, `[sp] refs=68`). Use small 2-pair windows or at most separated
  4/8-pair sections as building blocks; do not form a full-group DAG.
- In the production-adjacent chunk-slot body, fixed-lane quad unrolling has a
  very small useful window. `MAIN16_CHUNK_SLOT_UNROLL_QUADS=1` compiles cleanly
  (`VST=0`, `[sp]=0`) but the real Q-mode scheduler regressed to `1530.2 us`
  from the previous `~1511 us`; `UNROLL_QUADS=2` already spills (`VST=4`,
  `[sp] refs=10`). Keep the default at zero unless a new body also improves the
  NPU gate, not just the native report.
- `chess_separator_scheduler()` is useful here only as a live-range fence for
  adjacent slot windows. It trades away scheduling freedom and increases NOPs
  (`pair_limit=8` separator window was clean but had high NOPX), so it should be
  a measured boundary tool, not a default performance pragma.
- Prefer the offset form for local Main16 fences when it remains clean.
  `chess_separator_scheduler(-4)` improved the isolated slot-window reports:
  `pair_limit=4` hard separator `NOPX=57` -> `-4 NOPX=51`, and `pair_limit=8`
  hard separator `NOPX=135` -> `-4 NOPX=122`, all with `VST=0` and `[sp]=0`.
  It does not fix an oversized full-group DAG: `pair_limit=16` stayed spilled
  (`VST=15`, `[sp] refs=68`) although NOPX fell from `278` to `249`.
- MyLM's cross-group Q4NX pipeline is a cell-level state machine, not a
  C++-level `Vec64 q_current` or group helper pipeline. Reverse artifacts show
  steady-to-steady boundaries with 27 data cells and 12 pointer/scalar cells,
  with mixed vector halves and accumulator quadrants crossing group boundaries.
  Optimizing toward MyLM means preserving half-register / accumulator-cell
  liveness and instruction order, especially around `VUPS.4X -> VADD/VSUB ->
  VCONV/VMAC`.
- AIE API Q4 unpack/expand in this context may lower to `VLDB.UNPACK` plus
  `VUPS.4X`, not a standalone `VUNPACK`. When comparing to MyLM counts, inspect
  the actual `.lst` instruction form and bundle position, not only substring
  counters.
- Do not model MyLM's 27 data cells as one wide C++ struct. Wide synthetic
  state spills immediately; smaller state plus separators can cap live range,
  but separators also increase NOPs. The production route must keep the state
  small enough that the compiler never roundtrips it through stack/scratch.
- Simple lane-order rewrites are not the route. Dual-lane interleave, serial
  lane processing, and activation reload variants reduce or move register
  pressure but do not recover MyLM density. Optimize half-cell lifetime and MAC
  operand construction instead.
- `mac_elem_16_conf(v32bf16, v32bf16, v16accfloat, ...)` consumes the low half in
  this Q4NX layout. `zero_acc/sub_mul/sub_acc` only affect accumulator/product
  sign or zeroing; they do not select the high half. The verified pair route is
  `mac_elem_32_conf(pack(lo, hi), pack(act0, act1), zero32, ...)`, followed by
  sequentially adding `extract_v16accfloat(products, 0)` and
  `extract_v16accfloat(products, 1)` back into the `v16accfloat` accumulator.
  This preserves the exact oracle for bounded 2g/3g/8g tests, but Chess emits
  `mac_elem_32_add_rewrite_rule_s1` source-mismatch warnings that should be
  treated as a compiler-risk note.
- The current positive exact routes are:
  `main16-q4nx-exact-bounded-window-probe` for single-lane 2/3-group windows,
  `main16-q4nx-exact-bounded-window-mac32-probe` for the 2/3-group folded pair
  form, and `main16-q4nx-exact-8group-mac32-probe` for the full 8-group isolated
  body. All keep explicit `q/scale/offset/acc` cells, immediate `VUPS.4X`
  consumption, and exact dequant rounding points (`mul -> bf16 -> add offset`).
- The verified bounded exact window now has both `.lst` and real NPU evidence.
  It compiles with no ordinary `VST` and no `[sp]` references, and
  `kernel-main16-q4nx-bounded-run` / `kernel-main16-q4nx-bounded-3g-run` pass
  strict integer-word compares against the sequential exact Q4NX oracle. Function
  counts for the verified single-dim native-MAC form:
  `2g: VUPS.4X=16, VLDB.UNPACK=16, VMAC.F=64, VCONV=224, NOPX=541`;
  `3g: VUPS.4X=24, VLDB.UNPACK=24, VMAC.F=96, VCONV=336, NOPX=807`.
- The `mac32-fold` bounded form also passes strict NPU gates:
  `kernel-main16-q4nx-bounded-mac32-run` (2g, 0 mismatches, ~541.5 us),
  `kernel-main16-q4nx-bounded-mac32-3g-run` (3g, 0 mismatches, ~616.3 us), and
  `kernel-main16-q4nx-bounded-mac32-8g-run` (8g, 0 mismatches, ~596.3 us). Its
  native 8g `.lst` has `VST=0`, `[sp]=0`, `VMAC.F=128`, `VADDMAC.F=128`,
  `VCONV=640`, `NOPX=1013`. The single 8g exact form also has `VST=0` and
  `[sp]=0`, but fails xclbin CDO generation with program-memory overflow
  (`VMAC.F=256`, `VCONV=896`, `NOPX=2133`), so 8g production-adjacent work must
  use a denser form or split the body.
- Treat the bounded exact window as the production-adjacent proof, not a drop-in
  replacement yet. It preserves Q4 dequant algebra and has isolated numeric
  gates. The two-lane bounded body is only a layout/oracle diagnostic, not the
  MyLM performance model. MyLM emits one 17-dword record with two 16-bf16
  payload stores, but its hot loop is one cell-level state transformer, not two
  independent `ExactWindowState` objects kept live at once.
- Do not optimize Main16 by interleaving two complete lane states in one Chess
  function. The 2g interleaved dual-lane probe generated stack/scratch traffic
  (`VST=29`, `[sp] refs=60`), and larger 3g/8g versions made Chess backend
  compile times explode. The sequential dual-lane diagnostic keeps only one
  state live at a time, compiles with `VST=0` and `[sp]=0`, and passes the
  strict 2g NPU oracle (`kernel-main16-q4nx-dual-lane-run`, 0 mismatches,
  about `680 us`), but it is deliberately not a speed target.
- The next Main16 optimization target is a single-record, two-payload,
  cell-level fused schedule: keep the MyLM record ABI (`header + payload0 +
  payload1`) while expressing the `fill -> fill_to_steady ->
  steady_to_steady -> pre_drain -> drain` state contract at half-register and
  accumulator-cell granularity.
- The MyLM record ABI itself is not the spill source. A true 17-dword
  sequential record probe that writes `header + payload0 + payload1` but keeps
  only one lane accumulator live at a time compiled cleanly:
  `VST=0`, `[sp]=0`, `NOPX=593`. This is a layout/oracle diagnostic only, not a
  performance model.
- Do not express the MyLM single-record hot body as two full payload
  accumulators live throughout C++ helper calls. The concurrent record-cell
  probe spills: mac32-fold gave `VST=20`, `[sp]=142`, `NOPX=1046`; the mac16
  variant reduced pressure but still spilled (`VST=12`, `[sp]=58`,
  `NOPX=838`). This proves the C++ object lifetime is too wide even though the
  ABI shape is correct.
- A single `v32accfloat` record accumulator is the current best
  production-adjacent Main16 record-cell abstraction. It represents the full
  32-row record payload as one accumulator state and only splits into two
  16-bf16 payload stores at the end. The acc32 probe compiles with no stack
  traffic (`[sp]=0`), no ordinary spill store (`VST=4`, from the two unaligned
  payload stores), and a much smaller schedule than the concurrent two-acc
  forms: `VMAC.F=64`, `VCONV=321`, `VMOV=195`, `NOPX=689`. It also passes the
  real NPU strict record oracle (`kernel-main16-q4nx-record-cell-run`, one
  17-dword record, 0 mismatches, about `599-658 us` on this machine).
- The acc32 record-cell shape scales to an 8-group native window without stack
  traffic: `VUPS.4X=128`, `VLDB.UNPACK=128`, `VEXTBCST.16=256`,
  `VMAC.F=256`, `VCONV=1281`, `VMOV=772`, `VST=4`, `NOPX=2781`, `[sp]=0`.
  This is a stronger 8-group replacement candidate than the older exact/mac32
  single-lane body because it keeps one 32-row accumulator state and avoids
  stack spill.
- The production ABI acc32 record-cell gate should stay in its own role objects:
  `main_projection_q4nx_acc32_one_record.o` for the 1-record gate and
  `main_projection_q4nx_acc32_static.o` for the static `12/8/48/8` body. Do not
  put these externs into `main_projection_q4nx_fast.o`; compiling the static
  acc32 body together with the old scheduler makes xchesscc spend minutes on a
  much larger object.
- For the current production ABI acc32 gate, keep the 8 Q4 groups inside a
  fixed `chess_loop_range(8, 8)` loop and keep `accum_q4nx_chunk_acc32`
  `noinline`. A recursive group template plus chunk-inline record loop produced
  a 159 KiB one-record object and PM overflow. A looped group body with noinline
  chunk compiles to about 28 KiB for one-record and 39 KiB for static full, and
  passes strict NPU gates. Re-inlining the chunk after this reduction still
  overflows PM for the static `12/8/48/8` body.
- The acc32 production ABI gate is a correctness/scheduling baseline, not a
  speed replacement yet. Current representative isolated timings are about
  `674 us` for `acc32-one-record` and `13.2-13.5 ms` for `acc32-static`, both
  with zero mismatches. The existing quad-path production `full` gate is still
  faster at about `7.1 ms`.
- Do not try to fake MyLM accumulator quadrants with C++ `v8accfloat`
  extract/insert. The acc8 probe made the schedule worse (`VMOV=722`,
  `VST=73`, `[sp]=253`). MyLM's cell schedule uses instruction-level
  `vmov bm*` cell transfer; AIE API v8 accumulator objects are not a free
  representation of that.
- Do not use repeated `aie::utils::locate_in_register` or direct
  `chess_storage(bm*)` pinning to rescue the concurrent record-cell body.
  Those variants made Chess backend scheduling run for more than 90 seconds
  without a useful report and were killed. Pinning can help GEMM-like fixed
  register shapes, but here it fights the too-wide C++ lifetime instead of
  fixing it.
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
