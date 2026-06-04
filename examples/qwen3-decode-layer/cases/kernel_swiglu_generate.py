"""Generate an isolated swiglu MLIR-AIE numerical microbench."""

from __future__ import annotations

from pathlib import Path

from contract import C6R2_HALF_DWORDS, C6R2_INPUT_DWORDS
from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-swiglu"
SWIGLU_OBJECT = "swiglu.o"
SWIGLU_OUTPUT_DWORDS = C6R2_HALF_DWORDS


def _swiglu_tile() -> str:
    return f"""
    %swiglu_input = aie.buffer(%swiglu) {{sym_name = "swiglu_input"}} : memref<{C6R2_INPUT_DWORDS}xi32>
    %swiglu_output = aie.buffer(%swiglu) {{sym_name = "swiglu_output"}} : memref<{C6R2_HALF_DWORDS * 2}xbf16>
    %swiglu_input_empty = aie.lock(%swiglu, 0) {{init = 2 : i32, sym_name = "swiglu_input_empty"}}
    %swiglu_input_full = aie.lock(%swiglu, 1) {{init = 0 : i32, sym_name = "swiglu_input_full"}}
    %swiglu_output_empty = aie.lock(%swiglu, 2) {{init = 1 : i32, sym_name = "swiglu_output_empty"}}
    %swiglu_output_full = aie.lock(%swiglu, 3) {{init = 0 : i32, sym_name = "swiglu_output_full"}}

    %swiglu_core = aie.core(%swiglu) {{
      %dwords_i32 = arith.constant {C6R2_INPUT_DWORDS} : i32
      %slice_i32 = arith.constant 0 : i32
      aie.use_lock(%swiglu_input_full, AcquireGreaterEqual, 2)
      aie.use_lock(%swiglu_output_empty, AcquireGreaterEqual, 1)
      func.call @ffn_swiglu_slice_bf16_inputs(%swiglu_input, %swiglu_output, %dwords_i32, %slice_i32)
        : (memref<{C6R2_INPUT_DWORDS}xi32>, memref<{C6R2_HALF_DWORDS * 2}xbf16>, i32, i32) -> ()
      aie.use_lock(%swiglu_output_full, Release, 1)
      aie.use_lock(%swiglu_input_empty, Release, 2)
      aie.end
    }}

    %swiglu_mem = aie.mem(%swiglu) {{
      %input_dma = aie.dma_start(S2MM, 0, ^up_in, ^out_start)
    ^up_in:
      aie.use_lock(%swiglu_input_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%swiglu_input : memref<{C6R2_INPUT_DWORDS}xi32>, 0, {C6R2_HALF_DWORDS}) {{bd_id = 0 : i32, next_bd_id = 1 : i32}}
      aie.use_lock(%swiglu_input_full, Release, 1)
      aie.next_bd ^gate_in
    ^gate_in:
      aie.use_lock(%swiglu_input_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%swiglu_input : memref<{C6R2_INPUT_DWORDS}xi32>, {C6R2_HALF_DWORDS}, {C6R2_HALF_DWORDS}) {{bd_id = 1 : i32, next_bd_id = 0 : i32}}
      aie.use_lock(%swiglu_input_full, Release, 1)
      aie.next_bd ^up_in

    ^out_start:
      %output_dma = aie.dma_start(MM2S, 1, ^out, ^end)
    ^out:
      aie.use_lock(%swiglu_output_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%swiglu_output : memref<{C6R2_HALF_DWORDS * 2}xbf16>, 0, {C6R2_HALF_DWORDS * 2}) {{bd_id = 2 : i32}}
      aie.use_lock(%swiglu_output_empty, Release, 1)
      aie.next_bd ^out
    ^end:
      aie.end
    }}
"""


def _runtime_sequence() -> str:
    return "\n".join(
        (
            f"    aie.runtime_sequence(%input: memref<{C6R2_INPUT_DWORDS}xi32>, "
            f"%output: memref<{SWIGLU_OUTPUT_DWORDS}xi32>) {{",
            npu_writebd(6, 0, SWIGLU_OUTPUT_DWORDS, 0),
            npu_address_patch(6, 0, 1, 0),
            npu_push_queue(6, "S2MM", 1, 0),
            npu_writebd(6, 1, C6R2_INPUT_DWORDS, 0),
            npu_address_patch(6, 1, 0, 0),
            npu_push_queue(6, "MM2S", 0, 1),
            npu_sync(6, 1),
            "    }",
        )
    )


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(6, 0)
    %swiglu = aie.tile(6, 2)

    // case marker {CASE_NAME}
{flow("shim", 0, "swiglu", 0)}
{flow("swiglu", 1, "shim", 1)}

    func.func private @ffn_swiglu_slice_bf16_inputs(memref<{C6R2_INPUT_DWORDS}xi32>, memref<{C6R2_HALF_DWORDS * 2}xbf16>, i32, i32) attributes {{link_with = "{experiment_dir}/{SWIGLU_OBJECT}"}}

{_swiglu_tile()}
{_runtime_sequence()}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        "ffn_swiglu_slice_bf16_inputs",
        f"memref<{C6R2_INPUT_DWORDS}xi32>",
        f"memref<{SWIGLU_OUTPUT_DWORDS}xi32>",
        "aie.runtime_sequence(%input",
    )
    return [f"missing swiglu microbench marker: {marker}" for marker in required if marker not in mlir]
