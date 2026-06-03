srcdir := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

TORCH2AIE_ROOT ?= $(abspath ${srcdir}/../..)
TORCH2AIE_TOOLCHAIN ?= ${TORCH2AIE_ROOT}/toolchain
TORCH2AIE_VENV ?= ${TORCH2AIE_ROOT}/.venv
TORCH2AIE_PYTHON ?= ${TORCH2AIE_VENV}/bin/python
TORCH2AIE_SYSROOT ?= ${TORCH2AIE_TOOLCHAIN}/sysroot

AIETOOLS_DIR ?= ${TORCH2AIE_TOOLCHAIN}/aietools
MLIR_AIE_DIR ?= ${TORCH2AIE_TOOLCHAIN}/mlir_aie
XRT_DIR ?= ${TORCH2AIE_TOOLCHAIN}/xrt

CURRENT_TOKEN ?= 31

export PYTHONNOUSERSITE := 1
export PYTHONPATH := ${srcdir}:${XRT_DIR}/python:${MLIR_AIE_DIR}/python:${MLIR_AIE_DIR}/src/python${PYTHONPATH:+:${PYTHONPATH}}
export PATH := ${TORCH2AIE_TOOLCHAIN}/bin:${MLIR_AIE_DIR}/bin:${XRT_DIR}/bin:/usr/local/bin:/usr/bin:${AIETOOLS_DIR}/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH := ${TORCH2AIE_SYSROOT}/usr/lib64:${TORCH2AIE_TOOLCHAIN}/mlir_aie.libs:${MLIR_AIE_DIR}/lib:${AIETOOLS_DIR}/lib:${AIETOOLS_DIR}/lib/lnx64.o:${XRT_DIR}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

mlir_target := build/full-layer-qkv-prefix/design.mlir

.PHONY: all
all: build

.PHONY: check
check:
	${TORCH2AIE_PYTHON} ${srcdir}/design.py --current-token ${CURRENT_TOKEN} --check-only
	${TORCH2AIE_PYTHON} ${srcdir}/run_qkv_prefix.py --current-token ${CURRENT_TOKEN} --check-only

.PHONY: mlir
mlir: ${mlir_target}

${mlir_target}: ${srcdir}/design.py
	mkdir -p ${@D}
	${TORCH2AIE_PYTHON} ${srcdir}/design.py --current-token ${CURRENT_TOKEN} -o $@

.PHONY: build
build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_qkv_prefix.py --current-token ${CURRENT_TOKEN} --build-only

.PHONY: run
run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_qkv_prefix.py --current-token ${CURRENT_TOKEN}

.PHONY: clean
clean:
	rm -rf build _build __pycache__ cases/__pycache__
	rm -f full_vector_station.o main_projection_q4nx_fast.o postprocess_qkv.o
	rm -f qwen3_decode_layer.exe
