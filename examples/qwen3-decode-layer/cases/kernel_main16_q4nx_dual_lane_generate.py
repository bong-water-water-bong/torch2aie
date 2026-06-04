"""Generate isolated two-lane Main16 Q4NX exact-window microbenches."""

from __future__ import annotations

from pathlib import Path

from mlir_utils import flow, npu_address_patch, npu_push_queue, npu_sync, npu_writebd

CASE_NAME = "qwen3-kernel-main16-q4nx-dual-lane"
DUAL_2G_OBJECT = "main16_q4nx_exact_bounded_dual_2g_mac32_probe.o"
DUAL_3G_OBJECT = "main16_q4nx_exact_bounded_dual_3g_mac32_probe.o"
DUAL_8G_OBJECT = "main16_q4nx_exact_8group_dual_mac32_probe.o"
ROWS_PER_LANE = 16
LANES = 2
ROWS = ROWS_PER_LANE * LANES
GROUP_SIZE = 32
Q4_GROUP_BYTES_PER_LANE = GROUP_SIZE * (ROWS_PER_LANE // 2)
OUTPUT_DWORDS = ROWS // 2


def _validate_groups(groups: int) -> None:
    if groups not in (2, 3, 8):
        raise ValueError(f"unsupported dual-lane groups={groups}; expected 2, 3, or 8")


def case_name(groups: int = 2) -> str:
    _validate_groups(groups)
    return f"{CASE_NAME}-{groups}g"


def q4_dwords(groups: int) -> int:
    _validate_groups(groups)
    return LANES * groups * Q4_GROUP_BYTES_PER_LANE // 4


def side_dwords(groups: int) -> int:
    _validate_groups(groups)
    return groups * ROWS // 2


def activation_dwords(groups: int) -> int:
    _validate_groups(groups)
    return groups * GROUP_SIZE // 2


def entry_name(groups: int) -> str:
    _validate_groups(groups)
    return f"main16_q4nx_exact_bounded_{groups}g_dual_mac32_i32_probe"


def object_name(groups: int) -> str:
    _validate_groups(groups)
    if groups == 2:
        return DUAL_2G_OBJECT
    if groups == 3:
        return DUAL_3G_OBJECT
    if groups == 8:
        return DUAL_8G_OBJECT
    raise ValueError(f"unsupported dual-lane groups={groups}; expected 2, 3, or 8")


def generate_mlir(groups: int = 2) -> str:
    _validate_groups(groups)
    experiment_dir = Path(__file__).parent.parent.resolve()
    q4_words = q4_dwords(groups)
    side_words = side_dwords(groups)
    act_words = activation_dwords(groups)
    entry = entry_name(groups)
    obj = object_name(groups)
    return f"""module {{
  aie.device(npu2) {{
    %shim = aie.tile(2, 0)
    %probe = aie.tile(2, 2)

    // case marker {case_name(groups)}
{flow("shim", 0, "probe", 0)}
{flow("shim", 1, "probe", 1)}
{flow("probe", 0, "shim", 0)}

    func.func private @{entry}(memref<{q4_words}xi32>, memref<{side_words}xi32>, memref<{side_words}xi32>, memref<{act_words}xi32>, memref<{OUTPUT_DWORDS}xi32>) attributes {{link_with = "{experiment_dir}/{obj}"}}

    %probe_q4 = aie.buffer(%probe) {{sym_name = "dual_q4"}} : memref<{q4_words}xi32>
    %probe_scale = aie.buffer(%probe) {{sym_name = "dual_scale"}} : memref<{side_words}xi32>
    %probe_offset = aie.buffer(%probe) {{sym_name = "dual_offset"}} : memref<{side_words}xi32>
    %probe_activation = aie.buffer(%probe) {{sym_name = "dual_activation"}} : memref<{act_words}xi32>
    %probe_output = aie.buffer(%probe) {{sym_name = "dual_output"}} : memref<{OUTPUT_DWORDS}xi32>
    %probe_q4_empty = aie.lock(%probe, 0) {{init = 1 : i32, sym_name = "dual_q4_empty"}}
    %probe_q4_full = aie.lock(%probe, 1) {{init = 0 : i32, sym_name = "dual_q4_full"}}
    %probe_scale_empty = aie.lock(%probe, 2) {{init = 1 : i32, sym_name = "dual_scale_empty"}}
    %probe_scale_full = aie.lock(%probe, 3) {{init = 0 : i32, sym_name = "dual_scale_full"}}
    %probe_offset_empty = aie.lock(%probe, 4) {{init = 1 : i32, sym_name = "dual_offset_empty"}}
    %probe_offset_full = aie.lock(%probe, 5) {{init = 0 : i32, sym_name = "dual_offset_full"}}
    %probe_activation_empty = aie.lock(%probe, 6) {{init = 1 : i32, sym_name = "dual_activation_empty"}}
    %probe_activation_full = aie.lock(%probe, 7) {{init = 0 : i32, sym_name = "dual_activation_full"}}
    %probe_output_empty = aie.lock(%probe, 8) {{init = 1 : i32, sym_name = "dual_output_empty"}}
    %probe_output_full = aie.lock(%probe, 9) {{init = 0 : i32, sym_name = "dual_output_full"}}

    %probe_core = aie.core(%probe) {{
      aie.use_lock(%probe_q4_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_scale_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_offset_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_activation_full, AcquireGreaterEqual, 1)
      aie.use_lock(%probe_output_empty, AcquireGreaterEqual, 1)
      func.call @{entry}(%probe_q4, %probe_scale, %probe_offset, %probe_activation, %probe_output)
        : (memref<{q4_words}xi32>, memref<{side_words}xi32>, memref<{side_words}xi32>, memref<{act_words}xi32>, memref<{OUTPUT_DWORDS}xi32>) -> ()
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
      aie.dma_bd(%probe_q4 : memref<{q4_words}xi32>, 0, {q4_words}) {{bd_id = 0 : i32}}
      aie.use_lock(%probe_q4_full, Release, 1)
      aie.next_bd ^q4_end
    ^q4_end:
      aie.end

    ^side_start:
      %side_dma = aie.dma_start(S2MM, 1, ^scale_in, ^out_start)
    ^scale_in:
      aie.use_lock(%probe_scale_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_scale : memref<{side_words}xi32>, 0, {side_words}) {{bd_id = 1 : i32, next_bd_id = 2 : i32}}
      aie.use_lock(%probe_scale_full, Release, 1)
      aie.next_bd ^offset_in
    ^offset_in:
      aie.use_lock(%probe_offset_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_offset : memref<{side_words}xi32>, 0, {side_words}) {{bd_id = 2 : i32, next_bd_id = 3 : i32}}
      aie.use_lock(%probe_offset_full, Release, 1)
      aie.next_bd ^activation_in
    ^activation_in:
      aie.use_lock(%probe_activation_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%probe_activation : memref<{act_words}xi32>, 0, {act_words}) {{bd_id = 3 : i32}}
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

    aie.runtime_sequence(%q4: memref<{q4_words}xi32>, %scale: memref<{side_words}xi32>, %offset: memref<{side_words}xi32>, %activation: memref<{act_words}xi32>, %output: memref<{OUTPUT_DWORDS}xi32>) {{
{npu_writebd(2, 0, OUTPUT_DWORDS, 0)}
{npu_address_patch(2, 0, 4, 0)}
{npu_push_queue(2, "S2MM", 0, 0)}
{npu_writebd(2, 1, q4_words, 0)}
{npu_address_patch(2, 1, 0, 0)}
{npu_push_queue(2, "MM2S", 0, 1)}
{npu_writebd(2, 2, side_words, 0, next_bd=3, use_next_bd=True)}
{npu_address_patch(2, 2, 1, 0)}
{npu_writebd(2, 3, side_words, 0, next_bd=4, use_next_bd=True)}
{npu_address_patch(2, 3, 2, 0)}
{npu_writebd(2, 4, act_words, 0)}
{npu_address_patch(2, 4, 3, 0)}
{npu_push_queue(2, "MM2S", 1, 2)}
{npu_sync(2, 0)}
    }}
  }}
}}
"""


def validate_generated_mlir(mlir: str, groups: int = 2) -> list[str]:
    required = (
        f"case marker {case_name(groups)}",
        entry_name(groups),
        object_name(groups),
        f"memref<{q4_dwords(groups)}xi32>",
        f"memref<{side_dwords(groups)}xi32>",
        f"memref<{activation_dwords(groups)}xi32>",
        f"memref<{OUTPUT_DWORDS}xi32>",
    )
    return [f"missing dual-lane Main16 marker: {marker}" for marker in required if marker not in mlir]
