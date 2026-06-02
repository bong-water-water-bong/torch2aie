# torch2aie

Local AMD Ryzen AI / MLIR-AIE AIE2P/NPU2 toolchain experiment.

The git repository keeps scripts, examples, license texts, and a release lock.
The unpacked MLIR-AIE, AIE/Chess tools, XRT runtime files, and sysroot additions
are installed into the ignored `toolchain/` directory from a GitHub Release
artifact. Python 3.12 and generic Python dependencies live in `.venv`, which is
also ignored.

Install or refresh the vendored binary toolchain:

```bash
./scripts/install_toolchain_from_release.sh
```

Create or refresh the Python environment:

```bash
./scripts/setup_python.sh
```

Run the bundled Chess-compiled ATB GEMM demo:

```bash
./scripts/run_hello_world.sh
```

That entry point runs `gemm_asymmetric_tile_buffering` from the local
toolchain. The default is `config2`, a 32-core AIE2P pure-BFP16 GEMM
(`M=3072 K=4096 N=1536`) whose upstream reference reports about 31.3 TFLOPS
on Strix. Pick another copied configuration with:

```bash
./scripts/run_atb_gemm.sh config1
./scripts/run_atb_gemm.sh config2
./scripts/run_atb_gemm.sh config3
```

Useful overrides:

```bash
GEMM_ITERS=100 GEMM_WARMUP=20 GEMM_VERIFY=false ./scripts/run_atb_gemm.sh config2
GEMM_RUN=0 ./scripts/run_atb_gemm.sh config2
```

Use the vendored toolchain in a shell:

```bash
source ./scripts/env.sh
python --version
aiecc --version
xchesscc_wrapper aie2p --help
```

Check the vendored XRT XDNA shim and loaded Linux NPU kernel module:

```bash
./scripts/check_driver.sh
```
