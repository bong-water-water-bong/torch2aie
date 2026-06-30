"""Generate an isolated full_vector_station MLIR-AIE numerical microbench."""

from __future__ import annotations

from pathlib import Path

from cases import full_layer_engine_generate as full
from cases.full_layer_engine_reference import HIDDEN_DWORDS, OUTPUT_DWORDS
from contract import C1R2_PACKET_DWORDS, C1R2_QKV_REPLAYS, C1R2_UPGATE_REPLAYS, COMPACT_PACKET_DWORDS
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd, packet_flow
from projection_schedule import DOWN_BODY_RECORDS, O_BODY_RECORDS

CASE_NAME = "qwen3-kernel-full-vector-station"
PROFILE_CASE_NAME = "qwen3-kernel-full-vector-station-profile"
FULL_VECTOR_OBJECT = "full_vector_station.o"
FULL_VECTOR_PROFILE_OBJECT = "full_vector_station_profile.o"
COMPACT_INPUT_DWORDS = (O_BODY_RECORDS + DOWN_BODY_RECORDS) * COMPACT_PACKET_DWORDS
SIDE_INPUT_DWORDS = HIDDEN_DWORDS * 3
REPLAY_PAYLOAD_DWORDS = C1R2_PACKET_DWORDS - 1
REPLAY_REPEATS = C1R2_QKV_REPLAYS + C1R2_UPGATE_REPLAYS
REPLAY_OUTPUT_DWORDS = REPLAY_REPEATS * REPLAY_PAYLOAD_DWORDS


def _runtime_sequence() -> str:
    return "\n".join(
        (
            f"    aie.runtime_sequence(%compacts: memref<{COMPACT_INPUT_DWORDS}xi32>, "
            f"%side_vectors: memref<{SIDE_INPUT_DWORDS}xi32>, "
            f"%replay_out: memref<{REPLAY_OUTPUT_DWORDS}xi32>, "
            f"%output: memref<{OUTPUT_DWORDS}xi32>) {{",
            npu_writebd(1, 0, OUTPUT_DWORDS, 0),
            npu_address_patch(1, 0, 3, 0),
            npu_push_queue(1, "S2MM", 0, 0),
            npu_writebd(1, 1, REPLAY_OUTPUT_DWORDS, 0),
            npu_address_patch(1, 1, 2, 0),
            npu_push_queue(1, "S2MM", 1, 1),
            npu_writebd(1, 2, COMPACT_INPUT_DWORDS, 0),
            npu_address_patch(1, 2, 0, 0),
            npu_push_queue(1, "MM2S", 0, 2),
            npu_writebd(1, 3, SIDE_INPUT_DWORDS, 0),
            npu_address_patch(1, 3, 1, 0),
            npu_push_queue(1, "MM2S", 1, 3),
            npu_sync(1, 0),
            npu_sync(1, 1),
            "    }",
        )
    )


def generate_mlir(profile_cycles: bool = False) -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    case_name = PROFILE_CASE_NAME if profile_cycles else CASE_NAME
    object_name = FULL_VECTOR_PROFILE_OBJECT if profile_cycles else FULL_VECTOR_OBJECT
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(1, 0)
    %full = aie.tile(1, 2)

    // case marker {case_name}
{flow("shim", 0, "full", 0)}
{flow("shim", 1, "full", 1)}
{flow("full", 0, "shim", 0)}
{packet_flow(full.FULL_REPLAY_PACKET_ID, "full", 1, "shim", 1)}

    func.func private @full_c1r2_make_input_norm_payload(memref<{HIDDEN_DWORDS}xi32>, memref<{HIDDEN_DWORDS}xi32>, memref<{REPLAY_PAYLOAD_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{object_name}"}}
    func.func private @full_c1r2_add_o_compact_to_residual(memref<{HIDDEN_DWORDS}xi32>, memref<{COMPACT_PACKET_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{object_name}"}}
    func.func private @full_c1r2_make_post_norm_payload(memref<{HIDDEN_DWORDS}xi32>, memref<{HIDDEN_DWORDS}xi32>, memref<{REPLAY_PAYLOAD_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{object_name}"}}
    func.func private @full_c1r2_write_down_block(memref<{HIDDEN_DWORDS}xi32>, memref<{COMPACT_PACKET_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{object_name}"}}

{full._full_vector_q4nx_output()}
{_runtime_sequence()}
  }}
}}
"""


def validate_generated_mlir(mlir: str, profile_cycles: bool = False) -> list[str]:
    case_name = PROFILE_CASE_NAME if profile_cycles else CASE_NAME
    required = (
        f"case marker {case_name}",
        "full_c1r2_make_input_norm_payload",
        "full_c1r2_make_post_norm_payload",
        "full_c1r2_write_down_block",
        f"memref<{COMPACT_INPUT_DWORDS}xi32>",
        f"memref<{REPLAY_OUTPUT_DWORDS}xi32>",
        "aie.runtime_sequence(%compacts",
    )
    return [f"missing full-vector microbench marker: {marker}" for marker in required if marker not in mlir]
