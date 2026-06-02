import importlib.metadata as metadata
import sys

from aie.tools import aiecc, xchesscc_wrapper  # noqa: F401


def version(name: str) -> str:
    try:
        return metadata.version(name)
    except metadata.PackageNotFoundError:
        return "not-installed"


print("hello from torch2aie")
print(f"python={sys.executable}")
print(f"mlir-aie={version('mlir-aie')}")
print(f"vitis-aie-essentials={version('vitis-aie-essentials')}")
print(f"ryzen-ai={version('ryzen-ai')}")
