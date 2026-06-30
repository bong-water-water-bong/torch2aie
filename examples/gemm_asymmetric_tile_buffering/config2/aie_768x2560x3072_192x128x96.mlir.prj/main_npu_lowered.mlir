module {
  aie.device(npu2) {
    func.func private @zero_kernel(memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) attributes {link_with = "mm_192x128x96.o"}
    func.func private @matmul_vectorized_bfp16(memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) attributes {link_with = "mm_192x128x96.o"}
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_4_0 = aie.tile(4, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_5_0 = aie.tile(5, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_6_0 = aie.tile(6, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_7_0 = aie.tile(7, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_4_1 = aie.tile(4, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_5_1 = aie.tile(5, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_6_1 = aie.tile(6, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_7_1 = aie.tile(7, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_4_2 = aie.tile(4, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_5_2 = aie.tile(5, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_6_2 = aie.tile(6, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_7_2 = aie.tile(7, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_4_3 = aie.tile(4, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_5_3 = aie.tile(5, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_6_3 = aie.tile(6, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_7_3 = aie.tile(7, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_4_4 = aie.tile(4, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_5_4 = aie.tile(5, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_6_4 = aie.tile(6, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_7_4 = aie.tile(7, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_4_5 = aie.tile(4, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_5_5 = aie.tile(5, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_6_5 = aie.tile(6, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_7_5 = aie.tile(7, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %C_L2L3_7_cons_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 2) {init = 0 : i32, sym_name = "C_L2L3_7_cons_prod_lock_0"}
    %C_L2L3_7_cons_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 3) {init = 0 : i32, sym_name = "C_L2L3_7_cons_cons_lock_0"}
    %C_L2L3_7_buff_0 = aie.buffer(%mem_tile_7_1) {address = 0 : i32, sym_name = "C_L2L3_7_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_7_buff_1 = aie.buffer(%mem_tile_7_1) {address = 82944 : i32, sym_name = "C_L2L3_7_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_7_prod_lock_0 = aie.lock(%mem_tile_7_1, 2) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_0"}
    %C_L2L3_7_cons_lock_0 = aie.lock(%mem_tile_7_1, 3) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_0"}
    %C_L2L3_7_prod_lock_1 = aie.lock(%mem_tile_7_1, 4) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_1"}
    %C_L2L3_7_cons_lock_1 = aie.lock(%mem_tile_7_1, 5) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_1"}
    %C_L2L3_7_prod_lock_2 = aie.lock(%mem_tile_7_1, 6) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_2"}
    %C_L2L3_7_cons_lock_2 = aie.lock(%mem_tile_7_1, 7) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_2"}
    %C_L2L3_7_prod_lock_3 = aie.lock(%mem_tile_7_1, 8) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_3"}
    %C_L2L3_7_cons_lock_3 = aie.lock(%mem_tile_7_1, 9) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_3"}
    %C_L1L2_7_3_buff_0 = aie.buffer(%tile_7_5) {address = 3328 : i32, sym_name = "C_L1L2_7_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_3_prod_lock_0 = aie.lock(%tile_7_5, 4) {init = 1 : i32, sym_name = "C_L1L2_7_3_prod_lock_0"}
    %C_L1L2_7_3_cons_lock_0 = aie.lock(%tile_7_5, 5) {init = 0 : i32, sym_name = "C_L1L2_7_3_cons_lock_0"}
    %C_L1L2_7_2_buff_0 = aie.buffer(%tile_7_4) {address = 3328 : i32, sym_name = "C_L1L2_7_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_2_prod_lock_0 = aie.lock(%tile_7_4, 4) {init = 1 : i32, sym_name = "C_L1L2_7_2_prod_lock_0"}
    %C_L1L2_7_2_cons_lock_0 = aie.lock(%tile_7_4, 5) {init = 0 : i32, sym_name = "C_L1L2_7_2_cons_lock_0"}
    %C_L1L2_7_1_buff_0 = aie.buffer(%tile_7_3) {address = 3328 : i32, sym_name = "C_L1L2_7_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_1_prod_lock_0 = aie.lock(%tile_7_3, 4) {init = 1 : i32, sym_name = "C_L1L2_7_1_prod_lock_0"}
    %C_L1L2_7_1_cons_lock_0 = aie.lock(%tile_7_3, 5) {init = 0 : i32, sym_name = "C_L1L2_7_1_cons_lock_0"}
    %C_L1L2_7_0_buff_0 = aie.buffer(%tile_7_2) {address = 3328 : i32, sym_name = "C_L1L2_7_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_0_prod_lock_0 = aie.lock(%tile_7_2, 4) {init = 1 : i32, sym_name = "C_L1L2_7_0_prod_lock_0"}
    %C_L1L2_7_0_cons_lock_0 = aie.lock(%tile_7_2, 5) {init = 0 : i32, sym_name = "C_L1L2_7_0_cons_lock_0"}
    %C_L2L3_6_cons_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 4) {init = 0 : i32, sym_name = "C_L2L3_6_cons_prod_lock_0"}
    %C_L2L3_6_cons_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 5) {init = 0 : i32, sym_name = "C_L2L3_6_cons_cons_lock_0"}
    %C_L2L3_6_buff_0 = aie.buffer(%mem_tile_6_1) {address = 0 : i32, sym_name = "C_L2L3_6_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_6_buff_1 = aie.buffer(%mem_tile_6_1) {address = 82944 : i32, sym_name = "C_L2L3_6_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_6_prod_lock_0 = aie.lock(%mem_tile_6_1, 4) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_0"}
    %C_L2L3_6_cons_lock_0 = aie.lock(%mem_tile_6_1, 5) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_0"}
    %C_L2L3_6_prod_lock_1 = aie.lock(%mem_tile_6_1, 6) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_1"}
    %C_L2L3_6_cons_lock_1 = aie.lock(%mem_tile_6_1, 7) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_1"}
    %C_L2L3_6_prod_lock_2 = aie.lock(%mem_tile_6_1, 8) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_2"}
    %C_L2L3_6_cons_lock_2 = aie.lock(%mem_tile_6_1, 9) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_2"}
    %C_L2L3_6_prod_lock_3 = aie.lock(%mem_tile_6_1, 10) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_3"}
    %C_L2L3_6_cons_lock_3 = aie.lock(%mem_tile_6_1, 11) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_3"}
    %C_L1L2_6_3_buff_0 = aie.buffer(%tile_6_5) {address = 3328 : i32, sym_name = "C_L1L2_6_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_3_prod_lock_0 = aie.lock(%tile_6_5, 4) {init = 1 : i32, sym_name = "C_L1L2_6_3_prod_lock_0"}
    %C_L1L2_6_3_cons_lock_0 = aie.lock(%tile_6_5, 5) {init = 0 : i32, sym_name = "C_L1L2_6_3_cons_lock_0"}
    %C_L1L2_6_2_buff_0 = aie.buffer(%tile_6_4) {address = 3328 : i32, sym_name = "C_L1L2_6_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_2_prod_lock_0 = aie.lock(%tile_6_4, 4) {init = 1 : i32, sym_name = "C_L1L2_6_2_prod_lock_0"}
    %C_L1L2_6_2_cons_lock_0 = aie.lock(%tile_6_4, 5) {init = 0 : i32, sym_name = "C_L1L2_6_2_cons_lock_0"}
    %C_L1L2_6_1_buff_0 = aie.buffer(%tile_6_3) {address = 3328 : i32, sym_name = "C_L1L2_6_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_1_prod_lock_0 = aie.lock(%tile_6_3, 4) {init = 1 : i32, sym_name = "C_L1L2_6_1_prod_lock_0"}
    %C_L1L2_6_1_cons_lock_0 = aie.lock(%tile_6_3, 5) {init = 0 : i32, sym_name = "C_L1L2_6_1_cons_lock_0"}
    %C_L1L2_6_0_buff_0 = aie.buffer(%tile_6_2) {address = 3328 : i32, sym_name = "C_L1L2_6_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_0_prod_lock_0 = aie.lock(%tile_6_2, 4) {init = 1 : i32, sym_name = "C_L1L2_6_0_prod_lock_0"}
    %C_L1L2_6_0_cons_lock_0 = aie.lock(%tile_6_2, 5) {init = 0 : i32, sym_name = "C_L1L2_6_0_cons_lock_0"}
    %C_L2L3_5_cons_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 2) {init = 0 : i32, sym_name = "C_L2L3_5_cons_prod_lock_0"}
    %C_L2L3_5_cons_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_cons_lock_0"}
    %C_L2L3_5_buff_0 = aie.buffer(%mem_tile_5_1) {address = 0 : i32, sym_name = "C_L2L3_5_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_5_buff_1 = aie.buffer(%mem_tile_5_1) {address = 82944 : i32, sym_name = "C_L2L3_5_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_5_prod_lock_0 = aie.lock(%mem_tile_5_1, 2) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_0"}
    %C_L2L3_5_cons_lock_0 = aie.lock(%mem_tile_5_1, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_0"}
    %C_L2L3_5_prod_lock_1 = aie.lock(%mem_tile_5_1, 4) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_1"}
    %C_L2L3_5_cons_lock_1 = aie.lock(%mem_tile_5_1, 5) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_1"}
    %C_L2L3_5_prod_lock_2 = aie.lock(%mem_tile_5_1, 6) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_2"}
    %C_L2L3_5_cons_lock_2 = aie.lock(%mem_tile_5_1, 7) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_2"}
    %C_L2L3_5_prod_lock_3 = aie.lock(%mem_tile_5_1, 8) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_3"}
    %C_L2L3_5_cons_lock_3 = aie.lock(%mem_tile_5_1, 9) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_3"}
    %C_L1L2_5_3_buff_0 = aie.buffer(%tile_5_5) {address = 3328 : i32, sym_name = "C_L1L2_5_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_3_prod_lock_0 = aie.lock(%tile_5_5, 4) {init = 1 : i32, sym_name = "C_L1L2_5_3_prod_lock_0"}
    %C_L1L2_5_3_cons_lock_0 = aie.lock(%tile_5_5, 5) {init = 0 : i32, sym_name = "C_L1L2_5_3_cons_lock_0"}
    %C_L1L2_5_2_buff_0 = aie.buffer(%tile_5_4) {address = 3328 : i32, sym_name = "C_L1L2_5_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_2_prod_lock_0 = aie.lock(%tile_5_4, 4) {init = 1 : i32, sym_name = "C_L1L2_5_2_prod_lock_0"}
    %C_L1L2_5_2_cons_lock_0 = aie.lock(%tile_5_4, 5) {init = 0 : i32, sym_name = "C_L1L2_5_2_cons_lock_0"}
    %C_L1L2_5_1_buff_0 = aie.buffer(%tile_5_3) {address = 3328 : i32, sym_name = "C_L1L2_5_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_1_prod_lock_0 = aie.lock(%tile_5_3, 4) {init = 1 : i32, sym_name = "C_L1L2_5_1_prod_lock_0"}
    %C_L1L2_5_1_cons_lock_0 = aie.lock(%tile_5_3, 5) {init = 0 : i32, sym_name = "C_L1L2_5_1_cons_lock_0"}
    %C_L1L2_5_0_buff_0 = aie.buffer(%tile_5_2) {address = 3328 : i32, sym_name = "C_L1L2_5_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_0_prod_lock_0 = aie.lock(%tile_5_2, 4) {init = 1 : i32, sym_name = "C_L1L2_5_0_prod_lock_0"}
    %C_L1L2_5_0_cons_lock_0 = aie.lock(%tile_5_2, 5) {init = 0 : i32, sym_name = "C_L1L2_5_0_cons_lock_0"}
    %C_L2L3_4_cons_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 4) {init = 0 : i32, sym_name = "C_L2L3_4_cons_prod_lock_0"}
    %C_L2L3_4_cons_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 5) {init = 0 : i32, sym_name = "C_L2L3_4_cons_cons_lock_0"}
    %C_L2L3_4_buff_0 = aie.buffer(%mem_tile_4_1) {address = 0 : i32, sym_name = "C_L2L3_4_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_4_buff_1 = aie.buffer(%mem_tile_4_1) {address = 82944 : i32, sym_name = "C_L2L3_4_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_4_prod_lock_0 = aie.lock(%mem_tile_4_1, 4) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_0"}
    %C_L2L3_4_cons_lock_0 = aie.lock(%mem_tile_4_1, 5) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_0"}
    %C_L2L3_4_prod_lock_1 = aie.lock(%mem_tile_4_1, 6) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_1"}
    %C_L2L3_4_cons_lock_1 = aie.lock(%mem_tile_4_1, 7) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_1"}
    %C_L2L3_4_prod_lock_2 = aie.lock(%mem_tile_4_1, 8) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_2"}
    %C_L2L3_4_cons_lock_2 = aie.lock(%mem_tile_4_1, 9) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_2"}
    %C_L2L3_4_prod_lock_3 = aie.lock(%mem_tile_4_1, 10) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_3"}
    %C_L2L3_4_cons_lock_3 = aie.lock(%mem_tile_4_1, 11) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_3"}
    %C_L1L2_4_3_buff_0 = aie.buffer(%tile_4_5) {address = 3328 : i32, sym_name = "C_L1L2_4_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_3_prod_lock_0 = aie.lock(%tile_4_5, 4) {init = 1 : i32, sym_name = "C_L1L2_4_3_prod_lock_0"}
    %C_L1L2_4_3_cons_lock_0 = aie.lock(%tile_4_5, 5) {init = 0 : i32, sym_name = "C_L1L2_4_3_cons_lock_0"}
    %C_L1L2_4_2_buff_0 = aie.buffer(%tile_4_4) {address = 3328 : i32, sym_name = "C_L1L2_4_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_2_prod_lock_0 = aie.lock(%tile_4_4, 4) {init = 1 : i32, sym_name = "C_L1L2_4_2_prod_lock_0"}
    %C_L1L2_4_2_cons_lock_0 = aie.lock(%tile_4_4, 5) {init = 0 : i32, sym_name = "C_L1L2_4_2_cons_lock_0"}
    %C_L1L2_4_1_buff_0 = aie.buffer(%tile_4_3) {address = 3328 : i32, sym_name = "C_L1L2_4_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_1_prod_lock_0 = aie.lock(%tile_4_3, 4) {init = 1 : i32, sym_name = "C_L1L2_4_1_prod_lock_0"}
    %C_L1L2_4_1_cons_lock_0 = aie.lock(%tile_4_3, 5) {init = 0 : i32, sym_name = "C_L1L2_4_1_cons_lock_0"}
    %C_L1L2_4_0_buff_0 = aie.buffer(%tile_4_2) {address = 3328 : i32, sym_name = "C_L1L2_4_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_0_prod_lock_0 = aie.lock(%tile_4_2, 4) {init = 1 : i32, sym_name = "C_L1L2_4_0_prod_lock_0"}
    %C_L1L2_4_0_cons_lock_0 = aie.lock(%tile_4_2, 5) {init = 0 : i32, sym_name = "C_L1L2_4_0_cons_lock_0"}
    %C_L2L3_3_cons_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 2) {init = 0 : i32, sym_name = "C_L2L3_3_cons_prod_lock_0"}
    %C_L2L3_3_cons_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_cons_lock_0"}
    %C_L2L3_3_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, sym_name = "C_L2L3_3_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_3_buff_1 = aie.buffer(%mem_tile_3_1) {address = 82944 : i32, sym_name = "C_L2L3_3_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_3_prod_lock_0 = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_0"}
    %C_L2L3_3_cons_lock_0 = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_0"}
    %C_L2L3_3_prod_lock_1 = aie.lock(%mem_tile_3_1, 4) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_1"}
    %C_L2L3_3_cons_lock_1 = aie.lock(%mem_tile_3_1, 5) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_1"}
    %C_L2L3_3_prod_lock_2 = aie.lock(%mem_tile_3_1, 6) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_2"}
    %C_L2L3_3_cons_lock_2 = aie.lock(%mem_tile_3_1, 7) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_2"}
    %C_L2L3_3_prod_lock_3 = aie.lock(%mem_tile_3_1, 8) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_3"}
    %C_L2L3_3_cons_lock_3 = aie.lock(%mem_tile_3_1, 9) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_3"}
    %C_L1L2_3_3_buff_0 = aie.buffer(%tile_3_5) {address = 3328 : i32, sym_name = "C_L1L2_3_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_3_prod_lock_0 = aie.lock(%tile_3_5, 4) {init = 1 : i32, sym_name = "C_L1L2_3_3_prod_lock_0"}
    %C_L1L2_3_3_cons_lock_0 = aie.lock(%tile_3_5, 5) {init = 0 : i32, sym_name = "C_L1L2_3_3_cons_lock_0"}
    %C_L1L2_3_2_buff_0 = aie.buffer(%tile_3_4) {address = 3328 : i32, sym_name = "C_L1L2_3_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_2_prod_lock_0 = aie.lock(%tile_3_4, 4) {init = 1 : i32, sym_name = "C_L1L2_3_2_prod_lock_0"}
    %C_L1L2_3_2_cons_lock_0 = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "C_L1L2_3_2_cons_lock_0"}
    %C_L1L2_3_1_buff_0 = aie.buffer(%tile_3_3) {address = 3328 : i32, sym_name = "C_L1L2_3_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_1_prod_lock_0 = aie.lock(%tile_3_3, 4) {init = 1 : i32, sym_name = "C_L1L2_3_1_prod_lock_0"}
    %C_L1L2_3_1_cons_lock_0 = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "C_L1L2_3_1_cons_lock_0"}
    %C_L1L2_3_0_buff_0 = aie.buffer(%tile_3_2) {address = 3328 : i32, sym_name = "C_L1L2_3_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_0_prod_lock_0 = aie.lock(%tile_3_2, 4) {init = 1 : i32, sym_name = "C_L1L2_3_0_prod_lock_0"}
    %C_L1L2_3_0_cons_lock_0 = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "C_L1L2_3_0_cons_lock_0"}
    %C_L2L3_2_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 4) {init = 0 : i32, sym_name = "C_L2L3_2_cons_prod_lock_0"}
    %C_L2L3_2_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_cons_lock_0"}
    %C_L2L3_2_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "C_L2L3_2_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_2_buff_1 = aie.buffer(%mem_tile_2_1) {address = 82944 : i32, sym_name = "C_L2L3_2_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_2_prod_lock_0 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_0"}
    %C_L2L3_2_cons_lock_0 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_0"}
    %C_L2L3_2_prod_lock_1 = aie.lock(%mem_tile_2_1, 6) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_1"}
    %C_L2L3_2_cons_lock_1 = aie.lock(%mem_tile_2_1, 7) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_1"}
    %C_L2L3_2_prod_lock_2 = aie.lock(%mem_tile_2_1, 8) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_2"}
    %C_L2L3_2_cons_lock_2 = aie.lock(%mem_tile_2_1, 9) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_2"}
    %C_L2L3_2_prod_lock_3 = aie.lock(%mem_tile_2_1, 10) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_3"}
    %C_L2L3_2_cons_lock_3 = aie.lock(%mem_tile_2_1, 11) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_3"}
    %C_L1L2_2_3_buff_0 = aie.buffer(%tile_2_5) {address = 3328 : i32, sym_name = "C_L1L2_2_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_3_prod_lock_0 = aie.lock(%tile_2_5, 4) {init = 1 : i32, sym_name = "C_L1L2_2_3_prod_lock_0"}
    %C_L1L2_2_3_cons_lock_0 = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "C_L1L2_2_3_cons_lock_0"}
    %C_L1L2_2_2_buff_0 = aie.buffer(%tile_2_4) {address = 3328 : i32, sym_name = "C_L1L2_2_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_2_prod_lock_0 = aie.lock(%tile_2_4, 4) {init = 1 : i32, sym_name = "C_L1L2_2_2_prod_lock_0"}
    %C_L1L2_2_2_cons_lock_0 = aie.lock(%tile_2_4, 5) {init = 0 : i32, sym_name = "C_L1L2_2_2_cons_lock_0"}
    %C_L1L2_2_1_buff_0 = aie.buffer(%tile_2_3) {address = 3328 : i32, sym_name = "C_L1L2_2_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_1_prod_lock_0 = aie.lock(%tile_2_3, 4) {init = 1 : i32, sym_name = "C_L1L2_2_1_prod_lock_0"}
    %C_L1L2_2_1_cons_lock_0 = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "C_L1L2_2_1_cons_lock_0"}
    %C_L1L2_2_0_buff_0 = aie.buffer(%tile_2_2) {address = 3328 : i32, sym_name = "C_L1L2_2_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_0_prod_lock_0 = aie.lock(%tile_2_2, 4) {init = 1 : i32, sym_name = "C_L1L2_2_0_prod_lock_0"}
    %C_L1L2_2_0_cons_lock_0 = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "C_L1L2_2_0_cons_lock_0"}
    %C_L2L3_1_cons_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 2) {init = 0 : i32, sym_name = "C_L2L3_1_cons_prod_lock_0"}
    %C_L2L3_1_cons_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_cons_lock_0"}
    %C_L2L3_1_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "C_L2L3_1_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_1_buff_1 = aie.buffer(%mem_tile_1_1) {address = 82944 : i32, sym_name = "C_L2L3_1_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_1_prod_lock_0 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_0"}
    %C_L2L3_1_cons_lock_0 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_0"}
    %C_L2L3_1_prod_lock_1 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_1"}
    %C_L2L3_1_cons_lock_1 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_1"}
    %C_L2L3_1_prod_lock_2 = aie.lock(%mem_tile_1_1, 6) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_2"}
    %C_L2L3_1_cons_lock_2 = aie.lock(%mem_tile_1_1, 7) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_2"}
    %C_L2L3_1_prod_lock_3 = aie.lock(%mem_tile_1_1, 8) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_3"}
    %C_L2L3_1_cons_lock_3 = aie.lock(%mem_tile_1_1, 9) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_3"}
    %C_L1L2_1_3_buff_0 = aie.buffer(%tile_1_5) {address = 3328 : i32, sym_name = "C_L1L2_1_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_3_prod_lock_0 = aie.lock(%tile_1_5, 4) {init = 1 : i32, sym_name = "C_L1L2_1_3_prod_lock_0"}
    %C_L1L2_1_3_cons_lock_0 = aie.lock(%tile_1_5, 5) {init = 0 : i32, sym_name = "C_L1L2_1_3_cons_lock_0"}
    %C_L1L2_1_2_buff_0 = aie.buffer(%tile_1_4) {address = 3328 : i32, sym_name = "C_L1L2_1_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_2_prod_lock_0 = aie.lock(%tile_1_4, 4) {init = 1 : i32, sym_name = "C_L1L2_1_2_prod_lock_0"}
    %C_L1L2_1_2_cons_lock_0 = aie.lock(%tile_1_4, 5) {init = 0 : i32, sym_name = "C_L1L2_1_2_cons_lock_0"}
    %C_L1L2_1_1_buff_0 = aie.buffer(%tile_1_3) {address = 3328 : i32, sym_name = "C_L1L2_1_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_1_prod_lock_0 = aie.lock(%tile_1_3, 4) {init = 1 : i32, sym_name = "C_L1L2_1_1_prod_lock_0"}
    %C_L1L2_1_1_cons_lock_0 = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "C_L1L2_1_1_cons_lock_0"}
    %C_L1L2_1_0_buff_0 = aie.buffer(%tile_1_2) {address = 3328 : i32, sym_name = "C_L1L2_1_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_0_prod_lock_0 = aie.lock(%tile_1_2, 4) {init = 1 : i32, sym_name = "C_L1L2_1_0_prod_lock_0"}
    %C_L1L2_1_0_cons_lock_0 = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "C_L1L2_1_0_cons_lock_0"}
    %C_L2L3_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 4) {init = 0 : i32, sym_name = "C_L2L3_0_cons_prod_lock_0"}
    %C_L2L3_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_cons_lock_0"}
    %C_L2L3_0_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "C_L2L3_0_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_0_buff_1 = aie.buffer(%mem_tile_0_1) {address = 82944 : i32, sym_name = "C_L2L3_0_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_0_prod_lock_0 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_0"}
    %C_L2L3_0_cons_lock_0 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_0"}
    %C_L2L3_0_prod_lock_1 = aie.lock(%mem_tile_0_1, 6) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_1"}
    %C_L2L3_0_cons_lock_1 = aie.lock(%mem_tile_0_1, 7) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_1"}
    %C_L2L3_0_prod_lock_2 = aie.lock(%mem_tile_0_1, 8) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_2"}
    %C_L2L3_0_cons_lock_2 = aie.lock(%mem_tile_0_1, 9) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_2"}
    %C_L2L3_0_prod_lock_3 = aie.lock(%mem_tile_0_1, 10) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_3"}
    %C_L2L3_0_cons_lock_3 = aie.lock(%mem_tile_0_1, 11) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_3"}
    %C_L1L2_0_3_buff_0 = aie.buffer(%tile_0_5) {address = 3328 : i32, sym_name = "C_L1L2_0_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_3_prod_lock_0 = aie.lock(%tile_0_5, 4) {init = 1 : i32, sym_name = "C_L1L2_0_3_prod_lock_0"}
    %C_L1L2_0_3_cons_lock_0 = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "C_L1L2_0_3_cons_lock_0"}
    %C_L1L2_0_2_buff_0 = aie.buffer(%tile_0_4) {address = 3328 : i32, sym_name = "C_L1L2_0_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_2_prod_lock_0 = aie.lock(%tile_0_4, 4) {init = 1 : i32, sym_name = "C_L1L2_0_2_prod_lock_0"}
    %C_L1L2_0_2_cons_lock_0 = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "C_L1L2_0_2_cons_lock_0"}
    %C_L1L2_0_1_buff_0 = aie.buffer(%tile_0_3) {address = 3328 : i32, sym_name = "C_L1L2_0_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_1_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "C_L1L2_0_1_prod_lock_0"}
    %C_L1L2_0_1_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "C_L1L2_0_1_cons_lock_0"}
    %C_L1L2_0_0_buff_0 = aie.buffer(%tile_0_2) {address = 3328 : i32, sym_name = "C_L1L2_0_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_0_prod_lock_0 = aie.lock(%tile_0_2, 4) {init = 1 : i32, sym_name = "C_L1L2_0_0_prod_lock_0"}
    %C_L1L2_0_0_cons_lock_0 = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "C_L1L2_0_0_cons_lock_0"}
    %B_L2L1_7_0_cons_buff_0 = aie.buffer(%tile_7_2) {address = 24064 : i32, sym_name = "B_L2L1_7_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_buff_1 = aie.buffer(%tile_7_2) {address = 37888 : i32, sym_name = "B_L2L1_7_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_prod_lock_0 = aie.lock(%tile_7_2, 2) {init = 2 : i32, sym_name = "B_L2L1_7_0_cons_prod_lock_0"}
    %B_L2L1_7_0_cons_cons_lock_0 = aie.lock(%tile_7_2, 3) {init = 0 : i32, sym_name = "B_L2L1_7_0_cons_cons_lock_0"}
    %B_L2L1_7_1_cons_buff_0 = aie.buffer(%tile_7_3) {address = 24064 : i32, sym_name = "B_L2L1_7_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_buff_1 = aie.buffer(%tile_7_3) {address = 37888 : i32, sym_name = "B_L2L1_7_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_prod_lock_0 = aie.lock(%tile_7_3, 2) {init = 2 : i32, sym_name = "B_L2L1_7_1_cons_prod_lock_0"}
    %B_L2L1_7_1_cons_cons_lock_0 = aie.lock(%tile_7_3, 3) {init = 0 : i32, sym_name = "B_L2L1_7_1_cons_cons_lock_0"}
    %B_L2L1_7_2_cons_buff_0 = aie.buffer(%tile_7_4) {address = 24064 : i32, sym_name = "B_L2L1_7_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_2_cons_buff_1 = aie.buffer(%tile_7_4) {address = 37888 : i32, sym_name = "B_L2L1_7_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_2_cons_prod_lock_0 = aie.lock(%tile_7_4, 2) {init = 2 : i32, sym_name = "B_L2L1_7_2_cons_prod_lock_0"}
    %B_L2L1_7_2_cons_cons_lock_0 = aie.lock(%tile_7_4, 3) {init = 0 : i32, sym_name = "B_L2L1_7_2_cons_cons_lock_0"}
    %B_L2L1_7_3_cons_buff_0 = aie.buffer(%tile_7_5) {address = 24064 : i32, sym_name = "B_L2L1_7_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_3_cons_buff_1 = aie.buffer(%tile_7_5) {address = 37888 : i32, sym_name = "B_L2L1_7_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_3_cons_prod_lock_0 = aie.lock(%tile_7_5, 2) {init = 2 : i32, sym_name = "B_L2L1_7_3_cons_prod_lock_0"}
    %B_L2L1_7_3_cons_cons_lock_0 = aie.lock(%tile_7_5, 3) {init = 0 : i32, sym_name = "B_L2L1_7_3_cons_cons_lock_0"}
    %B_L3L2_7_cons_buff_0 = aie.buffer(%mem_tile_7_1) {address = 165888 : i32, sym_name = "B_L3L2_7_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_buff_1 = aie.buffer(%mem_tile_7_1) {address = 179712 : i32, sym_name = "B_L3L2_7_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_prod_lock_0 = aie.lock(%mem_tile_7_1, 0) {init = 2 : i32, sym_name = "B_L3L2_7_cons_prod_lock_0"}
    %B_L3L2_7_cons_cons_lock_0 = aie.lock(%mem_tile_7_1, 1) {init = 0 : i32, sym_name = "B_L3L2_7_cons_cons_lock_0"}
    %B_L3L2_7_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 0) {init = 0 : i32, sym_name = "B_L3L2_7_prod_lock_0"}
    %B_L3L2_7_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 1) {init = 0 : i32, sym_name = "B_L3L2_7_cons_lock_0"}
    %B_L2L1_6_0_cons_buff_0 = aie.buffer(%tile_6_2) {address = 24064 : i32, sym_name = "B_L2L1_6_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_buff_1 = aie.buffer(%tile_6_2) {address = 37888 : i32, sym_name = "B_L2L1_6_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_prod_lock_0 = aie.lock(%tile_6_2, 2) {init = 2 : i32, sym_name = "B_L2L1_6_0_cons_prod_lock_0"}
    %B_L2L1_6_0_cons_cons_lock_0 = aie.lock(%tile_6_2, 3) {init = 0 : i32, sym_name = "B_L2L1_6_0_cons_cons_lock_0"}
    %B_L2L1_6_1_cons_buff_0 = aie.buffer(%tile_6_3) {address = 24064 : i32, sym_name = "B_L2L1_6_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_buff_1 = aie.buffer(%tile_6_3) {address = 37888 : i32, sym_name = "B_L2L1_6_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_prod_lock_0 = aie.lock(%tile_6_3, 2) {init = 2 : i32, sym_name = "B_L2L1_6_1_cons_prod_lock_0"}
    %B_L2L1_6_1_cons_cons_lock_0 = aie.lock(%tile_6_3, 3) {init = 0 : i32, sym_name = "B_L2L1_6_1_cons_cons_lock_0"}
    %B_L2L1_6_2_cons_buff_0 = aie.buffer(%tile_6_4) {address = 24064 : i32, sym_name = "B_L2L1_6_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_2_cons_buff_1 = aie.buffer(%tile_6_4) {address = 37888 : i32, sym_name = "B_L2L1_6_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_2_cons_prod_lock_0 = aie.lock(%tile_6_4, 2) {init = 2 : i32, sym_name = "B_L2L1_6_2_cons_prod_lock_0"}
    %B_L2L1_6_2_cons_cons_lock_0 = aie.lock(%tile_6_4, 3) {init = 0 : i32, sym_name = "B_L2L1_6_2_cons_cons_lock_0"}
    %B_L2L1_6_3_cons_buff_0 = aie.buffer(%tile_6_5) {address = 24064 : i32, sym_name = "B_L2L1_6_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_3_cons_buff_1 = aie.buffer(%tile_6_5) {address = 37888 : i32, sym_name = "B_L2L1_6_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_3_cons_prod_lock_0 = aie.lock(%tile_6_5, 2) {init = 2 : i32, sym_name = "B_L2L1_6_3_cons_prod_lock_0"}
    %B_L2L1_6_3_cons_cons_lock_0 = aie.lock(%tile_6_5, 3) {init = 0 : i32, sym_name = "B_L2L1_6_3_cons_cons_lock_0"}
    %B_L3L2_6_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 221184 : i32, sym_name = "B_L3L2_6_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 235008 : i32, sym_name = "B_L3L2_6_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 2) {init = 2 : i32, sym_name = "B_L3L2_6_cons_prod_lock_0"}
    %B_L3L2_6_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 3) {init = 0 : i32, sym_name = "B_L3L2_6_cons_cons_lock_0"}
    %B_L3L2_6_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 2) {init = 0 : i32, sym_name = "B_L3L2_6_prod_lock_0"}
    %B_L3L2_6_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 3) {init = 0 : i32, sym_name = "B_L3L2_6_cons_lock_0"}
    %B_L2L1_5_0_cons_buff_0 = aie.buffer(%tile_5_2) {address = 24064 : i32, sym_name = "B_L2L1_5_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_buff_1 = aie.buffer(%tile_5_2) {address = 37888 : i32, sym_name = "B_L2L1_5_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_prod_lock_0 = aie.lock(%tile_5_2, 2) {init = 2 : i32, sym_name = "B_L2L1_5_0_cons_prod_lock_0"}
    %B_L2L1_5_0_cons_cons_lock_0 = aie.lock(%tile_5_2, 3) {init = 0 : i32, sym_name = "B_L2L1_5_0_cons_cons_lock_0"}
    %B_L2L1_5_1_cons_buff_0 = aie.buffer(%tile_5_3) {address = 24064 : i32, sym_name = "B_L2L1_5_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_buff_1 = aie.buffer(%tile_5_3) {address = 37888 : i32, sym_name = "B_L2L1_5_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_prod_lock_0 = aie.lock(%tile_5_3, 2) {init = 2 : i32, sym_name = "B_L2L1_5_1_cons_prod_lock_0"}
    %B_L2L1_5_1_cons_cons_lock_0 = aie.lock(%tile_5_3, 3) {init = 0 : i32, sym_name = "B_L2L1_5_1_cons_cons_lock_0"}
    %B_L2L1_5_2_cons_buff_0 = aie.buffer(%tile_5_4) {address = 24064 : i32, sym_name = "B_L2L1_5_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_2_cons_buff_1 = aie.buffer(%tile_5_4) {address = 37888 : i32, sym_name = "B_L2L1_5_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_2_cons_prod_lock_0 = aie.lock(%tile_5_4, 2) {init = 2 : i32, sym_name = "B_L2L1_5_2_cons_prod_lock_0"}
    %B_L2L1_5_2_cons_cons_lock_0 = aie.lock(%tile_5_4, 3) {init = 0 : i32, sym_name = "B_L2L1_5_2_cons_cons_lock_0"}
    %B_L2L1_5_3_cons_buff_0 = aie.buffer(%tile_5_5) {address = 24064 : i32, sym_name = "B_L2L1_5_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_3_cons_buff_1 = aie.buffer(%tile_5_5) {address = 37888 : i32, sym_name = "B_L2L1_5_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_3_cons_prod_lock_0 = aie.lock(%tile_5_5, 2) {init = 2 : i32, sym_name = "B_L2L1_5_3_cons_prod_lock_0"}
    %B_L2L1_5_3_cons_cons_lock_0 = aie.lock(%tile_5_5, 3) {init = 0 : i32, sym_name = "B_L2L1_5_3_cons_cons_lock_0"}
    %B_L3L2_5_cons_buff_0 = aie.buffer(%mem_tile_5_1) {address = 165888 : i32, sym_name = "B_L3L2_5_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_buff_1 = aie.buffer(%mem_tile_5_1) {address = 179712 : i32, sym_name = "B_L3L2_5_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_prod_lock_0 = aie.lock(%mem_tile_5_1, 0) {init = 2 : i32, sym_name = "B_L3L2_5_cons_prod_lock_0"}
    %B_L3L2_5_cons_cons_lock_0 = aie.lock(%mem_tile_5_1, 1) {init = 0 : i32, sym_name = "B_L3L2_5_cons_cons_lock_0"}
    %B_L3L2_5_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 0) {init = 0 : i32, sym_name = "B_L3L2_5_prod_lock_0"}
    %B_L3L2_5_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 1) {init = 0 : i32, sym_name = "B_L3L2_5_cons_lock_0"}
    %B_L2L1_4_0_cons_buff_0 = aie.buffer(%tile_4_2) {address = 24064 : i32, sym_name = "B_L2L1_4_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_buff_1 = aie.buffer(%tile_4_2) {address = 37888 : i32, sym_name = "B_L2L1_4_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_prod_lock_0 = aie.lock(%tile_4_2, 2) {init = 2 : i32, sym_name = "B_L2L1_4_0_cons_prod_lock_0"}
    %B_L2L1_4_0_cons_cons_lock_0 = aie.lock(%tile_4_2, 3) {init = 0 : i32, sym_name = "B_L2L1_4_0_cons_cons_lock_0"}
    %B_L2L1_4_1_cons_buff_0 = aie.buffer(%tile_4_3) {address = 24064 : i32, sym_name = "B_L2L1_4_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_buff_1 = aie.buffer(%tile_4_3) {address = 37888 : i32, sym_name = "B_L2L1_4_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_prod_lock_0 = aie.lock(%tile_4_3, 2) {init = 2 : i32, sym_name = "B_L2L1_4_1_cons_prod_lock_0"}
    %B_L2L1_4_1_cons_cons_lock_0 = aie.lock(%tile_4_3, 3) {init = 0 : i32, sym_name = "B_L2L1_4_1_cons_cons_lock_0"}
    %B_L2L1_4_2_cons_buff_0 = aie.buffer(%tile_4_4) {address = 24064 : i32, sym_name = "B_L2L1_4_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_2_cons_buff_1 = aie.buffer(%tile_4_4) {address = 37888 : i32, sym_name = "B_L2L1_4_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_2_cons_prod_lock_0 = aie.lock(%tile_4_4, 2) {init = 2 : i32, sym_name = "B_L2L1_4_2_cons_prod_lock_0"}
    %B_L2L1_4_2_cons_cons_lock_0 = aie.lock(%tile_4_4, 3) {init = 0 : i32, sym_name = "B_L2L1_4_2_cons_cons_lock_0"}
    %B_L2L1_4_3_cons_buff_0 = aie.buffer(%tile_4_5) {address = 24064 : i32, sym_name = "B_L2L1_4_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_3_cons_buff_1 = aie.buffer(%tile_4_5) {address = 37888 : i32, sym_name = "B_L2L1_4_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_3_cons_prod_lock_0 = aie.lock(%tile_4_5, 2) {init = 2 : i32, sym_name = "B_L2L1_4_3_cons_prod_lock_0"}
    %B_L2L1_4_3_cons_cons_lock_0 = aie.lock(%tile_4_5, 3) {init = 0 : i32, sym_name = "B_L2L1_4_3_cons_cons_lock_0"}
    %B_L3L2_4_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 221184 : i32, sym_name = "B_L3L2_4_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 235008 : i32, sym_name = "B_L3L2_4_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 2) {init = 2 : i32, sym_name = "B_L3L2_4_cons_prod_lock_0"}
    %B_L3L2_4_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 3) {init = 0 : i32, sym_name = "B_L3L2_4_cons_cons_lock_0"}
    %B_L3L2_4_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 2) {init = 0 : i32, sym_name = "B_L3L2_4_prod_lock_0"}
    %B_L3L2_4_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 3) {init = 0 : i32, sym_name = "B_L3L2_4_cons_lock_0"}
    %B_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_3_2) {address = 24064 : i32, sym_name = "B_L2L1_3_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_3_2) {address = 37888 : i32, sym_name = "B_L2L1_3_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_prod_lock_0 = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "B_L2L1_3_0_cons_prod_lock_0"}
    %B_L2L1_3_0_cons_cons_lock_0 = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "B_L2L1_3_0_cons_cons_lock_0"}
    %B_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_3_3) {address = 24064 : i32, sym_name = "B_L2L1_3_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_3_3) {address = 37888 : i32, sym_name = "B_L2L1_3_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_prod_lock_0 = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "B_L2L1_3_1_cons_prod_lock_0"}
    %B_L2L1_3_1_cons_cons_lock_0 = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "B_L2L1_3_1_cons_cons_lock_0"}
    %B_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_3_4) {address = 24064 : i32, sym_name = "B_L2L1_3_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_3_4) {address = 37888 : i32, sym_name = "B_L2L1_3_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_2_cons_prod_lock_0 = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "B_L2L1_3_2_cons_prod_lock_0"}
    %B_L2L1_3_2_cons_cons_lock_0 = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "B_L2L1_3_2_cons_cons_lock_0"}
    %B_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 24064 : i32, sym_name = "B_L2L1_3_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 37888 : i32, sym_name = "B_L2L1_3_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_3_cons_prod_lock_0 = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "B_L2L1_3_3_cons_prod_lock_0"}
    %B_L2L1_3_3_cons_cons_lock_0 = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "B_L2L1_3_3_cons_cons_lock_0"}
    %B_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 165888 : i32, sym_name = "B_L3L2_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 179712 : i32, sym_name = "B_L3L2_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "B_L3L2_3_cons_prod_lock_0"}
    %B_L3L2_3_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "B_L3L2_3_cons_cons_lock_0"}
    %B_L3L2_3_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 0 : i32, sym_name = "B_L3L2_3_prod_lock_0"}
    %B_L3L2_3_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "B_L3L2_3_cons_lock_0"}
    %B_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 24064 : i32, sym_name = "B_L2L1_2_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 37888 : i32, sym_name = "B_L2L1_2_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "B_L2L1_2_0_cons_prod_lock_0"}
    %B_L2L1_2_0_cons_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "B_L2L1_2_0_cons_cons_lock_0"}
    %B_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 24064 : i32, sym_name = "B_L2L1_2_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 37888 : i32, sym_name = "B_L2L1_2_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_prod_lock_0 = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "B_L2L1_2_1_cons_prod_lock_0"}
    %B_L2L1_2_1_cons_cons_lock_0 = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "B_L2L1_2_1_cons_cons_lock_0"}
    %B_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 24064 : i32, sym_name = "B_L2L1_2_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 37888 : i32, sym_name = "B_L2L1_2_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_2_cons_prod_lock_0 = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "B_L2L1_2_2_cons_prod_lock_0"}
    %B_L2L1_2_2_cons_cons_lock_0 = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "B_L2L1_2_2_cons_cons_lock_0"}
    %B_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_2_5) {address = 24064 : i32, sym_name = "B_L2L1_2_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_2_5) {address = 37888 : i32, sym_name = "B_L2L1_2_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_3_cons_prod_lock_0 = aie.lock(%tile_2_5, 2) {init = 2 : i32, sym_name = "B_L2L1_2_3_cons_prod_lock_0"}
    %B_L2L1_2_3_cons_cons_lock_0 = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "B_L2L1_2_3_cons_cons_lock_0"}
    %B_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 221184 : i32, sym_name = "B_L3L2_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 235008 : i32, sym_name = "B_L3L2_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "B_L3L2_2_cons_prod_lock_0"}
    %B_L3L2_2_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_cons_lock_0"}
    %B_L3L2_2_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 2) {init = 0 : i32, sym_name = "B_L3L2_2_prod_lock_0"}
    %B_L3L2_2_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_lock_0"}
    %B_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 24064 : i32, sym_name = "B_L2L1_1_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 37888 : i32, sym_name = "B_L2L1_1_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "B_L2L1_1_0_cons_prod_lock_0"}
    %B_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "B_L2L1_1_0_cons_cons_lock_0"}
    %B_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 24064 : i32, sym_name = "B_L2L1_1_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 37888 : i32, sym_name = "B_L2L1_1_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "B_L2L1_1_1_cons_prod_lock_0"}
    %B_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "B_L2L1_1_1_cons_cons_lock_0"}
    %B_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_1_4) {address = 24064 : i32, sym_name = "B_L2L1_1_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_1_4) {address = 37888 : i32, sym_name = "B_L2L1_1_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_2_cons_prod_lock_0 = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "B_L2L1_1_2_cons_prod_lock_0"}
    %B_L2L1_1_2_cons_cons_lock_0 = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "B_L2L1_1_2_cons_cons_lock_0"}
    %B_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_1_5) {address = 24064 : i32, sym_name = "B_L2L1_1_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_1_5) {address = 37888 : i32, sym_name = "B_L2L1_1_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_3_cons_prod_lock_0 = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "B_L2L1_1_3_cons_prod_lock_0"}
    %B_L2L1_1_3_cons_cons_lock_0 = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "B_L2L1_1_3_cons_cons_lock_0"}
    %B_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 165888 : i32, sym_name = "B_L3L2_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 179712 : i32, sym_name = "B_L3L2_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "B_L3L2_1_cons_prod_lock_0"}
    %B_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "B_L3L2_1_cons_cons_lock_0"}
    %B_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 0 : i32, sym_name = "B_L3L2_1_prod_lock_0"}
    %B_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "B_L3L2_1_cons_lock_0"}
    %B_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 24064 : i32, sym_name = "B_L2L1_0_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 37888 : i32, sym_name = "B_L2L1_0_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "B_L2L1_0_0_cons_prod_lock_0"}
    %B_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "B_L2L1_0_0_cons_cons_lock_0"}
    %B_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 24064 : i32, sym_name = "B_L2L1_0_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 37888 : i32, sym_name = "B_L2L1_0_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "B_L2L1_0_1_cons_prod_lock_0"}
    %B_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "B_L2L1_0_1_cons_cons_lock_0"}
    %B_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_0_4) {address = 24064 : i32, sym_name = "B_L2L1_0_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_0_4) {address = 37888 : i32, sym_name = "B_L2L1_0_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_2_cons_prod_lock_0 = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "B_L2L1_0_2_cons_prod_lock_0"}
    %B_L2L1_0_2_cons_cons_lock_0 = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "B_L2L1_0_2_cons_cons_lock_0"}
    %B_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_0_5) {address = 24064 : i32, sym_name = "B_L2L1_0_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_0_5) {address = 37888 : i32, sym_name = "B_L2L1_0_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_3_cons_prod_lock_0 = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "B_L2L1_0_3_cons_prod_lock_0"}
    %B_L2L1_0_3_cons_cons_lock_0 = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "B_L2L1_0_3_cons_cons_lock_0"}
    %B_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 221184 : i32, sym_name = "B_L3L2_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 235008 : i32, sym_name = "B_L3L2_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "B_L3L2_0_cons_prod_lock_0"}
    %B_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_cons_lock_0"}
    %B_L3L2_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 0 : i32, sym_name = "B_L3L2_0_prod_lock_0"}
    %B_L3L2_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_lock_0"}
    %A_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 51712 : i32, sym_name = "A_L2L1_3_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 56320 : i32, sym_name = "A_L2L1_3_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_0_cons_prod_lock_0 = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_0_cons_prod_lock_0"}
    %A_L2L1_3_0_cons_cons_lock_0 = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_0_cons_cons_lock_0"}
    %A_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_1_5) {address = 51712 : i32, sym_name = "A_L2L1_3_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_1_5) {address = 56320 : i32, sym_name = "A_L2L1_3_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_1_cons_prod_lock_0 = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_1_cons_prod_lock_0"}
    %A_L2L1_3_1_cons_cons_lock_0 = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_1_cons_cons_lock_0"}
    %A_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_2_5) {address = 51712 : i32, sym_name = "A_L2L1_3_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_2_5) {address = 56320 : i32, sym_name = "A_L2L1_3_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_2_cons_prod_lock_0 = aie.lock(%tile_2_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_2_cons_prod_lock_0"}
    %A_L2L1_3_2_cons_cons_lock_0 = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_2_cons_cons_lock_0"}
    %A_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 51712 : i32, sym_name = "A_L2L1_3_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 56320 : i32, sym_name = "A_L2L1_3_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_3_cons_prod_lock_0 = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_3_cons_prod_lock_0"}
    %A_L2L1_3_3_cons_cons_lock_0 = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_3_cons_cons_lock_0"}
    %A_L2L1_3_4_cons_buff_0 = aie.buffer(%tile_4_5) {address = 51712 : i32, sym_name = "A_L2L1_3_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_4_cons_buff_1 = aie.buffer(%tile_4_5) {address = 56320 : i32, sym_name = "A_L2L1_3_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_4_cons_prod_lock_0 = aie.lock(%tile_4_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_4_cons_prod_lock_0"}
    %A_L2L1_3_4_cons_cons_lock_0 = aie.lock(%tile_4_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_4_cons_cons_lock_0"}
    %A_L2L1_3_5_cons_buff_0 = aie.buffer(%tile_5_5) {address = 51712 : i32, sym_name = "A_L2L1_3_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_5_cons_buff_1 = aie.buffer(%tile_5_5) {address = 56320 : i32, sym_name = "A_L2L1_3_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_5_cons_prod_lock_0 = aie.lock(%tile_5_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_5_cons_prod_lock_0"}
    %A_L2L1_3_5_cons_cons_lock_0 = aie.lock(%tile_5_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_5_cons_cons_lock_0"}
    %A_L2L1_3_6_cons_buff_0 = aie.buffer(%tile_6_5) {address = 51712 : i32, sym_name = "A_L2L1_3_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_6_cons_buff_1 = aie.buffer(%tile_6_5) {address = 56320 : i32, sym_name = "A_L2L1_3_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_6_cons_prod_lock_0 = aie.lock(%tile_6_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_6_cons_prod_lock_0"}
    %A_L2L1_3_6_cons_cons_lock_0 = aie.lock(%tile_6_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_6_cons_cons_lock_0"}
    %A_L2L1_3_7_cons_buff_0 = aie.buffer(%tile_7_5) {address = 51712 : i32, sym_name = "A_L2L1_3_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_7_cons_buff_1 = aie.buffer(%tile_7_5) {address = 56320 : i32, sym_name = "A_L2L1_3_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_7_cons_prod_lock_0 = aie.lock(%tile_7_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_7_cons_prod_lock_0"}
    %A_L2L1_3_7_cons_cons_lock_0 = aie.lock(%tile_7_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_7_cons_cons_lock_0"}
    %A_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 165888 : i32, sym_name = "A_L3L2_3_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 193536 : i32, sym_name = "A_L3L2_3_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_3_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 0) {init = 2 : i32, sym_name = "A_L3L2_3_cons_prod_lock_0"}
    %A_L3L2_3_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 1) {init = 0 : i32, sym_name = "A_L3L2_3_cons_cons_lock_0"}
    %A_L3L2_3_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 0) {init = 0 : i32, sym_name = "A_L3L2_3_prod_lock_0"}
    %A_L3L2_3_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 1) {init = 0 : i32, sym_name = "A_L3L2_3_cons_lock_0"}
    %A_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 51712 : i32, sym_name = "A_L2L1_2_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 56320 : i32, sym_name = "A_L2L1_2_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_0_cons_prod_lock_0 = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_0_cons_prod_lock_0"}
    %A_L2L1_2_0_cons_cons_lock_0 = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_0_cons_cons_lock_0"}
    %A_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 51712 : i32, sym_name = "A_L2L1_2_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 56320 : i32, sym_name = "A_L2L1_2_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_1_cons_prod_lock_0 = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_1_cons_prod_lock_0"}
    %A_L2L1_2_1_cons_cons_lock_0 = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_1_cons_cons_lock_0"}
    %A_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 51712 : i32, sym_name = "A_L2L1_2_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 56320 : i32, sym_name = "A_L2L1_2_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_2_cons_prod_lock_0 = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_2_cons_prod_lock_0"}
    %A_L2L1_2_2_cons_cons_lock_0 = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_2_cons_cons_lock_0"}
    %A_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 51712 : i32, sym_name = "A_L2L1_2_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 56320 : i32, sym_name = "A_L2L1_2_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_3_cons_prod_lock_0 = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_3_cons_prod_lock_0"}
    %A_L2L1_2_3_cons_cons_lock_0 = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_3_cons_cons_lock_0"}
    %A_L2L1_2_4_cons_buff_0 = aie.buffer(%tile_4_4) {address = 51712 : i32, sym_name = "A_L2L1_2_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_4_cons_buff_1 = aie.buffer(%tile_4_4) {address = 56320 : i32, sym_name = "A_L2L1_2_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_4_cons_prod_lock_0 = aie.lock(%tile_4_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_4_cons_prod_lock_0"}
    %A_L2L1_2_4_cons_cons_lock_0 = aie.lock(%tile_4_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_4_cons_cons_lock_0"}
    %A_L2L1_2_5_cons_buff_0 = aie.buffer(%tile_5_4) {address = 51712 : i32, sym_name = "A_L2L1_2_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_5_cons_buff_1 = aie.buffer(%tile_5_4) {address = 56320 : i32, sym_name = "A_L2L1_2_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_5_cons_prod_lock_0 = aie.lock(%tile_5_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_5_cons_prod_lock_0"}
    %A_L2L1_2_5_cons_cons_lock_0 = aie.lock(%tile_5_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_5_cons_cons_lock_0"}
    %A_L2L1_2_6_cons_buff_0 = aie.buffer(%tile_6_4) {address = 51712 : i32, sym_name = "A_L2L1_2_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_6_cons_buff_1 = aie.buffer(%tile_6_4) {address = 56320 : i32, sym_name = "A_L2L1_2_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_6_cons_prod_lock_0 = aie.lock(%tile_6_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_6_cons_prod_lock_0"}
    %A_L2L1_2_6_cons_cons_lock_0 = aie.lock(%tile_6_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_6_cons_cons_lock_0"}
    %A_L2L1_2_7_cons_buff_0 = aie.buffer(%tile_7_4) {address = 51712 : i32, sym_name = "A_L2L1_2_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_7_cons_buff_1 = aie.buffer(%tile_7_4) {address = 56320 : i32, sym_name = "A_L2L1_2_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_7_cons_prod_lock_0 = aie.lock(%tile_7_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_7_cons_prod_lock_0"}
    %A_L2L1_2_7_cons_cons_lock_0 = aie.lock(%tile_7_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_7_cons_cons_lock_0"}
    %A_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 165888 : i32, sym_name = "A_L3L2_2_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 193536 : i32, sym_name = "A_L3L2_2_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_2_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 0) {init = 2 : i32, sym_name = "A_L3L2_2_cons_prod_lock_0"}
    %A_L3L2_2_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 1) {init = 0 : i32, sym_name = "A_L3L2_2_cons_cons_lock_0"}
    %A_L3L2_2_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 0) {init = 0 : i32, sym_name = "A_L3L2_2_prod_lock_0"}
    %A_L3L2_2_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 1) {init = 0 : i32, sym_name = "A_L3L2_2_cons_lock_0"}
    %A_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 51712 : i32, sym_name = "A_L2L1_1_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 56320 : i32, sym_name = "A_L2L1_1_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_0_cons_prod_lock_0"}
    %A_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_0_cons_cons_lock_0"}
    %A_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 51712 : i32, sym_name = "A_L2L1_1_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 56320 : i32, sym_name = "A_L2L1_1_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_1_cons_prod_lock_0"}
    %A_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_1_cons_cons_lock_0"}
    %A_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_2_3) {address = 51712 : i32, sym_name = "A_L2L1_1_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_2_3) {address = 56320 : i32, sym_name = "A_L2L1_1_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_2_cons_prod_lock_0 = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_2_cons_prod_lock_0"}
    %A_L2L1_1_2_cons_cons_lock_0 = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_2_cons_cons_lock_0"}
    %A_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_3_3) {address = 51712 : i32, sym_name = "A_L2L1_1_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_3_3) {address = 56320 : i32, sym_name = "A_L2L1_1_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_3_cons_prod_lock_0 = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_3_cons_prod_lock_0"}
    %A_L2L1_1_3_cons_cons_lock_0 = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_3_cons_cons_lock_0"}
    %A_L2L1_1_4_cons_buff_0 = aie.buffer(%tile_4_3) {address = 51712 : i32, sym_name = "A_L2L1_1_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_4_cons_buff_1 = aie.buffer(%tile_4_3) {address = 56320 : i32, sym_name = "A_L2L1_1_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_4_cons_prod_lock_0 = aie.lock(%tile_4_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_4_cons_prod_lock_0"}
    %A_L2L1_1_4_cons_cons_lock_0 = aie.lock(%tile_4_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_4_cons_cons_lock_0"}
    %A_L2L1_1_5_cons_buff_0 = aie.buffer(%tile_5_3) {address = 51712 : i32, sym_name = "A_L2L1_1_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_5_cons_buff_1 = aie.buffer(%tile_5_3) {address = 56320 : i32, sym_name = "A_L2L1_1_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_5_cons_prod_lock_0 = aie.lock(%tile_5_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_5_cons_prod_lock_0"}
    %A_L2L1_1_5_cons_cons_lock_0 = aie.lock(%tile_5_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_5_cons_cons_lock_0"}
    %A_L2L1_1_6_cons_buff_0 = aie.buffer(%tile_6_3) {address = 51712 : i32, sym_name = "A_L2L1_1_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_6_cons_buff_1 = aie.buffer(%tile_6_3) {address = 56320 : i32, sym_name = "A_L2L1_1_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_6_cons_prod_lock_0 = aie.lock(%tile_6_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_6_cons_prod_lock_0"}
    %A_L2L1_1_6_cons_cons_lock_0 = aie.lock(%tile_6_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_6_cons_cons_lock_0"}
    %A_L2L1_1_7_cons_buff_0 = aie.buffer(%tile_7_3) {address = 51712 : i32, sym_name = "A_L2L1_1_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_7_cons_buff_1 = aie.buffer(%tile_7_3) {address = 56320 : i32, sym_name = "A_L2L1_1_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_7_cons_prod_lock_0 = aie.lock(%tile_7_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_7_cons_prod_lock_0"}
    %A_L2L1_1_7_cons_cons_lock_0 = aie.lock(%tile_7_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_7_cons_cons_lock_0"}
    %A_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 165888 : i32, sym_name = "A_L3L2_1_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 193536 : i32, sym_name = "A_L3L2_1_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "A_L3L2_1_cons_prod_lock_0"}
    %A_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_cons_lock_0"}
    %A_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 0 : i32, sym_name = "A_L3L2_1_prod_lock_0"}
    %A_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_lock_0"}
    %A_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 51712 : i32, sym_name = "A_L2L1_0_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 56320 : i32, sym_name = "A_L2L1_0_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_0_cons_prod_lock_0"}
    %A_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_0_cons_cons_lock_0"}
    %A_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 51712 : i32, sym_name = "A_L2L1_0_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 56320 : i32, sym_name = "A_L2L1_0_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_1_cons_prod_lock_0"}
    %A_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_1_cons_cons_lock_0"}
    %A_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 51712 : i32, sym_name = "A_L2L1_0_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 56320 : i32, sym_name = "A_L2L1_0_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_2_cons_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_2_cons_prod_lock_0"}
    %A_L2L1_0_2_cons_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_2_cons_cons_lock_0"}
    %A_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 51712 : i32, sym_name = "A_L2L1_0_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 56320 : i32, sym_name = "A_L2L1_0_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_3_cons_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_3_cons_prod_lock_0"}
    %A_L2L1_0_3_cons_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_3_cons_cons_lock_0"}
    %A_L2L1_0_4_cons_buff_0 = aie.buffer(%tile_4_2) {address = 51712 : i32, sym_name = "A_L2L1_0_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_4_cons_buff_1 = aie.buffer(%tile_4_2) {address = 56320 : i32, sym_name = "A_L2L1_0_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_4_cons_prod_lock_0 = aie.lock(%tile_4_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_4_cons_prod_lock_0"}
    %A_L2L1_0_4_cons_cons_lock_0 = aie.lock(%tile_4_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_4_cons_cons_lock_0"}
    %A_L2L1_0_5_cons_buff_0 = aie.buffer(%tile_5_2) {address = 51712 : i32, sym_name = "A_L2L1_0_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_5_cons_buff_1 = aie.buffer(%tile_5_2) {address = 56320 : i32, sym_name = "A_L2L1_0_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_5_cons_prod_lock_0 = aie.lock(%tile_5_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_5_cons_prod_lock_0"}
    %A_L2L1_0_5_cons_cons_lock_0 = aie.lock(%tile_5_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_5_cons_cons_lock_0"}
    %A_L2L1_0_6_cons_buff_0 = aie.buffer(%tile_6_2) {address = 51712 : i32, sym_name = "A_L2L1_0_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_6_cons_buff_1 = aie.buffer(%tile_6_2) {address = 56320 : i32, sym_name = "A_L2L1_0_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_6_cons_prod_lock_0 = aie.lock(%tile_6_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_6_cons_prod_lock_0"}
    %A_L2L1_0_6_cons_cons_lock_0 = aie.lock(%tile_6_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_6_cons_cons_lock_0"}
    %A_L2L1_0_7_cons_buff_0 = aie.buffer(%tile_7_2) {address = 51712 : i32, sym_name = "A_L2L1_0_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_7_cons_buff_1 = aie.buffer(%tile_7_2) {address = 56320 : i32, sym_name = "A_L2L1_0_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_7_cons_prod_lock_0 = aie.lock(%tile_7_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_7_cons_prod_lock_0"}
    %A_L2L1_0_7_cons_cons_lock_0 = aie.lock(%tile_7_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_7_cons_cons_lock_0"}
    %A_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 165888 : i32, sym_name = "A_L3L2_0_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 193536 : i32, sym_name = "A_L3L2_0_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "A_L3L2_0_cons_prod_lock_0"}
    %A_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_cons_lock_0"}
    %A_L3L2_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 0 : i32, sym_name = "A_L3L2_0_prod_lock_0"}
    %A_L3L2_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_lock_0"}
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_6_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_5_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_4_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_3_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_2_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_6_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_5_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_4_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_6_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_5_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_4_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_3_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_6_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_5_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_4_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_3_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_2_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_1_5, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_0_5, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_4, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_2, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_4, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_3, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_2, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_4, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_3, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_2, DMA : 1)
    aie.flow(%mem_tile_4_1, DMA : 1, %tile_4_4, DMA : 1)
    aie.flow(%mem_tile_4_1, DMA : 1, %tile_4_3, DMA : 1)
    aie.flow(%mem_tile_4_1, DMA : 1, %tile_4_2, DMA : 1)
    aie.flow(%mem_tile_5_1, DMA : 0, %tile_5_4, DMA : 1)
    aie.flow(%mem_tile_5_1, DMA : 0, %tile_5_3, DMA : 1)
    aie.flow(%mem_tile_5_1, DMA : 0, %tile_5_2, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 1, %tile_6_4, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 1, %tile_6_3, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 1, %tile_6_2, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_7_4, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_7_3, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_7_2, DMA : 1)
    %core_0_2 = aie.core(%tile_0_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_0, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_0, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_0_cons_buff_1, %B_L2L1_0_0_cons_buff_1, %C_L1L2_0_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_1_2 = aie.core(%tile_1_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_0, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_0, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_1_cons_buff_1, %B_L2L1_1_0_cons_buff_1, %C_L1L2_1_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_2_2 = aie.core(%tile_2_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_0, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_0, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_2_cons_buff_1, %B_L2L1_2_0_cons_buff_1, %C_L1L2_2_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_3_2 = aie.core(%tile_3_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_0, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_0, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_3_cons_buff_1, %B_L2L1_3_0_cons_buff_1, %C_L1L2_3_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_4_2 = aie.core(%tile_4_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_0, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_0, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_4_cons_buff_1, %B_L2L1_4_0_cons_buff_1, %C_L1L2_4_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_5_2 = aie.core(%tile_5_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_0, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_0, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_5_cons_buff_1, %B_L2L1_5_0_cons_buff_1, %C_L1L2_5_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_6_2 = aie.core(%tile_6_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_0, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_0, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_6_cons_buff_1, %B_L2L1_6_0_cons_buff_1, %C_L1L2_6_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_7_2 = aie.core(%tile_7_2) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_0_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_0, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_0, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_0_7_cons_buff_1, %B_L2L1_7_0_cons_buff_1, %C_L1L2_7_0_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_0_3 = aie.core(%tile_0_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_0, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_0, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_0_cons_buff_1, %B_L2L1_0_1_cons_buff_1, %C_L1L2_0_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_1_3 = aie.core(%tile_1_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_0, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_0, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_1_cons_buff_1, %B_L2L1_1_1_cons_buff_1, %C_L1L2_1_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_2_3 = aie.core(%tile_2_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_0, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_0, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_2_cons_buff_1, %B_L2L1_2_1_cons_buff_1, %C_L1L2_2_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_3_3 = aie.core(%tile_3_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_0, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_0, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_3_cons_buff_1, %B_L2L1_3_1_cons_buff_1, %C_L1L2_3_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_4_3 = aie.core(%tile_4_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_0, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_0, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_4_cons_buff_1, %B_L2L1_4_1_cons_buff_1, %C_L1L2_4_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_5_3 = aie.core(%tile_5_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_0, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_0, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_5_cons_buff_1, %B_L2L1_5_1_cons_buff_1, %C_L1L2_5_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_6_3 = aie.core(%tile_6_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_0, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_0, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_6_cons_buff_1, %B_L2L1_6_1_cons_buff_1, %C_L1L2_6_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_7_3 = aie.core(%tile_7_3) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_1_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_0, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_0, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_1_7_cons_buff_1, %B_L2L1_7_1_cons_buff_1, %C_L1L2_7_1_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_0_4 = aie.core(%tile_0_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_0_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_0_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_0, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_0, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_0_cons_buff_1, %B_L2L1_0_2_cons_buff_1, %C_L1L2_0_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_0_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_1_4 = aie.core(%tile_1_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_1_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_1_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_0, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_0, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_1_cons_buff_1, %B_L2L1_1_2_cons_buff_1, %C_L1L2_1_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_1_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_2_4 = aie.core(%tile_2_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_2_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_2_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_0, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_0, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_2_cons_buff_1, %B_L2L1_2_2_cons_buff_1, %C_L1L2_2_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_2_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_3_4 = aie.core(%tile_3_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_3_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_3_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_0, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_0, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_3_cons_buff_1, %B_L2L1_3_2_cons_buff_1, %C_L1L2_3_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_3_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_4_4 = aie.core(%tile_4_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_4_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_4_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_0, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_0, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_4_cons_buff_1, %B_L2L1_4_2_cons_buff_1, %C_L1L2_4_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_4_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_5_4 = aie.core(%tile_5_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_5_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_5_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_0, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_0, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_5_cons_buff_1, %B_L2L1_5_2_cons_buff_1, %C_L1L2_5_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_5_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_6_4 = aie.core(%tile_6_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_6_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_6_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_0, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_0, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_6_cons_buff_1, %B_L2L1_6_2_cons_buff_1, %C_L1L2_6_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_6_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_7_4 = aie.core(%tile_7_4) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_7_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_7_2_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_2_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_2_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_0, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_0, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_2_7_cons_buff_1, %B_L2L1_7_2_cons_buff_1, %C_L1L2_7_2_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_7_2_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_0_5 = aie.core(%tile_0_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_0_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_0_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_0_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_0_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_0, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_0, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_0_cons_buff_1, %B_L2L1_0_3_cons_buff_1, %C_L1L2_0_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_0_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_1_5 = aie.core(%tile_1_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_1_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_1_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_1_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_1_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_0, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_0, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_1_cons_buff_1, %B_L2L1_1_3_cons_buff_1, %C_L1L2_1_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_1_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_2_5 = aie.core(%tile_2_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_2_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_2_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_2_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_2_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_0, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_0, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_2_cons_buff_1, %B_L2L1_2_3_cons_buff_1, %C_L1L2_2_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_2_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_3_5 = aie.core(%tile_3_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_3_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_3_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_3_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_3_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_0, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_0, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_3_cons_buff_1, %B_L2L1_3_3_cons_buff_1, %C_L1L2_3_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_3_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_4_5 = aie.core(%tile_4_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_4_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_4_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_4_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_4_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_0, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_0, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_4_cons_buff_1, %B_L2L1_4_3_cons_buff_1, %C_L1L2_4_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_4_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_5_5 = aie.core(%tile_5_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_5_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_5_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_5_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_5_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_0, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_0, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_5_cons_buff_1, %B_L2L1_5_3_cons_buff_1, %C_L1L2_5_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_5_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_6_5 = aie.core(%tile_6_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_6_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_6_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_6_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_6_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_0, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_0, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_6_cons_buff_1, %B_L2L1_6_3_cons_buff_1, %C_L1L2_6_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_6_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    %core_7_5 = aie.core(%tile_7_5) {
      %c2 = arith.constant 2 : index
      %c20 = arith.constant 20 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c20 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c20 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%C_L1L2_7_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c20 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%C_L1L2_7_3_cons_lock_0, Release, 1)
      aie.use_lock(%C_L1L2_7_3_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel(%C_L1L2_7_3_buff_0) : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c20 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_0, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_0, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_vectorized_bfp16(%A_L2L1_3_7_cons_buff_1, %B_L2L1_7_3_cons_buff_1, %C_L1L2_7_3_buff_0) : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, Release, 1)
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%C_L1L2_7_3_cons_lock_0, Release, 1)
      %14 = arith.addi %0, %c1 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_192x128x96.o"], stack_size = 3328 : i32}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[138240, 0, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_1 : memref<8xi32> = dense<[138240, 552960, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_2 : memref<8xi32> = dense<[138240, 1105920, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_3 : memref<8xi32> = dense<[138240, 1658880, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_4 : memref<8xi32> = dense<[69120, 0, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_5 : memref<8xi32> = dense<[69120, 276480, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_6 : memref<8xi32> = dense<[69120, 552960, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_7 : memref<8xi32> = dense<[69120, 829440, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_8 : memref<8xi32> = dense<[69120, 1105920, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_9 : memref<8xi32> = dense<[69120, 1382400, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_10 : memref<8xi32> = dense<[69120, 1658880, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_11 : memref<8xi32> = dense<[69120, 1935360, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_12 : memref<8xi32> = dense<[20736, 0, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_13 : memref<8xi32> = dense<[20736, 82944, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_14 : memref<8xi32> = dense<[20736, 165888, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_15 : memref<8xi32> = dense<[20736, 248832, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_16 : memref<8xi32> = dense<[20736, 331776, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_17 : memref<8xi32> = dense<[20736, 414720, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_18 : memref<8xi32> = dense<[20736, 497664, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_19 : memref<8xi32> = dense<[20736, 580608, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_20 : memref<8xi32> = dense<[69120, 2211840, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_21 : memref<8xi32> = dense<[69120, 2488320, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_22 : memref<8xi32> = dense<[69120, 2764800, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_23 : memref<8xi32> = dense<[69120, 3041280, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_24 : memref<8xi32> = dense<[69120, 3317760, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_25 : memref<8xi32> = dense<[69120, 3594240, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_26 : memref<8xi32> = dense<[69120, 3870720, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_27 : memref<8xi32> = dense<[69120, 4147200, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_28 : memref<8xi32> = dense<[20736, 663552, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_29 : memref<8xi32> = dense<[20736, 746496, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_30 : memref<8xi32> = dense<[20736, 829440, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_31 : memref<8xi32> = dense<[20736, 912384, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_32 : memref<8xi32> = dense<[20736, 995328, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_33 : memref<8xi32> = dense<[20736, 1078272, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_34 : memref<8xi32> = dense<[20736, 1161216, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_35 : memref<8xi32> = dense<[20736, 1244160, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_36 : memref<8xi32> = dense<[69120, 4423680, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_37 : memref<8xi32> = dense<[69120, 4700160, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_38 : memref<8xi32> = dense<[69120, 4976640, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_39 : memref<8xi32> = dense<[69120, 5253120, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_40 : memref<8xi32> = dense<[69120, 5529600, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_41 : memref<8xi32> = dense<[69120, 5806080, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_42 : memref<8xi32> = dense<[69120, 6082560, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_43 : memref<8xi32> = dense<[69120, 6359040, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_44 : memref<8xi32> = dense<[20736, 1327104, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_45 : memref<8xi32> = dense<[20736, 1410048, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_46 : memref<8xi32> = dense<[20736, 1492992, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_47 : memref<8xi32> = dense<[20736, 1575936, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_48 : memref<8xi32> = dense<[20736, 1658880, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_49 : memref<8xi32> = dense<[20736, 1741824, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_50 : memref<8xi32> = dense<[20736, 1824768, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_51 : memref<8xi32> = dense<[20736, 1907712, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_52 : memref<8xi32> = dense<[69120, 6635520, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_53 : memref<8xi32> = dense<[69120, 6912000, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_54 : memref<8xi32> = dense<[69120, 7188480, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_55 : memref<8xi32> = dense<[69120, 7464960, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_56 : memref<8xi32> = dense<[69120, 7741440, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_57 : memref<8xi32> = dense<[69120, 8017920, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_58 : memref<8xi32> = dense<[69120, 8294400, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_59 : memref<8xi32> = dense<[69120, 8570880, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_60 : memref<8xi32> = dense<[20736, 1990656, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_61 : memref<8xi32> = dense<[20736, 2073600, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_62 : memref<8xi32> = dense<[20736, 2156544, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_63 : memref<8xi32> = dense<[20736, 2239488, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_64 : memref<8xi32> = dense<[20736, 2322432, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_65 : memref<8xi32> = dense<[20736, 2405376, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_66 : memref<8xi32> = dense<[20736, 2488320, 0, 0, -1073741824, 33554432, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_67 : memref<8xi32> = dense<[20736, 2571264, 0, 0, -1073741824, 33554432, 0, 33554432]>
    aie.runtime_sequence(%arg0: memref<245760x!aiex.bfp<"v8bfp16ebs8">>, %arg1: memref<983040x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<294912x!aiex.bfp<"v8bfp16ebs8">>) {
      %0 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%0) {address = 118784 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118788 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, value = 0 : ui32}
      %1 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%1) {address = 67227648 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227652 : ui32, arg_idx = 0 : i32, arg_plus = 552960 : i32}
      aiex.npu.write32 {address = 67228180 : ui32, value = 0 : ui32}
      %2 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%2) {address = 134336512 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336516 : ui32, arg_idx = 0 : i32, arg_plus = 1105920 : i32}
      aiex.npu.write32 {address = 134337044 : ui32, value = 0 : ui32}
      %3 = memref.get_global @blockwrite_data_3 : memref<8xi32>
      aiex.npu.blockwrite(%3) {address = 201445376 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445380 : ui32, arg_idx = 0 : i32, arg_plus = 1658880 : i32}
      aiex.npu.write32 {address = 201445908 : ui32, value = 0 : ui32}
      %4 = memref.get_global @blockwrite_data_4 : memref<8xi32>
      aiex.npu.blockwrite(%4) {address = 118816 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118820 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119324 : ui32, value = 1 : ui32}
      %5 = memref.get_global @blockwrite_data_5 : memref<8xi32>
      aiex.npu.blockwrite(%5) {address = 33673216 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673220 : ui32, arg_idx = 1 : i32, arg_plus = 276480 : i32}
      aiex.npu.write32 {address = 33673748 : ui32, value = 0 : ui32}
      %6 = memref.get_global @blockwrite_data_6 : memref<8xi32>
      aiex.npu.blockwrite(%6) {address = 67227680 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227684 : ui32, arg_idx = 1 : i32, arg_plus = 552960 : i32}
      aiex.npu.write32 {address = 67228188 : ui32, value = 1 : ui32}
      %7 = memref.get_global @blockwrite_data_7 : memref<8xi32>
      aiex.npu.blockwrite(%7) {address = 100782080 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782084 : ui32, arg_idx = 1 : i32, arg_plus = 829440 : i32}
      aiex.npu.write32 {address = 100782612 : ui32, value = 0 : ui32}
      %8 = memref.get_global @blockwrite_data_8 : memref<8xi32>
      aiex.npu.blockwrite(%8) {address = 134336544 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336548 : ui32, arg_idx = 1 : i32, arg_plus = 1105920 : i32}
      aiex.npu.write32 {address = 134337052 : ui32, value = 1 : ui32}
      %9 = memref.get_global @blockwrite_data_9 : memref<8xi32>
      aiex.npu.blockwrite(%9) {address = 167890944 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167890948 : ui32, arg_idx = 1 : i32, arg_plus = 1382400 : i32}
      aiex.npu.write32 {address = 167891476 : ui32, value = 0 : ui32}
      %10 = memref.get_global @blockwrite_data_10 : memref<8xi32>
      aiex.npu.blockwrite(%10) {address = 201445408 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445412 : ui32, arg_idx = 1 : i32, arg_plus = 1658880 : i32}
      aiex.npu.write32 {address = 201445916 : ui32, value = 1 : ui32}
      %11 = memref.get_global @blockwrite_data_11 : memref<8xi32>
      aiex.npu.blockwrite(%11) {address = 234999808 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999812 : ui32, arg_idx = 1 : i32, arg_plus = 1935360 : i32}
      aiex.npu.write32 {address = 235000340 : ui32, value = 0 : ui32}
      %12 = memref.get_global @blockwrite_data_12 : memref<8xi32>
      aiex.npu.blockwrite(%12) {address = 118848 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118852 : ui32, arg_idx = 2 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, value = 2147483650 : ui32}
      %13 = memref.get_global @blockwrite_data_13 : memref<8xi32>
      aiex.npu.blockwrite(%13) {address = 33673248 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673252 : ui32, arg_idx = 2 : i32, arg_plus = 82944 : i32}
      aiex.npu.maskwrite32 {address = 33673728 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 33673732 : ui32, value = 2147483649 : ui32}
      %14 = memref.get_global @blockwrite_data_14 : memref<8xi32>
      aiex.npu.blockwrite(%14) {address = 67227712 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227716 : ui32, arg_idx = 2 : i32, arg_plus = 165888 : i32}
      aiex.npu.maskwrite32 {address = 67228160 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 67228164 : ui32, value = 2147483650 : ui32}
      %15 = memref.get_global @blockwrite_data_15 : memref<8xi32>
      aiex.npu.blockwrite(%15) {address = 100782112 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782116 : ui32, arg_idx = 2 : i32, arg_plus = 248832 : i32}
      aiex.npu.maskwrite32 {address = 100782592 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 100782596 : ui32, value = 2147483649 : ui32}
      %16 = memref.get_global @blockwrite_data_16 : memref<8xi32>
      aiex.npu.blockwrite(%16) {address = 134336576 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336580 : ui32, arg_idx = 2 : i32, arg_plus = 331776 : i32}
      aiex.npu.maskwrite32 {address = 134337024 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 134337028 : ui32, value = 2147483650 : ui32}
      %17 = memref.get_global @blockwrite_data_17 : memref<8xi32>
      aiex.npu.blockwrite(%17) {address = 167890976 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167890980 : ui32, arg_idx = 2 : i32, arg_plus = 414720 : i32}
      aiex.npu.maskwrite32 {address = 167891456 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 167891460 : ui32, value = 2147483649 : ui32}
      %18 = memref.get_global @blockwrite_data_18 : memref<8xi32>
      aiex.npu.blockwrite(%18) {address = 201445440 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445444 : ui32, arg_idx = 2 : i32, arg_plus = 497664 : i32}
      aiex.npu.maskwrite32 {address = 201445888 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 201445892 : ui32, value = 2147483650 : ui32}
      %19 = memref.get_global @blockwrite_data_19 : memref<8xi32>
      aiex.npu.blockwrite(%19) {address = 234999840 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999844 : ui32, arg_idx = 2 : i32, arg_plus = 580608 : i32}
      aiex.npu.maskwrite32 {address = 235000320 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 235000324 : ui32, value = 2147483649 : ui32}
      %20 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%20) {address = 118880 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118884 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, value = 3 : ui32}
      %21 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%21) {address = 67227744 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227748 : ui32, arg_idx = 0 : i32, arg_plus = 552960 : i32}
      aiex.npu.write32 {address = 67228180 : ui32, value = 3 : ui32}
      %22 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%22) {address = 134336608 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336612 : ui32, arg_idx = 0 : i32, arg_plus = 1105920 : i32}
      aiex.npu.write32 {address = 134337044 : ui32, value = 3 : ui32}
      %23 = memref.get_global @blockwrite_data_3 : memref<8xi32>
      aiex.npu.blockwrite(%23) {address = 201445472 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445476 : ui32, arg_idx = 0 : i32, arg_plus = 1658880 : i32}
      aiex.npu.write32 {address = 201445908 : ui32, value = 3 : ui32}
      %24 = memref.get_global @blockwrite_data_20 : memref<8xi32>
      aiex.npu.blockwrite(%24) {address = 118912 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118916 : ui32, arg_idx = 1 : i32, arg_plus = 2211840 : i32}
      aiex.npu.write32 {address = 119324 : ui32, value = 4 : ui32}
      %25 = memref.get_global @blockwrite_data_21 : memref<8xi32>
      aiex.npu.blockwrite(%25) {address = 33673280 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673284 : ui32, arg_idx = 1 : i32, arg_plus = 2488320 : i32}
      aiex.npu.write32 {address = 33673748 : ui32, value = 2 : ui32}
      %26 = memref.get_global @blockwrite_data_22 : memref<8xi32>
      aiex.npu.blockwrite(%26) {address = 67227776 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227780 : ui32, arg_idx = 1 : i32, arg_plus = 2764800 : i32}
      aiex.npu.write32 {address = 67228188 : ui32, value = 4 : ui32}
      %27 = memref.get_global @blockwrite_data_23 : memref<8xi32>
      aiex.npu.blockwrite(%27) {address = 100782144 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782148 : ui32, arg_idx = 1 : i32, arg_plus = 3041280 : i32}
      aiex.npu.write32 {address = 100782612 : ui32, value = 2 : ui32}
      %28 = memref.get_global @blockwrite_data_24 : memref<8xi32>
      aiex.npu.blockwrite(%28) {address = 134336640 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336644 : ui32, arg_idx = 1 : i32, arg_plus = 3317760 : i32}
      aiex.npu.write32 {address = 134337052 : ui32, value = 4 : ui32}
      %29 = memref.get_global @blockwrite_data_25 : memref<8xi32>
      aiex.npu.blockwrite(%29) {address = 167891008 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891012 : ui32, arg_idx = 1 : i32, arg_plus = 3594240 : i32}
      aiex.npu.write32 {address = 167891476 : ui32, value = 2 : ui32}
      %30 = memref.get_global @blockwrite_data_26 : memref<8xi32>
      aiex.npu.blockwrite(%30) {address = 201445504 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445508 : ui32, arg_idx = 1 : i32, arg_plus = 3870720 : i32}
      aiex.npu.write32 {address = 201445916 : ui32, value = 4 : ui32}
      %31 = memref.get_global @blockwrite_data_27 : memref<8xi32>
      aiex.npu.blockwrite(%31) {address = 234999872 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999876 : ui32, arg_idx = 1 : i32, arg_plus = 4147200 : i32}
      aiex.npu.write32 {address = 235000340 : ui32, value = 2 : ui32}
      %32 = memref.get_global @blockwrite_data_28 : memref<8xi32>
      aiex.npu.blockwrite(%32) {address = 118944 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118948 : ui32, arg_idx = 2 : i32, arg_plus = 663552 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, value = 2147483653 : ui32}
      %33 = memref.get_global @blockwrite_data_29 : memref<8xi32>
      aiex.npu.blockwrite(%33) {address = 33673312 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673316 : ui32, arg_idx = 2 : i32, arg_plus = 746496 : i32}
      aiex.npu.maskwrite32 {address = 33673728 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 33673732 : ui32, value = 2147483651 : ui32}
      %34 = memref.get_global @blockwrite_data_30 : memref<8xi32>
      aiex.npu.blockwrite(%34) {address = 67227808 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227812 : ui32, arg_idx = 2 : i32, arg_plus = 829440 : i32}
      aiex.npu.maskwrite32 {address = 67228160 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 67228164 : ui32, value = 2147483653 : ui32}
      %35 = memref.get_global @blockwrite_data_31 : memref<8xi32>
      aiex.npu.blockwrite(%35) {address = 100782176 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782180 : ui32, arg_idx = 2 : i32, arg_plus = 912384 : i32}
      aiex.npu.maskwrite32 {address = 100782592 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 100782596 : ui32, value = 2147483651 : ui32}
      %36 = memref.get_global @blockwrite_data_32 : memref<8xi32>
      aiex.npu.blockwrite(%36) {address = 134336672 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336676 : ui32, arg_idx = 2 : i32, arg_plus = 995328 : i32}
      aiex.npu.maskwrite32 {address = 134337024 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 134337028 : ui32, value = 2147483653 : ui32}
      %37 = memref.get_global @blockwrite_data_33 : memref<8xi32>
      aiex.npu.blockwrite(%37) {address = 167891040 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891044 : ui32, arg_idx = 2 : i32, arg_plus = 1078272 : i32}
      aiex.npu.maskwrite32 {address = 167891456 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 167891460 : ui32, value = 2147483651 : ui32}
      %38 = memref.get_global @blockwrite_data_34 : memref<8xi32>
      aiex.npu.blockwrite(%38) {address = 201445536 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445540 : ui32, arg_idx = 2 : i32, arg_plus = 1161216 : i32}
      aiex.npu.maskwrite32 {address = 201445888 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 201445892 : ui32, value = 2147483653 : ui32}
      %39 = memref.get_global @blockwrite_data_35 : memref<8xi32>
      aiex.npu.blockwrite(%39) {address = 234999904 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999908 : ui32, arg_idx = 2 : i32, arg_plus = 1244160 : i32}
      aiex.npu.maskwrite32 {address = 235000320 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 235000324 : ui32, value = 2147483651 : ui32}
      %40 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%40) {address = 118976 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118980 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, value = 6 : ui32}
      %41 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%41) {address = 67227840 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227844 : ui32, arg_idx = 0 : i32, arg_plus = 552960 : i32}
      aiex.npu.write32 {address = 67228180 : ui32, value = 6 : ui32}
      %42 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%42) {address = 134336704 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336708 : ui32, arg_idx = 0 : i32, arg_plus = 1105920 : i32}
      aiex.npu.write32 {address = 134337044 : ui32, value = 6 : ui32}
      %43 = memref.get_global @blockwrite_data_3 : memref<8xi32>
      aiex.npu.blockwrite(%43) {address = 201445568 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445572 : ui32, arg_idx = 0 : i32, arg_plus = 1658880 : i32}
      aiex.npu.write32 {address = 201445908 : ui32, value = 6 : ui32}
      %44 = memref.get_global @blockwrite_data_36 : memref<8xi32>
      aiex.npu.blockwrite(%44) {address = 119008 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 119012 : ui32, arg_idx = 1 : i32, arg_plus = 4423680 : i32}
      aiex.npu.write32 {address = 119324 : ui32, value = 7 : ui32}
      %45 = memref.get_global @blockwrite_data_37 : memref<8xi32>
      aiex.npu.blockwrite(%45) {address = 33673344 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673348 : ui32, arg_idx = 1 : i32, arg_plus = 4700160 : i32}
      aiex.npu.write32 {address = 33673748 : ui32, value = 4 : ui32}
      %46 = memref.get_global @blockwrite_data_38 : memref<8xi32>
      aiex.npu.blockwrite(%46) {address = 67227872 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227876 : ui32, arg_idx = 1 : i32, arg_plus = 4976640 : i32}
      aiex.npu.write32 {address = 67228188 : ui32, value = 7 : ui32}
      %47 = memref.get_global @blockwrite_data_39 : memref<8xi32>
      aiex.npu.blockwrite(%47) {address = 100782208 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782212 : ui32, arg_idx = 1 : i32, arg_plus = 5253120 : i32}
      aiex.npu.write32 {address = 100782612 : ui32, value = 4 : ui32}
      %48 = memref.get_global @blockwrite_data_40 : memref<8xi32>
      aiex.npu.blockwrite(%48) {address = 134336736 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336740 : ui32, arg_idx = 1 : i32, arg_plus = 5529600 : i32}
      aiex.npu.write32 {address = 134337052 : ui32, value = 7 : ui32}
      %49 = memref.get_global @blockwrite_data_41 : memref<8xi32>
      aiex.npu.blockwrite(%49) {address = 167891072 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891076 : ui32, arg_idx = 1 : i32, arg_plus = 5806080 : i32}
      aiex.npu.write32 {address = 167891476 : ui32, value = 4 : ui32}
      %50 = memref.get_global @blockwrite_data_42 : memref<8xi32>
      aiex.npu.blockwrite(%50) {address = 201445600 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445604 : ui32, arg_idx = 1 : i32, arg_plus = 6082560 : i32}
      aiex.npu.write32 {address = 201445916 : ui32, value = 7 : ui32}
      %51 = memref.get_global @blockwrite_data_43 : memref<8xi32>
      aiex.npu.blockwrite(%51) {address = 234999936 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999940 : ui32, arg_idx = 1 : i32, arg_plus = 6359040 : i32}
      aiex.npu.write32 {address = 235000340 : ui32, value = 4 : ui32}
      %52 = memref.get_global @blockwrite_data_44 : memref<8xi32>
      aiex.npu.blockwrite(%52) {address = 119040 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 119044 : ui32, arg_idx = 2 : i32, arg_plus = 1327104 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, value = 2147483656 : ui32}
      %53 = memref.get_global @blockwrite_data_45 : memref<8xi32>
      aiex.npu.blockwrite(%53) {address = 33673376 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673380 : ui32, arg_idx = 2 : i32, arg_plus = 1410048 : i32}
      aiex.npu.maskwrite32 {address = 33673728 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 33673732 : ui32, value = 2147483653 : ui32}
      %54 = memref.get_global @blockwrite_data_46 : memref<8xi32>
      aiex.npu.blockwrite(%54) {address = 67227904 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227908 : ui32, arg_idx = 2 : i32, arg_plus = 1492992 : i32}
      aiex.npu.maskwrite32 {address = 67228160 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 67228164 : ui32, value = 2147483656 : ui32}
      %55 = memref.get_global @blockwrite_data_47 : memref<8xi32>
      aiex.npu.blockwrite(%55) {address = 100782240 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782244 : ui32, arg_idx = 2 : i32, arg_plus = 1575936 : i32}
      aiex.npu.maskwrite32 {address = 100782592 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 100782596 : ui32, value = 2147483653 : ui32}
      %56 = memref.get_global @blockwrite_data_48 : memref<8xi32>
      aiex.npu.blockwrite(%56) {address = 134336768 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336772 : ui32, arg_idx = 2 : i32, arg_plus = 1658880 : i32}
      aiex.npu.maskwrite32 {address = 134337024 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 134337028 : ui32, value = 2147483656 : ui32}
      %57 = memref.get_global @blockwrite_data_49 : memref<8xi32>
      aiex.npu.blockwrite(%57) {address = 167891104 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891108 : ui32, arg_idx = 2 : i32, arg_plus = 1741824 : i32}
      aiex.npu.maskwrite32 {address = 167891456 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 167891460 : ui32, value = 2147483653 : ui32}
      %58 = memref.get_global @blockwrite_data_50 : memref<8xi32>
      aiex.npu.blockwrite(%58) {address = 201445632 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445636 : ui32, arg_idx = 2 : i32, arg_plus = 1824768 : i32}
      aiex.npu.maskwrite32 {address = 201445888 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 201445892 : ui32, value = 2147483656 : ui32}
      %59 = memref.get_global @blockwrite_data_51 : memref<8xi32>
      aiex.npu.blockwrite(%59) {address = 234999968 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 234999972 : ui32, arg_idx = 2 : i32, arg_plus = 1907712 : i32}
      aiex.npu.maskwrite32 {address = 235000320 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 235000324 : ui32, value = 2147483653 : ui32}
      %60 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%60) {address = 119072 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 119076 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, value = 9 : ui32}
      %61 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%61) {address = 67227936 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227940 : ui32, arg_idx = 0 : i32, arg_plus = 552960 : i32}
      aiex.npu.write32 {address = 67228180 : ui32, value = 9 : ui32}
      %62 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%62) {address = 134336800 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336804 : ui32, arg_idx = 0 : i32, arg_plus = 1105920 : i32}
      aiex.npu.write32 {address = 134337044 : ui32, value = 9 : ui32}
      %63 = memref.get_global @blockwrite_data_3 : memref<8xi32>
      aiex.npu.blockwrite(%63) {address = 201445664 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445668 : ui32, arg_idx = 0 : i32, arg_plus = 1658880 : i32}
      aiex.npu.write32 {address = 201445908 : ui32, value = 9 : ui32}
      %64 = memref.get_global @blockwrite_data_52 : memref<8xi32>
      aiex.npu.blockwrite(%64) {address = 119104 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 119108 : ui32, arg_idx = 1 : i32, arg_plus = 6635520 : i32}
      aiex.npu.write32 {address = 119324 : ui32, value = 10 : ui32}
      %65 = memref.get_global @blockwrite_data_53 : memref<8xi32>
      aiex.npu.blockwrite(%65) {address = 33673408 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673412 : ui32, arg_idx = 1 : i32, arg_plus = 6912000 : i32}
      aiex.npu.write32 {address = 33673748 : ui32, value = 6 : ui32}
      %66 = memref.get_global @blockwrite_data_54 : memref<8xi32>
      aiex.npu.blockwrite(%66) {address = 67227968 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227972 : ui32, arg_idx = 1 : i32, arg_plus = 7188480 : i32}
      aiex.npu.write32 {address = 67228188 : ui32, value = 10 : ui32}
      %67 = memref.get_global @blockwrite_data_55 : memref<8xi32>
      aiex.npu.blockwrite(%67) {address = 100782272 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782276 : ui32, arg_idx = 1 : i32, arg_plus = 7464960 : i32}
      aiex.npu.write32 {address = 100782612 : ui32, value = 6 : ui32}
      %68 = memref.get_global @blockwrite_data_56 : memref<8xi32>
      aiex.npu.blockwrite(%68) {address = 134336832 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336836 : ui32, arg_idx = 1 : i32, arg_plus = 7741440 : i32}
      aiex.npu.write32 {address = 134337052 : ui32, value = 10 : ui32}
      %69 = memref.get_global @blockwrite_data_57 : memref<8xi32>
      aiex.npu.blockwrite(%69) {address = 167891136 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891140 : ui32, arg_idx = 1 : i32, arg_plus = 8017920 : i32}
      aiex.npu.write32 {address = 167891476 : ui32, value = 6 : ui32}
      %70 = memref.get_global @blockwrite_data_58 : memref<8xi32>
      aiex.npu.blockwrite(%70) {address = 201445696 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445700 : ui32, arg_idx = 1 : i32, arg_plus = 8294400 : i32}
      aiex.npu.write32 {address = 201445916 : ui32, value = 10 : ui32}
      %71 = memref.get_global @blockwrite_data_59 : memref<8xi32>
      aiex.npu.blockwrite(%71) {address = 235000000 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 235000004 : ui32, arg_idx = 1 : i32, arg_plus = 8570880 : i32}
      aiex.npu.write32 {address = 235000340 : ui32, value = 6 : ui32}
      %72 = memref.get_global @blockwrite_data_60 : memref<8xi32>
      aiex.npu.blockwrite(%72) {address = 119136 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 119140 : ui32, arg_idx = 2 : i32, arg_plus = 1990656 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, value = 2147483659 : ui32}
      %73 = memref.get_global @blockwrite_data_61 : memref<8xi32>
      aiex.npu.blockwrite(%73) {address = 33673440 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673444 : ui32, arg_idx = 2 : i32, arg_plus = 2073600 : i32}
      aiex.npu.maskwrite32 {address = 33673728 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 33673732 : ui32, value = 2147483655 : ui32}
      %74 = memref.get_global @blockwrite_data_62 : memref<8xi32>
      aiex.npu.blockwrite(%74) {address = 67228000 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67228004 : ui32, arg_idx = 2 : i32, arg_plus = 2156544 : i32}
      aiex.npu.maskwrite32 {address = 67228160 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 67228164 : ui32, value = 2147483659 : ui32}
      %75 = memref.get_global @blockwrite_data_63 : memref<8xi32>
      aiex.npu.blockwrite(%75) {address = 100782304 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782308 : ui32, arg_idx = 2 : i32, arg_plus = 2239488 : i32}
      aiex.npu.maskwrite32 {address = 100782592 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 100782596 : ui32, value = 2147483655 : ui32}
      %76 = memref.get_global @blockwrite_data_64 : memref<8xi32>
      aiex.npu.blockwrite(%76) {address = 134336864 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 134336868 : ui32, arg_idx = 2 : i32, arg_plus = 2322432 : i32}
      aiex.npu.maskwrite32 {address = 134337024 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 134337028 : ui32, value = 2147483659 : ui32}
      %77 = memref.get_global @blockwrite_data_65 : memref<8xi32>
      aiex.npu.blockwrite(%77) {address = 167891168 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 167891172 : ui32, arg_idx = 2 : i32, arg_plus = 2405376 : i32}
      aiex.npu.maskwrite32 {address = 167891456 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 167891460 : ui32, value = 2147483655 : ui32}
      %78 = memref.get_global @blockwrite_data_66 : memref<8xi32>
      aiex.npu.blockwrite(%78) {address = 201445728 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 201445732 : ui32, arg_idx = 2 : i32, arg_plus = 2488320 : i32}
      aiex.npu.maskwrite32 {address = 201445888 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 201445892 : ui32, value = 2147483659 : ui32}
      %79 = memref.get_global @blockwrite_data_67 : memref<8xi32>
      aiex.npu.blockwrite(%79) {address = 235000032 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 235000036 : ui32, arg_idx = 2 : i32, arg_plus = 2571264 : i32}
      aiex.npu.maskwrite32 {address = 235000320 : ui32, mask = 7936 : ui32, value = 3840 : ui32}
      aiex.npu.write32 {address = 235000324 : ui32, value = 2147483655 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 1 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 2 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 4 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 5 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 6 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 7 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 1 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 2 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 4 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 5 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 6 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 7 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 1 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 2 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 4 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 5 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 6 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 7 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 1 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 2 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 4 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 5 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 6 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 7 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.shim_dma_allocation @A_L3L2_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_0_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_0_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_0_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_0_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_0_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_0_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_2, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_0_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_0_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb33)
    ^bb25:  // 2 preds: ^bb24, ^bb32
      aie.use_lock(%C_L2L3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_0_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_1, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%C_L2L3_0_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_2, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%C_L2L3_0_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_3, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%C_L2L3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb30
    ^bb30:  // pred: ^bb29
      aie.use_lock(%C_L2L3_0_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_1, Release, 1)
      aie.next_bd ^bb31
    ^bb31:  // pred: ^bb30
      aie.use_lock(%C_L2L3_0_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_2, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%C_L2L3_0_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 15 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_3, Release, 1)
      aie.next_bd ^bb25
    ^bb33:  // pred: ^bb24
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_2 = aie.mem(%tile_4_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_4_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_4_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_2 = aie.mem(%tile_5_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_5_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_5_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_2 = aie.mem(%tile_6_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_6_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_6_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_2 = aie.mem(%tile_7_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_7_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_7_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_0_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_0_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_0_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @A_L3L2_1_shim_alloc(%shim_noc_tile_2_0, MM2S, 0)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_2_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_2_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_2, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_2_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_2_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb33)
    ^bb25:  // 2 preds: ^bb24, ^bb32
      aie.use_lock(%C_L2L3_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_1, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%C_L2L3_2_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_2, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%C_L2L3_2_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_3, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%C_L2L3_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb30
    ^bb30:  // pred: ^bb29
      aie.use_lock(%C_L2L3_2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_1, Release, 1)
      aie.next_bd ^bb31
    ^bb31:  // pred: ^bb30
      aie.use_lock(%C_L2L3_2_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_2, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%C_L2L3_2_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 15 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_3, Release, 1)
      aie.next_bd ^bb25
    ^bb33:  // pred: ^bb24
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_3 = aie.mem(%tile_4_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_4_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_4_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_3 = aie.mem(%tile_5_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_5_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_5_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_3 = aie.mem(%tile_6_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_6_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_6_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_3 = aie.mem(%tile_7_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_7_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_7_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_1_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @A_L3L2_2_shim_alloc(%shim_noc_tile_4_0, MM2S, 0)
    %memtile_dma_4_1 = aie.memtile_dma(%mem_tile_4_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_2_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_4_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_4_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_4_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_4_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_4_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_4_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_2, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_4_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_4_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb33)
    ^bb25:  // 2 preds: ^bb24, ^bb32
      aie.use_lock(%C_L2L3_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_4_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_1, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%C_L2L3_4_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_2, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%C_L2L3_4_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_3, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%C_L2L3_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb30
    ^bb30:  // pred: ^bb29
      aie.use_lock(%C_L2L3_4_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_1, Release, 1)
      aie.next_bd ^bb31
    ^bb31:  // pred: ^bb30
      aie.use_lock(%C_L2L3_4_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_2, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%C_L2L3_4_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 15 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_3, Release, 1)
      aie.next_bd ^bb25
    ^bb33:  // pred: ^bb24
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_0_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_0_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_1_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_1_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_2_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_2_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_3_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_3_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_4 = aie.mem(%tile_4_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_4_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_4_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_4 = aie.mem(%tile_5_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_5_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_5_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_4 = aie.mem(%tile_6_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_6_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_6_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_4 = aie.mem(%tile_7_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_7_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_2_7_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_2_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_2_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_2_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_7_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @A_L3L2_3_shim_alloc(%shim_noc_tile_6_0, MM2S, 0)
    %memtile_dma_6_1 = aie.memtile_dma(%mem_tile_6_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_0 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_3_cons_buff_1 : memref<192x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 3072) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_6_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_6_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_6_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_6_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 4, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%C_L2L3_6_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_6_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_2, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 5, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%C_L2L3_6_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_6_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_3, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(MM2S, 2, ^bb25, ^bb33)
    ^bb25:  // 2 preds: ^bb24, ^bb32
      aie.use_lock(%C_L2L3_6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_0, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_6_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_1, Release, 1)
      aie.next_bd ^bb27
    ^bb27:  // pred: ^bb26
      aie.use_lock(%C_L2L3_6_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_2, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%C_L2L3_6_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_3, Release, 1)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%C_L2L3_6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 12 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_0, Release, 1)
      aie.next_bd ^bb30
    ^bb30:  // pred: ^bb29
      aie.use_lock(%C_L2L3_6_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_1, Release, 1)
      aie.next_bd ^bb31
    ^bb31:  // pred: ^bb30
      aie.use_lock(%C_L2L3_6_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 14 : i32, next_bd_id = 15 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_2, Release, 1)
      aie.next_bd ^bb32
    ^bb32:  // pred: ^bb31
      aie.use_lock(%C_L2L3_6_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 15 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_3, Release, 1)
      aie.next_bd ^bb25
    ^bb33:  // pred: ^bb24
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_0_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_0_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_1_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_1_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_2_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_2_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_3_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_3_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_5 = aie.mem(%tile_4_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_4_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_4_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_5 = aie.mem(%tile_5_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_5_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_5_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_5 = aie.mem(%tile_6_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_6_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_6_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_5 = aie.mem(%tile_7_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_7_cons_buff_0 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_3_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_3_7_cons_buff_1 : memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 512) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_3_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_3_buff_0 : memref<192x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_7_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 1)
    aie.shim_dma_allocation @B_L3L2_1_shim_alloc(%shim_noc_tile_1_0, MM2S, 0)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_1_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_1_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_1_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_1_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_1_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_1_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_2, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_1_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_1_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_3, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 1, ^bb19, ^bb27)
    ^bb19:  // 2 preds: ^bb18, ^bb26
      aie.use_lock(%C_L2L3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_1_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_1_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_2, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_1_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%C_L2L3_1_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 33 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_1, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%C_L2L3_1_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_2, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_1_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 35 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb27:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_2_shim_alloc(%shim_noc_tile_2_0, MM2S, 1)
    aie.shim_dma_allocation @B_L3L2_3_shim_alloc(%shim_noc_tile_3_0, MM2S, 0)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_3_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_3_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_3_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_3_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_3_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_3_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_2, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_3_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_3_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_3, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 1, ^bb19, ^bb27)
    ^bb19:  // 2 preds: ^bb18, ^bb26
      aie.use_lock(%C_L2L3_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_3_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_3_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_2, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_3_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%C_L2L3_3_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 33 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_1, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%C_L2L3_3_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_2, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_3_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 35 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb27:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_4_shim_alloc(%shim_noc_tile_4_0, MM2S, 1)
    aie.shim_dma_allocation @B_L3L2_5_shim_alloc(%shim_noc_tile_5_0, MM2S, 0)
    %memtile_dma_5_1 = aie.memtile_dma(%mem_tile_5_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_5_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_5_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_5_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_5_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_5_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_5_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_2, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_5_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_5_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_3, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 1, ^bb19, ^bb27)
    ^bb19:  // 2 preds: ^bb18, ^bb26
      aie.use_lock(%C_L2L3_5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_5_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_5_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_2, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_5_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_0, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%C_L2L3_5_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 33 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_1, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%C_L2L3_5_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_2, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_5_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 35 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb27:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_6_shim_alloc(%shim_noc_tile_6_0, MM2S, 1)
    aie.shim_dma_allocation @B_L3L2_7_shim_alloc(%shim_noc_tile_7_0, MM2S, 0)
    %memtile_dma_7_1 = aie.memtile_dma(%mem_tile_7_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_0 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_1 : memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 1536) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_7_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_7_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_7_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_7_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_7_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_7_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_2, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_7_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_7_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_3, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 1, ^bb19, ^bb27)
    ^bb19:  // 2 preds: ^bb18, ^bb26
      aie.use_lock(%C_L2L3_7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_7_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 29 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_7_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_2, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_7_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 31 : i32, next_bd_id = 32 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_3, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%C_L2L3_7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 0, 2304) {bd_id = 32 : i32, next_bd_id = 33 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_0, Release, 1)
      aie.next_bd ^bb24
    ^bb24:  // pred: ^bb23
      aie.use_lock(%C_L2L3_7_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 2304, 2304) {bd_id = 33 : i32, next_bd_id = 34 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_1, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%C_L2L3_7_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 4608, 2304) {bd_id = 34 : i32, next_bd_id = 35 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_2, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%C_L2L3_7_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<768x12x!aiex.bfp<"v8bfp16ebs8">>, 6912, 2304) {bd_id = 35 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_3, Release, 1)
      aie.next_bd ^bb19
    ^bb27:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @C_L2L3_0_shim_alloc(%shim_noc_tile_0_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_1_shim_alloc(%shim_noc_tile_1_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_2_shim_alloc(%shim_noc_tile_2_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_3_shim_alloc(%shim_noc_tile_3_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_4_shim_alloc(%shim_noc_tile_4_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_5_shim_alloc(%shim_noc_tile_5_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_6_shim_alloc(%shim_noc_tile_6_0, S2MM, 0)
    aie.shim_dma_allocation @C_L2L3_7_shim_alloc(%shim_noc_tile_7_0, S2MM, 0)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_3_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_4_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_4_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_5_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_5_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_6_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_6_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_7_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_7_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 3>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%shim_noc_tile_0_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, DMA : 0>
      aie.connect<East : 0, North : 5>
      aie.connect<East : 2, North : 1>
      aie.connect<South : 5, North : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<West : 2, East : 1>
      aie.connect<West : 2, DMA : 0>
      aie.connect<East : 3, West : 0>
      aie.connect<East : 0, West : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 2>
      aie.connect<North : 2, South : 3>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 1, East : 2>
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 1, East : 0>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, West : 3>
      aie.connect<East : 1, West : 0>
      aie.connect<East : 0, North : 0>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 2>
      aie.connect<North : 2, South : 3>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<West : 2, East : 1>
      aie.connect<West : 2, DMA : 0>
      aie.connect<West : 0, East : 2>
      aie.connect<East : 3, West : 1>
      aie.connect<East : 2, North : 5>
      aie.connect<East : 2, West : 0>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_4_2 = aie.switchbox(%tile_4_2) {
      aie.connect<West : 1, East : 0>
      aie.connect<West : 1, DMA : 0>
      aie.connect<West : 2, East : 2>
      aie.connect<West : 2, North : 3>
      aie.connect<South : 1, East : 3>
      aie.connect<South : 1, North : 5>
      aie.connect<South : 1, West : 3>
      aie.connect<East : 2, West : 2>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_5_2 = aie.switchbox(%tile_5_2) {
      aie.connect<West : 0, East : 2>
      aie.connect<West : 0, DMA : 0>
      aie.connect<West : 2, East : 0>
      aie.connect<West : 2, North : 1>
      aie.connect<West : 3, East : 1>
      aie.connect<East : 3, West : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_6_2 = aie.switchbox(%tile_6_2) {
      aie.connect<West : 2, East : 0>
      aie.connect<West : 2, DMA : 0>
      aie.connect<West : 0, East : 3>
      aie.connect<West : 1, North : 1>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, West : 3>
      aie.connect<South : 5, North : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 0, South : 0>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_7_2 = aie.switchbox(%tile_7_2) {
      aie.connect<West : 0, DMA : 0>
      aie.connect<West : 3, North : 2>
      aie.connect<South : 1, North : 4>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 1, South : 2>
      aie.connect<North : 0, South : 1>
      aie.connect<North : 2, South : 0>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_2_0 = aie.shim_mux(%shim_noc_tile_2_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 2, DMA : 4>
      aie.connect<North : 3, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 1, North : 0>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<East : 3, DMA : 0>
      aie.connect<East : 2, North : 0>
      aie.connect<South : 3, North : 5>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<South : 3, East : 1>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 3, West : 3>
      aie.connect<East : 2, North : 5>
      aie.connect<South : 0, West : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<East : 2, North : 3>
      aie.connect<East : 2, West : 2>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_4_3 = aie.switchbox(%tile_4_3) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 5, West : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_5_3 = aie.switchbox(%tile_5_3) {
      aie.connect<South : 1, East : 1>
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 0>
    }
    %switchbox_6_3 = aie.switchbox(%tile_6_3) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 1, East : 2>
      aie.connect<South : 3, North : 5>
      aie.connect<South : 0, North : 3>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_7_3 = aie.switchbox(%tile_7_3) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<West : 2, North : 1>
      aie.connect<South : 4, North : 3>
      aie.connect<South : 4, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_4_0 = aie.switchbox(%shim_noc_tile_4_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_4_0 = aie.shim_mux(%shim_noc_tile_4_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_4_1 = aie.switchbox(%mem_tile_4_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
      aie.connect<South : 0, DMA : 0>
      aie.connect<East : 0, North : 3>
      aie.connect<South : 1, North : 4>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<East : 2, DMA : 0>
      aie.connect<South : 0, West : 0>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 5, West : 2>
      aie.connect<East : 3, North : 5>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, North : 2>
      aie.connect<South : 5, West : 3>
      aie.connect<South : 1, North : 1>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_4_4 = aie.switchbox(%tile_4_4) {
      aie.connect<South : 5, East : 0>
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_5_4 = aie.switchbox(%tile_5_4) {
      aie.connect<West : 0, East : 0>
      aie.connect<West : 0, DMA : 0>
      aie.connect<South : 1, North : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_6_4 = aie.switchbox(%tile_6_4) {
      aie.connect<West : 0, DMA : 0>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 3, North : 3>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_7_4 = aie.switchbox(%tile_7_4) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 3, North : 5>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_6_0 = aie.switchbox(%shim_noc_tile_6_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_6_0 = aie.shim_mux(%shim_noc_tile_6_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_6_1 = aie.switchbox(%mem_tile_6_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 0, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 4, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
      aie.connect<East : 2, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 5, West : 2>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_4_5 = aie.switchbox(%tile_4_5) {
      aie.connect<East : 0, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_5_5 = aie.switchbox(%tile_5_5) {
      aie.connect<East : 3, DMA : 0>
      aie.connect<East : 3, West : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_6_5 = aie.switchbox(%tile_6_5) {
      aie.connect<South : 5, East : 3>
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 5, West : 3>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_7_5 = aie.switchbox(%tile_7_5) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 1, DMA : 1>
      aie.connect<North : 0, DMA : 2>
      aie.connect<North : 2, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<DMA : 1, South : 2>
    }
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_3_0 = aie.shim_mux(%shim_noc_tile_3_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_3_1 = aie.switchbox(%mem_tile_3_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 1, DMA : 1>
      aie.connect<North : 0, DMA : 2>
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 2, DMA : 4>
      aie.connect<DMA : 1, South : 2>
    }
    %switchbox_5_0 = aie.switchbox(%shim_noc_tile_5_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_5_0 = aie.shim_mux(%shim_noc_tile_5_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_5_1 = aie.switchbox(%mem_tile_5_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 1, DMA : 1>
      aie.connect<North : 0, DMA : 2>
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 2, DMA : 4>
      aie.connect<DMA : 1, South : 2>
    }
    %switchbox_7_0 = aie.switchbox(%shim_noc_tile_7_0) {
      aie.connect<South : 3, North : 0>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_7_0 = aie.shim_mux(%shim_noc_tile_7_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_7_1 = aie.switchbox(%mem_tile_7_1) {
      aie.connect<South : 0, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 3, DMA : 1>
      aie.connect<North : 2, DMA : 2>
      aie.connect<North : 1, DMA : 3>
      aie.connect<North : 0, DMA : 4>
      aie.connect<DMA : 1, South : 2>
    }
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%shim_noc_tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%mem_tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%mem_tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
    aie.wire(%tile_0_3 : Core, %switchbox_0_3 : Core)
    aie.wire(%tile_0_3 : DMA, %switchbox_0_3 : DMA)
    aie.wire(%switchbox_0_2 : North, %switchbox_0_3 : South)
    aie.wire(%tile_0_4 : Core, %switchbox_0_4 : Core)
    aie.wire(%tile_0_4 : DMA, %switchbox_0_4 : DMA)
    aie.wire(%switchbox_0_3 : North, %switchbox_0_4 : South)
    aie.wire(%tile_0_5 : Core, %switchbox_0_5 : Core)
    aie.wire(%tile_0_5 : DMA, %switchbox_0_5 : DMA)
    aie.wire(%switchbox_0_4 : North, %switchbox_0_5 : South)
    aie.wire(%switchbox_0_0 : East, %switchbox_1_0 : West)
    aie.wire(%shim_mux_1_0 : North, %switchbox_1_0 : South)
    aie.wire(%shim_noc_tile_1_0 : DMA, %shim_mux_1_0 : DMA)
    aie.wire(%switchbox_0_1 : East, %switchbox_1_1 : West)
    aie.wire(%mem_tile_1_1 : Core, %switchbox_1_1 : Core)
    aie.wire(%mem_tile_1_1 : DMA, %switchbox_1_1 : DMA)
    aie.wire(%switchbox_1_0 : North, %switchbox_1_1 : South)
    aie.wire(%switchbox_0_2 : East, %switchbox_1_2 : West)
    aie.wire(%tile_1_2 : Core, %switchbox_1_2 : Core)
    aie.wire(%tile_1_2 : DMA, %switchbox_1_2 : DMA)
    aie.wire(%switchbox_1_1 : North, %switchbox_1_2 : South)
    aie.wire(%switchbox_0_3 : East, %switchbox_1_3 : West)
    aie.wire(%tile_1_3 : Core, %switchbox_1_3 : Core)
    aie.wire(%tile_1_3 : DMA, %switchbox_1_3 : DMA)
    aie.wire(%switchbox_1_2 : North, %switchbox_1_3 : South)
    aie.wire(%switchbox_0_4 : East, %switchbox_1_4 : West)
    aie.wire(%tile_1_4 : Core, %switchbox_1_4 : Core)
    aie.wire(%tile_1_4 : DMA, %switchbox_1_4 : DMA)
    aie.wire(%switchbox_1_3 : North, %switchbox_1_4 : South)
    aie.wire(%switchbox_0_5 : East, %switchbox_1_5 : West)
    aie.wire(%tile_1_5 : Core, %switchbox_1_5 : Core)
    aie.wire(%tile_1_5 : DMA, %switchbox_1_5 : DMA)
    aie.wire(%switchbox_1_4 : North, %switchbox_1_5 : South)
    aie.wire(%switchbox_1_0 : East, %switchbox_2_0 : West)
    aie.wire(%shim_mux_2_0 : North, %switchbox_2_0 : South)
    aie.wire(%shim_noc_tile_2_0 : DMA, %shim_mux_2_0 : DMA)
    aie.wire(%switchbox_1_1 : East, %switchbox_2_1 : West)
    aie.wire(%mem_tile_2_1 : Core, %switchbox_2_1 : Core)
    aie.wire(%mem_tile_2_1 : DMA, %switchbox_2_1 : DMA)
    aie.wire(%switchbox_2_0 : North, %switchbox_2_1 : South)
    aie.wire(%switchbox_1_2 : East, %switchbox_2_2 : West)
    aie.wire(%tile_2_2 : Core, %switchbox_2_2 : Core)
    aie.wire(%tile_2_2 : DMA, %switchbox_2_2 : DMA)
    aie.wire(%switchbox_2_1 : North, %switchbox_2_2 : South)
    aie.wire(%switchbox_1_3 : East, %switchbox_2_3 : West)
    aie.wire(%tile_2_3 : Core, %switchbox_2_3 : Core)
    aie.wire(%tile_2_3 : DMA, %switchbox_2_3 : DMA)
    aie.wire(%switchbox_2_2 : North, %switchbox_2_3 : South)
    aie.wire(%switchbox_1_4 : East, %switchbox_2_4 : West)
    aie.wire(%tile_2_4 : Core, %switchbox_2_4 : Core)
    aie.wire(%tile_2_4 : DMA, %switchbox_2_4 : DMA)
    aie.wire(%switchbox_2_3 : North, %switchbox_2_4 : South)
    aie.wire(%switchbox_1_5 : East, %switchbox_2_5 : West)
    aie.wire(%tile_2_5 : Core, %switchbox_2_5 : Core)
    aie.wire(%tile_2_5 : DMA, %switchbox_2_5 : DMA)
    aie.wire(%switchbox_2_4 : North, %switchbox_2_5 : South)
    aie.wire(%switchbox_2_0 : East, %switchbox_3_0 : West)
    aie.wire(%shim_mux_3_0 : North, %switchbox_3_0 : South)
    aie.wire(%shim_noc_tile_3_0 : DMA, %shim_mux_3_0 : DMA)
    aie.wire(%switchbox_2_1 : East, %switchbox_3_1 : West)
    aie.wire(%mem_tile_3_1 : Core, %switchbox_3_1 : Core)
    aie.wire(%mem_tile_3_1 : DMA, %switchbox_3_1 : DMA)
    aie.wire(%switchbox_3_0 : North, %switchbox_3_1 : South)
    aie.wire(%switchbox_2_2 : East, %switchbox_3_2 : West)
    aie.wire(%tile_3_2 : Core, %switchbox_3_2 : Core)
    aie.wire(%tile_3_2 : DMA, %switchbox_3_2 : DMA)
    aie.wire(%switchbox_3_1 : North, %switchbox_3_2 : South)
    aie.wire(%switchbox_2_3 : East, %switchbox_3_3 : West)
    aie.wire(%tile_3_3 : Core, %switchbox_3_3 : Core)
    aie.wire(%tile_3_3 : DMA, %switchbox_3_3 : DMA)
    aie.wire(%switchbox_3_2 : North, %switchbox_3_3 : South)
    aie.wire(%switchbox_2_4 : East, %switchbox_3_4 : West)
    aie.wire(%tile_3_4 : Core, %switchbox_3_4 : Core)
    aie.wire(%tile_3_4 : DMA, %switchbox_3_4 : DMA)
    aie.wire(%switchbox_3_3 : North, %switchbox_3_4 : South)
    aie.wire(%switchbox_2_5 : East, %switchbox_3_5 : West)
    aie.wire(%tile_3_5 : Core, %switchbox_3_5 : Core)
    aie.wire(%tile_3_5 : DMA, %switchbox_3_5 : DMA)
    aie.wire(%switchbox_3_4 : North, %switchbox_3_5 : South)
    aie.wire(%switchbox_3_0 : East, %switchbox_4_0 : West)
    aie.wire(%shim_mux_4_0 : North, %switchbox_4_0 : South)
    aie.wire(%shim_noc_tile_4_0 : DMA, %shim_mux_4_0 : DMA)
    aie.wire(%switchbox_3_1 : East, %switchbox_4_1 : West)
    aie.wire(%mem_tile_4_1 : Core, %switchbox_4_1 : Core)
    aie.wire(%mem_tile_4_1 : DMA, %switchbox_4_1 : DMA)
    aie.wire(%switchbox_4_0 : North, %switchbox_4_1 : South)
    aie.wire(%switchbox_3_2 : East, %switchbox_4_2 : West)
    aie.wire(%tile_4_2 : Core, %switchbox_4_2 : Core)
    aie.wire(%tile_4_2 : DMA, %switchbox_4_2 : DMA)
    aie.wire(%switchbox_4_1 : North, %switchbox_4_2 : South)
    aie.wire(%switchbox_3_3 : East, %switchbox_4_3 : West)
    aie.wire(%tile_4_3 : Core, %switchbox_4_3 : Core)
    aie.wire(%tile_4_3 : DMA, %switchbox_4_3 : DMA)
    aie.wire(%switchbox_4_2 : North, %switchbox_4_3 : South)
    aie.wire(%switchbox_3_4 : East, %switchbox_4_4 : West)
    aie.wire(%tile_4_4 : Core, %switchbox_4_4 : Core)
    aie.wire(%tile_4_4 : DMA, %switchbox_4_4 : DMA)
    aie.wire(%switchbox_4_3 : North, %switchbox_4_4 : South)
    aie.wire(%switchbox_3_5 : East, %switchbox_4_5 : West)
    aie.wire(%tile_4_5 : Core, %switchbox_4_5 : Core)
    aie.wire(%tile_4_5 : DMA, %switchbox_4_5 : DMA)
    aie.wire(%switchbox_4_4 : North, %switchbox_4_5 : South)
    aie.wire(%switchbox_4_0 : East, %switchbox_5_0 : West)
    aie.wire(%shim_mux_5_0 : North, %switchbox_5_0 : South)
    aie.wire(%shim_noc_tile_5_0 : DMA, %shim_mux_5_0 : DMA)
    aie.wire(%switchbox_4_1 : East, %switchbox_5_1 : West)
    aie.wire(%mem_tile_5_1 : Core, %switchbox_5_1 : Core)
    aie.wire(%mem_tile_5_1 : DMA, %switchbox_5_1 : DMA)
    aie.wire(%switchbox_5_0 : North, %switchbox_5_1 : South)
    aie.wire(%switchbox_4_2 : East, %switchbox_5_2 : West)
    aie.wire(%tile_5_2 : Core, %switchbox_5_2 : Core)
    aie.wire(%tile_5_2 : DMA, %switchbox_5_2 : DMA)
    aie.wire(%switchbox_5_1 : North, %switchbox_5_2 : South)
    aie.wire(%switchbox_4_3 : East, %switchbox_5_3 : West)
    aie.wire(%tile_5_3 : Core, %switchbox_5_3 : Core)
    aie.wire(%tile_5_3 : DMA, %switchbox_5_3 : DMA)
    aie.wire(%switchbox_5_2 : North, %switchbox_5_3 : South)
    aie.wire(%switchbox_4_4 : East, %switchbox_5_4 : West)
    aie.wire(%tile_5_4 : Core, %switchbox_5_4 : Core)
    aie.wire(%tile_5_4 : DMA, %switchbox_5_4 : DMA)
    aie.wire(%switchbox_5_3 : North, %switchbox_5_4 : South)
    aie.wire(%switchbox_4_5 : East, %switchbox_5_5 : West)
    aie.wire(%tile_5_5 : Core, %switchbox_5_5 : Core)
    aie.wire(%tile_5_5 : DMA, %switchbox_5_5 : DMA)
    aie.wire(%switchbox_5_4 : North, %switchbox_5_5 : South)
    aie.wire(%switchbox_5_0 : East, %switchbox_6_0 : West)
    aie.wire(%shim_mux_6_0 : North, %switchbox_6_0 : South)
    aie.wire(%shim_noc_tile_6_0 : DMA, %shim_mux_6_0 : DMA)
    aie.wire(%switchbox_5_1 : East, %switchbox_6_1 : West)
    aie.wire(%mem_tile_6_1 : Core, %switchbox_6_1 : Core)
    aie.wire(%mem_tile_6_1 : DMA, %switchbox_6_1 : DMA)
    aie.wire(%switchbox_6_0 : North, %switchbox_6_1 : South)
    aie.wire(%switchbox_5_2 : East, %switchbox_6_2 : West)
    aie.wire(%tile_6_2 : Core, %switchbox_6_2 : Core)
    aie.wire(%tile_6_2 : DMA, %switchbox_6_2 : DMA)
    aie.wire(%switchbox_6_1 : North, %switchbox_6_2 : South)
    aie.wire(%switchbox_5_3 : East, %switchbox_6_3 : West)
    aie.wire(%tile_6_3 : Core, %switchbox_6_3 : Core)
    aie.wire(%tile_6_3 : DMA, %switchbox_6_3 : DMA)
    aie.wire(%switchbox_6_2 : North, %switchbox_6_3 : South)
    aie.wire(%switchbox_5_4 : East, %switchbox_6_4 : West)
    aie.wire(%tile_6_4 : Core, %switchbox_6_4 : Core)
    aie.wire(%tile_6_4 : DMA, %switchbox_6_4 : DMA)
    aie.wire(%switchbox_6_3 : North, %switchbox_6_4 : South)
    aie.wire(%switchbox_5_5 : East, %switchbox_6_5 : West)
    aie.wire(%tile_6_5 : Core, %switchbox_6_5 : Core)
    aie.wire(%tile_6_5 : DMA, %switchbox_6_5 : DMA)
    aie.wire(%switchbox_6_4 : North, %switchbox_6_5 : South)
    aie.wire(%switchbox_6_0 : East, %switchbox_7_0 : West)
    aie.wire(%shim_mux_7_0 : North, %switchbox_7_0 : South)
    aie.wire(%shim_noc_tile_7_0 : DMA, %shim_mux_7_0 : DMA)
    aie.wire(%switchbox_6_1 : East, %switchbox_7_1 : West)
    aie.wire(%mem_tile_7_1 : Core, %switchbox_7_1 : Core)
    aie.wire(%mem_tile_7_1 : DMA, %switchbox_7_1 : DMA)
    aie.wire(%switchbox_7_0 : North, %switchbox_7_1 : South)
    aie.wire(%switchbox_6_2 : East, %switchbox_7_2 : West)
    aie.wire(%tile_7_2 : Core, %switchbox_7_2 : Core)
    aie.wire(%tile_7_2 : DMA, %switchbox_7_2 : DMA)
    aie.wire(%switchbox_7_1 : North, %switchbox_7_2 : South)
    aie.wire(%switchbox_6_3 : East, %switchbox_7_3 : West)
    aie.wire(%tile_7_3 : Core, %switchbox_7_3 : Core)
    aie.wire(%tile_7_3 : DMA, %switchbox_7_3 : DMA)
    aie.wire(%switchbox_7_2 : North, %switchbox_7_3 : South)
    aie.wire(%switchbox_6_4 : East, %switchbox_7_4 : West)
    aie.wire(%tile_7_4 : Core, %switchbox_7_4 : Core)
    aie.wire(%tile_7_4 : DMA, %switchbox_7_4 : DMA)
    aie.wire(%switchbox_7_3 : North, %switchbox_7_4 : South)
    aie.wire(%switchbox_6_5 : East, %switchbox_7_5 : West)
    aie.wire(%tile_7_5 : Core, %switchbox_7_5 : Core)
    aie.wire(%tile_7_5 : DMA, %switchbox_7_5 : DMA)
    aie.wire(%switchbox_7_4 : North, %switchbox_7_5 : South)
  }
}
