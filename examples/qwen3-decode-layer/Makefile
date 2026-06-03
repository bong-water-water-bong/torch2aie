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
LAYER ?= 0
MODEL_PATH ?= /var/home/taowen/flm/models/Qwen3-8B-NPU2

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

.PHONY: full-check
full-check:
	${TORCH2AIE_PYTHON} ${srcdir}/run_full_layer.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --check-only

.PHONY: full-build
full-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_full_layer.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: full-run
full-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_full_layer.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: weight-stream-build
weight-stream-build:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_only.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_stream.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: weight-stream-run
weight-stream-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_only.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_stream.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: weight-stream-light-edge-build
weight-stream-light-edge-build:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_only.cc QWEN3_POSTPROCESS_QKV_SOURCE=postprocess_qkv_light.cc QWEN3_FULL_VECTOR_STATION_SOURCE=full_vector_station_light.cc QWEN3_EDGE_ATTENTION_SOURCE=edge_attention_light.cc QWEN3_SWIGLU_SOURCE=swiglu_light.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_stream.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: weight-stream-light-edge-run
weight-stream-light-edge-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_only.cc QWEN3_POSTPROCESS_QKV_SOURCE=postprocess_qkv_light.cc QWEN3_FULL_VECTOR_STATION_SOURCE=full_vector_station_light.cc QWEN3_EDGE_ATTENTION_SOURCE=edge_attention_light.cc QWEN3_SWIGLU_SOURCE=swiglu_light.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_stream.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: weight-stream-light-attention-run
weight-stream-light-attention-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_only.cc QWEN3_EDGE_ATTENTION_SOURCE=edge_attention_light.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_stream.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: weight-path-build
weight-path-build:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_path.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_path.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: weight-path-run
weight-path-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_path.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_path.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: weight-compact-build
weight-compact-build:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_compact.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_compact.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: weight-compact-run
weight-compact-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_weight_compact.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_weight_compact.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: analyze-main16
analyze-main16:
	${TORCH2AIE_PYTHON} ${srcdir}/analyze_main16_chess.py

.PHONY: analyze-kernels
analyze-kernels:
	${TORCH2AIE_PYTHON} ${srcdir}/analyze_kernel_chess.py ${KERNELS:%=--kernel %}

.PHONY: analyze-dataflow
analyze-dataflow:
	${TORCH2AIE_PYTHON} ${srcdir}/analyze_dataflow_backpressure.py

.PHONY: native-probe
native-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_native_probe.cc \
	  -o build/native-probe/main16_native_probe.o
	@for op in VUNPACK VEXTBCST.16 VMAC.F VCONV.BF16.FP32 VST NOPX NOPA NOPV; do \
	  printf '%-16s ' "$$op"; \
	  strings build/native-probe/main16_native_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done

.PHONY: clean
clean:
	rm -rf build _build __pycache__ cases/__pycache__
	rm -f edge_attention.o full_vector_station.o main_projection_q4nx_fast.o postprocess_qkv.o swiglu.o
	rm -f qwen3_decode_layer.exe
