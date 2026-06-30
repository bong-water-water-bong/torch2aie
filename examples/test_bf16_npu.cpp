//===- test_bf16_npu.cpp ----------------------------------------*- C++ -*-===//
//
// Test pure BF16 MatMul on NPU using shuffle + BFP16 encode.
// Uses existing config2 xclbins for BitNet dimensions.
//
// Test matrix:
//   BitNet Q projection: M=512 K=2560 N=2560
//   Weights are BF16, dequantized from BitNet ternary
//
// Pipeline:
//   1. Generate BF16 test weights (K×N) and activations (M×K)
//   2. Shuffle + BFP16-encode both
//   3. Load xclbin, run 32-core GEMM on NPU
//   4. Decode + unshuffle output
//   5. Verify against CPU reference
//
//===----------------------------------------------------------------------===//

#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <random>
#include <vector>

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

#include "helper.h"
#include "npu_weight_prep.h"

#define XSTR(X) STR(X)
#define STR(X) #X

int main(int argc, const char* argv[]) {
  // Default: BitNet Q projection
  int M = 512;
  int K = 2560;
  int N = 2560;
  int L1_m = 128;
  int L1_k = 64;
  int L1_n = 128;
  int n_iterations = 5;
  int n_warmup = 2;
  bool do_verify = true;
  std::string xclbin_path = "/usr/local/lib/npu/xclbins/fp16_2560x2560.xclbin";
  std::string instr_path = "/usr/local/lib/npu/xclbins/fp16_2560x2560_instr.bin";

  // Parse args: test_bf16_npu <xclbin> <instr> <M> <K> <N>
  if (argc >= 3) {
    xclbin_path = argv[1];
    instr_path = argv[2];
  }
  if (argc >= 4) { M = std::stoi(argv[3]); }
  if (argc >= 5) { K = std::stoi(argv[4]); }
  if (argc >= 6) { N = std::stoi(argv[5]); }
  if (argc >= 7) { n_iterations = std::stoi(argv[6]); }

  std::cout << "Test: M=" << M << " K=" << K << " N=" << N << std::endl;
  std::cout << "XCLBIN: " << xclbin_path << std::endl;
  std::cout << "INSTR: " << instr_path << std::endl;

  // ------------------------------------------------------
  // Generate test data: all-ones for deterministic verification
  // ------------------------------------------------------
  std::vector<float> AVec(M * K);
  for (int i = 0; i < M * K; i++) {
    int row = i / K;
    AVec[i] = (row < M / 2) ? 1.0f : 2.0f;
  }

  std::vector<float> BVec(K * N);
  for (int i = 0; i < K * N; i++) {
    BVec[i] = 1.0f;
  }

  std::cout << "Data: A[0]=" << AVec[0] << " A[" << M/2 * K << "]=" << AVec[M/2 * K]
            << " B[0]=" << BVec[0] << std::endl;

  // ------------------------------------------------------
  // Shuffle + BFP-encode for NPU
  // ------------------------------------------------------
  std::cout << "Shuffling and encoding..." << std::endl;

  auto prep_start = std::chrono::high_resolution_clock::now();

  std::vector<uint8_t> ABfp = npu::prep_activation_for_npu(AVec.data(), M, K, L1_m, L1_k);
  std::vector<uint8_t> BBfp = npu::prep_weights_for_npu(BVec.data(), K, N, L1_k, L1_n);

  auto prep_stop = std::chrono::high_resolution_clock::now();
  float prep_time = std::chrono::duration_cast<std::chrono::milliseconds>(prep_stop - prep_start).count();

  size_t A_VOLUME = ABfp.size();
  size_t B_VOLUME = BBfp.size();
  size_t C_VOLUME = static_cast<size_t>(static_cast<double>(M * N) * 9.0 / 8.0);

  std::cout << "Prep time: " << prep_time << " ms" << std::endl;
  std::cout << "A volume: " << A_VOLUME << " bytes" << std::endl;
  std::cout << "B volume: " << B_VOLUME << " bytes" << std::endl;
  std::cout << "C volume: " << C_VOLUME << " bytes" << std::endl;

  // ------------------------------------------------------
  // Load instruction binary
  // ------------------------------------------------------
  std::vector<uint32_t> instr_v;
  {
    FILE* f = fopen(instr_path.c_str(), "rb");
    if (!f) {
      std::cerr << "FAIL: Cannot open instruction file: " << instr_path << std::endl;
      return 1;
    }
    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    fseek(f, 0, SEEK_SET);
    instr_v.resize(sz / sizeof(uint32_t));
    fread(instr_v.data(), sizeof(uint32_t), instr_v.size(), f);
    fclose(f);
  }
  std::cout << "Loaded " << instr_v.size() << " instructions" << std::endl;

  // ------------------------------------------------------
  // NPU device + xclbin setup
  // ------------------------------------------------------
  std::cout << "Opening NPU device..." << std::endl;
  auto device = xrt::device(0);
  std::cout << "Device: " << device.get_info<xrt::info::device::name>() << std::endl;

  std::cout << "Loading xclbin..." << std::endl;
  auto xclbin = xrt::xclbin(xclbin_path);
  auto xkernels = xclbin.get_kernels();
  // Find the kernel
  auto xkernel = *std::find_if(xkernels.begin(), xkernels.end(),
                               [](const xrt::xclbin::kernel& k) {
                                 auto name = k.get_name();
                                 return name.rfind("MLIR_AIE", 0) == 0;
                               });
  auto kernelName = xkernel.get_name();
  std::cout << "Kernel: " << kernelName << std::endl;

  device.register_xclbin(xclbin);
  xrt::hw_context context(device, xclbin.get_uuid());
  auto kernel = xrt::kernel(context, kernelName);

  // ------------------------------------------------------
  // Create BOs
  // ------------------------------------------------------
  std::cout << "Creating BOs..." << std::endl;
  auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int),
                           XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
  auto bo_a = xrt::bo(device, A_VOLUME, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
  auto bo_b = xrt::bo(device, B_VOLUME, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
  auto bo_c = xrt::bo(device, C_VOLUME, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));

  // ------------------------------------------------------
  // Write data to BOs
  // ------------------------------------------------------
  memcpy(bo_a.map<uint8_t*>(), ABfp.data(), A_VOLUME);
  memcpy(bo_b.map<uint8_t*>(), BBfp.data(), B_VOLUME);
  memcpy(bo_instr.map<void*>(), instr_v.data(), instr_v.size() * sizeof(int));

  bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_a.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_b.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  // BO C doesn't need sync TO device (we write into it from NPU)

  // ------------------------------------------------------
  // Run kernel
  // ------------------------------------------------------
  std::cout << "Running NPU kernel..." << std::endl;
  float macs = 2.0f * M * K * N;
  float total_time = 0;
  float min_time = 1e9;
  float max_time = 0;

  for (int iter = 0; iter < n_iterations + n_warmup; iter++) {
    auto start = std::chrono::high_resolution_clock::now();

    unsigned int opcode = 3;
    auto run = kernel(opcode, bo_instr, static_cast<int>(instr_v.size()), bo_a, bo_b, bo_c);
    ert_cmd_state r = run.wait();

    if (r != ERT_CMD_STATE_COMPLETED) {
      std::cerr << "Kernel failed with status: " << r << std::endl;
      return 1;
    }

    auto stop = std::chrono::high_resolution_clock::now();

    if (iter < n_warmup) {
      std::cout << "  Warmup " << iter << " done" << std::endl;
      continue;
    }

    float us = std::chrono::duration_cast<std::chrono::microseconds>(stop - start).count();
    total_time += us;
    min_time = std::min(min_time, us);
    max_time = std::max(max_time, us);

    std::cout << "  Iter " << iter << ": " << us << " us, "
              << macs / (1000000.0f * us) << " TFLOPS" << std::endl;
  }

  float avg_us = total_time / n_iterations;
  std::cout << std::endl;
  std::cout << "Avg: " << avg_us << " us, "
            << macs / (1000000.0f * avg_us) << " TFLOPS" << std::endl;
  std::cout << "Min: " << min_time << " us, "
            << macs / (1000000.0f * min_time) << " TFLOPS" << std::endl;
  std::cout << "Max: " << max_time << " us, "
            << macs / (1000000.0f * max_time) << " TFLOPS" << std::endl;

  // ------------------------------------------------------
  // Read back and decode output
  // ------------------------------------------------------
  bo_c.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
  uint8_t* bufC = bo_c.map<uint8_t*>();

  std::vector<float> CVec = npu::decode_npu_output(bufC, M, N, L1_m, L1_n);

  // ------------------------------------------------------
  // Verify against CPU reference
  // ------------------------------------------------------
  // Debug: print raw BFP-decoded values before unshuffle
  {
    int c_volume = static_cast<int>(static_cast<double>(M * N) * 9.0 / 8.0);
    std::vector<float> decoded_bfp = npu::bfp16ebs8ToFloat(c_volume, bufC);
    std::cout << "Raw BFP-decoded first 10: ";
    for (int i = 0; i < 10; i++) {
      std::cout << decoded_bfp[i] << " ";
    }
    std::cout << std::endl;
    // Check first 10x10 region
    std::cout << "Top-left 3x3 region (unshuffled): ";
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        std::cout << CVec[i * N + j] << " ";
      }
    }
    std::cout << std::endl;
    // Check row-major contiguous block
    std::cout << "Row 0 first 20: ";
    for (int j = 0; j < 20 && j < N; j++) {
      std::cout << CVec[j] << " ";
    }
    std::cout << std::endl;
  }

  if (do_verify) {
    std::cout << std::endl << "Verifying..." << std::endl;
    int errors = 0;
    int max_samples = 1000;

    // CPU reference: C[i][j] = sum_k A[i][k] * B[k][j]
    // With A[i][:] = 1.0 (top half) or 2.0 (bottom half), B[k][:] = 1.0
    // Expected: top half rows = K, bottom half rows = 2K
    float expected_top = static_cast<float>(K);
    float expected_bot = static_cast<float>(2 * K);

    int n_samples = std::min(max_samples, M * N);

    std::mt19937 rng(42);
    std::uniform_int_distribution<int> row_dist(0, M - 1);
    std::uniform_int_distribution<int> col_dist(0, N - 1);

    for (int s = 0; s < n_samples; s++) {
      int row = row_dist(rng);
      int col = col_dist(rng);
      float expected = (row < M / 2) ? expected_top : expected_bot;
      float actual = CVec[row * N + col];
      float abs_err = std::abs(expected - actual);
      float rel_err = abs_err / std::max(1.0f, expected);
      if (abs_err > 1.0f && rel_err > 0.01f) {
        if (errors < 20) {
          std::cout << "  MISMATCH [" << row << "," << col << "]: expected "
                    << expected << " got " << actual << " (abs=" << abs_err << ")" << std::endl;
        }
        errors++;
      }
    }

    if (errors == 0) {
      std::cout << "PASS! All " << n_samples << " samples match." << std::endl;
    } else {
      std::cout << "FAIL: " << errors << " mismatches out of " << n_samples << std::endl;
      // Print first few values
      std::cout << "First 10 output values:" << std::endl;
      for (int i = 0; i < 10 && i < M * N; i++) {
        std::cout << "  C[" << i << "] = " << CVec[i] << std::endl;
      }
    }
  }

  return 0;
}
