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
	${TORCH2AIE_PYTHON} ${srcdir}/analyze_kernel_chess.py ${KERNELS:%=--kernel %} ${ANALYZE_ARGS}

.PHONY: kernel-all-run
kernel-all-run: kernel-postprocess-qkv-run kernel-full-vector-run kernel-edge-attention-run kernel-main16-q4nx-run kernel-swiglu-run

.PHONY: kernel-all-build
kernel-all-build: kernel-postprocess-qkv-build kernel-full-vector-build kernel-edge-attention-build kernel-main16-q4nx-build kernel-swiglu-build

.PHONY: kernel-postprocess-qkv-run
kernel-postprocess-qkv-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_postprocess_qkv.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: kernel-postprocess-qkv-build
kernel-postprocess-qkv-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_postprocess_qkv.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: kernel-full-vector-run
kernel-full-vector-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_station.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH}

.PHONY: kernel-full-vector-build
kernel-full-vector-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_station.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --build-only

.PHONY: kernel-full-vector-add-run
kernel-full-vector-add-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_add.py

.PHONY: kernel-full-vector-add-build
kernel-full-vector-add-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_add.py --build-only

.PHONY: kernel-full-vector-profile-run
kernel-full-vector-profile-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_station.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --profile-cycles

.PHONY: kernel-full-vector-profile-build
kernel-full-vector-profile-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_full_vector_station.py --current-token ${CURRENT_TOKEN} --layer ${LAYER} --model-path ${MODEL_PATH} --profile-cycles --build-only

.PHONY: kernel-edge-attention-run
kernel-edge-attention-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_edge_attention.py

.PHONY: kernel-edge-attention-build
kernel-edge-attention-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_edge_attention.py --build-only

.PHONY: kernel-edge-attention-profile-run
kernel-edge-attention-profile-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_edge_attention.py --profile-cycles

.PHONY: kernel-edge-attention-profile-build
kernel-edge-attention-profile-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_edge_attention.py --profile-cycles --build-only

.PHONY: kernel-main16-q4nx-run
kernel-main16-q4nx-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py

.PHONY: kernel-main16-q4nx-build
kernel-main16-q4nx-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --build-only

.PHONY: kernel-main16-q4nx-qkv-run
kernel-main16-q4nx-qkv-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode qkv

.PHONY: kernel-main16-q4nx-qkv-build
kernel-main16-q4nx-qkv-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode qkv --build-only

.PHONY: kernel-main16-q4nx-full-run
kernel-main16-q4nx-full-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode full

.PHONY: kernel-main16-q4nx-full-build
kernel-main16-q4nx-full-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode full --build-only

.PHONY: kernel-main16-q4nx-bounded-run
kernel-main16-q4nx-bounded-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_bounded.py

.PHONY: kernel-main16-q4nx-bounded-build
kernel-main16-q4nx-bounded-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_bounded.py --build-only

.PHONY: kernel-main16-q4nx-chunk-slot-run
kernel-main16-q4nx-chunk-slot-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_chunk_slot.py

.PHONY: kernel-main16-q4nx-chunk-slot-build
kernel-main16-q4nx-chunk-slot-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_chunk_slot.py --build-only

.PHONY: kernel-main16-q4nx-slot-window-run
kernel-main16-q4nx-slot-window-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_slot_window.py

.PHONY: kernel-main16-q4nx-slot-window-build
kernel-main16-q4nx-slot-window-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_slot_window.py --build-only

.PHONY: kernel-main16-q4nx-slot-scheduler-run
kernel-main16-q4nx-slot-scheduler-run:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_kernels_chunk_slot.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode q

.PHONY: kernel-main16-q4nx-slot-scheduler-build
kernel-main16-q4nx-slot-scheduler-build:
	QWEN3_MAIN16_KERNEL_SOURCE=qwen3_decode_kernels_chunk_slot.cc ${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --mode q --build-only

.PHONY: kernel-main16-q4nx-steady-cell-run
kernel-main16-q4nx-steady-cell-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_steady_cell.py

.PHONY: kernel-main16-q4nx-steady-cell-build
kernel-main16-q4nx-steady-cell-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx_steady_cell.py --build-only

.PHONY: kernel-main16-q4nx-profile-run
kernel-main16-q4nx-profile-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --profile-cycles

.PHONY: kernel-main16-q4nx-profile-build
kernel-main16-q4nx-profile-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_main16_q4nx.py --profile-cycles --build-only

.PHONY: kernel-swiglu-run
kernel-swiglu-run:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_swiglu.py

.PHONY: kernel-swiglu-build
kernel-swiglu-build:
	${TORCH2AIE_PYTHON} ${srcdir}/run_kernel_swiglu.py --build-only

.PHONY: analyze-dataflow
analyze-dataflow:
	${TORCH2AIE_PYTHON} ${srcdir}/analyze_dataflow_backpressure.py

.PHONY: full-vector-add-probe
full-vector-add-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/full_vector_add_probe.cc \
	  -o build/native-probe/full_vector_add_probe.o
	@for op in VLDA.CONV.FP32.BF16 VST.CONV.BF16.FP32 VADD.F VMUL.F VLDA VLDB VST NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/full_vector_add_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@strings build/native-probe/full_vector_add_probe.o.lst | \
	  grep -Ein "full_vector_add|begin_of_loop|end_of_loop|VCONV|VADD\\.F|VLDA|VLDB|VST|VMUL\\.F" | head -120

.PHONY: main16-q4nx-cell-state-carry-probe
main16-q4nx-cell-state-carry-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_cell_state_carry_probe.cc \
	  -o build/native-probe/main16_q4nx_cell_state_carry_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_cell_state_carry_probe.o.lst | \
	  grep -Ein "main16_q4nx_cell_state|VUPS\\.4x|VLDB\\.UNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -260

.PHONY: main16-q4nx-section-cell-probe
main16-q4nx-section-cell-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_section_cell_probe.cc \
	  -o build/native-probe/main16_q4nx_section_cell_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_section_cell_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_section_cell_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_section_cell_probe.o.lst | \
	  grep -Ein "main16_q4nx_section_cell|VUPS\\.4x|VLDB\\.UNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -320

.PHONY: main16-q4nx-steady-cell-probe
main16-q4nx-steady-cell-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_steady_cell_probe.cc \
	  -o build/native-probe/main16_q4nx_steady_cell_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_steady_cell_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_steady_cell_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_steady_cell_probe.o.lst | \
	  grep -Ein "main16_q4nx_steady_cell|VUPS\\.4x|VLDB\\.UNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -180

.PHONY: main16-q4nx-api-cell-probe
main16-q4nx-api-cell-probe:
	mkdir -p build/native-probe
	@for spec in "0 raw_v32" "1 insert" "2 api_concat" "3 raw_concat"; do \
	  set -- $$spec; kind=$$1; name=$$2; \
	  ${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	    -DMAIN16_API_CELL_PROBE_KIND=$$kind \
	    -I${srcdir} \
	    -I${AIETOOLS_DIR}/include \
	    -I${MLIR_AIE_DIR}/include \
	    -I${MLIR_AIE_DIR}/include/aie_kernels \
	    -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	    -c ${srcdir}/probes/main16_q4nx_api_cell_probe.cc \
	    -o build/native-probe/main16_q4nx_api_cell_$${name}_probe.o; \
	  echo "== $$name =="; \
	  for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	    printf '%-18s ' "$$op"; \
	    strings build/native-probe/main16_q4nx_api_cell_$${name}_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	  done; \
	  printf '%-18s ' "[sp] refs"; \
	    strings build/native-probe/main16_q4nx_api_cell_$${name}_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l; \
	  strings build/native-probe/main16_q4nx_api_cell_$${name}_probe.o.lst | \
	    grep -Ein "main16_q4nx_api_cell|VEXTBCST\\.16|VMAC\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -80; \
	done

.PHONY: main16-q4nx-steady-combo-probe
main16-q4nx-steady-combo-probe:
	mkdir -p build/native-probe
	@for spec in "0 q4_1g" "1 q4_2g_mixed" "2 acc_concat" "3 addmac" "4 combined"; do \
	  set -- $$spec; kind=$$1; name=$$2; \
	  ${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	    -DMAIN16_STEADY_COMBO_KIND=$$kind \
	    -I${srcdir} \
	    -I${AIETOOLS_DIR}/include \
	    -I${MLIR_AIE_DIR}/include \
	    -I${MLIR_AIE_DIR}/include/aie_kernels \
	    -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	    -c ${srcdir}/probes/main16_q4nx_steady_combo_probe.cc \
	    -o build/native-probe/main16_q4nx_steady_combo_$${name}_probe.o; \
	  echo "== $$name =="; \
	  for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	    printf '%-18s ' "$$op"; \
	    strings build/native-probe/main16_q4nx_steady_combo_$${name}_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	  done; \
	  printf '%-18s ' "[sp] refs"; \
	    strings build/native-probe/main16_q4nx_steady_combo_$${name}_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l; \
	  strings build/native-probe/main16_q4nx_steady_combo_$${name}_probe.o.lst | \
	    grep -Ein "main16_q4nx_steady_combo|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -140; \
	done

MAIN16_CHUNK_SLOT_EXTRA_DEFS ?=

.PHONY: main16-q4nx-chunk-slot-probe
main16-q4nx-chunk-slot-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  ${MAIN16_CHUNK_SLOT_EXTRA_DEFS} \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_chunk_slot_probe.cc \
	  -o build/native-probe/main16_q4nx_chunk_slot_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_chunk_slot_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_chunk_slot_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_chunk_slot_probe.o.lst | \
	  grep -Ein "main16_q4nx_chunk_slot|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD|VSUB\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -220

MAIN16_SLOT_WINDOW_LIMITS ?= 2
MAIN16_SLOT_WINDOW_EXTRA_DEFS ?=

.PHONY: main16-q4nx-slot-window-probe
main16-q4nx-slot-window-probe:
	mkdir -p build/native-probe
	@for limit in ${MAIN16_SLOT_WINDOW_LIMITS}; do \
	  ${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	    -DMAIN16_SLOT_WINDOW_PAIR_LIMIT=$$limit \
	    ${MAIN16_SLOT_WINDOW_EXTRA_DEFS} \
	    -I${srcdir} \
	    -I${AIETOOLS_DIR}/include \
	    -I${MLIR_AIE_DIR}/include \
	    -I${MLIR_AIE_DIR}/include/aie_kernels \
	    -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	    -c ${srcdir}/probes/main16_q4nx_slot_window_probe.cc \
	    -o build/native-probe/main16_q4nx_slot_window_$${limit}_probe.o; \
	  echo "== pair_limit=$$limit =="; \
	  for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	    printf '%-18s ' "$$op"; \
	    strings build/native-probe/main16_q4nx_slot_window_$${limit}_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	  done; \
	  printf '%-18s ' "[sp] refs"; \
	    strings build/native-probe/main16_q4nx_slot_window_$${limit}_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l; \
	  strings build/native-probe/main16_q4nx_slot_window_$${limit}_probe.o.lst | \
	    grep -Ein "main16_q4nx_slot_window|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD|VSUB\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -180; \
	done

MAIN16_SLOT_WINDOW_SEP_LIMIT ?= 4
MAIN16_SLOT_WINDOW_SEP_TIMEOUT ?= 180
MAIN16_SLOT_WINDOW_SEP_VARIANTS ?= "none 0 0" "hard 1 0" "m1 2 -1" "m2 2 -2" "m4 2 -4"

.PHONY: main16-q4nx-slot-window-sep-offset-probe
main16-q4nx-slot-window-sep-offset-probe:
	mkdir -p build/native-probe
	@for spec in ${MAIN16_SLOT_WINDOW_SEP_VARIANTS}; do \
	  set -- $$spec; name=$$1; kind=$$2; offset=$$3; \
	  obj=build/native-probe/main16_q4nx_slot_window_sep_${MAIN16_SLOT_WINDOW_SEP_LIMIT}_$${name}_probe.o; \
	  echo "== pair_limit=${MAIN16_SLOT_WINDOW_SEP_LIMIT} separator=$${name} kind=$${kind} offset=$${offset} =="; \
	  if ! timeout ${MAIN16_SLOT_WINDOW_SEP_TIMEOUT} ${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	    -DMAIN16_SLOT_WINDOW_PAIR_LIMIT=${MAIN16_SLOT_WINDOW_SEP_LIMIT} \
	    -DMAIN16_SLOT_WINDOW_SEPARATOR_KIND=$${kind} \
	    -DMAIN16_SLOT_WINDOW_SEPARATOR_OFFSET=$${offset} \
	    -I${srcdir} \
	    -I${AIETOOLS_DIR}/include \
	    -I${MLIR_AIE_DIR}/include \
	    -I${MLIR_AIE_DIR}/include/aie_kernels \
	    -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	    -c ${srcdir}/probes/main16_q4nx_slot_window_sep_offset_probe.cc \
	    -o $$obj; then \
	    echo "compile_failed_or_timeout"; \
	    continue; \
	  fi; \
	  for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	    printf '%-18s ' "$$op"; \
	    strings $$obj.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	  done; \
	  printf '%-18s ' "[sp] refs"; \
	    strings $$obj.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l; \
	done

.PHONY: main16-q4nx-slot-window-loop-probe
main16-q4nx-slot-window-loop-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -DMAIN16_SLOT_WINDOW_RUNTIME_LOOP=1 \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_slot_window_probe.cc \
	  -o build/native-probe/main16_q4nx_slot_window_loop_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_slot_window_loop_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_slot_window_loop_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_slot_window_loop_probe.o.lst | \
	  grep -Ein "main16_q4nx_slot_window|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD|VSUB\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -220

.PHONY: main16-q4nx-slot-window-peeled-probe
main16-q4nx-slot-window-peeled-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -DMAIN16_SLOT_WINDOW_PEELED_LOOP=1 \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_slot_window_probe.cc \
	  -o build/native-probe/main16_q4nx_slot_window_peeled_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_slot_window_peeled_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_slot_window_peeled_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_slot_window_peeled_probe.o.lst | \
	  grep -Ein "main16_q4nx_slot_window|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD|VSUB\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -240

.PHONY: main16-q4nx-steady-section-probe
main16-q4nx-steady-section-probe:
	mkdir -p build/native-probe
	@for spec in "0 front" "1 middle" "2 back" "3 schedule" "4 acc_schedule"; do \
	  set -- $$spec; window=$$1; name=$$2; \
	  ${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	    -DMAIN16_STEADY_SECTION_WINDOW=$$window \
	    -I${srcdir} \
	    -I${AIETOOLS_DIR}/include \
	    -I${MLIR_AIE_DIR}/include \
	    -I${MLIR_AIE_DIR}/include/aie_kernels \
	    -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	    -c ${srcdir}/probes/main16_q4nx_steady_section_probe.cc \
	    -o build/native-probe/main16_q4nx_steady_section_$${name}_probe.o; \
	  echo "== $$name =="; \
	  for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD VSUB.F VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	    printf '%-18s ' "$$op"; \
	    strings build/native-probe/main16_q4nx_steady_section_$${name}_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	  done; \
	  printf '%-18s ' "[sp] refs"; \
	    strings build/native-probe/main16_q4nx_steady_section_$${name}_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l; \
	  strings build/native-probe/main16_q4nx_steady_section_$${name}_probe.o.lst | \
	    grep -Ein "main16_q4nx_steady_section|VUPS\\.4x|VLDB\\.UNPACK|VUNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD|VSUB\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -160; \
	done

.PHONY: main16-q4nx-cell-state-carry-3acc-probe
main16-q4nx-cell-state-carry-3acc-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -DMAIN16_CELL_STATE_ACCUMS=3 \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_cell_state_carry_probe.cc \
	  -o build/native-probe/main16_q4nx_cell_state_carry_3acc_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_3acc_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_3acc_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_cell_state_carry_3acc_probe.o.lst | \
	  grep -Ein "main16_q4nx_cell_state|VUPS\\.4x|VLDB\\.UNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -260

.PHONY: main16-q4nx-cell-state-carry-2acc-probe
main16-q4nx-cell-state-carry-2acc-probe:
	mkdir -p build/native-probe
	${TORCH2AIE_TOOLCHAIN}/bin/xchesscc_wrapper aie2p \
	  -DMAIN16_CELL_STATE_ACCUMS=2 \
	  -I${srcdir} \
	  -I${AIETOOLS_DIR}/include \
	  -I${MLIR_AIE_DIR}/include \
	  -I${MLIR_AIE_DIR}/include/aie_kernels \
	  -I${MLIR_AIE_DIR}/include/aie_kernels/aie2p \
	  -c ${srcdir}/probes/main16_q4nx_cell_state_carry_probe.cc \
	  -o build/native-probe/main16_q4nx_cell_state_carry_2acc_probe.o
	@for op in VUPS.4X VLDB.UNPACK VUNPACK VEXTBCST.16 VMAC.F VADDMAC.F VCONV.BF16.FP32 VADD.F VMUL.F VMOV VLDA VLDB VST ST.S8 ST.S16 NOPX NOPA NOPB NOPS NOPM NOPV; do \
	  printf '%-18s ' "$$op"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_2acc_probe.o.lst | grep -Eoi "(^|[^A-Z0-9_.])$$op([^A-Z0-9_.]|$$)" | wc -l; \
	done
	@printf '%-18s ' "[sp] refs"; \
	  strings build/native-probe/main16_q4nx_cell_state_carry_2acc_probe.o.lst | grep -E "\\[sp|VST.*\\[sp|VLDA.*\\[sp|VLDB.*\\[sp|ST\\..*\\[sp" | wc -l
	@strings build/native-probe/main16_q4nx_cell_state_carry_2acc_probe.o.lst | \
	  grep -Ein "main16_q4nx_cell_state|VUPS\\.4x|VLDB\\.UNPACK|VEXTBCST\\.16|VMAC\\.f|VADDMAC\\.f|VCONV\\.bf16\\.fp32|VADD\\.f|VMUL\\.f|VMOV|VST|ST\\.|\\[sp|NOP" | head -260

.PHONY: clean
clean:
	rm -rf build _build __pycache__ cases/__pycache__
	rm -f edge_attention.o edge_attention_profile.o full_vector_station.o full_vector_station_profile.o main_projection_q4nx_fast.o main_projection_q4nx_profile.o postprocess_qkv.o swiglu.o
	rm -f qwen3_decode_layer.exe
