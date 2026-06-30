module {
  aie.device(npu2) {
    func.func private @zero_kernel_bf16(memref<128x128xbf16>) attributes {link_with = "mm_128x64x128.o"}
    func.func private @matmul_vectorized_different_datatypes(memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) attributes {link_with = "mm_128x64x128.o"}
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
    %C_L2L3_7_cons_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 2) {init = 0 : i32, sym_name = "C_L2L3_7_cons_prod_lock_0"}
    %C_L2L3_7_cons_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 3) {init = 0 : i32, sym_name = "C_L2L3_7_cons_cons_lock_0"}
    %C_L2L3_7_buff_0 = aie.buffer(%mem_tile_7_1) {address = 0 : i32, sym_name = "C_L2L3_7_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_7_buff_1 = aie.buffer(%mem_tile_7_1) {address = 65536 : i32, sym_name = "C_L2L3_7_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_7_prod_lock_0 = aie.lock(%mem_tile_7_1, 2) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_0"}
    %C_L2L3_7_cons_lock_0 = aie.lock(%mem_tile_7_1, 3) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_0"}
    %C_L2L3_7_prod_lock_1 = aie.lock(%mem_tile_7_1, 4) {init = 2 : i32, sym_name = "C_L2L3_7_prod_lock_1"}
    %C_L2L3_7_cons_lock_1 = aie.lock(%mem_tile_7_1, 5) {init = 0 : i32, sym_name = "C_L2L3_7_cons_lock_1"}
    %C_L1L2_7_1_buff_0 = aie.buffer(%tile_7_3) {address = 3328 : i32, sym_name = "C_L1L2_7_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_7_1_prod_lock_0 = aie.lock(%tile_7_3, 4) {init = 1 : i32, sym_name = "C_L1L2_7_1_prod_lock_0"}
    %C_L1L2_7_1_cons_lock_0 = aie.lock(%tile_7_3, 5) {init = 0 : i32, sym_name = "C_L1L2_7_1_cons_lock_0"}
    %C_L1L2_7_0_buff_0 = aie.buffer(%tile_7_2) {address = 3328 : i32, sym_name = "C_L1L2_7_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_7_0_prod_lock_0 = aie.lock(%tile_7_2, 4) {init = 1 : i32, sym_name = "C_L1L2_7_0_prod_lock_0"}
    %C_L1L2_7_0_cons_lock_0 = aie.lock(%tile_7_2, 5) {init = 0 : i32, sym_name = "C_L1L2_7_0_cons_lock_0"}
    %C_L2L3_6_cons_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 2) {init = 0 : i32, sym_name = "C_L2L3_6_cons_prod_lock_0"}
    %C_L2L3_6_cons_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 3) {init = 0 : i32, sym_name = "C_L2L3_6_cons_cons_lock_0"}
    %C_L2L3_6_buff_0 = aie.buffer(%mem_tile_6_1) {address = 0 : i32, sym_name = "C_L2L3_6_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_6_buff_1 = aie.buffer(%mem_tile_6_1) {address = 65536 : i32, sym_name = "C_L2L3_6_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_6_prod_lock_0 = aie.lock(%mem_tile_6_1, 2) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_0"}
    %C_L2L3_6_cons_lock_0 = aie.lock(%mem_tile_6_1, 3) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_0"}
    %C_L2L3_6_prod_lock_1 = aie.lock(%mem_tile_6_1, 4) {init = 2 : i32, sym_name = "C_L2L3_6_prod_lock_1"}
    %C_L2L3_6_cons_lock_1 = aie.lock(%mem_tile_6_1, 5) {init = 0 : i32, sym_name = "C_L2L3_6_cons_lock_1"}
    %C_L1L2_6_1_buff_0 = aie.buffer(%tile_6_3) {address = 3328 : i32, sym_name = "C_L1L2_6_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_6_1_prod_lock_0 = aie.lock(%tile_6_3, 4) {init = 1 : i32, sym_name = "C_L1L2_6_1_prod_lock_0"}
    %C_L1L2_6_1_cons_lock_0 = aie.lock(%tile_6_3, 5) {init = 0 : i32, sym_name = "C_L1L2_6_1_cons_lock_0"}
    %C_L1L2_6_0_buff_0 = aie.buffer(%tile_6_2) {address = 3328 : i32, sym_name = "C_L1L2_6_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_6_0_prod_lock_0 = aie.lock(%tile_6_2, 4) {init = 1 : i32, sym_name = "C_L1L2_6_0_prod_lock_0"}
    %C_L1L2_6_0_cons_lock_0 = aie.lock(%tile_6_2, 5) {init = 0 : i32, sym_name = "C_L1L2_6_0_cons_lock_0"}
    %C_L2L3_5_cons_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 2) {init = 0 : i32, sym_name = "C_L2L3_5_cons_prod_lock_0"}
    %C_L2L3_5_cons_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_cons_lock_0"}
    %C_L2L3_5_buff_0 = aie.buffer(%mem_tile_5_1) {address = 0 : i32, sym_name = "C_L2L3_5_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_5_buff_1 = aie.buffer(%mem_tile_5_1) {address = 65536 : i32, sym_name = "C_L2L3_5_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_5_prod_lock_0 = aie.lock(%mem_tile_5_1, 2) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_0"}
    %C_L2L3_5_cons_lock_0 = aie.lock(%mem_tile_5_1, 3) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_0"}
    %C_L2L3_5_prod_lock_1 = aie.lock(%mem_tile_5_1, 4) {init = 2 : i32, sym_name = "C_L2L3_5_prod_lock_1"}
    %C_L2L3_5_cons_lock_1 = aie.lock(%mem_tile_5_1, 5) {init = 0 : i32, sym_name = "C_L2L3_5_cons_lock_1"}
    %C_L1L2_5_1_buff_0 = aie.buffer(%tile_5_3) {address = 3328 : i32, sym_name = "C_L1L2_5_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_5_1_prod_lock_0 = aie.lock(%tile_5_3, 4) {init = 1 : i32, sym_name = "C_L1L2_5_1_prod_lock_0"}
    %C_L1L2_5_1_cons_lock_0 = aie.lock(%tile_5_3, 5) {init = 0 : i32, sym_name = "C_L1L2_5_1_cons_lock_0"}
    %C_L1L2_5_0_buff_0 = aie.buffer(%tile_5_2) {address = 3328 : i32, sym_name = "C_L1L2_5_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_5_0_prod_lock_0 = aie.lock(%tile_5_2, 4) {init = 1 : i32, sym_name = "C_L1L2_5_0_prod_lock_0"}
    %C_L1L2_5_0_cons_lock_0 = aie.lock(%tile_5_2, 5) {init = 0 : i32, sym_name = "C_L1L2_5_0_cons_lock_0"}
    %C_L2L3_4_cons_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 2) {init = 0 : i32, sym_name = "C_L2L3_4_cons_prod_lock_0"}
    %C_L2L3_4_cons_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 3) {init = 0 : i32, sym_name = "C_L2L3_4_cons_cons_lock_0"}
    %C_L2L3_4_buff_0 = aie.buffer(%mem_tile_4_1) {address = 0 : i32, sym_name = "C_L2L3_4_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_4_buff_1 = aie.buffer(%mem_tile_4_1) {address = 65536 : i32, sym_name = "C_L2L3_4_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_4_prod_lock_0 = aie.lock(%mem_tile_4_1, 2) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_0"}
    %C_L2L3_4_cons_lock_0 = aie.lock(%mem_tile_4_1, 3) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_0"}
    %C_L2L3_4_prod_lock_1 = aie.lock(%mem_tile_4_1, 4) {init = 2 : i32, sym_name = "C_L2L3_4_prod_lock_1"}
    %C_L2L3_4_cons_lock_1 = aie.lock(%mem_tile_4_1, 5) {init = 0 : i32, sym_name = "C_L2L3_4_cons_lock_1"}
    %C_L1L2_4_1_buff_0 = aie.buffer(%tile_4_3) {address = 3328 : i32, sym_name = "C_L1L2_4_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_4_1_prod_lock_0 = aie.lock(%tile_4_3, 4) {init = 1 : i32, sym_name = "C_L1L2_4_1_prod_lock_0"}
    %C_L1L2_4_1_cons_lock_0 = aie.lock(%tile_4_3, 5) {init = 0 : i32, sym_name = "C_L1L2_4_1_cons_lock_0"}
    %C_L1L2_4_0_buff_0 = aie.buffer(%tile_4_2) {address = 3328 : i32, sym_name = "C_L1L2_4_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_4_0_prod_lock_0 = aie.lock(%tile_4_2, 4) {init = 1 : i32, sym_name = "C_L1L2_4_0_prod_lock_0"}
    %C_L1L2_4_0_cons_lock_0 = aie.lock(%tile_4_2, 5) {init = 0 : i32, sym_name = "C_L1L2_4_0_cons_lock_0"}
    %C_L2L3_3_cons_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 2) {init = 0 : i32, sym_name = "C_L2L3_3_cons_prod_lock_0"}
    %C_L2L3_3_cons_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_cons_lock_0"}
    %C_L2L3_3_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, sym_name = "C_L2L3_3_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_3_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, sym_name = "C_L2L3_3_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_3_prod_lock_0 = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_0"}
    %C_L2L3_3_cons_lock_0 = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_0"}
    %C_L2L3_3_prod_lock_1 = aie.lock(%mem_tile_3_1, 4) {init = 2 : i32, sym_name = "C_L2L3_3_prod_lock_1"}
    %C_L2L3_3_cons_lock_1 = aie.lock(%mem_tile_3_1, 5) {init = 0 : i32, sym_name = "C_L2L3_3_cons_lock_1"}
    %C_L1L2_3_1_buff_0 = aie.buffer(%tile_3_3) {address = 3328 : i32, sym_name = "C_L1L2_3_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_3_1_prod_lock_0 = aie.lock(%tile_3_3, 4) {init = 1 : i32, sym_name = "C_L1L2_3_1_prod_lock_0"}
    %C_L1L2_3_1_cons_lock_0 = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "C_L1L2_3_1_cons_lock_0"}
    %C_L1L2_3_0_buff_0 = aie.buffer(%tile_3_2) {address = 3328 : i32, sym_name = "C_L1L2_3_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_3_0_prod_lock_0 = aie.lock(%tile_3_2, 4) {init = 1 : i32, sym_name = "C_L1L2_3_0_prod_lock_0"}
    %C_L1L2_3_0_cons_lock_0 = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "C_L1L2_3_0_cons_lock_0"}
    %C_L2L3_2_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 4) {init = 0 : i32, sym_name = "C_L2L3_2_cons_prod_lock_0"}
    %C_L2L3_2_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_cons_lock_0"}
    %C_L2L3_2_buff_0 = aie.buffer(%mem_tile_2_1) {address = 262144 : i32, sym_name = "C_L2L3_2_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_2_buff_1 = aie.buffer(%mem_tile_2_1) {address = 327680 : i32, sym_name = "C_L2L3_2_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_2_prod_lock_0 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_0"}
    %C_L2L3_2_cons_lock_0 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_0"}
    %C_L2L3_2_prod_lock_1 = aie.lock(%mem_tile_2_1, 6) {init = 2 : i32, sym_name = "C_L2L3_2_prod_lock_1"}
    %C_L2L3_2_cons_lock_1 = aie.lock(%mem_tile_2_1, 7) {init = 0 : i32, sym_name = "C_L2L3_2_cons_lock_1"}
    %C_L1L2_2_1_buff_0 = aie.buffer(%tile_2_3) {address = 3328 : i32, sym_name = "C_L1L2_2_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_2_1_prod_lock_0 = aie.lock(%tile_2_3, 4) {init = 1 : i32, sym_name = "C_L1L2_2_1_prod_lock_0"}
    %C_L1L2_2_1_cons_lock_0 = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "C_L1L2_2_1_cons_lock_0"}
    %C_L1L2_2_0_buff_0 = aie.buffer(%tile_2_2) {address = 3328 : i32, sym_name = "C_L1L2_2_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_2_0_prod_lock_0 = aie.lock(%tile_2_2, 4) {init = 1 : i32, sym_name = "C_L1L2_2_0_prod_lock_0"}
    %C_L1L2_2_0_cons_lock_0 = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "C_L1L2_2_0_cons_lock_0"}
    %C_L2L3_1_cons_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 2) {init = 0 : i32, sym_name = "C_L2L3_1_cons_prod_lock_0"}
    %C_L2L3_1_cons_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_cons_lock_0"}
    %C_L2L3_1_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "C_L2L3_1_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_1_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, sym_name = "C_L2L3_1_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_1_prod_lock_0 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_0"}
    %C_L2L3_1_cons_lock_0 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_0"}
    %C_L2L3_1_prod_lock_1 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "C_L2L3_1_prod_lock_1"}
    %C_L2L3_1_cons_lock_1 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "C_L2L3_1_cons_lock_1"}
    %C_L1L2_1_1_buff_0 = aie.buffer(%tile_1_3) {address = 3328 : i32, sym_name = "C_L1L2_1_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_1_1_prod_lock_0 = aie.lock(%tile_1_3, 4) {init = 1 : i32, sym_name = "C_L1L2_1_1_prod_lock_0"}
    %C_L1L2_1_1_cons_lock_0 = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "C_L1L2_1_1_cons_lock_0"}
    %C_L1L2_1_0_buff_0 = aie.buffer(%tile_1_2) {address = 3328 : i32, sym_name = "C_L1L2_1_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_1_0_prod_lock_0 = aie.lock(%tile_1_2, 4) {init = 1 : i32, sym_name = "C_L1L2_1_0_prod_lock_0"}
    %C_L1L2_1_0_cons_lock_0 = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "C_L1L2_1_0_cons_lock_0"}
    %C_L2L3_0_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 4) {init = 0 : i32, sym_name = "C_L2L3_0_cons_prod_lock_0"}
    %C_L2L3_0_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_cons_lock_0"}
    %C_L2L3_0_buff_0 = aie.buffer(%mem_tile_0_1) {address = 262144 : i32, sym_name = "C_L2L3_0_buff_0"} : memref<256x128xbf16> 
    %C_L2L3_0_buff_1 = aie.buffer(%mem_tile_0_1) {address = 327680 : i32, sym_name = "C_L2L3_0_buff_1"} : memref<256x128xbf16> 
    %C_L2L3_0_prod_lock_0 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_0"}
    %C_L2L3_0_cons_lock_0 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_0"}
    %C_L2L3_0_prod_lock_1 = aie.lock(%mem_tile_0_1, 6) {init = 2 : i32, sym_name = "C_L2L3_0_prod_lock_1"}
    %C_L2L3_0_cons_lock_1 = aie.lock(%mem_tile_0_1, 7) {init = 0 : i32, sym_name = "C_L2L3_0_cons_lock_1"}
    %C_L1L2_0_1_buff_0 = aie.buffer(%tile_0_3) {address = 3328 : i32, sym_name = "C_L1L2_0_1_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_0_1_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "C_L1L2_0_1_prod_lock_0"}
    %C_L1L2_0_1_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "C_L1L2_0_1_cons_lock_0"}
    %C_L1L2_0_0_buff_0 = aie.buffer(%tile_0_2) {address = 3328 : i32, sym_name = "C_L1L2_0_0_buff_0"} : memref<128x128xbf16> 
    %C_L1L2_0_0_prod_lock_0 = aie.lock(%tile_0_2, 4) {init = 1 : i32, sym_name = "C_L1L2_0_0_prod_lock_0"}
    %C_L1L2_0_0_cons_lock_0 = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "C_L1L2_0_0_cons_lock_0"}
    %B_L2L1_7_0_cons_buff_0 = aie.buffer(%tile_7_2) {address = 36096 : i32, sym_name = "B_L2L1_7_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_buff_1 = aie.buffer(%tile_7_2) {address = 45312 : i32, sym_name = "B_L2L1_7_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_0_cons_prod_lock_0 = aie.lock(%tile_7_2, 2) {init = 2 : i32, sym_name = "B_L2L1_7_0_cons_prod_lock_0"}
    %B_L2L1_7_0_cons_cons_lock_0 = aie.lock(%tile_7_2, 3) {init = 0 : i32, sym_name = "B_L2L1_7_0_cons_cons_lock_0"}
    %B_L2L1_7_1_cons_buff_0 = aie.buffer(%tile_7_3) {address = 36096 : i32, sym_name = "B_L2L1_7_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_buff_1 = aie.buffer(%tile_7_3) {address = 45312 : i32, sym_name = "B_L2L1_7_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_7_1_cons_prod_lock_0 = aie.lock(%tile_7_3, 2) {init = 2 : i32, sym_name = "B_L2L1_7_1_cons_prod_lock_0"}
    %B_L2L1_7_1_cons_cons_lock_0 = aie.lock(%tile_7_3, 3) {init = 0 : i32, sym_name = "B_L2L1_7_1_cons_cons_lock_0"}
    %B_L3L2_7_cons_buff_0 = aie.buffer(%mem_tile_7_1) {address = 131072 : i32, sym_name = "B_L3L2_7_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_buff_1 = aie.buffer(%mem_tile_7_1) {address = 140288 : i32, sym_name = "B_L3L2_7_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_7_cons_prod_lock_0 = aie.lock(%mem_tile_7_1, 0) {init = 2 : i32, sym_name = "B_L3L2_7_cons_prod_lock_0"}
    %B_L3L2_7_cons_cons_lock_0 = aie.lock(%mem_tile_7_1, 1) {init = 0 : i32, sym_name = "B_L3L2_7_cons_cons_lock_0"}
    %B_L3L2_7_prod_lock_0 = aie.lock(%shim_noc_tile_7_0, 0) {init = 0 : i32, sym_name = "B_L3L2_7_prod_lock_0"}
    %B_L3L2_7_cons_lock_0 = aie.lock(%shim_noc_tile_7_0, 1) {init = 0 : i32, sym_name = "B_L3L2_7_cons_lock_0"}
    %B_L2L1_6_0_cons_buff_0 = aie.buffer(%tile_6_2) {address = 36096 : i32, sym_name = "B_L2L1_6_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_buff_1 = aie.buffer(%tile_6_2) {address = 45312 : i32, sym_name = "B_L2L1_6_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_0_cons_prod_lock_0 = aie.lock(%tile_6_2, 2) {init = 2 : i32, sym_name = "B_L2L1_6_0_cons_prod_lock_0"}
    %B_L2L1_6_0_cons_cons_lock_0 = aie.lock(%tile_6_2, 3) {init = 0 : i32, sym_name = "B_L2L1_6_0_cons_cons_lock_0"}
    %B_L2L1_6_1_cons_buff_0 = aie.buffer(%tile_6_3) {address = 36096 : i32, sym_name = "B_L2L1_6_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_buff_1 = aie.buffer(%tile_6_3) {address = 45312 : i32, sym_name = "B_L2L1_6_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_6_1_cons_prod_lock_0 = aie.lock(%tile_6_3, 2) {init = 2 : i32, sym_name = "B_L2L1_6_1_cons_prod_lock_0"}
    %B_L2L1_6_1_cons_cons_lock_0 = aie.lock(%tile_6_3, 3) {init = 0 : i32, sym_name = "B_L2L1_6_1_cons_cons_lock_0"}
    %B_L3L2_6_cons_buff_0 = aie.buffer(%mem_tile_6_1) {address = 131072 : i32, sym_name = "B_L3L2_6_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_buff_1 = aie.buffer(%mem_tile_6_1) {address = 140288 : i32, sym_name = "B_L3L2_6_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_6_cons_prod_lock_0 = aie.lock(%mem_tile_6_1, 0) {init = 2 : i32, sym_name = "B_L3L2_6_cons_prod_lock_0"}
    %B_L3L2_6_cons_cons_lock_0 = aie.lock(%mem_tile_6_1, 1) {init = 0 : i32, sym_name = "B_L3L2_6_cons_cons_lock_0"}
    %B_L3L2_6_prod_lock_0 = aie.lock(%shim_noc_tile_6_0, 0) {init = 0 : i32, sym_name = "B_L3L2_6_prod_lock_0"}
    %B_L3L2_6_cons_lock_0 = aie.lock(%shim_noc_tile_6_0, 1) {init = 0 : i32, sym_name = "B_L3L2_6_cons_lock_0"}
    %B_L2L1_5_0_cons_buff_0 = aie.buffer(%tile_5_2) {address = 36096 : i32, sym_name = "B_L2L1_5_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_buff_1 = aie.buffer(%tile_5_2) {address = 45312 : i32, sym_name = "B_L2L1_5_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_0_cons_prod_lock_0 = aie.lock(%tile_5_2, 2) {init = 2 : i32, sym_name = "B_L2L1_5_0_cons_prod_lock_0"}
    %B_L2L1_5_0_cons_cons_lock_0 = aie.lock(%tile_5_2, 3) {init = 0 : i32, sym_name = "B_L2L1_5_0_cons_cons_lock_0"}
    %B_L2L1_5_1_cons_buff_0 = aie.buffer(%tile_5_3) {address = 36096 : i32, sym_name = "B_L2L1_5_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_buff_1 = aie.buffer(%tile_5_3) {address = 45312 : i32, sym_name = "B_L2L1_5_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_5_1_cons_prod_lock_0 = aie.lock(%tile_5_3, 2) {init = 2 : i32, sym_name = "B_L2L1_5_1_cons_prod_lock_0"}
    %B_L2L1_5_1_cons_cons_lock_0 = aie.lock(%tile_5_3, 3) {init = 0 : i32, sym_name = "B_L2L1_5_1_cons_cons_lock_0"}
    %B_L3L2_5_cons_buff_0 = aie.buffer(%mem_tile_5_1) {address = 131072 : i32, sym_name = "B_L3L2_5_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_buff_1 = aie.buffer(%mem_tile_5_1) {address = 140288 : i32, sym_name = "B_L3L2_5_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_5_cons_prod_lock_0 = aie.lock(%mem_tile_5_1, 0) {init = 2 : i32, sym_name = "B_L3L2_5_cons_prod_lock_0"}
    %B_L3L2_5_cons_cons_lock_0 = aie.lock(%mem_tile_5_1, 1) {init = 0 : i32, sym_name = "B_L3L2_5_cons_cons_lock_0"}
    %B_L3L2_5_prod_lock_0 = aie.lock(%shim_noc_tile_5_0, 0) {init = 0 : i32, sym_name = "B_L3L2_5_prod_lock_0"}
    %B_L3L2_5_cons_lock_0 = aie.lock(%shim_noc_tile_5_0, 1) {init = 0 : i32, sym_name = "B_L3L2_5_cons_lock_0"}
    %B_L2L1_4_0_cons_buff_0 = aie.buffer(%tile_4_2) {address = 36096 : i32, sym_name = "B_L2L1_4_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_buff_1 = aie.buffer(%tile_4_2) {address = 45312 : i32, sym_name = "B_L2L1_4_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_0_cons_prod_lock_0 = aie.lock(%tile_4_2, 2) {init = 2 : i32, sym_name = "B_L2L1_4_0_cons_prod_lock_0"}
    %B_L2L1_4_0_cons_cons_lock_0 = aie.lock(%tile_4_2, 3) {init = 0 : i32, sym_name = "B_L2L1_4_0_cons_cons_lock_0"}
    %B_L2L1_4_1_cons_buff_0 = aie.buffer(%tile_4_3) {address = 36096 : i32, sym_name = "B_L2L1_4_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_buff_1 = aie.buffer(%tile_4_3) {address = 45312 : i32, sym_name = "B_L2L1_4_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_4_1_cons_prod_lock_0 = aie.lock(%tile_4_3, 2) {init = 2 : i32, sym_name = "B_L2L1_4_1_cons_prod_lock_0"}
    %B_L2L1_4_1_cons_cons_lock_0 = aie.lock(%tile_4_3, 3) {init = 0 : i32, sym_name = "B_L2L1_4_1_cons_cons_lock_0"}
    %B_L3L2_4_cons_buff_0 = aie.buffer(%mem_tile_4_1) {address = 131072 : i32, sym_name = "B_L3L2_4_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_buff_1 = aie.buffer(%mem_tile_4_1) {address = 140288 : i32, sym_name = "B_L3L2_4_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_4_cons_prod_lock_0 = aie.lock(%mem_tile_4_1, 0) {init = 2 : i32, sym_name = "B_L3L2_4_cons_prod_lock_0"}
    %B_L3L2_4_cons_cons_lock_0 = aie.lock(%mem_tile_4_1, 1) {init = 0 : i32, sym_name = "B_L3L2_4_cons_cons_lock_0"}
    %B_L3L2_4_prod_lock_0 = aie.lock(%shim_noc_tile_4_0, 0) {init = 0 : i32, sym_name = "B_L3L2_4_prod_lock_0"}
    %B_L3L2_4_cons_lock_0 = aie.lock(%shim_noc_tile_4_0, 1) {init = 0 : i32, sym_name = "B_L3L2_4_cons_lock_0"}
    %B_L2L1_3_0_cons_buff_0 = aie.buffer(%tile_3_2) {address = 36096 : i32, sym_name = "B_L2L1_3_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_buff_1 = aie.buffer(%tile_3_2) {address = 45312 : i32, sym_name = "B_L2L1_3_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_0_cons_prod_lock_0 = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "B_L2L1_3_0_cons_prod_lock_0"}
    %B_L2L1_3_0_cons_cons_lock_0 = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "B_L2L1_3_0_cons_cons_lock_0"}
    %B_L2L1_3_1_cons_buff_0 = aie.buffer(%tile_3_3) {address = 36096 : i32, sym_name = "B_L2L1_3_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_buff_1 = aie.buffer(%tile_3_3) {address = 45312 : i32, sym_name = "B_L2L1_3_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_3_1_cons_prod_lock_0 = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "B_L2L1_3_1_cons_prod_lock_0"}
    %B_L2L1_3_1_cons_cons_lock_0 = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "B_L2L1_3_1_cons_cons_lock_0"}
    %B_L3L2_3_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 131072 : i32, sym_name = "B_L3L2_3_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 140288 : i32, sym_name = "B_L3L2_3_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_3_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "B_L3L2_3_cons_prod_lock_0"}
    %B_L3L2_3_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "B_L3L2_3_cons_cons_lock_0"}
    %B_L3L2_3_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 0 : i32, sym_name = "B_L3L2_3_prod_lock_0"}
    %B_L3L2_3_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "B_L3L2_3_cons_lock_0"}
    %B_L2L1_2_0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 36096 : i32, sym_name = "B_L2L1_2_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 45312 : i32, sym_name = "B_L2L1_2_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_0_cons_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "B_L2L1_2_0_cons_prod_lock_0"}
    %B_L2L1_2_0_cons_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "B_L2L1_2_0_cons_cons_lock_0"}
    %B_L2L1_2_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 36096 : i32, sym_name = "B_L2L1_2_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 45312 : i32, sym_name = "B_L2L1_2_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_2_1_cons_prod_lock_0 = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "B_L2L1_2_1_cons_prod_lock_0"}
    %B_L2L1_2_1_cons_cons_lock_0 = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "B_L2L1_2_1_cons_cons_lock_0"}
    %B_L3L2_2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 393216 : i32, sym_name = "B_L3L2_2_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 402432 : i32, sym_name = "B_L3L2_2_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_2_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "B_L3L2_2_cons_prod_lock_0"}
    %B_L3L2_2_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_cons_lock_0"}
    %B_L3L2_2_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 2) {init = 0 : i32, sym_name = "B_L3L2_2_prod_lock_0"}
    %B_L3L2_2_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "B_L3L2_2_cons_lock_0"}
    %B_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 36096 : i32, sym_name = "B_L2L1_1_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 45312 : i32, sym_name = "B_L2L1_1_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "B_L2L1_1_0_cons_prod_lock_0"}
    %B_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "B_L2L1_1_0_cons_cons_lock_0"}
    %B_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 36096 : i32, sym_name = "B_L2L1_1_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 45312 : i32, sym_name = "B_L2L1_1_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "B_L2L1_1_1_cons_prod_lock_0"}
    %B_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "B_L2L1_1_1_cons_cons_lock_0"}
    %B_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 131072 : i32, sym_name = "B_L3L2_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 140288 : i32, sym_name = "B_L3L2_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "B_L3L2_1_cons_prod_lock_0"}
    %B_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "B_L3L2_1_cons_cons_lock_0"}
    %B_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 0 : i32, sym_name = "B_L3L2_1_prod_lock_0"}
    %B_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "B_L3L2_1_cons_lock_0"}
    %B_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 36096 : i32, sym_name = "B_L2L1_0_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 45312 : i32, sym_name = "B_L2L1_0_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "B_L2L1_0_0_cons_prod_lock_0"}
    %B_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "B_L2L1_0_0_cons_cons_lock_0"}
    %B_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 36096 : i32, sym_name = "B_L2L1_0_1_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 45312 : i32, sym_name = "B_L2L1_0_1_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "B_L2L1_0_1_cons_prod_lock_0"}
    %B_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "B_L2L1_0_1_cons_cons_lock_0"}
    %B_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 393216 : i32, sym_name = "B_L3L2_0_cons_buff_0"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 402432 : i32, sym_name = "B_L3L2_0_cons_buff_1"} : memref<64x16x!aiex.bfp<"v8bfp16ebs8">> 
    %B_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "B_L3L2_0_cons_prod_lock_0"}
    %B_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_cons_lock_0"}
    %B_L3L2_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 0 : i32, sym_name = "B_L3L2_0_prod_lock_0"}
    %B_L3L2_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "B_L3L2_0_cons_lock_0"}
    %A_L2L1_1_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 54528 : i32, sym_name = "A_L2L1_1_0_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 58624 : i32, sym_name = "A_L2L1_1_0_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_0_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_0_cons_prod_lock_0"}
    %A_L2L1_1_0_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_0_cons_cons_lock_0"}
    %A_L2L1_1_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 54528 : i32, sym_name = "A_L2L1_1_1_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 58624 : i32, sym_name = "A_L2L1_1_1_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_1_cons_prod_lock_0"}
    %A_L2L1_1_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_1_cons_cons_lock_0"}
    %A_L2L1_1_2_cons_buff_0 = aie.buffer(%tile_2_3) {address = 54528 : i32, sym_name = "A_L2L1_1_2_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_2_cons_buff_1 = aie.buffer(%tile_2_3) {address = 58624 : i32, sym_name = "A_L2L1_1_2_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_2_cons_prod_lock_0 = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_2_cons_prod_lock_0"}
    %A_L2L1_1_2_cons_cons_lock_0 = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_2_cons_cons_lock_0"}
    %A_L2L1_1_3_cons_buff_0 = aie.buffer(%tile_3_3) {address = 54528 : i32, sym_name = "A_L2L1_1_3_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_3_cons_buff_1 = aie.buffer(%tile_3_3) {address = 58624 : i32, sym_name = "A_L2L1_1_3_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_3_cons_prod_lock_0 = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_3_cons_prod_lock_0"}
    %A_L2L1_1_3_cons_cons_lock_0 = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_3_cons_cons_lock_0"}
    %A_L2L1_1_4_cons_buff_0 = aie.buffer(%tile_4_3) {address = 54528 : i32, sym_name = "A_L2L1_1_4_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_4_cons_buff_1 = aie.buffer(%tile_4_3) {address = 58624 : i32, sym_name = "A_L2L1_1_4_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_4_cons_prod_lock_0 = aie.lock(%tile_4_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_4_cons_prod_lock_0"}
    %A_L2L1_1_4_cons_cons_lock_0 = aie.lock(%tile_4_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_4_cons_cons_lock_0"}
    %A_L2L1_1_5_cons_buff_0 = aie.buffer(%tile_5_3) {address = 54528 : i32, sym_name = "A_L2L1_1_5_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_5_cons_buff_1 = aie.buffer(%tile_5_3) {address = 58624 : i32, sym_name = "A_L2L1_1_5_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_5_cons_prod_lock_0 = aie.lock(%tile_5_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_5_cons_prod_lock_0"}
    %A_L2L1_1_5_cons_cons_lock_0 = aie.lock(%tile_5_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_5_cons_cons_lock_0"}
    %A_L2L1_1_6_cons_buff_0 = aie.buffer(%tile_6_3) {address = 54528 : i32, sym_name = "A_L2L1_1_6_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_6_cons_buff_1 = aie.buffer(%tile_6_3) {address = 58624 : i32, sym_name = "A_L2L1_1_6_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_6_cons_prod_lock_0 = aie.lock(%tile_6_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_6_cons_prod_lock_0"}
    %A_L2L1_1_6_cons_cons_lock_0 = aie.lock(%tile_6_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_6_cons_cons_lock_0"}
    %A_L2L1_1_7_cons_buff_0 = aie.buffer(%tile_7_3) {address = 54528 : i32, sym_name = "A_L2L1_1_7_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_1_7_cons_buff_1 = aie.buffer(%tile_7_3) {address = 58624 : i32, sym_name = "A_L2L1_1_7_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_1_7_cons_prod_lock_0 = aie.lock(%tile_7_3, 0) {init = 2 : i32, sym_name = "A_L2L1_1_7_cons_prod_lock_0"}
    %A_L2L1_1_7_cons_cons_lock_0 = aie.lock(%tile_7_3, 1) {init = 0 : i32, sym_name = "A_L2L1_1_7_cons_cons_lock_0"}
    %A_L3L2_1_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "A_L3L2_1_cons_buff_0"} : memref<128x512xbf16> 
    %A_L3L2_1_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 131072 : i32, sym_name = "A_L3L2_1_cons_buff_1"} : memref<128x512xbf16> 
    %A_L3L2_1_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "A_L3L2_1_cons_prod_lock_0"}
    %A_L3L2_1_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_cons_lock_0"}
    %A_L3L2_1_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 0 : i32, sym_name = "A_L3L2_1_prod_lock_0"}
    %A_L3L2_1_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "A_L3L2_1_cons_lock_0"}
    %A_L2L1_0_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 54528 : i32, sym_name = "A_L2L1_0_0_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 58624 : i32, sym_name = "A_L2L1_0_0_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_0_cons_prod_lock_0"}
    %A_L2L1_0_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_0_cons_cons_lock_0"}
    %A_L2L1_0_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 54528 : i32, sym_name = "A_L2L1_0_1_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 58624 : i32, sym_name = "A_L2L1_0_1_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_1_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_1_cons_prod_lock_0"}
    %A_L2L1_0_1_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_1_cons_cons_lock_0"}
    %A_L2L1_0_2_cons_buff_0 = aie.buffer(%tile_2_2) {address = 54528 : i32, sym_name = "A_L2L1_0_2_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_2_cons_buff_1 = aie.buffer(%tile_2_2) {address = 58624 : i32, sym_name = "A_L2L1_0_2_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_2_cons_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_2_cons_prod_lock_0"}
    %A_L2L1_0_2_cons_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_2_cons_cons_lock_0"}
    %A_L2L1_0_3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 54528 : i32, sym_name = "A_L2L1_0_3_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 58624 : i32, sym_name = "A_L2L1_0_3_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_3_cons_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_3_cons_prod_lock_0"}
    %A_L2L1_0_3_cons_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_3_cons_cons_lock_0"}
    %A_L2L1_0_4_cons_buff_0 = aie.buffer(%tile_4_2) {address = 54528 : i32, sym_name = "A_L2L1_0_4_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_4_cons_buff_1 = aie.buffer(%tile_4_2) {address = 58624 : i32, sym_name = "A_L2L1_0_4_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_4_cons_prod_lock_0 = aie.lock(%tile_4_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_4_cons_prod_lock_0"}
    %A_L2L1_0_4_cons_cons_lock_0 = aie.lock(%tile_4_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_4_cons_cons_lock_0"}
    %A_L2L1_0_5_cons_buff_0 = aie.buffer(%tile_5_2) {address = 54528 : i32, sym_name = "A_L2L1_0_5_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_5_cons_buff_1 = aie.buffer(%tile_5_2) {address = 58624 : i32, sym_name = "A_L2L1_0_5_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_5_cons_prod_lock_0 = aie.lock(%tile_5_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_5_cons_prod_lock_0"}
    %A_L2L1_0_5_cons_cons_lock_0 = aie.lock(%tile_5_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_5_cons_cons_lock_0"}
    %A_L2L1_0_6_cons_buff_0 = aie.buffer(%tile_6_2) {address = 54528 : i32, sym_name = "A_L2L1_0_6_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_6_cons_buff_1 = aie.buffer(%tile_6_2) {address = 58624 : i32, sym_name = "A_L2L1_0_6_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_6_cons_prod_lock_0 = aie.lock(%tile_6_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_6_cons_prod_lock_0"}
    %A_L2L1_0_6_cons_cons_lock_0 = aie.lock(%tile_6_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_6_cons_cons_lock_0"}
    %A_L2L1_0_7_cons_buff_0 = aie.buffer(%tile_7_2) {address = 54528 : i32, sym_name = "A_L2L1_0_7_cons_buff_0"} : memref<32x64xbf16> 
    %A_L2L1_0_7_cons_buff_1 = aie.buffer(%tile_7_2) {address = 58624 : i32, sym_name = "A_L2L1_0_7_cons_buff_1"} : memref<32x64xbf16> 
    %A_L2L1_0_7_cons_prod_lock_0 = aie.lock(%tile_7_2, 0) {init = 2 : i32, sym_name = "A_L2L1_0_7_cons_prod_lock_0"}
    %A_L2L1_0_7_cons_cons_lock_0 = aie.lock(%tile_7_2, 1) {init = 0 : i32, sym_name = "A_L2L1_0_7_cons_cons_lock_0"}
    %A_L3L2_0_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "A_L3L2_0_cons_buff_0"} : memref<128x512xbf16> 
    %A_L3L2_0_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 131072 : i32, sym_name = "A_L3L2_0_cons_buff_1"} : memref<128x512xbf16> 
    %A_L3L2_0_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "A_L3L2_0_cons_prod_lock_0"}
    %A_L3L2_0_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_cons_lock_0"}
    %A_L3L2_0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 0 : i32, sym_name = "A_L3L2_0_prod_lock_0"}
    %A_L3L2_0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "A_L3L2_0_cons_lock_0"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_7_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_6_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_5_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_4_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_3_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_2_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_7_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_6_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_5_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_4_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 1, %mem_tile_0_1, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 1)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_2, DMA : 1)
    aie.flow(%shim_noc_tile_2_0, DMA : 1, %mem_tile_2_1, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_3, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_2, DMA : 1)
    aie.flow(%shim_noc_tile_3_0, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_3, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_2, DMA : 1)
    aie.flow(%shim_noc_tile_4_0, DMA : 0, %mem_tile_4_1, DMA : 0)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_4_3, DMA : 1)
    aie.flow(%mem_tile_4_1, DMA : 0, %tile_4_2, DMA : 1)
    aie.flow(%shim_noc_tile_5_0, DMA : 0, %mem_tile_5_1, DMA : 0)
    aie.flow(%mem_tile_5_1, DMA : 0, %tile_5_3, DMA : 1)
    aie.flow(%mem_tile_5_1, DMA : 0, %tile_5_2, DMA : 1)
    aie.flow(%shim_noc_tile_6_0, DMA : 0, %mem_tile_6_1, DMA : 0)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_6_3, DMA : 1)
    aie.flow(%mem_tile_6_1, DMA : 0, %tile_6_2, DMA : 1)
    aie.flow(%shim_noc_tile_7_0, DMA : 0, %mem_tile_7_1, DMA : 0)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_7_3, DMA : 1)
    aie.flow(%mem_tile_7_1, DMA : 0, %tile_7_2, DMA : 1)
    aie.flow(%tile_0_2, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%tile_0_3, DMA : 0, %mem_tile_0_1, DMA : 3)
    aie.flow(%mem_tile_0_1, DMA : 2, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %mem_tile_1_1, DMA : 1)
    aie.flow(%tile_1_3, DMA : 0, %mem_tile_1_1, DMA : 2)
    aie.flow(%mem_tile_1_1, DMA : 1, %shim_noc_tile_1_0, DMA : 0)
    aie.flow(%tile_2_2, DMA : 0, %mem_tile_2_1, DMA : 2)
    aie.flow(%tile_2_3, DMA : 0, %mem_tile_2_1, DMA : 3)
    aie.flow(%mem_tile_2_1, DMA : 2, %shim_noc_tile_2_0, DMA : 0)
    aie.flow(%tile_3_2, DMA : 0, %mem_tile_3_1, DMA : 1)
    aie.flow(%tile_3_3, DMA : 0, %mem_tile_3_1, DMA : 2)
    aie.flow(%mem_tile_3_1, DMA : 1, %shim_noc_tile_3_0, DMA : 0)
    aie.flow(%tile_4_2, DMA : 0, %mem_tile_4_1, DMA : 1)
    aie.flow(%tile_4_3, DMA : 0, %mem_tile_4_1, DMA : 2)
    aie.flow(%mem_tile_4_1, DMA : 1, %shim_noc_tile_4_0, DMA : 0)
    aie.flow(%tile_5_2, DMA : 0, %mem_tile_5_1, DMA : 1)
    aie.flow(%tile_5_3, DMA : 0, %mem_tile_5_1, DMA : 2)
    aie.flow(%mem_tile_5_1, DMA : 1, %shim_noc_tile_5_0, DMA : 0)
    aie.flow(%tile_6_2, DMA : 0, %mem_tile_6_1, DMA : 1)
    aie.flow(%tile_6_3, DMA : 0, %mem_tile_6_1, DMA : 2)
    aie.flow(%mem_tile_6_1, DMA : 1, %shim_noc_tile_6_0, DMA : 0)
    aie.flow(%tile_7_2, DMA : 0, %mem_tile_7_1, DMA : 1)
    aie.flow(%tile_7_3, DMA : 0, %mem_tile_7_1, DMA : 2)
    aie.flow(%mem_tile_7_1, DMA : 1, %shim_noc_tile_7_0, DMA : 0)
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 62720 : i32, sym_name = "_anonymous0"} : memref<3xi32> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous0[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous0[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous0[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous0[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous0[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous0[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous0[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous0[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous0[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_0_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous0[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous0[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous0[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous0[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous0[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous0[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous1 = aie.buffer(%tile_1_2) {address = 62720 : i32, sym_name = "_anonymous1"} : memref<3xi32> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous1[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous1[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous1[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous1[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous1[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous1[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous1[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous1[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous1[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_1_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous1[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous1[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous1[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous1[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous1[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous1[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous2 = aie.buffer(%tile_2_2) {address = 62720 : i32, sym_name = "_anonymous2"} : memref<3xi32> 
    %core_2_2 = aie.core(%tile_2_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous2[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous2[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous2[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous2[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous2[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous2[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous2[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous2[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous2[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous2[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous2[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous2[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_2_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous2[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous2[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous2[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous2[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous2[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous2[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous3 = aie.buffer(%tile_3_2) {address = 62720 : i32, sym_name = "_anonymous3"} : memref<3xi32> 
    %core_3_2 = aie.core(%tile_3_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous3[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous3[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous3[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous3[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous3[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous3[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous3[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous3[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous3[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_3_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous3[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous3[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous3[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous3[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous3[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous3[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous4 = aie.buffer(%tile_4_2) {address = 62720 : i32, sym_name = "_anonymous4"} : memref<3xi32> 
    %core_4_2 = aie.core(%tile_4_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous4[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous4[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous4[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous4[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous4[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous4[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous4[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous4[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous4[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_4_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous4[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous4[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous4[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous4[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous4[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous4[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous5 = aie.buffer(%tile_5_2) {address = 62720 : i32, sym_name = "_anonymous5"} : memref<3xi32> 
    %core_5_2 = aie.core(%tile_5_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous5[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous5[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous5[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous5[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous5[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous5[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous5[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous5[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous5[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous5[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous5[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous5[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_5_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous5[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous5[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous5[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous5[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous5[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous5[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous6 = aie.buffer(%tile_6_2) {address = 62720 : i32, sym_name = "_anonymous6"} : memref<3xi32> 
    %core_6_2 = aie.core(%tile_6_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous6[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous6[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous6[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous6[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous6[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous6[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous6[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous6[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous6[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_6_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous6[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous6[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous6[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous6[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous6[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous6[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous7 = aie.buffer(%tile_7_2) {address = 62720 : i32, sym_name = "_anonymous7"} : memref<3xi32> 
    %core_7_2 = aie.core(%tile_7_2) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous7[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous7[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous7[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous7[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous7[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous7[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous7[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous7[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous7[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_0_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_0_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_7_0_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous7[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous7[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous7[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous7[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous7[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous7[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous8 = aie.buffer(%tile_0_3) {address = 62720 : i32, sym_name = "_anonymous8"} : memref<3xi32> 
    %core_0_3 = aie.core(%tile_0_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous8[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous8[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous8[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous8[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous8[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous8[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous8[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous8[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous8[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous8[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous8[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous8[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_0_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_0_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous8[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous8[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous8[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous8[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous8[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous8[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous9 = aie.buffer(%tile_1_3) {address = 62720 : i32, sym_name = "_anonymous9"} : memref<3xi32> 
    %core_1_3 = aie.core(%tile_1_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous9[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous9[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous9[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous9[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous9[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous9[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous9[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous9[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous9[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_1_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_1_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous9[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous9[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous9[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous9[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous9[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous9[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous10 = aie.buffer(%tile_2_3) {address = 62720 : i32, sym_name = "_anonymous10"} : memref<3xi32> 
    %core_2_3 = aie.core(%tile_2_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous10[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous10[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous10[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous10[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous10[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous10[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous10[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous10[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous10[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_2_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_2_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous10[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous10[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous10[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous10[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous10[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous10[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous11 = aie.buffer(%tile_3_3) {address = 62720 : i32, sym_name = "_anonymous11"} : memref<3xi32> 
    %core_3_3 = aie.core(%tile_3_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous11[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous11[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous11[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous11[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous11[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous11[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous11[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous11[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous11[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous11[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous11[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous11[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_3_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_3_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous11[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous11[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous11[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous11[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous11[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous11[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous12 = aie.buffer(%tile_4_3) {address = 62720 : i32, sym_name = "_anonymous12"} : memref<3xi32> 
    %core_4_3 = aie.core(%tile_4_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous12[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous12[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous12[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous12[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous12[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous12[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous12[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous12[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous12[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_4_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_4_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous12[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous12[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous12[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous12[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous12[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous12[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous13 = aie.buffer(%tile_5_3) {address = 62720 : i32, sym_name = "_anonymous13"} : memref<3xi32> 
    %core_5_3 = aie.core(%tile_5_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous13[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous13[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous13[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous13[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous13[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous13[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous13[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous13[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous13[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_5_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_5_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous13[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous13[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous13[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous13[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous13[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous13[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous14 = aie.buffer(%tile_6_3) {address = 62720 : i32, sym_name = "_anonymous14"} : memref<3xi32> 
    %core_6_3 = aie.core(%tile_6_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous14[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous14[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous14[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous14[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous14[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous14[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous14[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous14[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous14[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous14[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous14[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous14[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_6_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_6_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous14[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous14[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous14[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous14[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous14[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous14[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    %_anonymous15 = aie.buffer(%tile_7_3) {address = 62720 : i32, sym_name = "_anonymous15"} : memref<3xi32> 
    %core_7_3 = aie.core(%tile_7_3) {
      %c4294967295 = arith.constant 4294967295 : index
      %c16 = arith.constant 16 : index
      %c2 = arith.constant 2 : index
      %c2_i32 = arith.constant 2 : i32
      %c1 = arith.constant 1 : index
      %c0_i32 = arith.constant 0 : i32
      %c0 = arith.constant 0 : index
      %c1_i32 = arith.constant 1 : i32
      memref.store %c0_i32, %_anonymous15[%c0] : memref<3xi32>
      memref.store %c0_i32, %_anonymous15[%c1] : memref<3xi32>
      memref.store %c0_i32, %_anonymous15[%c2] : memref<3xi32>
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb62
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb63
    ^bb2:  // pred: ^bb1
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb16
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb17
    ^bb4:  // pred: ^bb3
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %4 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %5 = arith.index_cast %4 : i32 to index
      %6 = arith.index_cast %5 : index to i32
      cf.switch %6 : i32, [
        default: ^bb7,
        0: ^bb5,
        1: ^bb6
      ]
    ^bb5:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb6:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb7:  // pred: ^bb4
      cf.br ^bb8(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb8(%7: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb5, ^bb6, ^bb7
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %8 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i32
      cf.switch %10 : i32, [
        default: ^bb11,
        0: ^bb9,
        1: ^bb10
      ]
    ^bb9:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb10:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb11:  // pred: ^bb8
      cf.br ^bb12(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb12(%11: memref<32x64xbf16>):  // 3 preds: ^bb9, ^bb10, ^bb11
      func.call @matmul_vectorized_different_datatypes(%11, %7, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %12 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %13 = arith.addi %12, %c1_i32 : i32
      %14 = arith.cmpi sge, %13, %c2_i32 : i32
      %15 = arith.subi %13, %c2_i32 : i32
      %16 = arith.select %14, %15, %13 : i32
      memref.store %16, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %17 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %18 = arith.index_cast %17 : i32 to index
      %19 = arith.index_cast %18 : index to i32
      cf.switch %19 : i32, [
        default: ^bb15,
        0: ^bb13,
        1: ^bb14
      ]
    ^bb13:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb14:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb15:  // pred: ^bb12
      cf.br ^bb16(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb16(%20: memref<32x64xbf16>):  // 3 preds: ^bb13, ^bb14, ^bb15
      func.call @matmul_vectorized_different_datatypes(%20, %7, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %21 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %22 = arith.addi %21, %c1_i32 : i32
      %23 = arith.cmpi sge, %22, %c2_i32 : i32
      %24 = arith.subi %22, %c2_i32 : i32
      %25 = arith.select %23, %24, %22 : i32
      memref.store %25, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %26 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %27 = arith.addi %26, %c1_i32 : i32
      %28 = arith.cmpi sge, %27, %c2_i32 : i32
      %29 = arith.subi %27, %c2_i32 : i32
      %30 = arith.select %28, %29, %27 : i32
      memref.store %30, %_anonymous15[%c1] : memref<3xi32>
      %31 = arith.addi %2, %c1 : index
      cf.br ^bb3(%31 : index)
    ^bb17:  // pred: ^bb3
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      %32 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %33 = arith.addi %32, %c1_i32 : i32
      %34 = arith.cmpi sge, %33, %c1_i32 : i32
      %35 = arith.select %34, %32, %33 : i32
      memref.store %35, %_anonymous15[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb18(%c0 : index)
    ^bb18(%36: index):  // 2 preds: ^bb17, ^bb31
      %37 = arith.cmpi slt, %36, %c16 : index
      cf.cond_br %37, ^bb19, ^bb32
    ^bb19:  // pred: ^bb18
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %38 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %39 = arith.index_cast %38 : i32 to index
      %40 = arith.index_cast %39 : index to i32
      cf.switch %40 : i32, [
        default: ^bb22,
        0: ^bb20,
        1: ^bb21
      ]
    ^bb20:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb21:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb22:  // pred: ^bb19
      cf.br ^bb23(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb23(%41: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb20, ^bb21, ^bb22
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %42 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = arith.index_cast %43 : index to i32
      cf.switch %44 : i32, [
        default: ^bb26,
        0: ^bb24,
        1: ^bb25
      ]
    ^bb24:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb25:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb26:  // pred: ^bb23
      cf.br ^bb27(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb27(%45: memref<32x64xbf16>):  // 3 preds: ^bb24, ^bb25, ^bb26
      func.call @matmul_vectorized_different_datatypes(%45, %41, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %46 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %47 = arith.addi %46, %c1_i32 : i32
      %48 = arith.cmpi sge, %47, %c2_i32 : i32
      %49 = arith.subi %47, %c2_i32 : i32
      %50 = arith.select %48, %49, %47 : i32
      memref.store %50, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %51 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %52 = arith.index_cast %51 : i32 to index
      %53 = arith.index_cast %52 : index to i32
      cf.switch %53 : i32, [
        default: ^bb30,
        0: ^bb28,
        1: ^bb29
      ]
    ^bb28:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb29:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb30:  // pred: ^bb27
      cf.br ^bb31(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb31(%54: memref<32x64xbf16>):  // 3 preds: ^bb28, ^bb29, ^bb30
      func.call @matmul_vectorized_different_datatypes(%54, %41, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %55 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %56 = arith.addi %55, %c1_i32 : i32
      %57 = arith.cmpi sge, %56, %c2_i32 : i32
      %58 = arith.subi %56, %c2_i32 : i32
      %59 = arith.select %57, %58, %56 : i32
      memref.store %59, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %60 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %61 = arith.addi %60, %c1_i32 : i32
      %62 = arith.cmpi sge, %61, %c2_i32 : i32
      %63 = arith.subi %61, %c2_i32 : i32
      %64 = arith.select %62, %63, %61 : i32
      memref.store %64, %_anonymous15[%c1] : memref<3xi32>
      %65 = arith.addi %36, %c1 : index
      cf.br ^bb18(%65 : index)
    ^bb32:  // pred: ^bb18
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      %66 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %67 = arith.addi %66, %c1_i32 : i32
      %68 = arith.cmpi sge, %67, %c1_i32 : i32
      %69 = arith.select %68, %66, %67 : i32
      memref.store %69, %_anonymous15[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb33(%c0 : index)
    ^bb33(%70: index):  // 2 preds: ^bb32, ^bb46
      %71 = arith.cmpi slt, %70, %c16 : index
      cf.cond_br %71, ^bb34, ^bb47
    ^bb34:  // pred: ^bb33
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %72 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %73 = arith.index_cast %72 : i32 to index
      %74 = arith.index_cast %73 : index to i32
      cf.switch %74 : i32, [
        default: ^bb37,
        0: ^bb35,
        1: ^bb36
      ]
    ^bb35:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb36:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb37:  // pred: ^bb34
      cf.br ^bb38(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb38(%75: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb35, ^bb36, ^bb37
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %76 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %77 = arith.index_cast %76 : i32 to index
      %78 = arith.index_cast %77 : index to i32
      cf.switch %78 : i32, [
        default: ^bb41,
        0: ^bb39,
        1: ^bb40
      ]
    ^bb39:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb40:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb41:  // pred: ^bb38
      cf.br ^bb42(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb42(%79: memref<32x64xbf16>):  // 3 preds: ^bb39, ^bb40, ^bb41
      func.call @matmul_vectorized_different_datatypes(%79, %75, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %80 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %81 = arith.addi %80, %c1_i32 : i32
      %82 = arith.cmpi sge, %81, %c2_i32 : i32
      %83 = arith.subi %81, %c2_i32 : i32
      %84 = arith.select %82, %83, %81 : i32
      memref.store %84, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %85 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %86 = arith.index_cast %85 : i32 to index
      %87 = arith.index_cast %86 : index to i32
      cf.switch %87 : i32, [
        default: ^bb45,
        0: ^bb43,
        1: ^bb44
      ]
    ^bb43:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb44:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb45:  // pred: ^bb42
      cf.br ^bb46(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb46(%88: memref<32x64xbf16>):  // 3 preds: ^bb43, ^bb44, ^bb45
      func.call @matmul_vectorized_different_datatypes(%88, %75, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %89 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %90 = arith.addi %89, %c1_i32 : i32
      %91 = arith.cmpi sge, %90, %c2_i32 : i32
      %92 = arith.subi %90, %c2_i32 : i32
      %93 = arith.select %91, %92, %90 : i32
      memref.store %93, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %94 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %95 = arith.addi %94, %c1_i32 : i32
      %96 = arith.cmpi sge, %95, %c2_i32 : i32
      %97 = arith.subi %95, %c2_i32 : i32
      %98 = arith.select %96, %97, %95 : i32
      memref.store %98, %_anonymous15[%c1] : memref<3xi32>
      %99 = arith.addi %70, %c1 : index
      cf.br ^bb33(%99 : index)
    ^bb47:  // pred: ^bb33
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      %100 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %101 = arith.addi %100, %c1_i32 : i32
      %102 = arith.cmpi sge, %101, %c1_i32 : i32
      %103 = arith.select %102, %100, %101 : i32
      memref.store %103, %_anonymous15[%c0] : memref<3xi32>
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @zero_kernel_bf16(%C_L1L2_7_1_buff_0) : (memref<128x128xbf16>) -> ()
      cf.br ^bb48(%c0 : index)
    ^bb48(%104: index):  // 2 preds: ^bb47, ^bb61
      %105 = arith.cmpi slt, %104, %c16 : index
      cf.cond_br %105, ^bb49, ^bb62
    ^bb49:  // pred: ^bb48
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %106 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %107 = arith.index_cast %106 : i32 to index
      %108 = arith.index_cast %107 : index to i32
      cf.switch %108 : i32, [
        default: ^bb52,
        0: ^bb50,
        1: ^bb51
      ]
    ^bb50:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb51:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb52:  // pred: ^bb49
      cf.br ^bb53(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>)
    ^bb53(%109: memref<64x16x!aiex.bfp<"v8bfp16ebs8">>):  // 3 preds: ^bb50, ^bb51, ^bb52
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %110 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %111 = arith.index_cast %110 : i32 to index
      %112 = arith.index_cast %111 : index to i32
      cf.switch %112 : i32, [
        default: ^bb56,
        0: ^bb54,
        1: ^bb55
      ]
    ^bb54:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb55:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb56:  // pred: ^bb53
      cf.br ^bb57(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb57(%113: memref<32x64xbf16>):  // 3 preds: ^bb54, ^bb55, ^bb56
      func.call @matmul_vectorized_different_datatypes(%113, %109, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %114 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %115 = arith.addi %114, %c1_i32 : i32
      %116 = arith.cmpi sge, %115, %c2_i32 : i32
      %117 = arith.subi %115, %c2_i32 : i32
      %118 = arith.select %116, %117, %115 : i32
      memref.store %118, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %119 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %120 = arith.index_cast %119 : i32 to index
      %121 = arith.index_cast %120 : index to i32
      cf.switch %121 : i32, [
        default: ^bb60,
        0: ^bb58,
        1: ^bb59
      ]
    ^bb58:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb59:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>)
    ^bb60:  // pred: ^bb57
      cf.br ^bb61(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>)
    ^bb61(%122: memref<32x64xbf16>):  // 3 preds: ^bb58, ^bb59, ^bb60
      func.call @matmul_vectorized_different_datatypes(%122, %109, %C_L1L2_7_1_buff_0) : (memref<32x64xbf16>, memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x128xbf16>) -> ()
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, Release, 1)
      %123 = memref.load %_anonymous15[%c2] : memref<3xi32>
      %124 = arith.addi %123, %c1_i32 : i32
      %125 = arith.cmpi sge, %124, %c2_i32 : i32
      %126 = arith.subi %124, %c2_i32 : i32
      %127 = arith.select %125, %126, %124 : i32
      memref.store %127, %_anonymous15[%c2] : memref<3xi32>
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, Release, 1)
      %128 = memref.load %_anonymous15[%c1] : memref<3xi32>
      %129 = arith.addi %128, %c1_i32 : i32
      %130 = arith.cmpi sge, %129, %c2_i32 : i32
      %131 = arith.subi %129, %c2_i32 : i32
      %132 = arith.select %130, %131, %129 : i32
      memref.store %132, %_anonymous15[%c1] : memref<3xi32>
      %133 = arith.addi %104, %c1 : index
      cf.br ^bb48(%133 : index)
    ^bb62:  // pred: ^bb48
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, Release, 1)
      %134 = memref.load %_anonymous15[%c0] : memref<3xi32>
      %135 = arith.addi %134, %c1_i32 : i32
      %136 = arith.cmpi sge, %135, %c1_i32 : i32
      %137 = arith.select %136, %134, %135 : i32
      memref.store %137, %_anonymous15[%c0] : memref<3xi32>
      %138 = arith.addi %0, %c1 : index
      cf.br ^bb1(%138 : index)
    ^bb63:  // pred: ^bb1
      aie.end
    } {link_files = ["mm_128x64x128.o"], stack_size = 3328 : i32}
    aie.runtime_sequence(%arg0: memref<262144xbf16>, %arg1: memref<524288x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<1048576xbf16>) {
      %0 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 0, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%0)
      %1 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 131072, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%1)
      %2 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 0, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%2)
      %3 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 16384, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%3)
      %4 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 32768, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%4)
      %5 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 49152, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%5)
      %6 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 65536, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%6)
      %7 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 81920, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%7)
      %8 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 98304, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%8)
      %9 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 114688, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%9)
      %10 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 0, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%10)
      %11 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 128, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%11)
      %12 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 256, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%12)
      %13 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 384, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%13)
      %14 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 512, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%14)
      %15 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 640, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%15)
      %16 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 768, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%16)
      %17 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 896, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%17)
      %18 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 0, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%18)
      %19 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 131072, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%19)
      %20 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 131072, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%20)
      %21 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 147456, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%21)
      %22 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 163840, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%22)
      %23 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 180224, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%23)
      %24 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 196608, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%24)
      %25 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 212992, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%25)
      %26 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 229376, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%26)
      %27 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 245760, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%27)
      %28 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1024, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%28)
      %29 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1152, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%29)
      %30 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1280, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%30)
      %31 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1408, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%31)
      %32 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1536, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%32)
      %33 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1664, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%33)
      %34 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1792, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%34)
      %35 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 1920, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%35)
      %36 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 0, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%36)
      %37 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 131072, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%37)
      %38 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 262144, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%38)
      %39 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 278528, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%39)
      %40 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 294912, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%40)
      %41 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 311296, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%41)
      %42 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 327680, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%42)
      %43 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 344064, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%43)
      %44 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 360448, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%44)
      %45 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 376832, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%45)
      %46 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2048, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%46)
      %47 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2176, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%47)
      %48 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2304, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%48)
      %49 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2432, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%49)
      %50 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2560, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%50)
      %51 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2688, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%51)
      %52 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2816, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%52)
      %53 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 2944, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%53)
      %54 = aiex.dma_configure_task_for @A_L3L2_0_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 0, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%54)
      %55 = aiex.dma_configure_task_for @A_L3L2_1_shim_alloc {
        aie.dma_bd(%arg0 : memref<262144xbf16>, 131072, 131072, [<size = 1, stride = 0>, <size = 2, stride = 512>, <size = 128, stride = 1024>, <size = 512, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%55)
      %56 = aiex.dma_configure_task_for @B_L3L2_0_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 393216, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%56)
      %57 = aiex.dma_configure_task_for @B_L3L2_1_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 409600, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%57)
      %58 = aiex.dma_configure_task_for @B_L3L2_2_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 425984, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%58)
      %59 = aiex.dma_configure_task_for @B_L3L2_3_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 442368, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%59)
      %60 = aiex.dma_configure_task_for @B_L3L2_4_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 458752, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%60)
      %61 = aiex.dma_configure_task_for @B_L3L2_5_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 475136, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%61)
      %62 = aiex.dma_configure_task_for @B_L3L2_6_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 491520, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%62)
      %63 = aiex.dma_configure_task_for @B_L3L2_7_shim_alloc {
        aie.dma_bd(%arg1 : memref<524288x!aiex.bfp<"v8bfp16ebs8">>, 507904, 16384, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 16384, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      }
      aiex.dma_start_task(%63)
      %64 = aiex.dma_configure_task_for @C_L2L3_0_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3072, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%64)
      %65 = aiex.dma_configure_task_for @C_L2L3_1_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3200, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%65)
      %66 = aiex.dma_configure_task_for @C_L2L3_2_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3328, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%66)
      %67 = aiex.dma_configure_task_for @C_L2L3_3_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3456, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%67)
      %68 = aiex.dma_configure_task_for @C_L2L3_4_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3584, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%68)
      %69 = aiex.dma_configure_task_for @C_L2L3_5_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3712, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%69)
      %70 = aiex.dma_configure_task_for @C_L2L3_6_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3840, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%70)
      %71 = aiex.dma_configure_task_for @C_L2L3_7_shim_alloc {
        aie.dma_bd(%arg2 : memref<1048576xbf16>, 3968, 32768, [<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 256, stride = 4096>, <size = 128, stride = 1>]) {burst_length = 0 : i32}
        aie.end
      } {issue_token = true}
      aiex.dma_start_task(%71)
      aiex.dma_await_task(%10)
      aiex.dma_await_task(%11)
      aiex.dma_await_task(%12)
      aiex.dma_await_task(%13)
      aiex.dma_await_task(%14)
      aiex.dma_await_task(%15)
      aiex.dma_await_task(%16)
      aiex.dma_await_task(%17)
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
      aiex.dma_await_task(%28)
      aiex.dma_await_task(%29)
      aiex.dma_await_task(%30)
      aiex.dma_await_task(%31)
      aiex.dma_await_task(%32)
      aiex.dma_await_task(%33)
      aiex.dma_await_task(%34)
      aiex.dma_await_task(%35)
      aiex.dma_free_task(%18)
      aiex.dma_free_task(%19)
      aiex.dma_free_task(%20)
      aiex.dma_free_task(%21)
      aiex.dma_free_task(%22)
      aiex.dma_free_task(%23)
      aiex.dma_free_task(%24)
      aiex.dma_free_task(%25)
      aiex.dma_free_task(%26)
      aiex.dma_free_task(%27)
      aiex.dma_await_task(%46)
      aiex.dma_await_task(%47)
      aiex.dma_await_task(%48)
      aiex.dma_await_task(%49)
      aiex.dma_await_task(%50)
      aiex.dma_await_task(%51)
      aiex.dma_await_task(%52)
      aiex.dma_await_task(%53)
      aiex.dma_free_task(%36)
      aiex.dma_free_task(%37)
      aiex.dma_free_task(%38)
      aiex.dma_free_task(%39)
      aiex.dma_free_task(%40)
      aiex.dma_free_task(%41)
      aiex.dma_free_task(%42)
      aiex.dma_free_task(%43)
      aiex.dma_free_task(%44)
      aiex.dma_free_task(%45)
      aiex.dma_await_task(%64)
      aiex.dma_await_task(%65)
      aiex.dma_await_task(%66)
      aiex.dma_await_task(%67)
      aiex.dma_await_task(%68)
      aiex.dma_await_task(%69)
      aiex.dma_await_task(%70)
      aiex.dma_await_task(%71)
      aiex.dma_free_task(%54)
      aiex.dma_free_task(%55)
      aiex.dma_free_task(%56)
      aiex.dma_free_task(%57)
      aiex.dma_free_task(%58)
      aiex.dma_free_task(%59)
      aiex.dma_free_task(%60)
      aiex.dma_free_task(%61)
      aiex.dma_free_task(%62)
      aiex.dma_free_task(%63)
    }
    aie.shim_dma_allocation @A_L3L2_0_shim_alloc(%shim_noc_tile_0_0, MM2S, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<128x512xbf16>, 0, 65536, [<size = 128, stride = 64>, <size = 8, stride = 8192>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<128x512xbf16>, 0, 65536, [<size = 128, stride = 64>, <size = 8, stride = 8192>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_0 : memref<128x512xbf16>, 0, 65536, [<size = 32, stride = 2048>, <size = 8, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_0_cons_buff_1 : memref<128x512xbf16>, 0, 65536, [<size = 32, stride = 2048>, <size = 8, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_0_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_0_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_0_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_0_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_0_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 2, ^bb19, ^bb23)
    ^bb19:  // 2 preds: ^bb18, ^bb22
      aie.use_lock(%C_L2L3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_0_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_0_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_0_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_0_prod_lock_1, Release, 1)
      aie.next_bd ^bb19
    ^bb23:  // pred: ^bb18
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_0_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_1_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_2_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_3_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_2 = aie.mem(%tile_4_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_4_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_4_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_2 = aie.mem(%tile_5_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_5_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_5_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_2 = aie.mem(%tile_6_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_6_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_6_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_0_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_2 = aie.mem(%tile_7_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_7_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_0_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_0_7_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_0_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_0_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_0_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_0_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
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
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<128x512xbf16>, 0, 65536, [<size = 128, stride = 64>, <size = 8, stride = 8192>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<128x512xbf16>, 0, 65536, [<size = 128, stride = 64>, <size = 8, stride = 8192>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_0 : memref<128x512xbf16>, 0, 65536, [<size = 32, stride = 2048>, <size = 8, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>]) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%A_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L3L2_1_cons_buff_1 : memref<128x512xbf16>, 0, 65536, [<size = 32, stride = 2048>, <size = 8, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>]) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%A_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%B_L3L2_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_2_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%B_L3L2_2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%C_L2L3_2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_2_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 3, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%C_L2L3_2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_1, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%C_L2L3_2_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_2_cons_lock_1, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 2, ^bb19, ^bb23)
    ^bb19:  // 2 preds: ^bb18, ^bb22
      aie.use_lock(%C_L2L3_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%C_L2L3_2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_1, Release, 1)
      aie.next_bd ^bb21
    ^bb21:  // pred: ^bb20
      aie.use_lock(%C_L2L3_2_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_0, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%C_L2L3_2_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_2_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 9 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%C_L2L3_2_prod_lock_1, Release, 1)
      aie.next_bd ^bb19
    ^bb23:  // pred: ^bb18
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_0_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_0_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_0_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_0_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_0_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_1_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_1_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_1_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_1_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_1_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_2_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_2_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_2_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_2_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_3_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_3_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_3_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_4_3 = aie.mem(%tile_4_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_4_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_4_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_4_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_4_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_4_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_4_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_4_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_4_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_5_3 = aie.mem(%tile_5_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_5_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_5_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_5_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_5_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_5_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_5_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_6_3 = aie.mem(%tile_6_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_6_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_6_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_6_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_6_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_6_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_6_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_7_3 = aie.mem(%tile_7_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_7_cons_buff_0 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%A_L2L1_1_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%A_L2L1_1_7_cons_buff_1 : memref<32x64xbf16>, 0, 2048, [<size = 8, stride = 64>, <size = 4, stride = 512>, <size = 64, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%A_L2L1_1_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L2L1_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L2L1_7_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L2L1_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%C_L1L2_7_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L1L2_7_1_buff_0 : memref<128x128xbf16>, 0, 16384) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L1L2_7_1_prod_lock_0, Release, 1)
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
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_1_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_1_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_1_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_1_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_1_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_1_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_1_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_1_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_1_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_1_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_2_shim_alloc(%shim_noc_tile_2_0, MM2S, 1)
    aie.shim_dma_allocation @B_L3L2_3_shim_alloc(%shim_noc_tile_3_0, MM2S, 0)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_3_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_3_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_3_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_3_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_3_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_3_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_3_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_3_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_3_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_3_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_3_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_4_shim_alloc(%shim_noc_tile_4_0, MM2S, 0)
    %memtile_dma_4_1 = aie.memtile_dma(%mem_tile_4_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_4_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_4_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_4_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_4_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_4_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_4_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_4_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_4_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_4_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_4_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_5_shim_alloc(%shim_noc_tile_5_0, MM2S, 0)
    %memtile_dma_5_1 = aie.memtile_dma(%mem_tile_5_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_5_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_5_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_5_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_5_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_5_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_5_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_5_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_5_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_5_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_5_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_5_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_5_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_5_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_6_shim_alloc(%shim_noc_tile_6_0, MM2S, 0)
    %memtile_dma_6_1 = aie.memtile_dma(%mem_tile_6_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_6_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_6_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_6_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_6_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_6_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_6_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_6_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_6_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_6_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_6_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_6_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_6_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_6_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @B_L3L2_7_shim_alloc(%shim_noc_tile_7_0, MM2S, 0)
    %memtile_dma_7_1 = aie.memtile_dma(%mem_tile_7_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_0 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%B_L3L2_7_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%B_L3L2_7_cons_buff_1 : memref<64x16x!aiex.bfp<"v8bfp16ebs8">>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%B_L3L2_7_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%C_L2L3_7_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<256x128xbf16>, 0, 16384) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%C_L2L3_7_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<256x128xbf16>, 0, 16384) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%C_L2L3_7_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<256x128xbf16>, 16384, 16384) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%C_L2L3_7_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<256x128xbf16>, 16384, 16384) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%C_L2L3_7_cons_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 1, ^bb13, ^bb17)
    ^bb13:  // 2 preds: ^bb12, ^bb16
      aie.use_lock(%C_L2L3_7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%C_L2L3_7_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_0 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%C_L2L3_7_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<256x128xbf16>, 0, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%C_L2L3_7_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%C_L2L3_7_buff_1 : memref<256x128xbf16>, 16384, 16384, [<size = 16, stride = 1024>, <size = 8, stride = 8>, <size = 16, stride = 64>, <size = 8, stride = 1>]) {bd_id = 29 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%C_L2L3_7_prod_lock_1, Release, 1)
      aie.next_bd ^bb13
    ^bb17:  // pred: ^bb12
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
  }
}
