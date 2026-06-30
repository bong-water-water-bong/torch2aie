module {
  aie.device(npu2) {
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %tile_2_2, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 1, %tile_2_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 1, %shim_noc_tile_2_0, DMA : 0)
    func.func private @q4nx_main16_layer_scheduler(memref<2560xbf16>, memref<2560xbf16>, memref<128xi32>, memref<128xi32>, memref<128xi32>, memref<128xi32>, i32, i32, i32, i32) attributes {link_with = "/home/bcloud/torch2aie/examples/qwen3-decode-layer/main_projection_q4nx_fast.o"}
    %main_accum = aie.buffer(%tile_2_2) {address = 8192 : i32, sym_name = "main_accum"} : memref<32xi32> 
    %main_wt_ping = aie.buffer(%tile_2_2) {address = 10240 : i32, sym_name = "main_wt_ping"} : memref<2560xbf16> 
    %main_record_ping = aie.buffer(%tile_2_2) {address = 15388 : i32, sym_name = "main_record_ping"} : memref<128xi32> 
    %main_wt_pong = aie.buffer(%tile_2_2) {address = 16384 : i32, sym_name = "main_wt_pong"} : memref<2560xbf16> 
    %main_record_pong = aie.buffer(%tile_2_2) {address = 21532 : i32, sym_name = "main_record_pong"} : memref<128xi32> 
    %main_chunk_ping = aie.buffer(%tile_2_2) {address = 32768 : i32, sym_name = "main_chunk_ping"} : memref<128xi32> 
    %main_chunk_pong = aie.buffer(%tile_2_2) {address = 49152 : i32, sym_name = "main_chunk_pong"} : memref<128xi32> 
    %main_chunk_empty = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "main_chunk_empty"}
    %main_chunk_full = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "main_chunk_full"}
    %main_wt_empty = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "main_wt_empty"}
    %main_wt_full = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "main_wt_full"}
    %main_records_empty = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "main_records_empty"}
    %main_records_full = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "main_records_full"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @q4nx_main16_layer_scheduler(%main_wt_ping, %main_wt_pong, %main_chunk_ping, %main_chunk_pong, %main_record_ping, %main_record_pong, %c0_i32, %c0_i32, %c32_i32, %c1_i32) : (memref<2560xbf16>, memref<2560xbf16>, memref<128xi32>, memref<128xi32>, memref<128xi32>, memref<128xi32>, i32, i32, i32, i32) -> ()
      aie.end
    } {link_files = ["/home/bcloud/torch2aie/examples/qwen3-decode-layer/main_projection_q4nx_fast.o"]}
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%main_chunk_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_chunk_ping : memref<128xi32>, 0, 128) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%main_chunk_full, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%main_chunk_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_chunk_pong : memref<128xi32>, 0, 128) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%main_chunk_full, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%main_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_wt_ping : memref<2560xbf16>, 0, 2560) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%main_wt_full, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%main_wt_empty, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_wt_pong : memref<2560xbf16>, 0, 2560) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%main_wt_full, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%main_records_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_record_ping : memref<128xi32>, 0, 17) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%main_records_empty, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%main_records_full, AcquireGreaterEqual, 1)
      aie.dma_bd(%main_record_pong : memref<128xi32>, 0, 17) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%main_records_empty, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.runtime_sequence(%arg0: memref<16384xi32>, %arg1: memref<163840xi32>, %arg2: memref<136xi32>) {
      aiex.npu.writebd {bd_id = 0 : i32, buffer_length = 136 : i32, buffer_offset = 0 : i32, burst_length = 64 : i32, column = 2 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 0 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 0 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 67227652 : ui32, arg_idx = 2 : i32, arg_plus = 0 : i32}
      aiex.npu.push_queue(2, 0, S2MM : 0) {bd_id = 0 : i32, issue_token = true, repeat_count = 0 : i32}
      aiex.npu.writebd {bd_id = 1 : i32, buffer_length = 16384 : i32, buffer_offset = 0 : i32, burst_length = 64 : i32, column = 2 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 0 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 0 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 67227684 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.push_queue(2, 0, MM2S : 0) {bd_id = 1 : i32, issue_token = true, repeat_count = 0 : i32}
      aiex.npu.writebd {bd_id = 2 : i32, buffer_length = 163840 : i32, buffer_offset = 0 : i32, burst_length = 64 : i32, column = 2 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 0 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 0 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 67227716 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.push_queue(2, 0, MM2S : 1) {bd_id = 2 : i32, issue_token = true, repeat_count = 0 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 2 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
