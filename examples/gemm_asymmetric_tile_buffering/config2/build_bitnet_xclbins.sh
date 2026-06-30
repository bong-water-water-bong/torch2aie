#!/bin/bash
# Build all BitNet xclbins with CORRECT tile sizes (m=192, k=128, n=96)

source /home/bcloud/torch2aie/.venv/bin/activate
export PYTHONPATH=/home/bcloud/torch2aie/toolchain/mlir_aie/python:$PYTHONPATH
export PATH=/home/bcloud/torch2aie/toolchain/bin:$PATH
export AIETOOLS=/home/bcloud/torch2aie/toolchain/aietools

cd /home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2

# Tile sizes
m=192; k=128; n=96
ng=$((n * 8))  # 768

echo "=== Building BitNet xclbins with tile sizes m=$m k=$k n=$n ==="
echo ""

# Helper: generate + build xclbin
build_one() {
    local label="$1" M=$2 K=$3 N=$4

    echo "--- $label: M=$M K=$K N=$N ---"
    python n32_core_placed.py -M $M -K $K -N $N -m $m -k $k -n $n > build/aie_${M}x${K}x${N}_${m}x${k}x${n}.mlir 2>/dev/null
    local mlir_len=$(wc -l < build/aie_${M}x${K}x${N}_${m}x${k}x${n}.mlir)
    echo "MLIR: ${mlir_len} lines"

    timeout 600 aiecc --aietools=$AIETOOLS --alloc-scheme=basic-sequential \
        --aie-generate-xclbin --no-compile-host \
        --xclbin-name=build/final_${M}x${K}x${N}_${m}x${k}x${n}.xclbin \
        --aie-generate-npu-insts --npu-insts-name=build/final_${M}x${K}x${N}_${m}x${k}x${n}_instr.bin \
        build/aie_${M}x${K}x${N}_${m}x${k}x${n}.mlir 2>&1 | grep -E "Leaving|Error|Success" | tail -1

    local xclbin_size=$(stat -c%s build/final_${M}x${K}x${N}_${m}x${k}x${n}.xclbin 2>/dev/null)
    local instr_size=$(stat -c%s build/final_${M}x${K}x${N}_${m}x${k}x${n}_instr.bin 2>/dev/null)
    echo "xclbin: ${xclbin_size} bytes"
    echo "instr: ${instr_size} bytes"
    echo ""
}

# Q/O projection: K=2560, N=2560 -> pad N to 3072 (n_group=768)
# ceil(2560/768)=4, 4*768=3072
# M=768 gives 1 row-tile x 4 col-tiles = 4 groups ✓
build_one "Q_PROJ" 768 2560 3072

# Gate/Up projection: K=2560, N=6912 -> N=6912 already divisible by 768
# 6912/768 = 9. M=768 gives 1x9=9 groups ✓
build_one "GATE_UP" 768 2560 6912

# Down projection: K=6912, N=2560 -> pad N to 3072
# K=6912 divisible by k=128? 6912/128 = 54 ✓
build_one "DOWN" 768 6912 3072

# K/V projection: K=2560, N=640 -> pad N to 768
# 768/768=1 col-tile. M=3072 gives 4x1=4 groups (m*n_aie_rows=768, 3072/768=4)
build_one "KV_PROJ" 3072 2560 768

echo "=== All builds complete ==="
ls -la build/final_*x*.xclbin