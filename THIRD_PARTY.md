# Third Party Components

This repository uses a uv-managed `.venv` for Python and generic Python
dependencies. The git repository does not commit the unpacked binary toolchain;
`scripts/install_toolchain_from_release.sh` installs it into the ignored
`toolchain/` directory from the GitHub Release pinned by
`toolchain-release.lock`.

- `toolchain/mlir_aie`: MLIR-AIE 1.3.1 wheel contents, unpacked so
  `toolchain/bin/aiecc` can execute it directly.
- `toolchain/aietools/{bin,data,include,lib,tps}`: Vitis AIE Essentials and
  Chess tool binaries from Ryzen AI 1.7.1
  (`/home/taowen/Downloads/ryzen_ai-1.7.1/`), packaged as unpacked runtime/tool
  files in the release artifact rather than committed wheel archives.
- `toolchain/xrt`: installed XRT runtime copied from `/var/opt/xilinx/xrt`.
  This includes the XDNA user-space shim `libxrt_driver_xdna.so*`. The kernel
  module `amdxdna.ko*` is supplied by the host OS under `/lib/modules`.
- `toolchain/sysroot/usr/include/uuid` and `toolchain/sysroot/usr/lib64/libuuid*`:
  libuuid from Homebrew `util-linux` 2.42, used by XRT host headers/runtime.
- `licenses/`: copied redistributable license texts for MLIR-AIE, XRT, and
  libuuid.

The local `licenses/Xilinx.lic` may contain machine- or user-specific licensing
data. It is ignored and should not be pushed to the public repository.
