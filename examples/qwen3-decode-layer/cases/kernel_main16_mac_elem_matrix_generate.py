"""Generate an isolated mac_elem_16_conf semantic matrix microbench."""

from __future__ import annotations

from pathlib import Path

from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-main16-mac-elem-matrix"
MATRIX_OBJECT = "main16_mac_elem_matrix_probe.o"
ROWS = 16
INPUT_VECS = 6
PATTERN_COUNT = 6
PATTERN_VARIANTS = PATTERN_COUNT * PATTERN_COUNT
CONF_VARIANTS = 8
SIGN_VARIANTS = 4
MAC32_FOLD_VARIANTS = 3
OUTPUT_VARIANTS = PATTERN_VARIANTS + CONF_VARIANTS + SIGN_VARIANTS + MAC32_FOLD_VARIANTS
INPUT_DWORDS = INPUT_VECS * ROWS // 2
OUTPUT_DWORDS = OUTPUT_VARIANTS * ROWS // 2


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(3, 0)
    %probe = aie.tile(3, 2)

    // case marker {CASE_NAME}
{flow("shim", 0, "probe", 0)}
{flow("probe", 0, "shim", 0)}

    func.func private @main16_mac_elem_matrix_i32_probe(memref<{INPUT_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) attributes {{link_with = "{experiment_dir}/{MATRIX_OBJECT}"}}

    %probe_input = aie.buffer(%probe) {{sym_name = "mac_elem_matrix_input"}} : memref<{INPUT_DWORDS}xi32>
    %probe_output = aie.buffer(%probe) {{sym_name = "mac_elem_matrix_output"}} : memref<{OUTPUT_DWORDS}xi32>
    %probe_input_empty = aie.lock(%probe, 0) {{init = 1 : i32, sym_name = "mac_elem_matrix_input_empty"}}
    %probe_input_full = aie.lock(%probe, 1) {{init = 0 : i32, sym_name = "mac_elem_matrix_input_full"}}
    %probe_output_empty = aie.lock(%probe, 2) {{init = 1 : i32, sym_name = "mac_elem_matrix_output_empty"}}
    %probe_output_full = aie.lock(%probe, 3) {{init = 0 : i32, sym_name = "mac_elem_matrix_output_full"}}

    %probe_core = aie.core(%probe) {{
      aie.use_lock(%probe_input_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_output_empty, AcquireGreaterEqual, 1)
      func.call @main16_mac_elem_matrix_i32_probe(%probe_input, %probe_output)
        : (memref<{INPUT_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) -> ()
      aie.use_lock(%probe_output_full, Release, 1)
      aie.use_lock(%probe_input_empty, Release, 1)
      aie.end
    }}

    %probe_mem = aie.mem(%probe) {{
      %in_dma = aie.dma_start(S2MM, 0, ^input_in, ^output_start)
    ^input_in:
      aie.use_lock(%probe_input_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_input : memref<{INPUT_DWORDS}xi32>, 0, {INPUT_DWORDS}) {{bd_id = 0 : i32}}
      aie.use_lock(%probe_input_full, Release, 1)
      aie.next_bd ^input_end
    ^input_end:
      aie.end

    ^output_start:
      %out_dma = aie.dma_start(MM2S, 0, ^output_out, ^end)
    ^output_out:
      aie.use_lock(%probe_output_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_output : memref<{OUTPUT_DWORDS}xi32>, 0, {OUTPUT_DWORDS}) {{bd_id = 1 : i32}}
      aie.use_lock(%probe_output_empty, Release, 1)
      aie.next_bd ^end
    ^end:
      aie.end
    }}

    aie.runtime_sequence(%input: memref<{INPUT_DWORDS}xi32>, %output: memref<{OUTPUT_DWORDS}xi32>) {{
{npu_writebd(3, 0, OUTPUT_DWORDS, 0)}
{npu_address_patch(3, 0, 1, 0)}
{npu_push_queue(3, "S2MM", 0, 0)}
{npu_writebd(3, 1, INPUT_DWORDS, 0)}
{npu_address_patch(3, 1, 0, 0)}
{npu_push_queue(3, "MM2S", 0, 1)}
{npu_sync(3, 0)}
    }}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        "main16_mac_elem_matrix_i32_probe",
        f"memref<{INPUT_DWORDS}xi32>",
        f"memref<{OUTPUT_DWORDS}xi32>",
        "aie.runtime_sequence(%input",
    )
    return [f"missing mac_elem matrix marker: {marker}" for marker in required if marker not in mlir]
