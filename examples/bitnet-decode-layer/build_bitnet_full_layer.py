#!/usr/bin/env python3
"""Build the BitNet b1.58-2B-4T full-layer xclbin."""

import sys
import os

# Import the npu_build infrastructure
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', '..', 'toolchain', 'mlir_aie', 'python'))

from npu_build import ProductionBuild

BITNET_CONTRACT = __import__('contract', fromlist=['PHASE_SPECS', 'PHASE_BLOCKS', 'PHASE_CHUNKS'])

PROFILE_CYCLES = False
EXPERIMENT_NAME = (
    "bitnet-b1.58-2B-4T-full-layer"
    + ("-profile" if PROFILE_CYCLES else "")
)

def validate_generated_mlir(mlir_text: str, profile_cycles: bool = False) -> list[str]:
    errors: list[str] = []
    if "bitnet_main16_layer_scheduler" not in mlir_text:
        errors.append("missing main16 scheduler call in MLIR")
    if "bitnet_attention_bf16_make_carrier_masked" not in mlir_text:
        errors.append("missing attention carrier in MLIR")
    if "bitnet_postprocess_absorb_qkv_payload_record" not in mlir_text:
        errors.append("missing postprocess absorb in MLIR")
    if "full_c1r2_make_input_norm_payload" not in mlir_text:
        errors.append("missing input norm in MLIR")
    if "ffn_swiglu_slice_bf16_inputs" not in mlir_text:
        errors.append("missing swiglu in MLIR")
    return errors

def generate_mlir(profile_cycles: bool = False) -> str:
    from cases import full_layer_engine_generate as gen
    from cases.full_layer_engine_reference import DEFAULT_SCHEDULE
    return gen.generate_mlir(schedule=DEFAULT_SCHEDULE)

def main():
    mlir_text = generate_mlir(profile_cycles=PROFILE_CYCLES)
    errors = validate_generated_mlir(mlir_text, profile_cycles=PROFILE_CYCLES)
    if errors:
        for err in errors:
            print(f"VALIDATION ERROR: {err}")
        sys.exit(1)

    print(f"Generated MLIR: {len(mlir_text)} chars")
    build = ProductionBuild(
        experiment_name=EXPERIMENT_NAME,
        mlir_text=mlir_text,
        profile_cycles=PROFILE_CYCLES,
        validate_mlir_fn=validate_generated_mlir,
        contract=BITNET_CONTRACT,
    )
    build()

if __name__ == "__main__":
    main()
