"""Generate the Main16 Q4NX steady-cell mixed-half microbench."""

from __future__ import annotations

from pathlib import Path

from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-main16-q4nx-steady-cell-7t-2p"
OBJECT_NAME = "main16_q4nx_steady_cell_probe.o"
ENTRY_NAME = "main16_q4nx_steady_cell_i32_probe"
ROWS = 16
GROUP_SIZE = 32
GROUPS = 8
PAIRS = 2
Q4_GROUP_BYTES = GROUP_SIZE * (ROWS // 2)
Q4_DWORDS = (GROUPS * Q4_GROUP_BYTES) // 4
SIDE_DWORDS = (GROUPS * ROWS) // 2
ACTIVATION_DWORDS = (GROUPS * GROUP_SIZE) // 2
OUTPUT_DWORDS = GROUP_SIZE // 2


def generate_mlir() -> str:
    experiment_dir = Path(__file__).parent.parent.resolve()
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(2, 0)
    %probe = aie.tile(2, 2)

    // case marker {CASE_NAME}
{flow("shim", 0, "probe", 0)}
{flow("shim", 1, "probe", 1)}
{flow("probe", 0, "shim", 0)}

    func.func private @{ENTRY_NAME}(memref<{Q4_DWORDS}xi32>, memref<{SIDE_DWORDS}xi32>, memref<{SIDE_DWORDS}xi32>, memref<{ACTIVATION_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) attributes {{link_with = "{experiment_dir}/{OBJECT_NAME}"}}

    %probe_q4 = aie.buffer(%probe) {{sym_name = "steady_cell_q4"}} : memref<{Q4_DWORDS}xi32>
    %probe_scale = aie.buffer(%probe) {{sym_name = "steady_cell_scale"}} : memref<{SIDE_DWORDS}xi32>
    %probe_offset = aie.buffer(%probe) {{sym_name = "steady_cell_offset"}} : memref<{SIDE_DWORDS}xi32>
    %probe_activation = aie.buffer(%probe) {{sym_name = "steady_cell_activation"}} : memref<{ACTIVATION_DWORDS}xi32>
    %probe_output = aie.buffer(%probe) {{sym_name = "steady_cell_output"}} : memref<{OUTPUT_DWORDS}xi32>
    %probe_q4_empty = aie.lock(%probe, 0) {{init = 1 : i32, sym_name = "steady_cell_q4_empty"}}
    %probe_q4_full = aie.lock(%probe, 1) {{init = 0 : i32, sym_name = "steady_cell_q4_full"}}
    %probe_scale_empty = aie.lock(%probe, 2) {{init = 1 : i32, sym_name = "steady_cell_scale_empty"}}
    %probe_scale_full = aie.lock(%probe, 3) {{init = 0 : i32, sym_name = "steady_cell_scale_full"}}
    %probe_offset_empty = aie.lock(%probe, 4) {{init = 1 : i32, sym_name = "steady_cell_offset_empty"}}
    %probe_offset_full = aie.lock(%probe, 5) {{init = 0 : i32, sym_name = "steady_cell_offset_full"}}
    %probe_activation_empty = aie.lock(%probe, 6) {{init = 1 : i32, sym_name = "steady_cell_activation_empty"}}
    %probe_activation_full = aie.lock(%probe, 7) {{init = 0 : i32, sym_name = "steady_cell_activation_full"}}
    %probe_output_empty = aie.lock(%probe, 8) {{init = 1 : i32, sym_name = "steady_cell_output_empty"}}
    %probe_output_full = aie.lock(%probe, 9) {{init = 0 : i32, sym_name = "steady_cell_output_full"}}

    %probe_core = aie.core(%probe) {{
      aie.use_lock(%probe_q4_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_scale_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_offset_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_activation_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_output_empty, AcquireGreaterEqual, 1)
      func.call @{ENTRY_NAME}(%probe_q4, %probe_scale, %probe_offset, %probe_activation, %probe_output)
        : (memref<{Q4_DWORDS}xi32>, memref<{SIDE_DWORDS}xi32>, memref<{SIDE_DWORDS}xi32>, memref<{ACTIVATION_DWORDS}xi32>, memref<{OUTPUT_DWORDS}xi32>) -> ()
      aie.use_lock(%probe_output_full, Release, 1)
      aie.use_lock(%probe_q4_empty, Release, 1)
      aie.use_lock(%probe_scale_empty, Release, 1)
      aie.use_lock(%probe_offset_empty, Release, 1)
      aie.use_lock(%probe_activation_empty, Release, 1)
      aie.end
    }}

    %probe_mem = aie.mem(%probe) {{
      %q4_dma = aie.dma_start(S2MM, 0, ^q4_in, ^side_start)
    ^q4_in:
      aie.use_lock(%probe_q4_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_q4 : memref<{Q4_DWORDS}xi32>, 0, {Q4_DWORDS}) {{bd_id = 0 : i32}}
      aie.use_lock(%probe_q4_full, Release, 1)
      aie.next_bd ^q4_end
    ^q4_end:
      aie.end

    ^side_start:
      %side_dma = aie.dma_start(S2MM, 1, ^scale_in, ^out_start)
    ^scale_in:
      aie.use_lock(%probe_scale_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_scale : memref<{SIDE_DWORDS}xi32>, 0, {SIDE_DWORDS}) {{bd_id = 1 : i32, next_bd_id = 2 : i32}}
      aie.use_lock(%probe_scale_full, Release, 1)
      aie.next_bd ^offset_in
    ^offset_in:
      aie.use_lock(%probe_offset_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_offset : memref<{SIDE_DWORDS}xi32>, 0, {SIDE_DWORDS}) {{bd_id = 2 : i32, next_bd_id = 3 : i32}}
      aie.use_lock(%probe_offset_full, Release, 1)
      aie.next_bd ^activation_in
    ^activation_in:
      aie.use_lock(%probe_activation_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_activation : memref<{ACTIVATION_DWORDS}xi32>, 0, {ACTIVATION_DWORDS}) {{bd_id = 3 : i32}}
      aie.use_lock(%probe_activation_full, Release, 1)
      aie.next_bd ^side_end
    ^side_end:
      aie.end

    ^out_start:
      %out_dma = aie.dma_start(MM2S, 0, ^out, ^end)
    ^out:
      aie.use_lock(%probe_output_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_output : memref<{OUTPUT_DWORDS}xi32>, 0, {OUTPUT_DWORDS}) {{bd_id = 4 : i32}}
      aie.use_lock(%probe_output_empty, Release, 1)
      aie.next_bd ^end
    ^end:
      aie.end
    }}

    aie.runtime_sequence(%q4: memref<{Q4_DWORDS}xi32>, %scale: memref<{SIDE_DWORDS}xi32>, %offset: memref<{SIDE_DWORDS}xi32>, %activation: memref<{ACTIVATION_DWORDS}xi32>, %output: memref<{OUTPUT_DWORDS}xi32>) {{
{npu_writebd(2, 0, OUTPUT_DWORDS, 0)}
{npu_address_patch(2, 0, 4, 0)}
{npu_push_queue(2, "S2MM", 0, 0)}
{npu_writebd(2, 1, Q4_DWORDS, 0)}
{npu_address_patch(2, 1, 0, 0)}
{npu_push_queue(2, "MM2S", 0, 1)}
{npu_writebd(2, 2, SIDE_DWORDS, 0, next_bd=3, use_next_bd=True)}
{npu_address_patch(2, 2, 1, 0)}
{npu_writebd(2, 3, SIDE_DWORDS, 0, next_bd=4, use_next_bd=True)}
{npu_address_patch(2, 3, 2, 0)}
{npu_writebd(2, 4, ACTIVATION_DWORDS, 0)}
{npu_address_patch(2, 4, 3, 0)}
{npu_push_queue(2, "MM2S", 1, 2)}
{npu_sync(2, 0)}
    }}
  }}
}}
"""


def validate_generated_mlir(mlir: str) -> list[str]:
    required = (
        f"case marker {CASE_NAME}",
        ENTRY_NAME,
        OBJECT_NAME,
        f"memref<{Q4_DWORDS}xi32>",
        f"memref<{SIDE_DWORDS}xi32>",
        f"memref<{ACTIVATION_DWORDS}xi32>",
        f"memref<{OUTPUT_DWORDS}xi32>",
        "aie.runtime_sequence(%q4",
    )
    return [f"missing steady-cell marker: {marker}" for marker in required if marker not in mlir]
