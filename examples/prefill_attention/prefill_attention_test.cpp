// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// C++ host runner for the prefill MHA example. The NPU kernel computes causal
// bf16 self-attention using 64x64 QK/PV blocks and online softmax state.

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <limits>
#include <numeric>
#include <random>
#include <string>
#include <vector>

#include "cxxopts.hpp"
#include "test_utils.h"
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

namespace {

uint16_t float_to_bf16(float value) {
  uint32_t bits = 0;
  std::memcpy(&bits, &value, sizeof(bits));
  const uint32_t lsb = (bits >> 16) & 1U;
  bits += 0x7FFFU + lsb;
  return static_cast<uint16_t>(bits >> 16);
}

float bf16_to_float(uint16_t value) {
  uint32_t bits = static_cast<uint32_t>(value) << 16;
  float out = 0.0f;
  std::memcpy(&out, &bits, sizeof(out));
  return out;
}

float patterned_value(uint64_t index, uint32_t salt) {
  uint64_t x = index + 0x9E3779B97F4A7C15ULL + static_cast<uint64_t>(salt);
  x ^= x >> 30;
  x *= 0xBF58476D1CE4E5B9ULL;
  x ^= x >> 27;
  x *= 0x94D049BB133111EBULL;
  x ^= x >> 31;
  const float unit = static_cast<float>(x & 0xFFFFU) / 65535.0f;
  return (unit - 0.5f) * 0.5f;
}

size_t q_index(int head, int token, int dim, int seq_pad, int head_dim) {
  return (static_cast<size_t>(head) * seq_pad + token) * head_dim + dim;
}

size_t kv_index(int head, int token, int dim, int seq_pad, int head_dim) {
  return (static_cast<size_t>(head) * seq_pad + token) * head_dim + dim;
}

void fill_qkv(std::vector<uint16_t> &q, std::vector<uint16_t> &k,
              std::vector<uint16_t> &v, int heads, int kv_heads, int seq_len,
              int seq_pad, int head_dim) {
  for (int h = 0; h < heads; ++h) {
    for (int t = 0; t < seq_pad; ++t) {
      for (int d = 0; d < head_dim; ++d) {
        const size_t idx = q_index(h, t, d, seq_pad, head_dim);
        q[idx] = t < seq_len ? float_to_bf16(patterned_value(idx, 17))
                             : float_to_bf16(0.0f);
      }
    }
  }
  for (int h = 0; h < kv_heads; ++h) {
    for (int t = 0; t < seq_pad; ++t) {
      for (int d = 0; d < head_dim; ++d) {
        const size_t idx = kv_index(h, t, d, seq_pad, head_dim);
        k[idx] = t < seq_len ? float_to_bf16(patterned_value(idx, 37))
                             : float_to_bf16(0.0f);
        v[idx] = t < seq_len ? float_to_bf16(patterned_value(idx, 71))
                             : float_to_bf16(0.0f);
      }
    }
  }
}

void reference_row(const std::vector<uint16_t> &q,
                   const std::vector<uint16_t> &k,
                   const std::vector<uint16_t> &v, std::vector<float> &out,
                   int heads, int kv_heads, int seq_pad, int head_dim,
                   int head, int token) {
  const int groups = heads / kv_heads;
  const int kv_head = head / groups;
  const float inv_scale_log2e =
      (1.0f / std::sqrt(static_cast<float>(head_dim))) * 1.4426950408889634f;
  std::vector<float> scores(token + 1);
  float max_score = -std::numeric_limits<float>::infinity();

  for (int kt = 0; kt <= token; ++kt) {
    float dot = 0.0f;
    for (int d = 0; d < head_dim; ++d) {
      dot += bf16_to_float(q[q_index(head, token, d, seq_pad, head_dim)]) *
             bf16_to_float(k[kv_index(kv_head, kt, d, seq_pad, head_dim)]);
    }
    scores[kt] = dot * inv_scale_log2e;
    max_score = std::max(max_score, scores[kt]);
  }

  std::vector<float> weights(token + 1);
  float denom = 0.0f;
  for (int kt = 0; kt <= token; ++kt) {
    weights[kt] = std::exp2(scores[kt] - max_score);
    denom += weights[kt];
  }

  std::fill(out.begin(), out.end(), 0.0f);
  for (int kt = 0; kt <= token; ++kt) {
    const float weight = weights[kt] / denom;
    for (int d = 0; d < head_dim; ++d) {
      out[d] += weight *
                bf16_to_float(v[kv_index(kv_head, kt, d, seq_pad, head_dim)]);
    }
  }
}

int verify_output(const std::vector<uint16_t> &q, const std::vector<uint16_t> &k,
                  const std::vector<uint16_t> &v, const uint16_t *got,
                  int heads, int kv_heads, int seq_len, int seq_pad,
                  int head_dim, int verbosity) {
  constexpr float abs_tol = 0.15f;
  constexpr float rel_tol = 0.04f;
  const int total_rows = heads * seq_len;
  const int sampled_rows = total_rows <= 2048 ? total_rows : 64;
  std::vector<int> rows(sampled_rows);
  if (sampled_rows == total_rows) {
    std::iota(rows.begin(), rows.end(), 0);
  } else {
    std::mt19937 rng(12345);
    std::uniform_int_distribution<int> dist(0, total_rows - 1);
    for (int &row : rows) {
      row = dist(rng);
    }
  }

  std::vector<float> expected_row(head_dim);
  int errors = 0;
  float max_abs = 0.0f;
  for (int row : rows) {
    const int head = row / seq_len;
    const int token = row % seq_len;
    reference_row(q, k, v, expected_row, heads, kv_heads, seq_pad, head_dim,
                  head, token);
    for (int d = 0; d < head_dim; ++d) {
      const size_t idx = q_index(head, token, d, seq_pad, head_dim);
      const float expected = expected_row[d];
      const float actual = bf16_to_float(got[idx]);
      const float abs_err = std::abs(expected - actual);
      const float limit = std::max(abs_tol, rel_tol * std::abs(expected));
      max_abs = std::max(max_abs, abs_err);
      if (!std::isfinite(actual) || abs_err > limit) {
        if (errors < 24) {
          std::cout << "mismatch head=" << head << " token=" << token
                    << " dim=" << d << " expected=" << expected
                    << " got=" << actual << " abs=" << abs_err
                    << " limit=" << limit << "\n";
        }
        ++errors;
      }
    }
  }

  if (verbosity >= 1) {
    std::cout << "Verify rows: " << sampled_rows << "/" << total_rows
              << ", max_abs=" << max_abs << "\n";
  }
  return errors;
}

int ceil_to_multiple(int value, int multiple) {
  return ((value + multiple - 1) / multiple) * multiple;
}

} // namespace

int main(int argc, const char *argv[]) {
  cxxopts::Options options("Prefill Attention Test");
  options.add_options()("xclbin,x", "input xclbin path",
                        cxxopts::value<std::string>())(
      "instr,i", "input instruction path", cxxopts::value<std::string>())(
      "kernel,k", "kernel name", cxxopts::value<std::string>()->default_value(
                                      "MLIR_AIE"))(
      "seq-len", "effective sequence length",
      cxxopts::value<int>()->default_value("512"))(
      "heads", "query heads", cxxopts::value<int>()->default_value("1"))(
      "kv-heads", "KV heads; 0 means equal to query heads",
      cxxopts::value<int>()->default_value("0"))(
      "head-dim", "head dimension", cxxopts::value<int>()->default_value("64"))(
      "pipelines", "AIE pipelines", cxxopts::value<int>()->default_value("8"))(
      "warmup", "warmup iterations", cxxopts::value<int>()->default_value("2"))(
      "iters", "timed iterations", cxxopts::value<int>()->default_value("5"))(
      "verify", "verify output", cxxopts::value<bool>()->default_value("true"))(
      "verbosity,v", "verbosity", cxxopts::value<int>()->default_value("1"))(
      "help,h", "show help");

  auto vm = options.parse(argc, argv);
  if (vm.count("help") || !vm.count("xclbin") || !vm.count("instr")) {
    std::cout << options.help() << "\n";
    return vm.count("help") ? 0 : 1;
  }

  const int seq_len = vm["seq-len"].as<int>();
  const int heads = vm["heads"].as<int>();
  int kv_heads = vm["kv-heads"].as<int>();
  const int head_dim = vm["head-dim"].as<int>();
  const int pipelines = vm["pipelines"].as<int>();
  const int warmup = vm["warmup"].as<int>();
  const int iters = vm["iters"].as<int>();
  const bool do_verify = vm["verify"].as<bool>();
  const int verbosity = vm["verbosity"].as<int>();

  if (kv_heads == 0) {
    kv_heads = heads;
  }
  if (head_dim != 64 || seq_len <= 0 || heads <= 0 || kv_heads <= 0 ||
      heads % kv_heads != 0 || pipelines <= 0) {
    std::cerr << "invalid shape: requires head_dim=64, positive seq/heads, "
                 "and heads divisible by kv_heads\n";
    return 1;
  }

  const int seq_pad = ceil_to_multiple(seq_len, 64 * pipelines);
  const size_t q_elems =
      static_cast<size_t>(heads) * seq_pad * head_dim;
  const size_t kv_elems =
      static_cast<size_t>(kv_heads) * seq_pad * head_dim;
  const size_t q_bytes = q_elems * sizeof(uint16_t);
  const size_t kv_bytes = kv_elems * sizeof(uint16_t);
  const double ops =
      2.0 * static_cast<double>(heads) * seq_len * (seq_len + 1) * head_dim;

  if (verbosity >= 1) {
    std::cout << "Prefill attention C++ host\n";
    std::cout << "  heads=" << heads << " kv_heads=" << kv_heads
              << " seq_len=" << seq_len << " seq_pad=" << seq_pad
              << " head_dim=" << head_dim << " pipelines=" << pipelines
              << "\n";
    std::cout << "  Q/O bytes=" << q_bytes << " K/V bytes=" << kv_bytes
              << "\n";
  }

  std::vector<uint32_t> instr_v =
      test_utils::load_instr_binary(vm["instr"].as<std::string>());
  if (verbosity >= 1) {
    std::cout << "Sequence instr count: " << instr_v.size() << "\n";
  }

  unsigned int device_index = 0;
  auto device = xrt::device(device_index);
  auto xclbin = xrt::xclbin(vm["xclbin"].as<std::string>());
  const std::string node = vm["kernel"].as<std::string>();
  auto xkernels = xclbin.get_kernels();
  auto xkernel = *std::find_if(
      xkernels.begin(), xkernels.end(), [&node](xrt::xclbin::kernel &k) {
        return k.get_name().rfind(node, 0) == 0;
      });
  auto kernel_name = xkernel.get_name();
  device.register_xclbin(xclbin);
  xrt::hw_context context(device, xclbin.get_uuid());
  auto kernel = xrt::kernel(context, kernel_name);

  auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(uint32_t),
                          XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
  auto bo_q = xrt::bo(device, q_bytes, XRT_BO_FLAGS_HOST_ONLY,
                      kernel.group_id(3));
  auto bo_k = xrt::bo(device, kv_bytes, XRT_BO_FLAGS_HOST_ONLY,
                      kernel.group_id(4));
  auto bo_v = xrt::bo(device, kv_bytes, XRT_BO_FLAGS_HOST_ONLY,
                      kernel.group_id(5));
  auto bo_o = xrt::bo(device, q_bytes, XRT_BO_FLAGS_HOST_ONLY,
                      kernel.group_id(6));

  std::vector<uint16_t> q(q_elems), k(kv_elems), v(kv_elems);
  fill_qkv(q, k, v, heads, kv_heads, seq_len, seq_pad, head_dim);

  std::memcpy(bo_instr.map<void *>(), instr_v.data(),
              instr_v.size() * sizeof(uint32_t));
  std::memcpy(bo_q.map<void *>(), q.data(), q_bytes);
  std::memcpy(bo_k.map<void *>(), k.data(), kv_bytes);
  std::memcpy(bo_v.map<void *>(), v.data(), kv_bytes);
  std::memset(bo_o.map<void *>(), 0, q_bytes);

  bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_q.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_k.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_v.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_o.sync(XCL_BO_SYNC_BO_TO_DEVICE);

  const int total_iters = warmup + iters;
  double total_us = 0.0;
  double min_us = std::numeric_limits<double>::infinity();
  double max_us = 0.0;

  for (int iter = 0; iter < total_iters; ++iter) {
    const auto start = std::chrono::high_resolution_clock::now();
    unsigned int opcode = 3;
    auto run = kernel(opcode, bo_instr, instr_v.size(), bo_q, bo_k, bo_v, bo_o);
    ert_cmd_state state = run.wait();
    const auto stop = std::chrono::high_resolution_clock::now();
    if (state != ERT_CMD_STATE_COMPLETED) {
      std::cerr << "Kernel did not complete. status=" << state << "\n";
      return 1;
    }
    const double elapsed_us =
        std::chrono::duration_cast<std::chrono::microseconds>(stop - start)
            .count();
    if (iter >= warmup) {
      total_us += elapsed_us;
      min_us = std::min(min_us, elapsed_us);
      max_us = std::max(max_us, elapsed_us);
    }
  }

  bo_o.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
  const auto *got = bo_o.map<uint16_t *>();

  int errors = 0;
  if (do_verify) {
    errors =
        verify_output(q, k, v, got, heads, kv_heads, seq_len, seq_pad,
                      head_dim, verbosity);
  } else if (verbosity >= 1) {
    std::cout << "WARNING: attention results not verified.\n";
  }

  const double avg_us = total_us / static_cast<double>(iters);
  std::cout << "\nAvg NPU prefill attention time: " << avg_us << "us.\n";
  std::cout << "Avg NPU gops: " << ops / (1000.0 * avg_us) << "\n";
  std::cout << "Avg NPU tops: " << ops / (1000000.0 * avg_us) << "\n";
  std::cout << "Min NPU prefill attention time: " << min_us << "us.\n";
  std::cout << "Max NPU gops: " << ops / (1000.0 * min_us) << "\n";
  std::cout << "Max NPU tops: " << ops / (1000000.0 * min_us) << "\n";
  std::cout << "Max NPU prefill attention time: " << max_us << "us.\n";

  std::cout << "out[0:8]:";
  for (int i = 0; i < std::min<int>(8, q_elems); ++i) {
    std::cout << " " << bf16_to_float(got[i]);
  }
  std::cout << "\n";

  if (errors == 0) {
    std::cout << "\nPASS!\n\n";
    return 0;
  }
  std::cout << "\nError count: " << errors << "\nFailed.\n\n";
  return 1;
}
