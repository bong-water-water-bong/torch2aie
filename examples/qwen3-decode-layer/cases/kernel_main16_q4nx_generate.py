"""Generate an isolated Main16 Q4NX scheduler MLIR-AIE numerical microbench."""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from cases import full_layer_engine_generate as full
from compact_dataflow import MAIN_CHUNK_DWORDS
from contract import CHUNK_BF16, RECORD_DWORDS
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd
from projection_schedule import (
    DOWN_BODY_RECORDS,
    DOWN_CHUNKS,
    K_CHUNKS_PER_RECORD,
    KV_BODY_RECORDS,
    O_BODY_RECORDS,
    O_CHUNKS_PER_RECORD,
    Q_BODY_RECORDS,
    Q_CHUNKS_PER_RECORD,
    UPGATE_CHUNKS_PER_REPLAY,
    UPGATE_REPLAYS,
    V_CHUNKS_PER_RECORD,
)

CASE_NAME = "qwen3-kernel-main16-q4nx"
PROFILE_CASE_NAME = "qwen3-kernel-main16-q4nx-profile"
MAIN16_OBJECT = "main_projection_q4nx_fast.o"
MAIN16_PROFILE_OBJECT = "main_projection_q4nx_profile.o"
MAIN16_PROFILE_SCHEDULER = "q4nx_main16_cycle_profile_scheduler"
PHASE_LIMIT_Q_ONLY = 1


@dataclass(frozen=True)
class BodyPlan:
    label: str
    records: int
    chunks_per_record: int
    header: int

    @property
    def weight_chunks(self) -> int:
        return self.records * self.chunks_per_record


@dataclass(frozen=True)
class ModeSpec:
    name: str
    phase_limit: int
    plans: tuple[BodyPlan, ...]

    @property
    def record_count(self) -> int:
        return sum(plan.records for plan in self.plans)

    @property
    def total_chunks(self) -> int:
        return sum(plan.weight_chunks for plan in self.plans)

    @property
    def activation_input_dwords(self) -> int:
        return self.total_chunks * MAIN_CHUNK_DWORDS

    @property
    def weight_input_dwords(self) -> int:
        return self.total_chunks * CHUNK_BF16 // 2

    @property
    def record_output_dwords(self) -> int:
        return self.record_count * RECORD_DWORDS


Q_ONLY_PLAN = BodyPlan("q", Q_BODY_RECORDS, Q_CHUNKS_PER_RECORD, 0x1)
QKV_PLANS = (
    Q_ONLY_PLAN,
    BodyPlan("k", KV_BODY_RECORDS, K_CHUNKS_PER_RECORD, 0x1),
    BodyPlan("v", KV_BODY_RECORDS, V_CHUNKS_PER_RECORD, 0x1),
)
FULL_CHAIN_PLANS = QKV_PLANS + (
    BodyPlan("o", O_BODY_RECORDS, O_CHUNKS_PER_RECORD, 0x4),
    BodyPlan("upgate", UPGATE_REPLAYS, UPGATE_CHUNKS_PER_REPLAY, 0x8),
    BodyPlan("down", DOWN_BODY_RECORDS, DOWN_CHUNKS, 0x4),
)

MODE_SPECS = {
    "q": ModeSpec("q", PHASE_LIMIT_Q_ONLY, (Q_ONLY_PLAN,)),
    "qkv": ModeSpec("qkv", full.MAIN16_PHASE_LIMIT_QKV, QKV_PLANS),
    "full": ModeSpec("full", full.MAIN16_PHASE_LIMIT_FULL, FULL_CHAIN_PLANS),
}

TOTAL_Q_CHUNKS = MODE_SPECS["q"].total_chunks
ACTIVATION_INPUT_DWORDS = MODE_SPECS["q"].activation_input_dwords
WEIGHT_INPUT_DWORDS = MODE_SPECS["q"].weight_input_dwords
RECORD_OUTPUT_DWORDS = MODE_SPECS["q"].record_output_dwords


def mode_spec(mode: str) -> ModeSpec:
    try:
        return MODE_SPECS[mode]
    except KeyError as exc:
        choices = ", ".join(sorted(MODE_SPECS))
        raise ValueError(f"unknown Main16 mode {mode!r}; expected one of: {choices}") from exc


def case_name_for(mode: str, profile_cycles: bool = False) -> str:
    if profile_cycles:
        if mode != "q":
            raise ValueError("cycle profile mode currently supports only --mode q")
        return PROFILE_CASE_NAME
    if mode == "q":
        return CASE_NAME
    return f"{CASE_NAME}-{mode}"


def _main16_scheduler_call(tile: str, scheduler: str, spec: ModeSpec) -> str:
    record_type = full._record_pingpong_type()
    return f"""
      %m_i32 = arith.constant 32 : i32
      %group_i32 = arith.constant 0 : i32
      %row_i32 = arith.constant 0 : i32
      %main16_phase_limit_i32 = arith.constant {spec.phase_limit} : i32
      func.call @{scheduler}(%{tile}_wt_ping, %{tile}_wt_pong, %{tile}_chunk_ping, %{tile}_chunk_pong, %{tile}_record_ping, %{tile}_record_pong, %group_i32, %row_i32, %m_i32, %main16_phase_limit_i32)
        : (memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, memref<{MAIN_CHUNK_DWORDS}xi32>, memref<{MAIN_CHUNK_DWORDS}xi32>, {record_type}, {record_type}, i32, i32, i32, i32) -> ()"""


def _main16_tile(scheduler: str, spec: ModeSpec) -> str:
    tile = "main"
    buffer_decls = "\n".join(
        f"    %{tile}_{buffer.name} = aie.buffer(%{tile}) "
        f'{full._main_buffer_attr(f"{tile}_{buffer.name}", buffer.address)} : {buffer.memref}'
        for buffer in full.MAIN16_BUFFERS
    )
    return f"""
{buffer_decls}
{full._main_lock_decls(tile, 2)}

    %{tile}_core = aie.core(%{tile}) {{
{_main16_scheduler_call(tile, scheduler, spec)}
      aie.end
    }}

    %{tile}_mem = aie.mem(%{tile}) {{
      %chunk_dma = aie.dma_start(S2MM, 0, ^chunk_ping, ^wt_start)
    ^chunk_ping:
      aie.use_lock(%{tile}_chunk_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_chunk_ping : memref<{MAIN_CHUNK_DWORDS}xi32>, 0, {MAIN_CHUNK_DWORDS}) {{bd_id = {full.MAIN_ACTIVATION_BDS[0]} : i32, next_bd_id = {full.MAIN_ACTIVATION_BDS[1]} : i32}}
      aie.use_lock(%{tile}_chunk_full, Release, 1)
      aie.next_bd ^chunk_pong
    ^chunk_pong:
      aie.use_lock(%{tile}_chunk_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_chunk_pong : memref<{MAIN_CHUNK_DWORDS}xi32>, 0, {MAIN_CHUNK_DWORDS}) {{bd_id = {full.MAIN_ACTIVATION_BDS[1]} : i32, next_bd_id = {full.MAIN_ACTIVATION_BDS[0]} : i32}}
      aie.use_lock(%{tile}_chunk_full, Release, 1)
      aie.next_bd ^chunk_ping

    ^wt_start:
      %wt_dma = aie.dma_start(S2MM, 1, ^wt_ping, ^record_start)
    ^wt_ping:
      aie.use_lock(%{tile}_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_wt_ping : memref<{CHUNK_BF16}xbf16>, 0, {CHUNK_BF16}) {{bd_id = {full.MAIN_WEIGHT_BDS[0]} : i32, next_bd_id = {full.MAIN_WEIGHT_BDS[1]} : i32}}
      aie.use_lock(%{tile}_wt_full, Release, 1)
      aie.next_bd ^wt_pong
    ^wt_pong:
      aie.use_lock(%{tile}_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%{tile}_wt_pong : memref<{CHUNK_BF16}xbf16>, 0, {CHUNK_BF16}) {{bd_id = {full.MAIN_WEIGHT_BDS[1]} : i32, next_bd_id = {full.MAIN_WEIGHT_BDS[0]} : i32}}
      aie.use_lock(%{tile}_wt_full, Release, 1)
      aie.next_bd ^wt_ping

    ^record_start:
      %record_dma = aie.dma_start(MM2S, 1, ^record_ping, ^end)
{full._main_record_dma_blocks(tile, 0)}
    ^end:
      aie.end
    }}
"""


def _runtime_sequence(spec: ModeSpec) -> str:
    return "\n".join(
        (
            f"    aie.runtime_sequence(%activation: memref<{spec.activation_input_dwords}xi32>, "
            f"%weights: memref<{spec.weight_input_dwords}xi32>, "
            f"%records: memref<{spec.record_output_dwords}xi32>) {{",
            npu_writebd(2, 0, spec.record_output_dwords, 0),
            npu_address_patch(2, 0, 2, 0),
            npu_push_queue(2, "S2MM", 0, 0),
            npu_writebd(2, 1, spec.activation_input_dwords, 0),
            npu_address_patch(2, 1, 0, 0),
            npu_push_queue(2, "MM2S", 0, 1),
            npu_writebd(2, 2, spec.weight_input_dwords, 0),
            npu_address_patch(2, 2, 1, 0),
            npu_push_queue(2, "MM2S", 1, 2),
            npu_sync(2, 0),
            "    }",
        )
    )


def generate_mlir(mode: str = "q", profile_cycles: bool = False) -> str:
    spec = mode_spec(mode)
    experiment_dir = Path(__file__).parent.parent.resolve()
    case_name = case_name_for(mode, profile_cycles=profile_cycles)
    scheduler = MAIN16_PROFILE_SCHEDULER if profile_cycles else full.MAIN16_LAYER_SCHEDULER
    object_name = MAIN16_PROFILE_OBJECT if profile_cycles else MAIN16_OBJECT
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(2, 0)
    %main = aie.tile(2, 2)

    // case marker {case_name}
{flow("shim", 0, "main", 0)}
{flow("shim", 1, "main", 1)}
{flow("main", 1, "shim", 0)}

    func.func private @{scheduler}(memref<{CHUNK_BF16}xbf16>, memref<{CHUNK_BF16}xbf16>, memref<{MAIN_CHUNK_DWORDS}xi32>, memref<{MAIN_CHUNK_DWORDS}xi32>, {full._record_pingpong_type()}, {full._record_pingpong_type()}, i32, i32, i32, i32) attributes {{link_with = "{experiment_dir}/{object_name}"}}

{_main16_tile(scheduler, spec)}
{_runtime_sequence(spec)}
  }}
}}
"""


def validate_generated_mlir(mlir: str, mode: str = "q", profile_cycles: bool = False) -> list[str]:
    spec = mode_spec(mode)
    case_name = case_name_for(mode, profile_cycles=profile_cycles)
    scheduler = MAIN16_PROFILE_SCHEDULER if profile_cycles else full.MAIN16_LAYER_SCHEDULER
    required = (
        f"case marker {case_name}",
        scheduler,
        f"memref<{spec.activation_input_dwords}xi32>",
        f"memref<{spec.weight_input_dwords}xi32>",
        f"memref<{spec.record_output_dwords}xi32>",
        f"%main16_phase_limit_i32 = arith.constant {spec.phase_limit} : i32",
        "aie.runtime_sequence(%activation",
    )
    return [f"missing Main16 microbench marker: {marker}" for marker in required if marker not in mlir]
