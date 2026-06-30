module {
  aie.device(npu2) {
    func.func private @zero_kernel(memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) attributes {link_with = "mm_192x128x96.o"}
    func.func private @matmul_vectorized_bfp16(memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) attributes {link_with = "mm_192x128x96.o"}
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %shim_noc_tile_4_0 = aie.tile(4, 0)
    %shim_noc_tile_5_0 = aie.tile(5, 0)
    %shim_noc_tile_6_0 = aie.tile(6, 0)
    %shim_noc_tile_7_0 = aie.tile(7, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %mem_tile_2_1 = aie.tile(2, 1)
    %mem_tile_3_1 = aie.tile(3, 1)
    %mem_tile_4_1 = aie.tile(4, 1)
    %mem_tile_5_1 = aie.tile(5, 1)
    %mem_tile_6_1 = aie.tile(6, 1)
    %mem_tile_7_1 = aie.tile(7, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_1_2 = aie.tile(1, 2)
    %tile_2_2 = aie.tile(2, 2)
    %tile_3_2 = aie.tile(3, 2)
    %tile_4_2 = aie.tile(4, 2)
    %tile_5_2 = aie.tile(5, 2)
    %tile_6_2 = aie.tile(6, 2)
    %tile_7_2 = aie.tile(7, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_1_3 = aie.tile(1, 3)
    %tile_2_3 = aie.tile(2, 3)
    %tile_3_3 = aie.tile(3, 3)
    %tile_4_3 = aie.tile(4, 3)
    %tile_5_3 = aie.tile(5, 3)
    %tile_6_3 = aie.tile(6, 3)
    %tile_7_3 = aie.tile(7, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_1_4 = aie.tile(1, 4)
    %tile_2_4 = aie.tile(2, 4)
    %tile_3_4 = aie.tile(3, 4)
    %tile_4_4 = aie.tile(4, 4)
    %tile_5_4 = aie.tile(5, 4)
    %tile_6_4 = aie.tile(6, 4)
    %tile_7_4 = aie.tile(7, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_5 = aie.tile(1, 5)
    %tile_2_5 = aie.tile(2, 5)
    %tile_3_5 = aie.tile(3, 5)
    %tile_4_5 = aie.tile(4, 5)
    %tile_5_5 = aie.tile(5, 5)
    %tile_6_5 = aie.tile(6, 5)
    %tile_7_5 = aie.tile(7, 5)
    %shim_noc_tile_1_0_0 = aie.tile(1, 0)
    %mem_tile_0_1_1 = aie.tile(0, 1)
    %tile_0_2_2 = aie.tile(0, 2)
    %shim_noc_tile_0_0_3 = aie.tile(0, 0)
    aie.objectfifo @A_L3L2_0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @A_L2L1_0(%mem_tile_0_1, {%tile_0_2, %tile_1_2, %tile_2_2, %tile_3_2, %tile_4_2, %tile_5_2, %tile_6_2, %tile_7_2}, 2 : i32) : !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@A_L3L2_0] -> [@A_L2L1_0]([] [])
    aie.objectfifo @A_L3L2_1(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @A_L2L1_1(%mem_tile_2_1, {%tile_0_3, %tile_1_3, %tile_2_3, %tile_3_3, %tile_4_3, %tile_5_3, %tile_6_3, %tile_7_3}, 2 : i32) : !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@A_L3L2_1] -> [@A_L2L1_1]([] [])
    aie.objectfifo @A_L3L2_2(%shim_noc_tile_4_0, {%mem_tile_4_1}, 2 : i32) : !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @A_L2L1_2(%mem_tile_4_1, {%tile_0_4, %tile_1_4, %tile_2_4, %tile_3_4, %tile_4_4, %tile_5_4, %tile_6_4, %tile_7_4}, 2 : i32) : !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@A_L3L2_2] -> [@A_L2L1_2]([] [])
    aie.objectfifo @A_L3L2_3(%shim_noc_tile_6_0, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @A_L2L1_3(%mem_tile_6_1, {%tile_0_5, %tile_1_5, %tile_2_5, %tile_3_5, %tile_4_5, %tile_5_5, %tile_6_5, %tile_7_5}, 2 : i32) : !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@A_L3L2_3] -> [@A_L2L1_3]([] [])
    aie.objectfifo @B_L3L2_0(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_0(%mem_tile_0_1, {%tile_0_2, %tile_0_3, %tile_0_4, %tile_0_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_0] -> [@B_L2L1_0]([] [])
    aie.objectfifo @B_L3L2_1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_1(%mem_tile_1_1, {%tile_1_2, %tile_1_3, %tile_1_4, %tile_1_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_1] -> [@B_L2L1_1]([] [])
    aie.objectfifo @B_L3L2_2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_2(%mem_tile_2_1, {%tile_2_2, %tile_2_3, %tile_2_4, %tile_2_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_2] -> [@B_L2L1_2]([] [])
    aie.objectfifo @B_L3L2_3(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_3(%mem_tile_3_1, {%tile_3_2, %tile_3_3, %tile_3_4, %tile_3_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_3] -> [@B_L2L1_3]([] [])
    aie.objectfifo @B_L3L2_4(%shim_noc_tile_4_0, {%mem_tile_4_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_4(%mem_tile_4_1, {%tile_4_2, %tile_4_3, %tile_4_4, %tile_4_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_4] -> [@B_L2L1_4]([] [])
    aie.objectfifo @B_L3L2_5(%shim_noc_tile_5_0, {%mem_tile_5_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_5(%mem_tile_5_1, {%tile_5_2, %tile_5_3, %tile_5_4, %tile_5_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_5] -> [@B_L2L1_5]([] [])
    aie.objectfifo @B_L3L2_6(%shim_noc_tile_6_0, {%mem_tile_6_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_6(%mem_tile_6_1, {%tile_6_2, %tile_6_3, %tile_6_4, %tile_6_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_6] -> [@B_L2L1_6]([] [])
    aie.objectfifo @B_L3L2_7(%shim_noc_tile_7_0, {%mem_tile_7_1}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @B_L2L1_7(%mem_tile_7_1, {%tile_7_2, %tile_7_3, %tile_7_4, %tile_7_5}, 2 : i32) : !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@B_L3L2_7] -> [@B_L2L1_7]([] [])
    aie.objectfifo @C_L1L2_0_0(%tile_0_2, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_0_1(%tile_0_3, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_0_2(%tile_0_4, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_0_3(%tile_0_5, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_0(%mem_tile_0_1, {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_0_0, @C_L1L2_0_1, @C_L1L2_0_2, @C_L1L2_0_3] -> [@C_L2L3_0]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_1_0(%tile_1_2, {%mem_tile_1_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_1_1(%tile_1_3, {%mem_tile_1_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_1_2(%tile_1_4, {%mem_tile_1_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_1_3(%tile_1_5, {%mem_tile_1_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_1(%mem_tile_1_1, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_1_0, @C_L1L2_1_1, @C_L1L2_1_2, @C_L1L2_1_3] -> [@C_L2L3_1]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_2_0(%tile_2_2, {%mem_tile_2_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_2_1(%tile_2_3, {%mem_tile_2_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_2_2(%tile_2_4, {%mem_tile_2_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_2_3(%tile_2_5, {%mem_tile_2_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_2(%mem_tile_2_1, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_2_0, @C_L1L2_2_1, @C_L1L2_2_2, @C_L1L2_2_3] -> [@C_L2L3_2]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_3_0(%tile_3_2, {%mem_tile_3_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_3_1(%tile_3_3, {%mem_tile_3_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_3_2(%tile_3_4, {%mem_tile_3_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_3_3(%tile_3_5, {%mem_tile_3_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_3(%mem_tile_3_1, {%shim_noc_tile_3_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_3_0, @C_L1L2_3_1, @C_L1L2_3_2, @C_L1L2_3_3] -> [@C_L2L3_3]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_4_0(%tile_4_2, {%mem_tile_4_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_4_1(%tile_4_3, {%mem_tile_4_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_4_2(%tile_4_4, {%mem_tile_4_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_4_3(%tile_4_5, {%mem_tile_4_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_4(%mem_tile_4_1, {%shim_noc_tile_4_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_4_0, @C_L1L2_4_1, @C_L1L2_4_2, @C_L1L2_4_3] -> [@C_L2L3_4]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_5_0(%tile_5_2, {%mem_tile_5_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_5_1(%tile_5_3, {%mem_tile_5_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_5_2(%tile_5_4, {%mem_tile_5_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_5_3(%tile_5_5, {%mem_tile_5_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_5(%mem_tile_5_1, {%shim_noc_tile_5_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_5_0, @C_L1L2_5_1, @C_L1L2_5_2, @C_L1L2_5_3] -> [@C_L2L3_5]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_6_0(%tile_6_2, {%mem_tile_6_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_6_1(%tile_6_3, {%mem_tile_6_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_6_2(%tile_6_4, {%mem_tile_6_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_6_3(%tile_6_5, {%mem_tile_6_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_6(%mem_tile_6_1, {%shim_noc_tile_6_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_6_0, @C_L1L2_6_1, @C_L1L2_6_2, @C_L1L2_6_3] -> [@C_L2L3_6]([0, 2304, 4608, 6912] [])
    aie.objectfifo @C_L1L2_7_0(%tile_7_2, {%mem_tile_7_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_7_1(%tile_7_3, {%mem_tile_7_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_7_2(%tile_7_4, {%mem_tile_7_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L1L2_7_3(%tile_7_5, {%mem_tile_7_1}, 1 : i32) : !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo @C_L2L3_7(%mem_tile_7_1, {%shim_noc_tile_7_0}, 2 : i32) : !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>> 
    aie.objectfifo.link [@C_L1L2_7_0, @C_L1L2_7_1, @C_L1L2_7_2, @C_L1L2_7_3] -> [@C_L2L3_7]([0, 2304, 4608, 6912] [])
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_0_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_1_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_2_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_3_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_4_2 = aie.core(%tile_4_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_4_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_4_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_4_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_4_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_5_2 = aie.core(%tile_5_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_5_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_5_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_5_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_5_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_6_2 = aie.core(%tile_6_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_6_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_6_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_6_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_6_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_7_2 = aie.core(%tile_7_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_7_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_0(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_7_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_0(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_7_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_0(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_7_0(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_0(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_0(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_0_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_1_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_2_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_3_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_4_3 = aie.core(%tile_4_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_4_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_4_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_4_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_4_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_5_3 = aie.core(%tile_5_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_5_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_5_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_5_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_5_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_6_3 = aie.core(%tile_6_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_6_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_6_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_6_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_6_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_7_3 = aie.core(%tile_7_3) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_7_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_1(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_7_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_1(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_7_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_1(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_7_1(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_1(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_1(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_0_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_1_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_2_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_3_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_4_4 = aie.core(%tile_4_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_4_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_4_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_4_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_4_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_5_4 = aie.core(%tile_5_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_5_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_5_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_5_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_5_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_6_4 = aie.core(%tile_6_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_6_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_6_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_6_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_6_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_7_4 = aie.core(%tile_7_4) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_7_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_2(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_7_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_2(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_7_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_2(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_7_2(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_2(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_2(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_0_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_0(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_0(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_0_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_1_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_1(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_1(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_1_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_2_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_2(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_2(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_2_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_3_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_3(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_3_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_4_5 = aie.core(%tile_4_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_4_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_4_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_4_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_4_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_4(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_4(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_4_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_5_5 = aie.core(%tile_5_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_5_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_5_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_5_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_5_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_5(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_5(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_5_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_6_5 = aie.core(%tile_6_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_6_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_6_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_6_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_6_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_6(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_6(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_6_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    %core_7_5 = aie.core(%tile_7_5) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %0 = aie.objectfifo.acquire @C_L1L2_7_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%1) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_4 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg1 = %c0_4 to %c20 step %c1_5 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %1) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_3(Produce, 1)
        %2 = aie.objectfifo.acquire @C_L1L2_7_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%3) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_6 = arith.constant 0 : index
        %c20_7 = arith.constant 20 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg1 = %c0_6 to %c20_7 step %c1_8 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %3) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_3(Produce, 1)
        %4 = aie.objectfifo.acquire @C_L1L2_7_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%5) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_9 = arith.constant 0 : index
        %c20_10 = arith.constant 20 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg1 = %c0_9 to %c20_10 step %c1_11 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %5) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_3(Produce, 1)
        %6 = aie.objectfifo.acquire @C_L1L2_7_3(Produce, 1) : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        func.call @zero_kernel(%7) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %c0_12 = arith.constant 0 : index
        %c20_13 = arith.constant 20 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg1 = %c0_12 to %c20_13 step %c1_14 {
          %8 = aie.objectfifo.acquire @B_L2L1_7(Consume, 1) : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>> -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %10 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%11, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %12 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%13, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %14 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%15, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %16 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%17, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %18 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%19, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          %20 = aie.objectfifo.acquire @A_L2L1_3(Consume, 1) : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>> -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          func.call @matmul_vectorized_bfp16(%21, %9, %7) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          aie.objectfifo.release @A_L2L1_3(Consume, 1)
          aie.objectfifo.release @B_L2L1_7(Consume, 1)
        }
        aie.objectfifo.release @C_L1L2_7_3(Produce, 1)
      }
      aie.end
    } {stack_size = 3328 : i32}
    aie.runtime_sequence(%arg0: memref<245760x!aiex.bfp<"v8bfp16ebs8">>, %arg1: memref<983040x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<294912x!aiex.bfp<"v8bfp16ebs8">>) {
      %0 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 0, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 61440, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 122880, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 184320, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 0, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 30720, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 61440, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 92160, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @B_L3L2_4 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 122880, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @B_L3L2_5 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 153600, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @B_L3L2_6 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 184320, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @B_L3L2_7 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 215040, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 0, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 9216, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 18432, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 27648, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @C_L2L3_4 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 36864, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @C_L2L3_5 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 46080, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%17)
      %18 = aiex.dma_configure_task_for @C_L2L3_6 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 55296, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @C_L2L3_7 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 64512, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 0, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 61440, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 122880, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 184320, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%23)
      %24 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 245760, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 276480, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 307200, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 337920, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @B_L3L2_4 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 368640, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @B_L3L2_5 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 399360, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%29)
      %30 = aiex.dma_configure_task_for @B_L3L2_6 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 430080, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @B_L3L2_7 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 460800, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 73728, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 82944, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 92160, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 101376, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%35)
      %36 = aiex.dma_configure_task_for @C_L2L3_4 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 110592, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @C_L2L3_5 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 119808, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @C_L2L3_6 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 129024, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @C_L2L3_7 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 138240, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%39)
      %40 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 0, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 61440, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%41)
      %42 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 122880, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 184320, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 491520, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 522240, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 552960, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 583680, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%47)
      %48 = aiex.dma_configure_task_for @B_L3L2_4 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 614400, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @B_L3L2_5 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 645120, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @B_L3L2_6 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 675840, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @B_L3L2_7 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 706560, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 147456, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 156672, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%53)
      %54 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 165888, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 175104, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @C_L2L3_4 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 184320, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @C_L2L3_5 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 193536, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @C_L2L3_6 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 202752, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @C_L2L3_7 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 211968, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%59)
      %60 = aiex.dma_configure_task_for @A_L3L2_0 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 0, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @A_L3L2_1 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 61440, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @A_L3L2_2 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 122880, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @A_L3L2_3 {
        aie.dma_bd(%arg0 : memref<245760x!aiex.bfp<"v8bfp16ebs8">>, 184320, 61440, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 61440, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @B_L3L2_0 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 737280, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @B_L3L2_1 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 768000, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%65)
      %66 = aiex.dma_configure_task_for @B_L3L2_2 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 798720, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @B_L3L2_3 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 829440, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @B_L3L2_4 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 860160, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @B_L3L2_5 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 890880, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @B_L3L2_6 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 921600, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @B_L3L2_7 {
        aie.dma_bd(%arg1 : memref<983040x!aiex.bfp<"v8bfp16ebs8">>, 952320, 30720, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 30720, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%71)
      %72 = aiex.dma_configure_task_for @C_L2L3_0 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 221184, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @C_L2L3_1 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 230400, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @C_L2L3_2 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 239616, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @C_L2L3_3 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 248832, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @C_L2L3_4 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 258048, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @C_L2L3_5 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 267264, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%77)
      %78 = aiex.dma_configure_task_for @C_L2L3_6 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 276480, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @C_L2L3_7 {
        aie.dma_bd(%arg2 : memref<294912x!aiex.bfp<"v8bfp16ebs8">>, 285696, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%79)
      aiex.dma_await_task(%12)
      aiex.dma_await_task(%13)
      aiex.dma_await_task(%14)
      aiex.dma_await_task(%15)
      aiex.dma_await_task(%16)
      aiex.dma_await_task(%17)
      aiex.dma_await_task(%18)
      aiex.dma_await_task(%19)
      aiex.dma_free_task(%0)
      aiex.dma_free_task(%1)
      aiex.dma_free_task(%2)
      aiex.dma_free_task(%3)
      aiex.dma_free_task(%4)
      aiex.dma_free_task(%5)
      aiex.dma_free_task(%6)
      aiex.dma_free_task(%7)
      aiex.dma_free_task(%8)
      aiex.dma_free_task(%9)
      aiex.dma_free_task(%10)
      aiex.dma_free_task(%11)
      aiex.dma_await_task(%32)
      aiex.dma_await_task(%33)
      aiex.dma_await_task(%34)
      aiex.dma_await_task(%35)
      aiex.dma_await_task(%36)
      aiex.dma_await_task(%37)
      aiex.dma_await_task(%38)
      aiex.dma_await_task(%39)
      aiex.dma_free_task(%20)
      aiex.dma_free_task(%21)
      aiex.dma_free_task(%22)
      aiex.dma_free_task(%23)
      aiex.dma_free_task(%24)
      aiex.dma_free_task(%25)
      aiex.dma_free_task(%26)
      aiex.dma_free_task(%27)
      aiex.dma_free_task(%28)
      aiex.dma_free_task(%29)
      aiex.dma_free_task(%30)
      aiex.dma_free_task(%31)
      aiex.dma_await_task(%52)
      aiex.dma_await_task(%53)
      aiex.dma_await_task(%54)
      aiex.dma_await_task(%55)
      aiex.dma_await_task(%56)
      aiex.dma_await_task(%57)
      aiex.dma_await_task(%58)
      aiex.dma_await_task(%59)
      aiex.dma_free_task(%40)
      aiex.dma_free_task(%41)
      aiex.dma_free_task(%42)
      aiex.dma_free_task(%43)
      aiex.dma_free_task(%44)
      aiex.dma_free_task(%45)
      aiex.dma_free_task(%46)
      aiex.dma_free_task(%47)
      aiex.dma_free_task(%48)
      aiex.dma_free_task(%49)
      aiex.dma_free_task(%50)
      aiex.dma_free_task(%51)
      aiex.dma_await_task(%72)
      aiex.dma_await_task(%73)
      aiex.dma_await_task(%74)
      aiex.dma_await_task(%75)
      aiex.dma_await_task(%76)
      aiex.dma_await_task(%77)
      aiex.dma_await_task(%78)
      aiex.dma_await_task(%79)
      aiex.dma_free_task(%60)
      aiex.dma_free_task(%61)
      aiex.dma_free_task(%62)
      aiex.dma_free_task(%63)
      aiex.dma_free_task(%64)
      aiex.dma_free_task(%65)
      aiex.dma_free_task(%66)
      aiex.dma_free_task(%67)
      aiex.dma_free_task(%68)
      aiex.dma_free_task(%69)
      aiex.dma_free_task(%70)
      aiex.dma_free_task(%71)
    }
  }
}
