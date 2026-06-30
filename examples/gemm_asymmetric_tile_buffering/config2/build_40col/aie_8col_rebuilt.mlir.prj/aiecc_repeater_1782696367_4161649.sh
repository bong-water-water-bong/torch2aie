#!/bin/bash
set -e
# Repeater script for: NPU lowering
echo "Original MLIR Diagnostics:"
cat << 'DIAGNOSTICS_EOF'
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
'aiex.dma_configure_task' op Allocator exhausted available buffer descriptor IDs.
DIAGNOSTICS_EOF
echo ""

MLIR_FILE='aie_8col_rebuilt.mlir.prj/aiecc_failure_1782696367_4161649.mlir'
PASS_PIPELINE='any(aie-materialize-runtime-sequences,aie.device(aie-materialize-bd-chains,aie-substitute-shim-dma-allocations,aie-assign-runtime-sequence-bd-ids,canonicalize{cse-between-iterations=false    max-iterations=10 max-num-rewrites=-1 region-simplify=normal test-convergence=false top-down=true},aie-dma-tasks-to-npu,aie-dma-to-npu,aie-lower-set-lock))'
aie-opt --mlir-print-ir-after-all --mlir-disable-threading --pass-pipeline="$PASS_PIPELINE" "$MLIR_FILE"
