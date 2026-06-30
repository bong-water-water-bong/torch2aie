//===- bf16_to_bfp16ebs8.h ---------------------------------------*- C++ -*-===//
//
// Convert BF16 weights to v8bfp16ebs8 block float format.
// v8bfp16ebs8: 8 BF16 values share 1 exponent.
// Each value → 5-bit mantissa × 2^(exponent - 5)
//
// Memory layout (for 128-element block float vector):
//   - 16 exponent bytes (1 per 8-value block)
//   - 80 mantissa bytes (8 × 5-bit values per block, stored as 5 bytes in [exponent_byte][mantissa_bytes] format)
//   - 31 padding bytes
// Total: 128 bytes per 128-element block vector
//
// For an (N, K) matrix, each row of N values is stored as consecutive
// block vectors.
//
//===----------------------------------------------------------------------===//

#ifndef BF16_TO_BFP16EBS8_H
#define BF16_TO_BFP16EBS8_H

#include <cstdint>
#include <cmath>
#include <cstring>
#include <vector>

// Convert a buffer of BF16 values to v8bfp16ebs8 block-float format.
// 
// bf16_data: input BF16 values (size = num_elements)
// bfp_data:  output block-float data (size = num_elements * 8 / 5 ≈ 1.6x expansion)
// num_elements: total number of BF16 values
//
// The v8bfp16ebs8 format uses 5-bit mantissas (signed, range [-16, 15])
// with a shared 8-bit exponent per 8-element block.
//
// For each block of 8 values:
//   1. Find max absolute value
//   2. Compute exponent = ceil(log2(max_abs))
//   3. For each value: mantissa = round(value / 2^(exp-5)), clamp to [-16, 15]
//   4. Pack 8 × 5-bit mantissas + 1 byte exponent = 6 bytes per 8 values
//
// Output layout: for each 8-value block, store [exponent][mant5_0][mant5_1]...[mant5_7]
// where each mant5 is a 5-bit signed value packed into bytes.
//
// Packing: 5 bytes for 8 × 5-bit values:
//   byte 0: [man4:man3:man2:man1:man0] (bits 4-0 of each)
//   byte 1: [man9:man8:man7:man6:man5] 
//   byte 2: [man14:man13:man12:man11:man10]
//   byte 3: [man19:man18:man17:man16:man15]
//   byte 4: [man24:man23:man22:man21:man20]  etc.
//
// Actually, the AIE block_vector stores one element per "lane" and each lane
// can hold 8 bits in bfp16ebs8 format. The hardware native layout has each
// 128-element block vector as:
//   bytes 0-15:  16 × 8-bit exponents (one per 8-element sub-block)
//   bytes 16-95: 80 × 5-bit mantissas packed by lane
//   bytes 96-127: padding/alignment
//
// For a 64-element bfp16ebs8 vector:
//   8 exponent bytes + 40 mantissa bytes + 16 padding = 64 bytes
//
// For AIE2P, the native block_vector<bfp16ebs8, N> layout:
//   N/8 exponent bytes + N * 5/8 mantissa bytes + padding to N*8 bits total
//
void bf16_to_bfp16ebs8(const uint16_t* bf16_data, uint8_t* bfp_data, int num_elements, int block_size = 8) {
    const int num_blocks = (num_elements + block_size - 1) / block_size;
    
    for (int blk = 0; blk < num_blocks; blk++) {
        int blk_start = blk * block_size;
        int blk_end = std::min(blk_start + block_size, num_elements);
        int blk_len = blk_end - blk_start;
        
        // Step 1: decode BF16 to float and find max abs
        float values[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        float max_abs = 0.0f;
        
        for (int i = 0; i < blk_len; i++) {
            uint32_t bits = static_cast<uint32_t>(bf16_data[blk_start + i]) << 16;
            memcpy(&values[i], &bits, sizeof(float));
            float abs_v = std::fabs(values[i]);
            if (abs_v > max_abs) max_abs = abs_v;
        }
        
        // Step 2: compute shared exponent
        // We want: value = mantissa * 2^(exp - 5) where mantissa ∈ [-16, 15]
        // exp = ceil(log2(max_abs)) + 5 - 4  (since max mantissa is 16 = 2^4, we need exp to capture the top bit)
        // Actually: value = mantissa * 2^(exp - 5) where mantissa = round(value / 2^(exp-5))
        // We want value to be exactly representable, so:
        // exp = floor(log2(max_abs)) + 1  (or 0 if max_abs == 0)
        int exp = 0;
        if (max_abs > 0) {
            exp = static_cast<int>(std::floor(std::log2(max_abs))) + 1;
        }
        // Clamp exponent to [0, 255]
        exp = std::max(0, std::min(255, exp));
        
        // Step 3: compute mantissas
        int8_t mantissas[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        float scale = std::ldexp(1.0f, exp - 5);  // 2^(exp-5) - the LSB weight
        
        for (int i = 0; i < blk_len; i++) {
            float rounded = std::round(values[i] / scale);
            // Clamp to [-16, 15]
            mantissas[i] = static_cast<int8_t>(std::max(-16.0f, std::min(15.0f, rounded)));
        }
        
        // Step 4: pack exponent + mantissas
        // The AIE bfp16ebs8 format: for each group of 8 values,
        // byte 0: exponent
        // bytes 1-5: 8 × 5-bit mantissas packed
        // bytes 6-7: padding (zero)
        //
        // Packing scheme: 8 × 5-bit values into 5 bytes (little-endian bit order)
        // mant[0]: bits 0-4
        // mant[1]: bits 5-9
        // ...
        // mant[7]: bits 35-39
        
        uint8_t* out = bfp_data + blk * 8;  // 8 bytes per block
        
        out[0] = static_cast<uint8_t>(exp);
        
        // Pack mantissas as 5-bit values (sign-extend from [-16,15] to 0..31)
        uint64_t packed = 0;
        for (int i = 0; i < 8; i++) {
            // Convert [-16, 15] to unsigned 5-bit [0, 31]
            int m = mantissas[i] & 0x1F;
            packed |= static_cast<uint64_t>(m) << (i * 5);
        }
        
        out[1] = static_cast<uint8_t>(packed & 0xFF);
        out[2] = static_cast<uint8_t>((packed >> 8) & 0xFF);
        out[3] = static_cast<uint8_t>((packed >> 16) & 0xFF);
        out[4] = static_cast<uint8_t>((packed >> 24) & 0xFF);
        out[5] = static_cast<uint8_t>((packed >> 32) & 0xFF);
        out[6] = 0;
        out[7] = 0;
    }
}

// The inverse: decode bfp16ebs8 back to BF16 for verification
void bfp16ebs8_to_bf16(const uint8_t* bfp_data, uint16_t* bf16_data, int num_elements) {
    constexpr int block_size = 8;
    const int num_blocks = (num_elements + block_size - 1) / block_size;
    
    for (int blk = 0; blk < num_blocks; blk++) {
        int blk_start = blk * block_size;
        
        const uint8_t* in = bfp_data + blk * 8;
        int exp = static_cast<int>(in[0]);
        
        // Unpack 8 × 5-bit values
        uint64_t packed = 0;
        packed |= static_cast<uint64_t>(in[1]);
        packed |= static_cast<uint64_t>(in[2]) << 8;
        packed |= static_cast<uint64_t>(in[3]) << 16;
        packed |= static_cast<uint64_t>(in[4]) << 24;
        packed |= static_cast<uint64_t>(in[5]) << 32;
        
        float scale = std::ldexp(1.0f, exp - 5);
        
        for (int i = 0; i < block_size; i++) {
            // Extract 5-bit signed value
            int raw = static_cast<int>((packed >> (i * 5)) & 0x1F);
            // Sign-extend from 5 bits
            if (raw >= 16) raw -= 32;
            
            float val = static_cast<float>(raw) * scale;
            
            // Convert float to BF16
            uint32_t f32_bits;
            memcpy(&f32_bits, &val, sizeof(float));
            bf16_data[blk_start + i] = static_cast<uint16_t>(f32_bits >> 16);
        }
    }
}

#endif // BF16_TO_BFP16EBS8_H
