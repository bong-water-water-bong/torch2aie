srcdir := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

TORCH2AIE_ROOT ?= $(abspath ${srcdir}/../..)
TORCH2AIE_TOOLCHAIN ?= ${TORCH2AIE_ROOT}/toolchain
TORCH2AIE_VENV ?= ${TORCH2AIE_ROOT}/.venv
TORCH2AIE_PYTHON ?= ${TORCH2AIE_VENV}/bin/python
TORCH2AIE_SYSROOT ?= ${TORCH2AIE_TOOLCHAIN}/sysroot

AIETOOLS_DIR ?= ${TORCH2AIE_TOOLCHAIN}/aietools
MLIR_AIE_DIR ?= ${TORCH2AIE_TOOLCHAIN}/mlir_aie
XRT_DIR ?= ${TORCH2AIE_TOOLCHAIN}/xrt

SEQ_LEN ?= 512
HEADS ?= 1
KV_HEADS ?= 0
PIPELINES ?= 8
HEAD_DIM ?= 64
WARMUP ?= 2
ITERS ?= 5
VERIFY ?= true
VERBOSITY ?= 1

target_suffix := h${HEADS}_kv${KV_HEADS}_s${SEQ_LEN}_d${HEAD_DIM}_p${PIPELINES}
mlir_target := build/prefill_attention_${target_suffix}.mlir
xclbin_target := build/final_${target_suffix}.xclbin
insts_target := build/insts_${target_suffix}.txt

KERNEL_CC := xchesscc_wrapper
KERNEL_CFLAGS := aie2p -I${srcdir} -I${AIETOOLS_DIR}/include -I${MLIR_AIE_DIR}/include -I${MLIR_AIE_DIR}/include/aie_kernels -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p
MHA_DEFINES := -Dbf16_bf16_ONLY -DDIM_M=64 -DDIM_K=64 -DDIM_N=64 -DROUND_CONV_EVEN -DAIE_API_EMULATE_BFLOAT16_MMUL_WITH_BFP16 -DB_COL_MAJ

.PHONY: all
all: ${xclbin_target} prefill_attention.exe

build/mha.o: ${srcdir}/mha.cc ${srcdir}/softmax.cc ${srcdir}/mm.cc ${srcdir}/zero.cc
	mkdir -p ${@D}
	cd ${@D} && ${KERNEL_CC} ${KERNEL_CFLAGS} ${MHA_DEFINES} -c $< -o ${@F}

build/mha_passThrough.o: ${MLIR_AIE_DIR}/include/aie_kernels/generic/passThrough.cc
	mkdir -p ${@D}
	cd ${@D} && ${KERNEL_CC} ${KERNEL_CFLAGS} -DBIT_WIDTH=16 -c $< -o ${@F}

${mlir_target}: ${srcdir}/design.py
	mkdir -p ${@D}
	${TORCH2AIE_PYTHON} $< \
		--heads ${HEADS} \
		--S_q ${SEQ_LEN} \
		--S_kv ${SEQ_LEN} \
		-d ${HEAD_DIM} \
		--B_q 64 \
		--B_kv 64 \
		--num_KV_heads ${KV_HEADS} \
		--number-of-pipeline ${PIPELINES} \
		--emulate-bf16-mmul-with-bfp16 \
		-o $@

${xclbin_target}: ${mlir_target} build/mha.o build/mha_passThrough.o
	mkdir -p ${@D}
	cd ${@D} && aiecc --aietools=${AIETOOLS_DIR} --aie-generate-xclbin --no-compile-host \
		--xclbin-name=${notdir ${xclbin_target}} --xclbin-kernel-name=MLIR_AIE \
		--unified --dynamic-objFifos \
		--aie-generate-npu-insts --npu-insts-name=${notdir ${insts_target}} \
		${notdir ${mlir_target}}

prefill_attention.exe: ${srcdir}/prefill_attention_test.cpp
	rm -rf _build
	mkdir -p _build
	cd _build && cmake ${srcdir} \
		-D CMAKE_C_COMPILER=${CC} \
		-D CMAKE_CXX_COMPILER=${CXX} \
		-D TARGET_NAME=prefill_attention \
		-D HOST_SRC=${srcdir}/prefill_attention_test.cpp \
		-D XRT_INC_DIR=${XRT_DIR}/include \
		-D XRT_LIB_DIR=${XRT_DIR}/lib64 \
		-D UUID_INC_DIR=${TORCH2AIE_SYSROOT}/usr/include \
		-D UUID_LIB_DIR=${TORCH2AIE_SYSROOT}/usr/lib64 \
		-D TEST_UTILS_INC_DIR=${MLIR_AIE_DIR}/runtime_lib/x86_64/test_lib/include \
		-D TEST_UTILS_LIB_DIR=${MLIR_AIE_DIR}/runtime_lib/x86_64/test_lib/lib
	cd _build && cmake --build . --config Release
	cp _build/prefill_attention $@

.PHONY: run
run: prefill_attention.exe ${xclbin_target}
	./prefill_attention.exe \
		-x ${xclbin_target} \
		-i ${insts_target} \
		-k MLIR_AIE \
		--seq-len ${SEQ_LEN} \
		--heads ${HEADS} \
		--kv-heads ${KV_HEADS} \
		--head-dim ${HEAD_DIM} \
		--pipelines ${PIPELINES} \
		--warmup ${WARMUP} \
		--iters ${ITERS} \
		--verify=${VERIFY} \
		-v ${VERBOSITY}

.PHONY: clean
clean:
	rm -rf build _build prefill_attention.exe
