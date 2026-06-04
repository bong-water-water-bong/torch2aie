"""Generate an isolated c1r2 full-vector add MLIR-AIE numerical microbench."""

from __future__ import annotations

from pathlib import Path

from cases.full_layer_engine_reference import HIDDEN_DWORDS
from contract import COMPACT_PACKET_DWORDS
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-full-vector-add"
FULL_VECTOR_OBJECT = "full_vector_station.o"


def _runtime_sequence() -> str:
    return "\n".join(
        (
            f"    aie.runtime_sequence(%compact: memref<{COMPACT_PACKET_DWORDS}xi32>, "
            f"%hidden: memref<{HIDDEN_DWORDS}xi32>, "
            f"%output: memref<{HIDDEN_DWORDS}xi32>) {{",
            npu_writebd(1, 0, HIDDEN_DWORDS, 0),
            npu_address_patch(1, 0, 2, 0),
            npu_push_queue(1, "S2MM", 0, 0),
            npu_writebd(1, 1, COMPACT_PACKET_DWORDS, 0),
            npu_address_patch(1, 1, 0, 0),
            npu_push_queue(1, "MM2S", 0, 1),
            npu_writebd(1, 2, HIDDEN_DWORDS, 0),
            npu_address_patch(1, 2, 1, 0),
            npu_push_queue(1, "MM2S", 1, 2),
            npu_sync(1, 0),
            "    }",
        )
    )


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(1, 0)
    %full = aie.tile(1, 2)

    // case marker {CASE_NAME}
{flow("shim", 0, "full", 0)}
{flow("shim", 1, "full", 1)}
{flow("full", 0, "shim", 0)}

    %full_hidden = aie.buffer(%full) {{sym_name = "full_add_hidden"}} : memref<{HIDDEN_DWORDS}xi32>
    %full_compact = aie.buffer(%full) {{sym_name = "full_add_compact"}} : memref<{COMPACT_PACKET_DWORDS}xi32>
    %full_hidden_empty = aie.lock(%full, 0) {{init = 1 : i32, sym_name = "full_add_hidden_empty"}}
    %full_hidden_full = aie.lock(%full, 1) {{init = 0 : i32, sym_name = "full_add_hidden_full"}}
    %full_compact_empty = aie.lock(%full, 2) {{init = 1 : i32, sym_name = "full_add_compact_empty"}}
    %full_compact_full = aie.lock(%full, 3) {{init = 0 : i32, sym_name = "full_add_compact_full"}}
    %full_output_empty = aie.lock(%full, 4) {{init = 1 : i32, sym_name = "full_add_output_empty"}}
    %full_output_full = aie.lock(%full, 5) {{init = 0 : i32, sym_name = "full_add_output_full"}}

    func.func private @full_c1r2_add_o_compact_to_residual(memref<{HIDDEN_DWORDS}xi32>, memref<{COMPACT_PACKET_DWORDS}xi32>, i32) attributes {{link_with = "{experiment_dir}/{FULL_VECTOR_OBJECT}"}}

    %full_core = aie.core(%full) {{
      %block_i32 = arith.constant 0 : i32
      aie.use_lock(%full_hidden_full, AcquireGreaterEqual, 1)
      aie.use_lock(%full_compact_full, AcquireGreaterEqual, 1)
      func.call @full_c1r2_add_o_compact_to_residual(%full_hidden, %full_compact, %block_i32)
        : (memref<{HIDDEN_DWORDS}xi32>, memref<{COMPACT_PACKET_DWORDS}xi32>, i32) -> ()
      aie.use_lock(%full_output_full, Release, 1)
      aie.end
    }}

    %full_mem = aie.mem(%full) {{
      %compact_dma = aie.dma_start(S2MM, 0, ^compact_in, ^hidden_start)
    ^compact_in:
      aie.use_lock(%full_compact_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%full_compact : memref<{COMPACT_PACKET_DWORDS}xi32>, 0, {COMPACT_PACKET_DWORDS}) {{bd_id = 0 : i32}}
      aie.use_lock(%full_compact_full, Release, 1)
      aie.next_bd ^compact_end
    ^compact_end:
      aie.end

    ^hidden_start:
      %hidden_dma = aie.dma_start(S2MM, 1, ^hidden_in, ^output_start)
    ^hidden_in:
      aie.use_lock(%full_hidden_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%full_hidden : memref<{HIDDEN_DWORDS}xi32>, 0, {HIDDEN_DWORDS}) {{bd_id = 1 : i32}}
      aie.use_lock(%full_hidden_full, Release, 1)
      aie.next_bd ^hidden_end
    ^hidden_end:
      aie.end

    ^output_start:
      %output_dma = aie.dma_start(MM2S, 0, ^output_out, ^end)
    ^output_out:
      aie.use_lock(%full_output_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%full_hidden : memref<{HIDDEN_DWORDS}xi32>, 0, {HIDDEN_DWORDS}) {{bd_id = 2 : i32}}
      aie.use_lock(%full_output_empty, Release, 1)
      aie.next_bd ^end
    ^end:
      aie.end
    }}

{_runtime_sequence()}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        "full_c1r2_add_o_compact_to_residual",
        f"memref<{COMPACT_PACKET_DWORDS}xi32>",
        f"memref<{HIDDEN_DWORDS}xi32>",
        "aie.runtime_sequence(%compact",
    )
    return [f"missing full-vector add marker: {marker}" for marker in required if marker not in mlir]
