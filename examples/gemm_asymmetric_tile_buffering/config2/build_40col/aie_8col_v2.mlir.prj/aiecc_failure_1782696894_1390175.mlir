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
    %C_L1L2_7_3_buff_0 = aie.buffer(%tile_7_5) {address = 1024 : i32, sym_name = "C_L1L2_7_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_3_prod_lock_0 = aie.lock(%tile_7_5, 4) {init = 1 : i32, sym_name = "C_L1L2_7_3_prod_lock_0"}
    %C_L1L2_7_3_cons_lock_0 = aie.lock(%tile_7_5, 5) {init = 0 : i32, sym_name = "C_L1L2_7_3_cons_lock_0"}
    %C_L1L2_7_2_buff_0 = aie.buffer(%tile_7_4) {address = 1024 : i32, sym_name = "C_L1L2_7_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_2_prod_lock_0 = aie.lock(%tile_7_4, 4) {init = 1 : i32, sym_name = "C_L1L2_7_2_prod_lock_0"}
    %C_L1L2_7_2_cons_lock_0 = aie.lock(%tile_7_4, 5) {init = 0 : i32, sym_name = "C_L1L2_7_2_cons_lock_0"}
    %C_L1L2_7_1_buff_0 = aie.buffer(%tile_7_3) {address = 1024 : i32, sym_name = "C_L1L2_7_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_1_prod_lock_0 = aie.lock(%tile_7_3, 4) {init = 1 : i32, sym_name = "C_L1L2_7_1_prod_lock_0"}
    %C_L1L2_7_1_cons_lock_0 = aie.lock(%tile_7_3, 5) {init = 0 : i32, sym_name = "C_L1L2_7_1_cons_lock_0"}
    %C_L1L2_7_0_buff_0 = aie.buffer(%tile_7_2) {address = 1024 : i32, sym_name = "C_L1L2_7_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_7_0_prod_lock_0 = aie.lock(%tile_7_2, 4) {init = 1 : i32, sym_name = "C_L1L2_7_0_prod_lock_0"}
    %C_L1L2_7_0_cons_lock_0 = aie.lock(%tile_7_2, 5) {init = 0 : i32, sym_name = "C_L1L2_7_0_cons_lock_0"}
    %C_L2L3_6_cons_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 4) {init = 0 : i32, sym_name = "C_L2L3_6_cons_prod_lock_0"}
    %C_L2L3_6_cons_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 5) {init = 0 : i32, sym_name = "C_L2L3_6_cons_cons_lock_0"}
    %B_L3L2_7_cons_buff_0 = aie.buffer(%mem_tile_7_1) {address = 165888 : i32, sym_name = "B_L3L2_7_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_buff_1 = aie.buffer(%mem_tile_7_1) {address = 179712 : i32, sym_name = "B_L3L2_7_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_prod_lock_0 = aie.lock(%mem_tile_7_1, 8) {init = 2 : i32, sym_name = "B_L3L2_7_cons_prod_lock_0"}
    %B_L3L2_7_cons_cons_lock_0 = aie.lock(%mem_tile_7_1, 9) {init = 0 : i32, sym_name = "B_L3L2_7_cons_cons_lock_0"}
    %C_L1L2_6_3_buff_0 = aie.buffer(%tile_6_5) {address = 1024 : i32, sym_name = "C_L1L2_6_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_3_prod_lock_0 = aie.lock(%tile_6_5, 4) {init = 1 : i32, sym_name = "C_L1L2_6_3_prod_lock_0"}
    %C_L1L2_6_3_cons_lock_0 = aie.lock(%tile_6_5, 5) {init = 0 : i32, sym_name = "C_L1L2_6_3_cons_lock_0"}
    %B_L3L2_6_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 221184 : i32, sym_name = "B_L3L2_6_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 235008 : i32, sym_name = "B_L3L2_6_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 10) {init = 2 : i32, sym_name = "B_L3L2_6_cons_prod_lock_0"}
    %B_L3L2_6_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 11) {init = 0 : i32, sym_name = "B_L3L2_6_cons_cons_lock_0"}
    %C_L1L2_6_2_buff_0 = aie.buffer(%tile_6_4) {address = 1024 : i32, sym_name = "C_L1L2_6_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_2_prod_lock_0 = aie.lock(%tile_6_4, 4) {init = 1 : i32, sym_name = "C_L1L2_6_2_prod_lock_0"}
    %C_L1L2_6_2_cons_lock_0 = aie.lock(%tile_6_4, 5) {init = 0 : i32, sym_name = "C_L1L2_6_2_cons_lock_0"}
    %C_L1L2_6_1_buff_0 = aie.buffer(%tile_6_3) {address = 1024 : i32, sym_name = "C_L1L2_6_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_1_prod_lock_0 = aie.lock(%tile_6_3, 4) {init = 1 : i32, sym_name = "C_L1L2_6_1_prod_lock_0"}
    %C_L1L2_6_1_cons_lock_0 = aie.lock(%tile_6_3, 5) {init = 0 : i32, sym_name = "C_L1L2_6_1_cons_lock_0"}
    %B_L3L2_5_cons_buff_0 = aie.buffer(%mem_tile_5_1) {address = 165888 : i32, sym_name = "B_L3L2_5_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_buff_1 = aie.buffer(%mem_tile_5_1) {address = 179712 : i32, sym_name = "B_L3L2_5_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_prod_lock_0 = aie.lock(%mem_tile_5_1, 8) {init = 2 : i32, sym_name = "B_L3L2_5_cons_prod_lock_0"}
    %B_L3L2_5_cons_cons_lock_0 = aie.lock(%mem_tile_5_1, 9) {init = 0 : i32, sym_name = "B_L3L2_5_cons_cons_lock_0"}
    %C_L1L2_6_0_buff_0 = aie.buffer(%tile_6_2) {address = 1024 : i32, sym_name = "C_L1L2_6_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_6_0_prod_lock_0 = aie.lock(%tile_6_2, 4) {init = 1 : i32, sym_name = "C_L1L2_6_0_prod_lock_0"}
    %C_L1L2_6_0_cons_lock_0 = aie.lock(%tile_6_2, 5) {init = 0 : i32, sym_name = "C_L1L2_6_0_cons_lock_0"}
    %C_L2L3_5_cons_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 2) {init = 0 : i32, sym_name = "C_L2L3_5_cons_prod_lock_0"}
    %C_L2L3_5_cons_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_cons_lock_0"}
    %B_L3L2_4_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 221184 : i32, sym_name = "B_L3L2_4_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 235008 : i32, sym_name = "B_L3L2_4_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 10) {init = 2 : i32, sym_name = "B_L3L2_4_cons_prod_lock_0"}
    %B_L3L2_4_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 11) {init = 0 : i32, sym_name = "B_L3L2_4_cons_cons_lock_0"}
    %C_L1L2_5_3_buff_0 = aie.buffer(%tile_5_5) {address = 1024 : i32, sym_name = "C_L1L2_5_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_3_prod_lock_0 = aie.lock(%tile_5_5, 4) {init = 1 : i32, sym_name = "C_L1L2_5_3_prod_lock_0"}
    %C_L1L2_5_3_cons_lock_0 = aie.lock(%tile_5_5, 5) {init = 0 : i32, sym_name = "C_L1L2_5_3_cons_lock_0"}
    %C_L1L2_5_2_buff_0 = aie.buffer(%tile_5_4) {address = 1024 : i32, sym_name = "C_L1L2_5_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_2_prod_lock_0 = aie.lock(%tile_5_4, 4) {init = 1 : i32, sym_name = "C_L1L2_5_2_prod_lock_0"}
    %C_L1L2_5_2_cons_lock_0 = aie.lock(%tile_5_4, 5) {init = 0 : i32, sym_name = "C_L1L2_5_2_cons_lock_0"}
    %B_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 165888 : i32, sym_name = "B_L3L2_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 179712 : i32, sym_name = "B_L3L2_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 8) {init = 2 : i32, sym_name = "B_L3L2_3_cons_prod_lock_0"}
    %B_L3L2_3_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 9) {init = 0 : i32, sym_name = "B_L3L2_3_cons_cons_lock_0"}
    %C_L1L2_5_1_buff_0 = aie.buffer(%tile_5_3) {address = 1024 : i32, sym_name = "C_L1L2_5_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_1_prod_lock_0 = aie.lock(%tile_5_3, 4) {init = 1 : i32, sym_name = "C_L1L2_5_1_prod_lock_0"}
    %C_L1L2_5_1_cons_lock_0 = aie.lock(%tile_5_3, 5) {init = 0 : i32, sym_name = "C_L1L2_5_1_cons_lock_0"}
    %C_L1L2_5_0_buff_0 = aie.buffer(%tile_5_2) {address = 1024 : i32, sym_name = "C_L1L2_5_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_5_0_prod_lock_0 = aie.lock(%tile_5_2, 4) {init = 1 : i32, sym_name = "C_L1L2_5_0_prod_lock_0"}
    %C_L1L2_5_0_cons_lock_0 = aie.lock(%tile_5_2, 5) {init = 0 : i32, sym_name = "C_L1L2_5_0_cons_lock_0"}
    %C_L2L3_4_cons_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 4) {init = 0 : i32, sym_name = "C_L2L3_4_cons_prod_lock_0"}
    %C_L2L3_4_cons_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 5) {init = 0 : i32, sym_name = "C_L2L3_4_cons_cons_lock_0"}
    %B_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 221184 : i32, sym_name = "B_L3L2_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 235008 : i32, sym_name = "B_L3L2_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 10) {init = 2 : i32, sym_name = "B_L3L2_2_cons_prod_lock_0"}
    %B_L3L2_2_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 11) {init = 0 : i32, sym_name = "B_L3L2_2_cons_cons_lock_0"}
    %C_L1L2_4_3_buff_0 = aie.buffer(%tile_4_5) {address = 1024 : i32, sym_name = "C_L1L2_4_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_3_prod_lock_0 = aie.lock(%tile_4_5, 4) {init = 1 : i32, sym_name = "C_L1L2_4_3_prod_lock_0"}
    %C_L1L2_4_3_cons_lock_0 = aie.lock(%tile_4_5, 5) {init = 0 : i32, sym_name = "C_L1L2_4_3_cons_lock_0"}
    %B_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 165888 : i32, sym_name = "B_L3L2_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 179712 : i32, sym_name = "B_L3L2_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 8) {init = 2 : i32, sym_name = "B_L3L2_1_cons_prod_lock_0"}
    %B_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 9) {init = 0 : i32, sym_name = "B_L3L2_1_cons_cons_lock_0"}
    %C_L1L2_4_2_buff_0 = aie.buffer(%tile_4_4) {address = 1024 : i32, sym_name = "C_L1L2_4_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_2_prod_lock_0 = aie.lock(%tile_4_4, 4) {init = 1 : i32, sym_name = "C_L1L2_4_2_prod_lock_0"}
    %C_L1L2_4_2_cons_lock_0 = aie.lock(%tile_4_4, 5) {init = 0 : i32, sym_name = "C_L1L2_4_2_cons_lock_0"}
    %C_L1L2_4_1_buff_0 = aie.buffer(%tile_4_3) {address = 1024 : i32, sym_name = "C_L1L2_4_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_1_prod_lock_0 = aie.lock(%tile_4_3, 4) {init = 1 : i32, sym_name = "C_L1L2_4_1_prod_lock_0"}
    %C_L1L2_4_1_cons_lock_0 = aie.lock(%tile_4_3, 5) {init = 0 : i32, sym_name = "C_L1L2_4_1_cons_lock_0"}
    %B_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 221184 : i32, sym_name = "B_L3L2_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 235008 : i32, sym_name = "B_L3L2_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 10) {init = 2 : i32, sym_name = "B_L3L2_0_cons_prod_lock_0"}
    %B_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 11) {init = 0 : i32, sym_name = "B_L3L2_0_cons_cons_lock_0"}
    %C_L1L2_4_0_buff_0 = aie.buffer(%tile_4_2) {address = 1024 : i32, sym_name = "C_L1L2_4_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_4_0_prod_lock_0 = aie.lock(%tile_4_2, 4) {init = 1 : i32, sym_name = "C_L1L2_4_0_prod_lock_0"}
    %C_L1L2_4_0_cons_lock_0 = aie.lock(%tile_4_2, 5) {init = 0 : i32, sym_name = "C_L1L2_4_0_cons_lock_0"}
    %C_L2L3_3_cons_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 2) {init = 0 : i32, sym_name = "C_L2L3_3_cons_prod_lock_0"}
    %C_L2L3_3_cons_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_cons_lock_0"}
    %C_L1L2_3_3_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, sym_name = "C_L1L2_3_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_3_prod_lock_0 = aie.lock(%tile_3_5, 4) {init = 1 : i32, sym_name = "C_L1L2_3_3_prod_lock_0"}
    %C_L1L2_3_3_cons_lock_0 = aie.lock(%tile_3_5, 5) {init = 0 : i32, sym_name = "C_L1L2_3_3_cons_lock_0"}
    %C_L1L2_3_2_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, sym_name = "C_L1L2_3_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_2_prod_lock_0 = aie.lock(%tile_3_4, 4) {init = 1 : i32, sym_name = "C_L1L2_3_2_prod_lock_0"}
    %C_L1L2_3_2_cons_lock_0 = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "C_L1L2_3_2_cons_lock_0"}
    %C_L1L2_3_1_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, sym_name = "C_L1L2_3_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_1_prod_lock_0 = aie.lock(%tile_3_3, 4) {init = 1 : i32, sym_name = "C_L1L2_3_1_prod_lock_0"}
    %C_L1L2_3_1_cons_lock_0 = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "C_L1L2_3_1_cons_lock_0"}
    %C_L1L2_3_0_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, sym_name = "C_L1L2_3_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_3_0_prod_lock_0 = aie.lock(%tile_3_2, 4) {init = 1 : i32, sym_name = "C_L1L2_3_0_prod_lock_0"}
    %C_L1L2_3_0_cons_lock_0 = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "C_L1L2_3_0_cons_lock_0"}
    %C_L2L3_2_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 4) {init = 0 : i32, sym_name = "C_L2L3_2_cons_prod_lock_0"}
    %C_L2L3_2_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_cons_lock_0"}
    %C_L1L2_2_3_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, sym_name = "C_L1L2_2_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_3_prod_lock_0 = aie.lock(%tile_2_5, 4) {init = 1 : i32, sym_name = "C_L1L2_2_3_prod_lock_0"}
    %C_L1L2_2_3_cons_lock_0 = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "C_L1L2_2_3_cons_lock_0"}
    %C_L1L2_2_2_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, sym_name = "C_L1L2_2_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_2_prod_lock_0 = aie.lock(%tile_2_4, 4) {init = 1 : i32, sym_name = "C_L1L2_2_2_prod_lock_0"}
    %C_L1L2_2_2_cons_lock_0 = aie.lock(%tile_2_4, 5) {init = 0 : i32, sym_name = "C_L1L2_2_2_cons_lock_0"}
    %C_L1L2_2_1_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, sym_name = "C_L1L2_2_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_1_prod_lock_0 = aie.lock(%tile_2_3, 4) {init = 1 : i32, sym_name = "C_L1L2_2_1_prod_lock_0"}
    %C_L1L2_2_1_cons_lock_0 = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "C_L1L2_2_1_cons_lock_0"}
    %C_L1L2_2_0_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, sym_name = "C_L1L2_2_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_2_0_prod_lock_0 = aie.lock(%tile_2_2, 4) {init = 1 : i32, sym_name = "C_L1L2_2_0_prod_lock_0"}
    %C_L1L2_2_0_cons_lock_0 = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "C_L1L2_2_0_cons_lock_0"}
    %C_L2L3_1_cons_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 2) {init = 0 : i32, sym_name = "C_L2L3_1_cons_prod_lock_0"}
    %C_L2L3_1_cons_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_cons_lock_0"}
    %C_L1L2_1_3_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, sym_name = "C_L1L2_1_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_3_prod_lock_0 = aie.lock(%tile_1_5, 4) {init = 1 : i32, sym_name = "C_L1L2_1_3_prod_lock_0"}
    %C_L1L2_1_3_cons_lock_0 = aie.lock(%tile_1_5, 5) {init = 0 : i32, sym_name = "C_L1L2_1_3_cons_lock_0"}
    %C_L1L2_1_2_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, sym_name = "C_L1L2_1_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_2_prod_lock_0 = aie.lock(%tile_1_4, 4) {init = 1 : i32, sym_name = "C_L1L2_1_2_prod_lock_0"}
    %C_L1L2_1_2_cons_lock_0 = aie.lock(%tile_1_4, 5) {init = 0 : i32, sym_name = "C_L1L2_1_2_cons_lock_0"}
    %C_L1L2_1_1_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, sym_name = "C_L1L2_1_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_1_prod_lock_0 = aie.lock(%tile_1_3, 4) {init = 1 : i32, sym_name = "C_L1L2_1_1_prod_lock_0"}
    %C_L1L2_1_1_cons_lock_0 = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "C_L1L2_1_1_cons_lock_0"}
    %C_L1L2_1_0_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, sym_name = "C_L1L2_1_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_1_0_prod_lock_0 = aie.lock(%tile_1_2, 4) {init = 1 : i32, sym_name = "C_L1L2_1_0_prod_lock_0"}
    %C_L1L2_1_0_cons_lock_0 = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "C_L1L2_1_0_cons_lock_0"}
    %C_L2L3_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 4) {init = 0 : i32, sym_name = "C_L2L3_0_cons_prod_lock_0"}
    %C_L2L3_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_cons_lock_0"}
    %C_L1L2_0_3_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, sym_name = "C_L1L2_0_3_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_3_prod_lock_0 = aie.lock(%tile_0_5, 4) {init = 1 : i32, sym_name = "C_L1L2_0_3_prod_lock_0"}
    %C_L1L2_0_3_cons_lock_0 = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "C_L1L2_0_3_cons_lock_0"}
    %C_L1L2_0_2_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, sym_name = "C_L1L2_0_2_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_2_prod_lock_0 = aie.lock(%tile_0_4, 4) {init = 1 : i32, sym_name = "C_L1L2_0_2_prod_lock_0"}
    %C_L1L2_0_2_cons_lock_0 = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "C_L1L2_0_2_cons_lock_0"}
    %C_L1L2_0_1_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, sym_name = "C_L1L2_0_1_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_1_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "C_L1L2_0_1_prod_lock_0"}
    %C_L1L2_0_1_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "C_L1L2_0_1_cons_lock_0"}
    %C_L1L2_0_0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "C_L1L2_0_0_buff_0"} : memref<192x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L1L2_0_0_prod_lock_0 = aie.lock(%tile_0_2, 4) {init = 1 : i32, sym_name = "C_L1L2_0_0_prod_lock_0"}
    %C_L1L2_0_0_cons_lock_0 = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "C_L1L2_0_0_cons_lock_0"}
    %B_L2L1_7_0_cons_buff_0 = aie.buffer(%tile_7_2) {address = 21760 : i32, sym_name = "B_L2L1_7_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_buff_1 = aie.buffer(%tile_7_2) {address = 35584 : i32, sym_name = "B_L2L1_7_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_prod_lock_0 = aie.lock(%tile_7_2, 2) {init = 2 : i32, sym_name = "B_L2L1_7_0_cons_prod_lock_0"}
    %B_L2L1_7_0_cons_cons_lock_0 = aie.lock(%tile_7_2, 3) {init = 0 : i32, sym_name = "B_L2L1_7_0_cons_cons_lock_0"}
    %B_L2L1_7_1_cons_buff_0 = aie.buffer(%tile_7_3) {address = 21760 : i32, sym_name = "B_L2L1_7_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_buff_1 = aie.buffer(%tile_7_3) {address = 35584 : i32, sym_name = "B_L2L1_7_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_prod_lock_0 = aie.lock(%tile_7_3, 2) {init = 2 : i32, sym_name = "B_L2L1_7_1_cons_prod_lock_0"}
    %B_L2L1_7_1_cons_cons_lock_0 = aie.lock(%tile_7_3, 3) {init = 0 : i32, sym_name = "B_L2L1_7_1_cons_cons_lock_0"}
    %B_L2L1_7_2_cons_buff_0 = aie.buffer(%tile_7_4) {address = 21760 : i32, sym_name = "B_L2L1_7_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_2_cons_buff_1 = aie.buffer(%tile_7_4) {address = 35584 : i32, sym_name = "B_L2L1_7_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_2_cons_prod_lock_0 = aie.lock(%tile_7_4, 2) {init = 2 : i32, sym_name = "B_L2L1_7_2_cons_prod_lock_0"}
    %B_L2L1_7_2_cons_cons_lock_0 = aie.lock(%tile_7_4, 3) {init = 0 : i32, sym_name = "B_L2L1_7_2_cons_cons_lock_0"}
    %B_L2L1_7_3_cons_buff_0 = aie.buffer(%tile_7_5) {address = 21760 : i32, sym_name = "B_L2L1_7_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_3_cons_buff_1 = aie.buffer(%tile_7_5) {address = 35584 : i32, sym_name = "B_L2L1_7_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_3_cons_prod_lock_0 = aie.lock(%tile_7_5, 2) {init = 2 : i32, sym_name = "B_L2L1_7_3_cons_prod_lock_0"}
    %B_L2L1_7_3_cons_cons_lock_0 = aie.lock(%tile_7_5, 3) {init = 0 : i32, sym_name = "B_L2L1_7_3_cons_cons_lock_0"}
    %B_L3L2_7_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 0) {init = 0 : i32, sym_name = "B_L3L2_7_prod_lock_0"}
    %B_L3L2_7_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 1) {init = 0 : i32, sym_name = "B_L3L2_7_cons_lock_0"}
    %B_L2L1_6_0_cons_buff_0 = aie.buffer(%tile_6_2) {address = 21760 : i32, sym_name = "B_L2L1_6_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_buff_1 = aie.buffer(%tile_6_2) {address = 35584 : i32, sym_name = "B_L2L1_6_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_prod_lock_0 = aie.lock(%tile_6_2, 2) {init = 2 : i32, sym_name = "B_L2L1_6_0_cons_prod_lock_0"}
    %B_L2L1_6_0_cons_cons_lock_0 = aie.lock(%tile_6_2, 3) {init = 0 : i32, sym_name = "B_L2L1_6_0_cons_cons_lock_0"}
    %B_L2L1_6_1_cons_buff_0 = aie.buffer(%tile_6_3) {address = 21760 : i32, sym_name = "B_L2L1_6_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_buff_1 = aie.buffer(%tile_6_3) {address = 35584 : i32, sym_name = "B_L2L1_6_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_prod_lock_0 = aie.lock(%tile_6_3, 2) {init = 2 : i32, sym_name = "B_L2L1_6_1_cons_prod_lock_0"}
    %B_L2L1_6_1_cons_cons_lock_0 = aie.lock(%tile_6_3, 3) {init = 0 : i32, sym_name = "B_L2L1_6_1_cons_cons_lock_0"}
    %B_L2L1_6_2_cons_buff_0 = aie.buffer(%tile_6_4) {address = 21760 : i32, sym_name = "B_L2L1_6_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_2_cons_buff_1 = aie.buffer(%tile_6_4) {address = 35584 : i32, sym_name = "B_L2L1_6_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_2_cons_prod_lock_0 = aie.lock(%tile_6_4, 2) {init = 2 : i32, sym_name = "B_L2L1_6_2_cons_prod_lock_0"}
    %B_L2L1_6_2_cons_cons_lock_0 = aie.lock(%tile_6_4, 3) {init = 0 : i32, sym_name = "B_L2L1_6_2_cons_cons_lock_0"}
    %B_L2L1_6_3_cons_buff_0 = aie.buffer(%tile_6_5) {address = 21760 : i32, sym_name = "B_L2L1_6_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_3_cons_buff_1 = aie.buffer(%tile_6_5) {address = 35584 : i32, sym_name = "B_L2L1_6_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_3_cons_prod_lock_0 = aie.lock(%tile_6_5, 2) {init = 2 : i32, sym_name = "B_L2L1_6_3_cons_prod_lock_0"}
    %B_L2L1_6_3_cons_cons_lock_0 = aie.lock(%tile_6_5, 3) {init = 0 : i32, sym_name = "B_L2L1_6_3_cons_cons_lock_0"}
    %B_L3L2_6_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 2) {init = 0 : i32, sym_name = "B_L3L2_6_prod_lock_0"}
    %B_L3L2_6_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 3) {init = 0 : i32, sym_name = "B_L3L2_6_cons_lock_0"}
    %B_L2L1_5_0_cons_buff_0 = aie.buffer(%tile_5_2) {address = 21760 : i32, sym_name = "B_L2L1_5_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_buff_1 = aie.buffer(%tile_5_2) {address = 35584 : i32, sym_name = "B_L2L1_5_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_prod_lock_0 = aie.lock(%tile_5_2, 2) {init = 2 : i32, sym_name = "B_L2L1_5_0_cons_prod_lock_0"}
    %B_L2L1_5_0_cons_cons_lock_0 = aie.lock(%tile_5_2, 3) {init = 0 : i32, sym_name = "B_L2L1_5_0_cons_cons_lock_0"}
    %B_L2L1_5_1_cons_buff_0 = aie.buffer(%tile_5_3) {address = 21760 : i32, sym_name = "B_L2L1_5_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_buff_1 = aie.buffer(%tile_5_3) {address = 35584 : i32, sym_name = "B_L2L1_5_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_prod_lock_0 = aie.lock(%tile_5_3, 2) {init = 2 : i32, sym_name = "B_L2L1_5_1_cons_prod_lock_0"}
    %B_L2L1_5_1_cons_cons_lock_0 = aie.lock(%tile_5_3, 3) {init = 0 : i32, sym_name = "B_L2L1_5_1_cons_cons_lock_0"}
    %B_L2L1_5_2_cons_buff_0 = aie.buffer(%tile_5_4) {address = 21760 : i32, sym_name = "B_L2L1_5_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_2_cons_buff_1 = aie.buffer(%tile_5_4) {address = 35584 : i32, sym_name = "B_L2L1_5_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_2_cons_prod_lock_0 = aie.lock(%tile_5_4, 2) {init = 2 : i32, sym_name = "B_L2L1_5_2_cons_prod_lock_0"}
    %B_L2L1_5_2_cons_cons_lock_0 = aie.lock(%tile_5_4, 3) {init = 0 : i32, sym_name = "B_L2L1_5_2_cons_cons_lock_0"}
    %B_L2L1_5_3_cons_buff_0 = aie.buffer(%tile_5_5) {address = 21760 : i32, sym_name = "B_L2L1_5_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_3_cons_buff_1 = aie.buffer(%tile_5_5) {address = 35584 : i32, sym_name = "B_L2L1_5_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_3_cons_prod_lock_0 = aie.lock(%tile_5_5, 2) {init = 2 : i32, sym_name = "B_L2L1_5_3_cons_prod_lock_0"}
    %B_L2L1_5_3_cons_cons_lock_0 = aie.lock(%tile_5_5, 3) {init = 0 : i32, sym_name = "B_L2L1_5_3_cons_cons_lock_0"}
    %B_L3L2_5_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 0) {init = 0 : i32, sym_name = "B_L3L2_5_prod_lock_0"}
    %B_L3L2_5_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 1) {init = 0 : i32, sym_name = "B_L3L2_5_cons_lock_0"}
    %B_L2L1_4_0_cons_buff_0 = aie.buffer(%tile_4_2) {address = 21760 : i32, sym_name = "B_L2L1_4_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_buff_1 = aie.buffer(%tile_4_2) {address = 35584 : i32, sym_name = "B_L2L1_4_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_prod_lock_0 = aie.lock(%tile_4_2, 2) {init = 2 : i32, sym_name = "B_L2L1_4_0_cons_prod_lock_0"}
    %B_L2L1_4_0_cons_cons_lock_0 = aie.lock(%tile_4_2, 3) {init = 0 : i32, sym_name = "B_L2L1_4_0_cons_cons_lock_0"}
    %B_L2L1_4_1_cons_buff_0 = aie.buffer(%tile_4_3) {address = 21760 : i32, sym_name = "B_L2L1_4_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_buff_1 = aie.buffer(%tile_4_3) {address = 35584 : i32, sym_name = "B_L2L1_4_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_prod_lock_0 = aie.lock(%tile_4_3, 2) {init = 2 : i32, sym_name = "B_L2L1_4_1_cons_prod_lock_0"}
    %B_L2L1_4_1_cons_cons_lock_0 = aie.lock(%tile_4_3, 3) {init = 0 : i32, sym_name = "B_L2L1_4_1_cons_cons_lock_0"}
    %B_L2L1_4_2_cons_buff_0 = aie.buffer(%tile_4_4) {address = 21760 : i32, sym_name = "B_L2L1_4_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_2_cons_buff_1 = aie.buffer(%tile_4_4) {address = 35584 : i32, sym_name = "B_L2L1_4_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_2_cons_prod_lock_0 = aie.lock(%tile_4_4, 2) {init = 2 : i32, sym_name = "B_L2L1_4_2_cons_prod_lock_0"}
    %B_L2L1_4_2_cons_cons_lock_0 = aie.lock(%tile_4_4, 3) {init = 0 : i32, sym_name = "B_L2L1_4_2_cons_cons_lock_0"}
    %B_L2L1_4_3_cons_buff_0 = aie.buffer(%tile_4_5) {address = 21760 : i32, sym_name = "B_L2L1_4_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_3_cons_buff_1 = aie.buffer(%tile_4_5) {address = 35584 : i32, sym_name = "B_L2L1_4_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_3_cons_prod_lock_0 = aie.lock(%tile_4_5, 2) {init = 2 : i32, sym_name = "B_L2L1_4_3_cons_prod_lock_0"}
    %B_L2L1_4_3_cons_cons_lock_0 = aie.lock(%tile_4_5, 3) {init = 0 : i32, sym_name = "B_L2L1_4_3_cons_cons_lock_0"}
    %B_L3L2_4_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 2) {init = 0 : i32, sym_name = "B_L3L2_4_prod_lock_0"}
    %B_L3L2_4_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 3) {init = 0 : i32, sym_name = "B_L3L2_4_cons_lock_0"}
    %B_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_3_2) {address = 21760 : i32, sym_name = "B_L2L1_3_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_3_2) {address = 35584 : i32, sym_name = "B_L2L1_3_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_prod_lock_0 = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "B_L2L1_3_0_cons_prod_lock_0"}
    %B_L2L1_3_0_cons_cons_lock_0 = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "B_L2L1_3_0_cons_cons_lock_0"}
    %B_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_3_3) {address = 21760 : i32, sym_name = "B_L2L1_3_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_3_3) {address = 35584 : i32, sym_name = "B_L2L1_3_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_prod_lock_0 = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "B_L2L1_3_1_cons_prod_lock_0"}
    %B_L2L1_3_1_cons_cons_lock_0 = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "B_L2L1_3_1_cons_cons_lock_0"}
    %B_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_3_4) {address = 21760 : i32, sym_name = "B_L2L1_3_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_3_4) {address = 35584 : i32, sym_name = "B_L2L1_3_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_2_cons_prod_lock_0 = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "B_L2L1_3_2_cons_prod_lock_0"}
    %B_L2L1_3_2_cons_cons_lock_0 = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "B_L2L1_3_2_cons_cons_lock_0"}
    %B_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 21760 : i32, sym_name = "B_L2L1_3_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 35584 : i32, sym_name = "B_L2L1_3_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_3_cons_prod_lock_0 = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "B_L2L1_3_3_cons_prod_lock_0"}
    %B_L2L1_3_3_cons_cons_lock_0 = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "B_L2L1_3_3_cons_cons_lock_0"}
    %B_L3L2_3_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 0 : i32, sym_name = "B_L3L2_3_prod_lock_0"}
    %B_L3L2_3_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "B_L3L2_3_cons_lock_0"}
    %B_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 21760 : i32, sym_name = "B_L2L1_2_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 35584 : i32, sym_name = "B_L2L1_2_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "B_L2L1_2_0_cons_prod_lock_0"}
    %B_L2L1_2_0_cons_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "B_L2L1_2_0_cons_cons_lock_0"}
    %B_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 21760 : i32, sym_name = "B_L2L1_2_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 35584 : i32, sym_name = "B_L2L1_2_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_prod_lock_0 = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "B_L2L1_2_1_cons_prod_lock_0"}
    %B_L2L1_2_1_cons_cons_lock_0 = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "B_L2L1_2_1_cons_cons_lock_0"}
    %B_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 21760 : i32, sym_name = "B_L2L1_2_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 35584 : i32, sym_name = "B_L2L1_2_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_2_cons_prod_lock_0 = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "B_L2L1_2_2_cons_prod_lock_0"}
    %B_L2L1_2_2_cons_cons_lock_0 = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "B_L2L1_2_2_cons_cons_lock_0"}
    %B_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_2_5) {address = 21760 : i32, sym_name = "B_L2L1_2_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_2_5) {address = 35584 : i32, sym_name = "B_L2L1_2_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_3_cons_prod_lock_0 = aie.lock(%tile_2_5, 2) {init = 2 : i32, sym_name = "B_L2L1_2_3_cons_prod_lock_0"}
    %B_L2L1_2_3_cons_cons_lock_0 = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "B_L2L1_2_3_cons_cons_lock_0"}
    %B_L3L2_2_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 2) {init = 0 : i32, sym_name = "B_L3L2_2_prod_lock_0"}
    %B_L3L2_2_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_lock_0"}
    %B_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 21760 : i32, sym_name = "B_L2L1_1_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 35584 : i32, sym_name = "B_L2L1_1_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "B_L2L1_1_0_cons_prod_lock_0"}
    %B_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "B_L2L1_1_0_cons_cons_lock_0"}
    %B_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 21760 : i32, sym_name = "B_L2L1_1_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 35584 : i32, sym_name = "B_L2L1_1_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "B_L2L1_1_1_cons_prod_lock_0"}
    %B_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "B_L2L1_1_1_cons_cons_lock_0"}
    %B_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_1_4) {address = 21760 : i32, sym_name = "B_L2L1_1_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_1_4) {address = 35584 : i32, sym_name = "B_L2L1_1_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_2_cons_prod_lock_0 = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "B_L2L1_1_2_cons_prod_lock_0"}
    %B_L2L1_1_2_cons_cons_lock_0 = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "B_L2L1_1_2_cons_cons_lock_0"}
    %B_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_1_5) {address = 21760 : i32, sym_name = "B_L2L1_1_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_1_5) {address = 35584 : i32, sym_name = "B_L2L1_1_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_3_cons_prod_lock_0 = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "B_L2L1_1_3_cons_prod_lock_0"}
    %B_L2L1_1_3_cons_cons_lock_0 = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "B_L2L1_1_3_cons_cons_lock_0"}
    %A_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 165888 : i32, sym_name = "A_L3L2_3_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 193536 : i32, sym_name = "A_L3L2_3_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_3_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 8) {init = 2 : i32, sym_name = "A_L3L2_3_cons_prod_lock_0"}
    %A_L3L2_3_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 9) {init = 0 : i32, sym_name = "A_L3L2_3_cons_cons_lock_0"}
    %A_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 165888 : i32, sym_name = "A_L3L2_2_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 193536 : i32, sym_name = "A_L3L2_2_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_2_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 8) {init = 2 : i32, sym_name = "A_L3L2_2_cons_prod_lock_0"}
    %A_L3L2_2_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 9) {init = 0 : i32, sym_name = "A_L3L2_2_cons_cons_lock_0"}
    %B_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 0 : i32, sym_name = "B_L3L2_1_prod_lock_0"}
    %B_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "B_L3L2_1_cons_lock_0"}
    %B_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 21760 : i32, sym_name = "B_L2L1_0_0_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 35584 : i32, sym_name = "B_L2L1_0_0_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "B_L2L1_0_0_cons_prod_lock_0"}
    %B_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "B_L2L1_0_0_cons_cons_lock_0"}
    %B_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 21760 : i32, sym_name = "B_L2L1_0_1_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 35584 : i32, sym_name = "B_L2L1_0_1_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "B_L2L1_0_1_cons_prod_lock_0"}
    %B_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "B_L2L1_0_1_cons_cons_lock_0"}
    %B_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_0_4) {address = 21760 : i32, sym_name = "B_L2L1_0_2_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_0_4) {address = 35584 : i32, sym_name = "B_L2L1_0_2_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_2_cons_prod_lock_0 = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "B_L2L1_0_2_cons_prod_lock_0"}
    %B_L2L1_0_2_cons_cons_lock_0 = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "B_L2L1_0_2_cons_cons_lock_0"}
    %B_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_0_5) {address = 21760 : i32, sym_name = "B_L2L1_0_3_cons_buff_0"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_0_5) {address = 35584 : i32, sym_name = "B_L2L1_0_3_cons_buff_1"} : memref<128x12x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_3_cons_prod_lock_0 = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "B_L2L1_0_3_cons_prod_lock_0"}
    %B_L2L1_0_3_cons_cons_lock_0 = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "B_L2L1_0_3_cons_cons_lock_0"}
    %A_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 165888 : i32, sym_name = "A_L3L2_1_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 193536 : i32, sym_name = "A_L3L2_1_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 8) {init = 2 : i32, sym_name = "A_L3L2_1_cons_prod_lock_0"}
    %A_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 9) {init = 0 : i32, sym_name = "A_L3L2_1_cons_cons_lock_0"}
    %A_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 165888 : i32, sym_name = "A_L3L2_0_cons_buff_0"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 193536 : i32, sym_name = "A_L3L2_0_cons_buff_1"} : memref<192x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 8) {init = 2 : i32, sym_name = "A_L3L2_0_cons_prod_lock_0"}
    %A_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 9) {init = 0 : i32, sym_name = "A_L3L2_0_cons_cons_lock_0"}
    %B_L3L2_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 0 : i32, sym_name = "B_L3L2_0_prod_lock_0"}
    %B_L3L2_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_lock_0"}
    %A_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 49408 : i32, sym_name = "A_L2L1_3_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 54016 : i32, sym_name = "A_L2L1_3_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_0_cons_prod_lock_0 = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_0_cons_prod_lock_0"}
    %A_L2L1_3_0_cons_cons_lock_0 = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_0_cons_cons_lock_0"}
    %A_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_1_5) {address = 49408 : i32, sym_name = "A_L2L1_3_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_1_5) {address = 54016 : i32, sym_name = "A_L2L1_3_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_1_cons_prod_lock_0 = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_1_cons_prod_lock_0"}
    %A_L2L1_3_1_cons_cons_lock_0 = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_1_cons_cons_lock_0"}
    %A_L2L1_3_2_cons_buff_0 = aie.buffer(%tile_2_5) {address = 49408 : i32, sym_name = "A_L2L1_3_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_2_cons_buff_1 = aie.buffer(%tile_2_5) {address = 54016 : i32, sym_name = "A_L2L1_3_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_2_cons_prod_lock_0 = aie.lock(%tile_2_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_2_cons_prod_lock_0"}
    %A_L2L1_3_2_cons_cons_lock_0 = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_2_cons_cons_lock_0"}
    %A_L2L1_3_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 49408 : i32, sym_name = "A_L2L1_3_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 54016 : i32, sym_name = "A_L2L1_3_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_3_cons_prod_lock_0 = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_3_cons_prod_lock_0"}
    %A_L2L1_3_3_cons_cons_lock_0 = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_3_cons_cons_lock_0"}
    %A_L2L1_3_4_cons_buff_0 = aie.buffer(%tile_4_5) {address = 49408 : i32, sym_name = "A_L2L1_3_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_4_cons_buff_1 = aie.buffer(%tile_4_5) {address = 54016 : i32, sym_name = "A_L2L1_3_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_4_cons_prod_lock_0 = aie.lock(%tile_4_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_4_cons_prod_lock_0"}
    %A_L2L1_3_4_cons_cons_lock_0 = aie.lock(%tile_4_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_4_cons_cons_lock_0"}
    %A_L2L1_3_5_cons_buff_0 = aie.buffer(%tile_5_5) {address = 49408 : i32, sym_name = "A_L2L1_3_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_5_cons_buff_1 = aie.buffer(%tile_5_5) {address = 54016 : i32, sym_name = "A_L2L1_3_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_5_cons_prod_lock_0 = aie.lock(%tile_5_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_5_cons_prod_lock_0"}
    %A_L2L1_3_5_cons_cons_lock_0 = aie.lock(%tile_5_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_5_cons_cons_lock_0"}
    %A_L2L1_3_6_cons_buff_0 = aie.buffer(%tile_6_5) {address = 49408 : i32, sym_name = "A_L2L1_3_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_6_cons_buff_1 = aie.buffer(%tile_6_5) {address = 54016 : i32, sym_name = "A_L2L1_3_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_6_cons_prod_lock_0 = aie.lock(%tile_6_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_6_cons_prod_lock_0"}
    %A_L2L1_3_6_cons_cons_lock_0 = aie.lock(%tile_6_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_6_cons_cons_lock_0"}
    %A_L2L1_3_7_cons_buff_0 = aie.buffer(%tile_7_5) {address = 49408 : i32, sym_name = "A_L2L1_3_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_7_cons_buff_1 = aie.buffer(%tile_7_5) {address = 54016 : i32, sym_name = "A_L2L1_3_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_3_7_cons_prod_lock_0 = aie.lock(%tile_7_5, 0) {init = 2 : i32, sym_name = "A_L2L1_3_7_cons_prod_lock_0"}
    %A_L2L1_3_7_cons_cons_lock_0 = aie.lock(%tile_7_5, 1) {init = 0 : i32, sym_name = "A_L2L1_3_7_cons_cons_lock_0"}
    %C_L2L3_7_buff_0 = aie.buffer(%mem_tile_7_1) {address = 0 : i32, sym_name = "C_L2L3_7_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_7_buff_1 = aie.buffer(%mem_tile_7_1) {address = 82944 : i32, sym_name = "C_L2L3_7_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_7_prod_lock_0 = aie.lock(%mem_tile_7_1, 0) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_0"}
    %C_L2L3_7_cons_lock_0 = aie.lock(%mem_tile_7_1, 1) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_0"}
    %C_L2L3_7_prod_lock_1 = aie.lock(%mem_tile_7_1, 2) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_1"}
    %C_L2L3_7_cons_lock_1 = aie.lock(%mem_tile_7_1, 3) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_1"}
    %C_L2L3_7_prod_lock_2 = aie.lock(%mem_tile_7_1, 4) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_2"}
    %C_L2L3_7_cons_lock_2 = aie.lock(%mem_tile_7_1, 5) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_2"}
    %C_L2L3_7_prod_lock_3 = aie.lock(%mem_tile_7_1, 6) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_3"}
    %C_L2L3_7_cons_lock_3 = aie.lock(%mem_tile_7_1, 7) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_3"}
    %C_L2L3_6_buff_0 = aie.buffer(%mem_tile_6_1) {address = 0 : i32, sym_name = "C_L2L3_6_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_6_buff_1 = aie.buffer(%mem_tile_6_1) {address = 82944 : i32, sym_name = "C_L2L3_6_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_6_prod_lock_0 = aie.lock(%mem_tile_6_1, 0) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_0"}
    %C_L2L3_6_cons_lock_0 = aie.lock(%mem_tile_6_1, 1) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_0"}
    %C_L2L3_6_prod_lock_1 = aie.lock(%mem_tile_6_1, 2) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_1"}
    %C_L2L3_6_cons_lock_1 = aie.lock(%mem_tile_6_1, 3) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_1"}
    %C_L2L3_6_prod_lock_2 = aie.lock(%mem_tile_6_1, 4) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_2"}
    %C_L2L3_6_cons_lock_2 = aie.lock(%mem_tile_6_1, 5) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_2"}
    %C_L2L3_6_prod_lock_3 = aie.lock(%mem_tile_6_1, 6) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_3"}
    %C_L2L3_6_cons_lock_3 = aie.lock(%mem_tile_6_1, 7) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_3"}
    %A_L3L2_3_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 0) {init = 0 : i32, sym_name = "A_L3L2_3_prod_lock_0"}
    %A_L3L2_3_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 1) {init = 0 : i32, sym_name = "A_L3L2_3_cons_lock_0"}
    %A_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 49408 : i32, sym_name = "A_L2L1_2_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 54016 : i32, sym_name = "A_L2L1_2_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_0_cons_prod_lock_0 = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_0_cons_prod_lock_0"}
    %A_L2L1_2_0_cons_cons_lock_0 = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_0_cons_cons_lock_0"}
    %A_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 49408 : i32, sym_name = "A_L2L1_2_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 54016 : i32, sym_name = "A_L2L1_2_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_1_cons_prod_lock_0 = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_1_cons_prod_lock_0"}
    %A_L2L1_2_1_cons_cons_lock_0 = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_1_cons_cons_lock_0"}
    %A_L2L1_2_2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 49408 : i32, sym_name = "A_L2L1_2_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 54016 : i32, sym_name = "A_L2L1_2_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_2_cons_prod_lock_0 = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_2_cons_prod_lock_0"}
    %A_L2L1_2_2_cons_cons_lock_0 = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_2_cons_cons_lock_0"}
    %A_L2L1_2_3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 49408 : i32, sym_name = "A_L2L1_2_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 54016 : i32, sym_name = "A_L2L1_2_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_3_cons_prod_lock_0 = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_3_cons_prod_lock_0"}
    %A_L2L1_2_3_cons_cons_lock_0 = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_3_cons_cons_lock_0"}
    %A_L2L1_2_4_cons_buff_0 = aie.buffer(%tile_4_4) {address = 49408 : i32, sym_name = "A_L2L1_2_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_4_cons_buff_1 = aie.buffer(%tile_4_4) {address = 54016 : i32, sym_name = "A_L2L1_2_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_4_cons_prod_lock_0 = aie.lock(%tile_4_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_4_cons_prod_lock_0"}
    %A_L2L1_2_4_cons_cons_lock_0 = aie.lock(%tile_4_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_4_cons_cons_lock_0"}
    %A_L2L1_2_5_cons_buff_0 = aie.buffer(%tile_5_4) {address = 49408 : i32, sym_name = "A_L2L1_2_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_5_cons_buff_1 = aie.buffer(%tile_5_4) {address = 54016 : i32, sym_name = "A_L2L1_2_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_5_cons_prod_lock_0 = aie.lock(%tile_5_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_5_cons_prod_lock_0"}
    %A_L2L1_2_5_cons_cons_lock_0 = aie.lock(%tile_5_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_5_cons_cons_lock_0"}
    %A_L2L1_2_6_cons_buff_0 = aie.buffer(%tile_6_4) {address = 49408 : i32, sym_name = "A_L2L1_2_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_6_cons_buff_1 = aie.buffer(%tile_6_4) {address = 54016 : i32, sym_name = "A_L2L1_2_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_6_cons_prod_lock_0 = aie.lock(%tile_6_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_6_cons_prod_lock_0"}
    %A_L2L1_2_6_cons_cons_lock_0 = aie.lock(%tile_6_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_6_cons_cons_lock_0"}
    %A_L2L1_2_7_cons_buff_0 = aie.buffer(%tile_7_4) {address = 49408 : i32, sym_name = "A_L2L1_2_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_7_cons_buff_1 = aie.buffer(%tile_7_4) {address = 54016 : i32, sym_name = "A_L2L1_2_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_2_7_cons_prod_lock_0 = aie.lock(%tile_7_4, 0) {init = 2 : i32, sym_name = "A_L2L1_2_7_cons_prod_lock_0"}
    %A_L2L1_2_7_cons_cons_lock_0 = aie.lock(%tile_7_4, 1) {init = 0 : i32, sym_name = "A_L2L1_2_7_cons_cons_lock_0"}
    %C_L2L3_5_buff_0 = aie.buffer(%mem_tile_5_1) {address = 0 : i32, sym_name = "C_L2L3_5_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_5_buff_1 = aie.buffer(%mem_tile_5_1) {address = 82944 : i32, sym_name = "C_L2L3_5_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_5_prod_lock_0 = aie.lock(%mem_tile_5_1, 0) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_0"}
    %C_L2L3_5_cons_lock_0 = aie.lock(%mem_tile_5_1, 1) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_0"}
    %C_L2L3_5_prod_lock_1 = aie.lock(%mem_tile_5_1, 2) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_1"}
    %C_L2L3_5_cons_lock_1 = aie.lock(%mem_tile_5_1, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_1"}
    %C_L2L3_5_prod_lock_2 = aie.lock(%mem_tile_5_1, 4) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_2"}
    %C_L2L3_5_cons_lock_2 = aie.lock(%mem_tile_5_1, 5) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_2"}
    %C_L2L3_5_prod_lock_3 = aie.lock(%mem_tile_5_1, 6) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_3"}
    %C_L2L3_5_cons_lock_3 = aie.lock(%mem_tile_5_1, 7) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_3"}
    %C_L2L3_4_buff_0 = aie.buffer(%mem_tile_4_1) {address = 0 : i32, sym_name = "C_L2L3_4_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_4_buff_1 = aie.buffer(%mem_tile_4_1) {address = 82944 : i32, sym_name = "C_L2L3_4_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_4_prod_lock_0 = aie.lock(%mem_tile_4_1, 0) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_0"}
    %C_L2L3_4_cons_lock_0 = aie.lock(%mem_tile_4_1, 1) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_0"}
    %C_L2L3_4_prod_lock_1 = aie.lock(%mem_tile_4_1, 2) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_1"}
    %C_L2L3_4_cons_lock_1 = aie.lock(%mem_tile_4_1, 3) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_1"}
    %C_L2L3_4_prod_lock_2 = aie.lock(%mem_tile_4_1, 4) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_2"}
    %C_L2L3_4_cons_lock_2 = aie.lock(%mem_tile_4_1, 5) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_2"}
    %C_L2L3_4_prod_lock_3 = aie.lock(%mem_tile_4_1, 6) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_3"}
    %C_L2L3_4_cons_lock_3 = aie.lock(%mem_tile_4_1, 7) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_3"}
    %A_L3L2_2_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 0) {init = 0 : i32, sym_name = "A_L3L2_2_prod_lock_0"}
    %A_L3L2_2_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 1) {init = 0 : i32, sym_name = "A_L3L2_2_cons_lock_0"}
    %A_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 49408 : i32, sym_name = "A_L2L1_1_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 54016 : i32, sym_name = "A_L2L1_1_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_0_cons_prod_lock_0"}
    %A_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_0_cons_cons_lock_0"}
    %A_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 49408 : i32, sym_name = "A_L2L1_1_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 54016 : i32, sym_name = "A_L2L1_1_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_1_cons_prod_lock_0"}
    %A_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_1_cons_cons_lock_0"}
    %A_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_2_3) {address = 49408 : i32, sym_name = "A_L2L1_1_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_2_3) {address = 54016 : i32, sym_name = "A_L2L1_1_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_2_cons_prod_lock_0 = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_2_cons_prod_lock_0"}
    %A_L2L1_1_2_cons_cons_lock_0 = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_2_cons_cons_lock_0"}
    %A_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_3_3) {address = 49408 : i32, sym_name = "A_L2L1_1_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_3_3) {address = 54016 : i32, sym_name = "A_L2L1_1_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_3_cons_prod_lock_0 = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_3_cons_prod_lock_0"}
    %A_L2L1_1_3_cons_cons_lock_0 = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_3_cons_cons_lock_0"}
    %A_L2L1_1_4_cons_buff_0 = aie.buffer(%tile_4_3) {address = 49408 : i32, sym_name = "A_L2L1_1_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_4_cons_buff_1 = aie.buffer(%tile_4_3) {address = 54016 : i32, sym_name = "A_L2L1_1_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_4_cons_prod_lock_0 = aie.lock(%tile_4_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_4_cons_prod_lock_0"}
    %A_L2L1_1_4_cons_cons_lock_0 = aie.lock(%tile_4_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_4_cons_cons_lock_0"}
    %A_L2L1_1_5_cons_buff_0 = aie.buffer(%tile_5_3) {address = 49408 : i32, sym_name = "A_L2L1_1_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_5_cons_buff_1 = aie.buffer(%tile_5_3) {address = 54016 : i32, sym_name = "A_L2L1_1_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_5_cons_prod_lock_0 = aie.lock(%tile_5_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_5_cons_prod_lock_0"}
    %A_L2L1_1_5_cons_cons_lock_0 = aie.lock(%tile_5_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_5_cons_cons_lock_0"}
    %A_L2L1_1_6_cons_buff_0 = aie.buffer(%tile_6_3) {address = 49408 : i32, sym_name = "A_L2L1_1_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_6_cons_buff_1 = aie.buffer(%tile_6_3) {address = 54016 : i32, sym_name = "A_L2L1_1_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_6_cons_prod_lock_0 = aie.lock(%tile_6_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_6_cons_prod_lock_0"}
    %A_L2L1_1_6_cons_cons_lock_0 = aie.lock(%tile_6_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_6_cons_cons_lock_0"}
    %A_L2L1_1_7_cons_buff_0 = aie.buffer(%tile_7_3) {address = 49408 : i32, sym_name = "A_L2L1_1_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_7_cons_buff_1 = aie.buffer(%tile_7_3) {address = 54016 : i32, sym_name = "A_L2L1_1_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_1_7_cons_prod_lock_0 = aie.lock(%tile_7_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_7_cons_prod_lock_0"}
    %A_L2L1_1_7_cons_cons_lock_0 = aie.lock(%tile_7_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_7_cons_cons_lock_0"}
    %C_L2L3_3_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, sym_name = "C_L2L3_3_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_3_buff_1 = aie.buffer(%mem_tile_3_1) {address = 82944 : i32, sym_name = "C_L2L3_3_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_3_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_0"}
    %C_L2L3_3_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_0"}
    %C_L2L3_3_prod_lock_1 = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_1"}
    %C_L2L3_3_cons_lock_1 = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_1"}
    %C_L2L3_3_prod_lock_2 = aie.lock(%mem_tile_3_1, 4) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_2"}
    %C_L2L3_3_cons_lock_2 = aie.lock(%mem_tile_3_1, 5) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_2"}
    %C_L2L3_3_prod_lock_3 = aie.lock(%mem_tile_3_1, 6) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_3"}
    %C_L2L3_3_cons_lock_3 = aie.lock(%mem_tile_3_1, 7) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_3"}
    %C_L2L3_2_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "C_L2L3_2_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_2_buff_1 = aie.buffer(%mem_tile_2_1) {address = 82944 : i32, sym_name = "C_L2L3_2_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_2_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_0"}
    %C_L2L3_2_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_0"}
    %C_L2L3_2_prod_lock_1 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_1"}
    %C_L2L3_2_cons_lock_1 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_1"}
    %C_L2L3_2_prod_lock_2 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_2"}
    %C_L2L3_2_cons_lock_2 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_2"}
    %C_L2L3_2_prod_lock_3 = aie.lock(%mem_tile_2_1, 6) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_3"}
    %C_L2L3_2_cons_lock_3 = aie.lock(%mem_tile_2_1, 7) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_3"}
    %A_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 0 : i32, sym_name = "A_L3L2_1_prod_lock_0"}
    %A_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_lock_0"}
    %A_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 49408 : i32, sym_name = "A_L2L1_0_0_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 54016 : i32, sym_name = "A_L2L1_0_0_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_0_cons_prod_lock_0"}
    %A_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_0_cons_cons_lock_0"}
    %A_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 49408 : i32, sym_name = "A_L2L1_0_1_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 54016 : i32, sym_name = "A_L2L1_0_1_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_1_cons_prod_lock_0"}
    %A_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_1_cons_cons_lock_0"}
    %A_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 49408 : i32, sym_name = "A_L2L1_0_2_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 54016 : i32, sym_name = "A_L2L1_0_2_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_2_cons_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_2_cons_prod_lock_0"}
    %A_L2L1_0_2_cons_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_2_cons_cons_lock_0"}
    %A_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 49408 : i32, sym_name = "A_L2L1_0_3_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 54016 : i32, sym_name = "A_L2L1_0_3_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_3_cons_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_3_cons_prod_lock_0"}
    %A_L2L1_0_3_cons_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_3_cons_cons_lock_0"}
    %A_L2L1_0_4_cons_buff_0 = aie.buffer(%tile_4_2) {address = 49408 : i32, sym_name = "A_L2L1_0_4_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_4_cons_buff_1 = aie.buffer(%tile_4_2) {address = 54016 : i32, sym_name = "A_L2L1_0_4_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_4_cons_prod_lock_0 = aie.lock(%tile_4_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_4_cons_prod_lock_0"}
    %A_L2L1_0_4_cons_cons_lock_0 = aie.lock(%tile_4_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_4_cons_cons_lock_0"}
    %A_L2L1_0_5_cons_buff_0 = aie.buffer(%tile_5_2) {address = 49408 : i32, sym_name = "A_L2L1_0_5_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_5_cons_buff_1 = aie.buffer(%tile_5_2) {address = 54016 : i32, sym_name = "A_L2L1_0_5_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_5_cons_prod_lock_0 = aie.lock(%tile_5_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_5_cons_prod_lock_0"}
    %A_L2L1_0_5_cons_cons_lock_0 = aie.lock(%tile_5_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_5_cons_cons_lock_0"}
    %A_L2L1_0_6_cons_buff_0 = aie.buffer(%tile_6_2) {address = 49408 : i32, sym_name = "A_L2L1_0_6_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_6_cons_buff_1 = aie.buffer(%tile_6_2) {address = 54016 : i32, sym_name = "A_L2L1_0_6_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_6_cons_prod_lock_0 = aie.lock(%tile_6_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_6_cons_prod_lock_0"}
    %A_L2L1_0_6_cons_cons_lock_0 = aie.lock(%tile_6_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_6_cons_cons_lock_0"}
    %A_L2L1_0_7_cons_buff_0 = aie.buffer(%tile_7_2) {address = 49408 : i32, sym_name = "A_L2L1_0_7_cons_buff_0"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_7_cons_buff_1 = aie.buffer(%tile_7_2) {address = 54016 : i32, sym_name = "A_L2L1_0_7_cons_buff_1"} : memref<32x16x!aiex.bfp<"v8bfp16ebs8">> 
    %A_L2L1_0_7_cons_prod_lock_0 = aie.lock(%tile_7_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_7_cons_prod_lock_0"}
    %A_L2L1_0_7_cons_cons_lock_0 = aie.lock(%tile_7_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_7_cons_cons_lock_0"}
    %C_L2L3_1_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "C_L2L3_1_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_1_buff_1 = aie.buffer(%mem_tile_1_1) {address = 82944 : i32, sym_name = "C_L2L3_1_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_1_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_0"}
    %C_L2L3_1_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_0"}
    %C_L2L3_1_prod_lock_1 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_1"}
    %C_L2L3_1_cons_lock_1 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_1"}
    %C_L2L3_1_prod_lock_2 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_2"}
    %C_L2L3_1_cons_lock_2 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_2"}
    %C_L2L3_1_prod_lock_3 = aie.lock(%mem_tile_1_1, 6) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_3"}
    %C_L2L3_1_cons_lock_3 = aie.lock(%mem_tile_1_1, 7) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_3"}
    %C_L2L3_0_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "C_L2L3_0_buff_0"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_0_buff_1 = aie.buffer(%mem_tile_0_1) {address = 82944 : i32, sym_name = "C_L2L3_0_buff_1"} : memref<768x12x!aiex.bfp<"v8bfp16ebs8">> 
    %C_L2L3_0_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_0"}
    %C_L2L3_0_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_0"}
    %C_L2L3_0_prod_lock_1 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_1"}
    %C_L2L3_0_cons_lock_1 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_1"}
    %C_L2L3_0_prod_lock_2 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_2"}
    %C_L2L3_0_cons_lock_2 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_2"}
    %C_L2L3_0_prod_lock_3 = aie.lock(%mem_tile_0_1, 6) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_3"}
    %C_L2L3_0_cons_lock_3 = aie.lock(%mem_tile_0_1, 7) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_3"}
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
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 58624 : i32, sym_name = "_anonymous0"} : memref<3xi32> 
    %core_0_2 = aie.core(%tile_0_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_0_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous1 = aie.buffer(%tile_1_2) {address = 58624 : i32, sym_name = "_anonymous1"} : memref<3xi32> 
    %core_1_2 = aie.core(%tile_1_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_1_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous2 = aie.buffer(%tile_2_2) {address = 58624 : i32, sym_name = "_anonymous2"} : memref<3xi32> 
    %core_2_2 = aie.core(%tile_2_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_2_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous3 = aie.buffer(%tile_3_2) {address = 58624 : i32, sym_name = "_anonymous3"} : memref<3xi32> 
    %core_3_2 = aie.core(%tile_3_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_3_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous4 = aie.buffer(%tile_4_2) {address = 58624 : i32, sym_name = "_anonymous4"} : memref<3xi32> 
    %core_4_2 = aie.core(%tile_4_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_4_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous5 = aie.buffer(%tile_5_2) {address = 58624 : i32, sym_name = "_anonymous5"} : memref<3xi32> 
    %core_5_2 = aie.core(%tile_5_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_5_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous6 = aie.buffer(%tile_6_2) {address = 58624 : i32, sym_name = "_anonymous6"} : memref<3xi32> 
    %core_6_2 = aie.core(%tile_6_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_6_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous7 = aie.buffer(%tile_7_2) {address = 58624 : i32, sym_name = "_anonymous7"} : memref<3xi32> 
    %core_7_2 = aie.core(%tile_7_2) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_7_2.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous8 = aie.buffer(%tile_0_3) {address = 58624 : i32, sym_name = "_anonymous8"} : memref<3xi32> 
    %core_0_3 = aie.core(%tile_0_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_0_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous9 = aie.buffer(%tile_1_3) {address = 58624 : i32, sym_name = "_anonymous9"} : memref<3xi32> 
    %core_1_3 = aie.core(%tile_1_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_1_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous10 = aie.buffer(%tile_2_3) {address = 58624 : i32, sym_name = "_anonymous10"} : memref<3xi32> 
    %core_2_3 = aie.core(%tile_2_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_2_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous11 = aie.buffer(%tile_3_3) {address = 58624 : i32, sym_name = "_anonymous11"} : memref<3xi32> 
    %core_3_3 = aie.core(%tile_3_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_3_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous12 = aie.buffer(%tile_4_3) {address = 58624 : i32, sym_name = "_anonymous12"} : memref<3xi32> 
    %core_4_3 = aie.core(%tile_4_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_4_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous13 = aie.buffer(%tile_5_3) {address = 58624 : i32, sym_name = "_anonymous13"} : memref<3xi32> 
    %core_5_3 = aie.core(%tile_5_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_5_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous14 = aie.buffer(%tile_6_3) {address = 58624 : i32, sym_name = "_anonymous14"} : memref<3xi32> 
    %core_6_3 = aie.core(%tile_6_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_6_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous15 = aie.buffer(%tile_7_3) {address = 58624 : i32, sym_name = "_anonymous15"} : memref<3xi32> 
    %core_7_3 = aie.core(%tile_7_3) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_7_3.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous16 = aie.buffer(%tile_0_4) {address = 58624 : i32, sym_name = "_anonymous16"} : memref<3xi32> 
    %core_0_4 = aie.core(%tile_0_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_0_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous17 = aie.buffer(%tile_1_4) {address = 58624 : i32, sym_name = "_anonymous17"} : memref<3xi32> 
    %core_1_4 = aie.core(%tile_1_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_1_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous18 = aie.buffer(%tile_2_4) {address = 58624 : i32, sym_name = "_anonymous18"} : memref<3xi32> 
    %core_2_4 = aie.core(%tile_2_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_2_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous19 = aie.buffer(%tile_3_4) {address = 58624 : i32, sym_name = "_anonymous19"} : memref<3xi32> 
    %core_3_4 = aie.core(%tile_3_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_3_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous20 = aie.buffer(%tile_4_4) {address = 58624 : i32, sym_name = "_anonymous20"} : memref<3xi32> 
    %core_4_4 = aie.core(%tile_4_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_4_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous21 = aie.buffer(%tile_5_4) {address = 58624 : i32, sym_name = "_anonymous21"} : memref<3xi32> 
    %core_5_4 = aie.core(%tile_5_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_5_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous22 = aie.buffer(%tile_6_4) {address = 58624 : i32, sym_name = "_anonymous22"} : memref<3xi32> 
    %core_6_4 = aie.core(%tile_6_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_6_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous23 = aie.buffer(%tile_7_4) {address = 58624 : i32, sym_name = "_anonymous23"} : memref<3xi32> 
    %core_7_4 = aie.core(%tile_7_4) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_7_4.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous24 = aie.buffer(%tile_0_5) {address = 58624 : i32, sym_name = "_anonymous24"} : memref<3xi32> 
    %core_0_5 = aie.core(%tile_0_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_0_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous25 = aie.buffer(%tile_1_5) {address = 58624 : i32, sym_name = "_anonymous25"} : memref<3xi32> 
    %core_1_5 = aie.core(%tile_1_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_1_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous26 = aie.buffer(%tile_2_5) {address = 58624 : i32, sym_name = "_anonymous26"} : memref<3xi32> 
    %core_2_5 = aie.core(%tile_2_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_2_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous27 = aie.buffer(%tile_3_5) {address = 58624 : i32, sym_name = "_anonymous27"} : memref<3xi32> 
    %core_3_5 = aie.core(%tile_3_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_3_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous28 = aie.buffer(%tile_4_5) {address = 58624 : i32, sym_name = "_anonymous28"} : memref<3xi32> 
    %core_4_5 = aie.core(%tile_4_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_4_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous29 = aie.buffer(%tile_5_5) {address = 58624 : i32, sym_name = "_anonymous29"} : memref<3xi32> 
    %core_5_5 = aie.core(%tile_5_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_5_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous30 = aie.buffer(%tile_6_5) {address = 58624 : i32, sym_name = "_anonymous30"} : memref<3xi32> 
    %core_6_5 = aie.core(%tile_6_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_6_5.elf", link_files = ["mm_192x128x96.o"]}
    %_anonymous31 = aie.buffer(%tile_7_5) {address = 58624 : i32, sym_name = "_anonymous31"} : memref<3xi32> 
    %core_7_5 = aie.core(%tile_7_5) {
      aie.end
    } {elf_file = "/home/bcloud/torch2aie/examples/gemm_asymmetric_tile_buffering/config2/build_40col/aie_8col_v2.mlir.prj/main_core_7_5.elf", link_files = ["mm_192x128x96.o"]}
    aie.runtime_sequence @seq(%arg0: memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, %arg1: memref<786432x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<589824x!aiex.bfp<"v8bfp16ebs8">>) {
      %0 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 0, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 98304, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 196608, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 294912, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 0, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 49152, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 98304, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 147456, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 196608, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 245760, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 294912, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 344064, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 0, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 9216, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 18432, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 27648, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 36864, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 46080, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%17)
      %18 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 55296, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 64512, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 0, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 98304, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 196608, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 294912, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%23)
      %24 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 393216, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 442368, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 491520, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 540672, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 589824, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 638976, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%29)
      %30 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 688128, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 737280, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 73728, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 82944, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 92160, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 101376, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%35)
      %36 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 110592, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 119808, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 129024, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 138240, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%39)
      %40 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 393216, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 491520, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%41)
      %42 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 589824, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 688128, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 0, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 49152, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 98304, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 147456, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%47)
      %48 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 196608, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 245760, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 294912, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 344064, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 147456, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 156672, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%53)
      %54 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 165888, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 175104, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 184320, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 193536, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 202752, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 211968, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%59)
      %60 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 393216, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 491520, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 589824, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 688128, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 393216, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 442368, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%65)
      %66 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 491520, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 540672, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 589824, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 638976, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 688128, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 737280, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%71)
      %72 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 221184, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%72)
      %73 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 230400, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%73)
      %74 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 239616, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%74)
      %75 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 248832, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%75)
      %76 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 258048, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%76)
      %77 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 267264, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%77)
      %78 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 276480, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%78)
      %79 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 285696, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%79)
      %80 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 786432, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%80)
      %81 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 884736, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%81)
      %82 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 983040, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%82)
      %83 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1081344, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%83)
      %84 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 0, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%84)
      %85 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 49152, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%85)
      %86 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 98304, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%86)
      %87 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 147456, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%87)
      %88 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 196608, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%88)
      %89 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 245760, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%89)
      %90 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 294912, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%90)
      %91 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 344064, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%91)
      %92 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 294912, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%92)
      %93 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 304128, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%93)
      %94 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 313344, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%94)
      %95 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 322560, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%95)
      %96 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 331776, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%96)
      %97 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 340992, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%97)
      %98 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 350208, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%98)
      %99 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 359424, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%99)
      %100 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 786432, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%100)
      %101 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 884736, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%101)
      %102 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 983040, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%102)
      %103 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1081344, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%103)
      %104 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 393216, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%104)
      %105 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 442368, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%105)
      %106 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 491520, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%106)
      %107 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 540672, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%107)
      %108 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 589824, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%108)
      %109 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 638976, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%109)
      %110 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 688128, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%110)
      %111 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 737280, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%111)
      %112 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 368640, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%112)
      %113 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 377856, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%113)
      %114 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 387072, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%114)
      %115 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 396288, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%115)
      %116 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 405504, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%116)
      %117 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 414720, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%117)
      %118 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 423936, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%118)
      %119 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 433152, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%119)
      %120 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1179648, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%120)
      %121 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1277952, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%121)
      %122 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1376256, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%122)
      %123 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1474560, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%123)
      %124 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 0, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%124)
      %125 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 49152, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%125)
      %126 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 98304, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%126)
      %127 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 147456, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%127)
      %128 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 196608, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%128)
      %129 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 245760, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%129)
      %130 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 294912, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%130)
      %131 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 344064, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%131)
      %132 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 442368, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%132)
      %133 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 451584, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%133)
      %134 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 460800, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%134)
      %135 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 470016, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%135)
      %136 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 479232, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%136)
      %137 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 488448, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%137)
      %138 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 497664, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%138)
      %139 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 506880, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%139)
      %140 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1179648, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%140)
      %141 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1277952, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%141)
      %142 = aiex.dma_configure_task_for @A_L3L2_2_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1376256, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%142)
      %143 = aiex.dma_configure_task_for @A_L3L2_3_shim_alloc {
        aie.dma_bd(%arg0 : memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, 1474560, 98304, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%143)
      %144 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 393216, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%144)
      %145 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 442368, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%145)
      %146 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 491520, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%146)
      %147 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 540672, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%147)
      %148 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 589824, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%148)
      %149 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 638976, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%149)
      %150 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 688128, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%150)
      %151 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<786432x!aiex.bfp<"v8bfp16ebs8">>, 737280, 49152, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%151)
      %152 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 516096, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%152)
      %153 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 525312, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%153)
      %154 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 534528, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%154)
      %155 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 543744, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%155)
      %156 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 552960, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%156)
      %157 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 562176, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%157)
      %158 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 571392, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%158)
      %159 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<589824x!aiex.bfp<"v8bfp16ebs8">>, 580608, 9216, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%159)
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
      aie.connect<North : 2, DMA : 3>
      aie.connect<North : 0, DMA : 4>
      aie.connect<North : 3, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, DMA : 0>
      aie.connect<East : 0, North : 5>
      aie.connect<South : 5, North : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 2>
      aie.connect<North : 0, South : 0>
      aie.connect<North : 3, South : 3>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<West : 2, East : 1>
      aie.connect<West : 2, DMA : 0>
      aie.connect<East : 3, West : 0>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 1, East : 2>
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 1, East : 0>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, West : 3>
      aie.connect<East : 3, North : 5>
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
      aie.connect<East : 2, North : 0>
      aie.connect<East : 2, West : 3>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 2>
      aie.connect<North : 2, South : 3>
    }
    %switchbox_4_2 = aie.switchbox(%tile_4_2) {
      aie.connect<West : 1, East : 0>
      aie.connect<West : 1, DMA : 0>
      aie.connect<West : 2, East : 2>
      aie.connect<West : 2, North : 3>
      aie.connect<South : 1, North : 5>
      aie.connect<East : 1, West : 2>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 0, South : 0>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_5_2 = aie.switchbox(%tile_5_2) {
      aie.connect<West : 0, East : 2>
      aie.connect<West : 0, DMA : 0>
      aie.connect<West : 2, East : 0>
      aie.connect<West : 2, North : 1>
      aie.connect<East : 3, West : 1>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
      aie.connect<North : 2, South : 3>
    }
    %switchbox_6_2 = aie.switchbox(%tile_6_2) {
      aie.connect<West : 2, East : 0>
      aie.connect<West : 2, DMA : 0>
      aie.connect<West : 0, East : 3>
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, West : 3>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_7_2 = aie.switchbox(%tile_7_2) {
      aie.connect<West : 0, DMA : 0>
      aie.connect<West : 3, North : 5>
      aie.connect<West : 2, North : 3>
      aie.connect<South : 1, North : 4>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 1>
      aie.connect<North : 2, South : 2>
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
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<East : 3, DMA : 0>
      aie.connect<East : 0, North : 2>
      aie.connect<South : 3, North : 5>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 3, South : 3>
      aie.connect<North : 2, South : 0>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<South : 3, East : 1>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 3, West : 3>
      aie.connect<East : 2, North : 5>
      aie.connect<South : 5, West : 0>
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
      aie.connect<South : 0, North : 2>
      aie.connect<South : 3, North : 5>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_4_3 = aie.switchbox(%tile_4_3) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 5, West : 2>
      aie.connect<East : 3, North : 4>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 1, South : 0>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_5_3 = aie.switchbox(%tile_5_3) {
      aie.connect<South : 1, East : 1>
      aie.connect<South : 1, DMA : 0>
      aie.connect<East : 2, North : 5>
      aie.connect<East : 2, West : 3>
      aie.connect<South : 3, North : 2>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 2>
    }
    %switchbox_6_3 = aie.switchbox(%tile_6_3) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 3, North : 2>
      aie.connect<South : 3, West : 2>
      aie.connect<South : 1, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 3, South : 0>
    }
    %switchbox_7_3 = aie.switchbox(%tile_7_3) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 3, North : 4>
      aie.connect<South : 4, North : 2>
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
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 0, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
      aie.connect<East : 3, DMA : 0>
      aie.connect<South : 1, North : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<East : 2, DMA : 0>
      aie.connect<East : 2, West : 3>
      aie.connect<South : 2, North : 5>
      aie.connect<South : 5, North : 4>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 5, West : 2>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 2, North : 2>
      aie.connect<South : 5, North : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_4_4 = aie.switchbox(%tile_4_4) {
      aie.connect<South : 5, East : 0>
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 4, North : 4>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_5_4 = aie.switchbox(%tile_5_4) {
      aie.connect<West : 0, East : 2>
      aie.connect<West : 0, DMA : 0>
      aie.connect<South : 5, North : 3>
      aie.connect<South : 2, North : 4>
      aie.connect<South : 2, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_6_4 = aie.switchbox(%tile_6_4) {
      aie.connect<West : 2, East : 3>
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 2, North : 5>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_7_4 = aie.switchbox(%tile_7_4) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<South : 4, North : 3>
      aie.connect<South : 2, North : 2>
      aie.connect<South : 2, DMA : 1>
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
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 2, South : 2>
    }
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
      aie.connect<East : 1, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 5, West : 1>
      aie.connect<South : 4, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
      aie.connect<East : 0, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 2, West : 0>
      aie.connect<South : 3, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_4_5 = aie.switchbox(%tile_4_5) {
      aie.connect<South : 4, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_5_5 = aie.switchbox(%tile_5_5) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 4, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_6_5 = aie.switchbox(%tile_6_5) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_7_5 = aie.switchbox(%tile_7_5) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 2, DMA : 1>
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
      aie.connect<North : 3, DMA : 3>
      aie.connect<North : 2, DMA : 4>
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
      aie.connect<North : 2, DMA : 3>
      aie.connect<North : 3, DMA : 4>
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
      aie.connect<North : 2, DMA : 3>
      aie.connect<North : 3, DMA : 4>
      aie.connect<DMA : 1, South : 2>
    }
    %switchbox_7_0 = aie.switchbox(%shim_noc_tile_7_0) {
      aie.connect<South : 3, North : 1>
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
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<North : 3, DMA : 1>
      aie.connect<North : 0, DMA : 2>
      aie.connect<North : 1, DMA : 3>
      aie.connect<North : 2, DMA : 4>
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
