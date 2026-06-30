"builtin.module"() ({
  "aie.device"() <{device = 8 : i32, sym_name = "main"}> ({
    "func.func"() <{function_type = (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> (), sym_name = "zero_kernel", sym_visibility = "private"}> ({
    }) {link_with = "mm_192x128x96.o"} : () -> ()
    "func.func"() <{function_type = (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> (), sym_name = "matmul_vectorized_bfp16", sym_visibility = "private"}> ({
    }) {link_with = "mm_192x128x96.o"} : () -> ()
    %0 = "aie.tile"() <{col = 0 : i32, row = 0 : i32}> : () -> index
    %1 = "aie.tile"() <{col = 1 : i32, row = 0 : i32}> : () -> index
    %2 = "aie.tile"() <{col = 2 : i32, row = 0 : i32}> : () -> index
    %3 = "aie.tile"() <{col = 3 : i32, row = 0 : i32}> : () -> index
    %4 = "aie.tile"() <{col = 4 : i32, row = 0 : i32}> : () -> index
    %5 = "aie.tile"() <{col = 5 : i32, row = 0 : i32}> : () -> index
    %6 = "aie.tile"() <{col = 6 : i32, row = 0 : i32}> : () -> index
    %7 = "aie.tile"() <{col = 7 : i32, row = 0 : i32}> : () -> index
    %8 = "aie.tile"() <{col = 8 : i32, row = 0 : i32}> : () -> index
    %9 = "aie.tile"() <{col = 0 : i32, row = 1 : i32}> : () -> index
    %10 = "aie.tile"() <{col = 1 : i32, row = 1 : i32}> : () -> index
    %11 = "aie.tile"() <{col = 2 : i32, row = 1 : i32}> : () -> index
    %12 = "aie.tile"() <{col = 3 : i32, row = 1 : i32}> : () -> index
    %13 = "aie.tile"() <{col = 4 : i32, row = 1 : i32}> : () -> index
    %14 = "aie.tile"() <{col = 5 : i32, row = 1 : i32}> : () -> index
    %15 = "aie.tile"() <{col = 6 : i32, row = 1 : i32}> : () -> index
    %16 = "aie.tile"() <{col = 7 : i32, row = 1 : i32}> : () -> index
    %17 = "aie.tile"() <{col = 8 : i32, row = 1 : i32}> : () -> index
    %18 = "aie.tile"() <{col = 0 : i32, row = 2 : i32}> : () -> index
    %19 = "aie.tile"() <{col = 1 : i32, row = 2 : i32}> : () -> index
    %20 = "aie.tile"() <{col = 2 : i32, row = 2 : i32}> : () -> index
    %21 = "aie.tile"() <{col = 3 : i32, row = 2 : i32}> : () -> index
    %22 = "aie.tile"() <{col = 4 : i32, row = 2 : i32}> : () -> index
    %23 = "aie.tile"() <{col = 5 : i32, row = 2 : i32}> : () -> index
    %24 = "aie.tile"() <{col = 6 : i32, row = 2 : i32}> : () -> index
    %25 = "aie.tile"() <{col = 7 : i32, row = 2 : i32}> : () -> index
    %26 = "aie.tile"() <{col = 8 : i32, row = 2 : i32}> : () -> index
    %27 = "aie.tile"() <{col = 0 : i32, row = 3 : i32}> : () -> index
    %28 = "aie.tile"() <{col = 1 : i32, row = 3 : i32}> : () -> index
    %29 = "aie.tile"() <{col = 2 : i32, row = 3 : i32}> : () -> index
    %30 = "aie.tile"() <{col = 3 : i32, row = 3 : i32}> : () -> index
    %31 = "aie.tile"() <{col = 4 : i32, row = 3 : i32}> : () -> index
    %32 = "aie.tile"() <{col = 5 : i32, row = 3 : i32}> : () -> index
    %33 = "aie.tile"() <{col = 6 : i32, row = 3 : i32}> : () -> index
    %34 = "aie.tile"() <{col = 7 : i32, row = 3 : i32}> : () -> index
    %35 = "aie.tile"() <{col = 8 : i32, row = 3 : i32}> : () -> index
    %36 = "aie.tile"() <{col = 0 : i32, row = 4 : i32}> : () -> index
    %37 = "aie.tile"() <{col = 1 : i32, row = 4 : i32}> : () -> index
    %38 = "aie.tile"() <{col = 2 : i32, row = 4 : i32}> : () -> index
    %39 = "aie.tile"() <{col = 3 : i32, row = 4 : i32}> : () -> index
    %40 = "aie.tile"() <{col = 4 : i32, row = 4 : i32}> : () -> index
    %41 = "aie.tile"() <{col = 5 : i32, row = 4 : i32}> : () -> index
    %42 = "aie.tile"() <{col = 6 : i32, row = 4 : i32}> : () -> index
    %43 = "aie.tile"() <{col = 7 : i32, row = 4 : i32}> : () -> index
    %44 = "aie.tile"() <{col = 8 : i32, row = 4 : i32}> : () -> index
    %45 = "aie.tile"() <{col = 0 : i32, row = 5 : i32}> : () -> index
    %46 = "aie.tile"() <{col = 1 : i32, row = 5 : i32}> : () -> index
    %47 = "aie.tile"() <{col = 2 : i32, row = 5 : i32}> : () -> index
    %48 = "aie.tile"() <{col = 3 : i32, row = 5 : i32}> : () -> index
    %49 = "aie.tile"() <{col = 4 : i32, row = 5 : i32}> : () -> index
    %50 = "aie.tile"() <{col = 5 : i32, row = 5 : i32}> : () -> index
    %51 = "aie.tile"() <{col = 6 : i32, row = 5 : i32}> : () -> index
    %52 = "aie.tile"() <{col = 7 : i32, row = 5 : i32}> : () -> index
    %53 = "aie.tile"() <{col = 8 : i32, row = 5 : i32}> : () -> index
    "aie.objectfifo"(%0, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%9, %18, %19, %20, %21, %22, %23, %24, %25, %26) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_0", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_0], fifoOuts = [@A_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%11, %27, %28, %29, %30, %31, %32, %33, %34, %35) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_1", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_1], fifoOuts = [@A_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%4, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %36, %37, %38, %39, %40, %41, %42, %43, %44) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_2", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_2], fifoOuts = [@A_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%6, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %45, %46, %47, %48, %49, %50, %51, %52, %53) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_3", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_3], fifoOuts = [@A_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%0, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%9, %18, %27, %36, %45) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_0", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_0], fifoOuts = [@B_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%1, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%10, %19, %28, %37, %46) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_1", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_1], fifoOuts = [@B_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%11, %20, %29, %38, %47) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_2", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_2], fifoOuts = [@B_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%3, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %21, %30, %39, %48) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_3", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_3], fifoOuts = [@B_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%4, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_4", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %22, %31, %40, %49) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_4", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_4], fifoOuts = [@B_L2L1_4], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%5, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_5", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %23, %32, %41, %50) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_5", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_5], fifoOuts = [@B_L2L1_5], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%6, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_6", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %24, %33, %42, %51) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_6", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_6], fifoOuts = [@B_L2L1_6], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%7, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_7", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %25, %34, %43, %52) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_7", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_7], fifoOuts = [@B_L2L1_7], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%8, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_8", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%17, %26, %35, %44, %53) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_8", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_8], fifoOuts = [@B_L2L1_8], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%18, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%27, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%36, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%45, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%9, %0) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_0_0, @C_L1L2_0_1, @C_L1L2_0_2, @C_L1L2_0_3], fifoOuts = [@C_L2L3_0], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%19, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%28, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%37, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%46, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%10, %1) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_1_0, @C_L1L2_1_1, @C_L1L2_1_2, @C_L1L2_1_3], fifoOuts = [@C_L2L3_1], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%20, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%29, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%38, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%47, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%11, %2) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_2_0, @C_L1L2_2_1, @C_L1L2_2_2, @C_L1L2_2_3], fifoOuts = [@C_L2L3_2], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%21, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%30, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%39, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%48, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %3) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_3_0, @C_L1L2_3_1, @C_L1L2_3_2, @C_L1L2_3_3], fifoOuts = [@C_L2L3_3], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%22, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%31, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%40, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%49, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_4", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_4_0, @C_L1L2_4_1, @C_L1L2_4_2, @C_L1L2_4_3], fifoOuts = [@C_L2L3_4], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%23, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%32, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%41, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%50, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_5", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_5_0, @C_L1L2_5_1, @C_L1L2_5_2, @C_L1L2_5_3], fifoOuts = [@C_L2L3_5], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%24, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%33, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%42, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%51, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_6", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_6_0, @C_L1L2_6_1, @C_L1L2_6_2, @C_L1L2_6_3], fifoOuts = [@C_L2L3_6], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%25, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%34, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%43, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%52, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_7", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_7_0, @C_L1L2_7_1, @C_L1L2_7_2, @C_L1L2_7_3], fifoOuts = [@C_L2L3_7], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%26, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%35, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%44, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%53, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%17, %8) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_8", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_8_0, @C_L1L2_8_1, @C_L1L2_8_2, @C_L1L2_8_3], fifoOuts = [@C_L2L3_8], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    %54 = "aie.core"(%18) <{stack_size = 1024 : i32}> ({
      %2943 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2944 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2945 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2943, %2944, %2945) ({
      ^bb0(%arg178: index):
        %2946 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2947 = "aie.objectfifo.subview.access"(%2946) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2947) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2948 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2949 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2950 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2948, %2949, %2950) ({
        ^bb0(%arg182: index):
          %3008 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3009 = "aie.objectfifo.subview.access"(%3008) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3010 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3011 = "aie.objectfifo.subview.access"(%3010) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3011, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3012 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3013 = "aie.objectfifo.subview.access"(%3012) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3013, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3014 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3015 = "aie.objectfifo.subview.access"(%3014) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3015, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3016 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3017 = "aie.objectfifo.subview.access"(%3016) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3017, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3018 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3019 = "aie.objectfifo.subview.access"(%3018) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3019, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3020 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3021 = "aie.objectfifo.subview.access"(%3020) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3021, %3009, %2947) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2951 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2952 = "aie.objectfifo.subview.access"(%2951) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2952) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2953 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2954 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2955 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2953, %2954, %2955) ({
        ^bb0(%arg181: index):
          %2994 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2995 = "aie.objectfifo.subview.access"(%2994) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2996 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2997 = "aie.objectfifo.subview.access"(%2996) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2997, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2998 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2999 = "aie.objectfifo.subview.access"(%2998) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2999, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3000 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3001 = "aie.objectfifo.subview.access"(%3000) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3001, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3002 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3003 = "aie.objectfifo.subview.access"(%3002) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3003, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3004 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3005 = "aie.objectfifo.subview.access"(%3004) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3005, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3006 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3007 = "aie.objectfifo.subview.access"(%3006) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3007, %2995, %2952) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2956 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2957 = "aie.objectfifo.subview.access"(%2956) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2957) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2958 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2959 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2960 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2958, %2959, %2960) ({
        ^bb0(%arg180: index):
          %2980 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2981 = "aie.objectfifo.subview.access"(%2980) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2982 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2983 = "aie.objectfifo.subview.access"(%2982) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2983, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2984 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2985 = "aie.objectfifo.subview.access"(%2984) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2985, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2986 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2987 = "aie.objectfifo.subview.access"(%2986) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2987, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2988 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2989 = "aie.objectfifo.subview.access"(%2988) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2989, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2990 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2991 = "aie.objectfifo.subview.access"(%2990) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2991, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2992 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2993 = "aie.objectfifo.subview.access"(%2992) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2993, %2981, %2957) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2961 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2962 = "aie.objectfifo.subview.access"(%2961) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2962) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2963 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2964 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2965 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2963, %2964, %2965) ({
        ^bb0(%arg179: index):
          %2966 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2967 = "aie.objectfifo.subview.access"(%2966) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2968 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2969 = "aie.objectfifo.subview.access"(%2968) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2969, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2970 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2971 = "aie.objectfifo.subview.access"(%2970) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2971, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2972 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2973 = "aie.objectfifo.subview.access"(%2972) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2973, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2974 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2975 = "aie.objectfifo.subview.access"(%2974) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2975, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2976 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2977 = "aie.objectfifo.subview.access"(%2976) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2977, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2978 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2979 = "aie.objectfifo.subview.access"(%2978) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2979, %2967, %2962) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %55 = "aie.core"(%19) <{stack_size = 1024 : i32}> ({
      %2864 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2865 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2866 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2864, %2865, %2866) ({
      ^bb0(%arg173: index):
        %2867 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2868 = "aie.objectfifo.subview.access"(%2867) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2868) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2869 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2870 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2871 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2869, %2870, %2871) ({
        ^bb0(%arg177: index):
          %2929 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2930 = "aie.objectfifo.subview.access"(%2929) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2931 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2932 = "aie.objectfifo.subview.access"(%2931) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2932, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2933 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2934 = "aie.objectfifo.subview.access"(%2933) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2934, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2935 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2936 = "aie.objectfifo.subview.access"(%2935) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2936, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2937 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2938 = "aie.objectfifo.subview.access"(%2937) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2938, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2939 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2940 = "aie.objectfifo.subview.access"(%2939) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2940, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2941 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2942 = "aie.objectfifo.subview.access"(%2941) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2942, %2930, %2868) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2872 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2873 = "aie.objectfifo.subview.access"(%2872) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2873) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2874 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2875 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2876 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2874, %2875, %2876) ({
        ^bb0(%arg176: index):
          %2915 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2916 = "aie.objectfifo.subview.access"(%2915) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2917 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2918 = "aie.objectfifo.subview.access"(%2917) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2918, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2919 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2920 = "aie.objectfifo.subview.access"(%2919) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2920, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2921 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2922 = "aie.objectfifo.subview.access"(%2921) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2922, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2923 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2924 = "aie.objectfifo.subview.access"(%2923) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2924, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2925 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2926 = "aie.objectfifo.subview.access"(%2925) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2926, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2927 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2928 = "aie.objectfifo.subview.access"(%2927) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2928, %2916, %2873) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2877 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2878 = "aie.objectfifo.subview.access"(%2877) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2878) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2879 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2880 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2881 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2879, %2880, %2881) ({
        ^bb0(%arg175: index):
          %2901 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2902 = "aie.objectfifo.subview.access"(%2901) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2903 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2904 = "aie.objectfifo.subview.access"(%2903) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2904, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2905 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2906 = "aie.objectfifo.subview.access"(%2905) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2906, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2907 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2908 = "aie.objectfifo.subview.access"(%2907) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2908, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2909 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2910 = "aie.objectfifo.subview.access"(%2909) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2910, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2911 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2912 = "aie.objectfifo.subview.access"(%2911) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2912, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2913 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2914 = "aie.objectfifo.subview.access"(%2913) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2914, %2902, %2878) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2882 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2883 = "aie.objectfifo.subview.access"(%2882) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2883) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2884 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2885 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2886 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2884, %2885, %2886) ({
        ^bb0(%arg174: index):
          %2887 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2888 = "aie.objectfifo.subview.access"(%2887) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2889 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2890 = "aie.objectfifo.subview.access"(%2889) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2890, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2891 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2892 = "aie.objectfifo.subview.access"(%2891) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2892, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2893 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2894 = "aie.objectfifo.subview.access"(%2893) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2894, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2895 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2896 = "aie.objectfifo.subview.access"(%2895) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2896, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2897 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2898 = "aie.objectfifo.subview.access"(%2897) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2898, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2899 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2900 = "aie.objectfifo.subview.access"(%2899) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2900, %2888, %2883) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %56 = "aie.core"(%20) <{stack_size = 1024 : i32}> ({
      %2785 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2786 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2787 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2785, %2786, %2787) ({
      ^bb0(%arg168: index):
        %2788 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2789 = "aie.objectfifo.subview.access"(%2788) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2789) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2790 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2791 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2792 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2790, %2791, %2792) ({
        ^bb0(%arg172: index):
          %2850 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2851 = "aie.objectfifo.subview.access"(%2850) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2852 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2853 = "aie.objectfifo.subview.access"(%2852) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2853, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2854 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2855 = "aie.objectfifo.subview.access"(%2854) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2855, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2856 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2857 = "aie.objectfifo.subview.access"(%2856) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2857, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2858 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2859 = "aie.objectfifo.subview.access"(%2858) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2859, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2860 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2861 = "aie.objectfifo.subview.access"(%2860) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2861, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2862 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2863 = "aie.objectfifo.subview.access"(%2862) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2863, %2851, %2789) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2793 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2794 = "aie.objectfifo.subview.access"(%2793) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2794) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2795 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2796 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2797 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2795, %2796, %2797) ({
        ^bb0(%arg171: index):
          %2836 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2837 = "aie.objectfifo.subview.access"(%2836) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2838 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2839 = "aie.objectfifo.subview.access"(%2838) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2839, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2840 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2841 = "aie.objectfifo.subview.access"(%2840) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2841, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2842 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2843 = "aie.objectfifo.subview.access"(%2842) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2843, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2844 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2845 = "aie.objectfifo.subview.access"(%2844) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2845, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2846 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2847 = "aie.objectfifo.subview.access"(%2846) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2847, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2848 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2849 = "aie.objectfifo.subview.access"(%2848) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2849, %2837, %2794) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2798 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2799 = "aie.objectfifo.subview.access"(%2798) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2799) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2800 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2801 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2802 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2800, %2801, %2802) ({
        ^bb0(%arg170: index):
          %2822 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2823 = "aie.objectfifo.subview.access"(%2822) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2824 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2825 = "aie.objectfifo.subview.access"(%2824) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2825, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2826 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2827 = "aie.objectfifo.subview.access"(%2826) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2827, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2828 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2829 = "aie.objectfifo.subview.access"(%2828) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2829, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2830 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2831 = "aie.objectfifo.subview.access"(%2830) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2831, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2832 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2833 = "aie.objectfifo.subview.access"(%2832) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2833, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2834 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2835 = "aie.objectfifo.subview.access"(%2834) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2835, %2823, %2799) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2803 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2804 = "aie.objectfifo.subview.access"(%2803) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2804) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2805 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2806 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2807 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2805, %2806, %2807) ({
        ^bb0(%arg169: index):
          %2808 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2809 = "aie.objectfifo.subview.access"(%2808) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2810 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2811 = "aie.objectfifo.subview.access"(%2810) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2811, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2812 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2813 = "aie.objectfifo.subview.access"(%2812) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2813, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2814 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2815 = "aie.objectfifo.subview.access"(%2814) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2815, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2816 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2817 = "aie.objectfifo.subview.access"(%2816) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2817, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2818 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2819 = "aie.objectfifo.subview.access"(%2818) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2819, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2820 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2821 = "aie.objectfifo.subview.access"(%2820) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2821, %2809, %2804) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %57 = "aie.core"(%21) <{stack_size = 1024 : i32}> ({
      %2706 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2707 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2708 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2706, %2707, %2708) ({
      ^bb0(%arg163: index):
        %2709 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2710 = "aie.objectfifo.subview.access"(%2709) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2710) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2711 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2712 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2713 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2711, %2712, %2713) ({
        ^bb0(%arg167: index):
          %2771 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2772 = "aie.objectfifo.subview.access"(%2771) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2773 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2774 = "aie.objectfifo.subview.access"(%2773) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2774, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2775 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2776 = "aie.objectfifo.subview.access"(%2775) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2776, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2777 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2778 = "aie.objectfifo.subview.access"(%2777) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2778, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2779 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2780 = "aie.objectfifo.subview.access"(%2779) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2780, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2781 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2782 = "aie.objectfifo.subview.access"(%2781) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2782, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2783 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2784 = "aie.objectfifo.subview.access"(%2783) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2784, %2772, %2710) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2714 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2715 = "aie.objectfifo.subview.access"(%2714) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2715) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2716 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2717 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2718 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2716, %2717, %2718) ({
        ^bb0(%arg166: index):
          %2757 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2758 = "aie.objectfifo.subview.access"(%2757) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2759 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2760 = "aie.objectfifo.subview.access"(%2759) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2760, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2761 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2762 = "aie.objectfifo.subview.access"(%2761) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2762, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2763 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2764 = "aie.objectfifo.subview.access"(%2763) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2764, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2765 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2766 = "aie.objectfifo.subview.access"(%2765) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2766, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2767 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2768 = "aie.objectfifo.subview.access"(%2767) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2768, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2769 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2770 = "aie.objectfifo.subview.access"(%2769) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2770, %2758, %2715) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2719 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2720 = "aie.objectfifo.subview.access"(%2719) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2720) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2721 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2722 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2723 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2721, %2722, %2723) ({
        ^bb0(%arg165: index):
          %2743 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2744 = "aie.objectfifo.subview.access"(%2743) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2745 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2746 = "aie.objectfifo.subview.access"(%2745) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2746, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2747 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2748 = "aie.objectfifo.subview.access"(%2747) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2748, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2749 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2750 = "aie.objectfifo.subview.access"(%2749) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2750, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2751 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2752 = "aie.objectfifo.subview.access"(%2751) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2752, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2753 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2754 = "aie.objectfifo.subview.access"(%2753) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2754, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2755 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2756 = "aie.objectfifo.subview.access"(%2755) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2756, %2744, %2720) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2724 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2725 = "aie.objectfifo.subview.access"(%2724) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2725) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2726 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2727 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2728 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2726, %2727, %2728) ({
        ^bb0(%arg164: index):
          %2729 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2730 = "aie.objectfifo.subview.access"(%2729) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2731 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2732 = "aie.objectfifo.subview.access"(%2731) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2732, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2733 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2734 = "aie.objectfifo.subview.access"(%2733) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2734, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2735 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2736 = "aie.objectfifo.subview.access"(%2735) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2736, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2737 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2738 = "aie.objectfifo.subview.access"(%2737) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2738, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2739 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2740 = "aie.objectfifo.subview.access"(%2739) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2740, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2741 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2742 = "aie.objectfifo.subview.access"(%2741) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2742, %2730, %2725) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %58 = "aie.core"(%22) <{stack_size = 1024 : i32}> ({
      %2627 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2628 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2629 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2627, %2628, %2629) ({
      ^bb0(%arg158: index):
        %2630 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2631 = "aie.objectfifo.subview.access"(%2630) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2631) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2632 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2633 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2634 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2632, %2633, %2634) ({
        ^bb0(%arg162: index):
          %2692 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2693 = "aie.objectfifo.subview.access"(%2692) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2694 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2695 = "aie.objectfifo.subview.access"(%2694) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2695, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2696 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2697 = "aie.objectfifo.subview.access"(%2696) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2697, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2698 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2699 = "aie.objectfifo.subview.access"(%2698) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2699, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2700 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2701 = "aie.objectfifo.subview.access"(%2700) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2701, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2702 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2703 = "aie.objectfifo.subview.access"(%2702) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2703, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2704 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2705 = "aie.objectfifo.subview.access"(%2704) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2705, %2693, %2631) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2635 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2636 = "aie.objectfifo.subview.access"(%2635) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2636) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2637 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2638 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2639 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2637, %2638, %2639) ({
        ^bb0(%arg161: index):
          %2678 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2679 = "aie.objectfifo.subview.access"(%2678) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2680 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2681 = "aie.objectfifo.subview.access"(%2680) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2681, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2682 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2683 = "aie.objectfifo.subview.access"(%2682) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2683, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2684 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2685 = "aie.objectfifo.subview.access"(%2684) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2685, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2686 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2687 = "aie.objectfifo.subview.access"(%2686) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2687, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2688 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2689 = "aie.objectfifo.subview.access"(%2688) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2689, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2690 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2691 = "aie.objectfifo.subview.access"(%2690) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2691, %2679, %2636) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2640 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2641 = "aie.objectfifo.subview.access"(%2640) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2641) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2642 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2643 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2644 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2642, %2643, %2644) ({
        ^bb0(%arg160: index):
          %2664 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2665 = "aie.objectfifo.subview.access"(%2664) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2666 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2667 = "aie.objectfifo.subview.access"(%2666) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2667, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2668 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2669 = "aie.objectfifo.subview.access"(%2668) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2669, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2670 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2671 = "aie.objectfifo.subview.access"(%2670) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2671, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2672 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2673 = "aie.objectfifo.subview.access"(%2672) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2673, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2674 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2675 = "aie.objectfifo.subview.access"(%2674) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2675, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2676 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2677 = "aie.objectfifo.subview.access"(%2676) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2677, %2665, %2641) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2645 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2646 = "aie.objectfifo.subview.access"(%2645) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2646) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2647 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2648 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2649 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2647, %2648, %2649) ({
        ^bb0(%arg159: index):
          %2650 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2651 = "aie.objectfifo.subview.access"(%2650) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2652 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2653 = "aie.objectfifo.subview.access"(%2652) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2653, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2654 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2655 = "aie.objectfifo.subview.access"(%2654) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2655, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2656 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2657 = "aie.objectfifo.subview.access"(%2656) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2657, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2658 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2659 = "aie.objectfifo.subview.access"(%2658) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2659, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2660 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2661 = "aie.objectfifo.subview.access"(%2660) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2661, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2662 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2663 = "aie.objectfifo.subview.access"(%2662) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2663, %2651, %2646) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %59 = "aie.core"(%23) <{stack_size = 1024 : i32}> ({
      %2548 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2549 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2550 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2548, %2549, %2550) ({
      ^bb0(%arg153: index):
        %2551 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2552 = "aie.objectfifo.subview.access"(%2551) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2552) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2553 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2554 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2555 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2553, %2554, %2555) ({
        ^bb0(%arg157: index):
          %2613 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2614 = "aie.objectfifo.subview.access"(%2613) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2615 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2616 = "aie.objectfifo.subview.access"(%2615) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2616, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2617 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2618 = "aie.objectfifo.subview.access"(%2617) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2618, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2619 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2620 = "aie.objectfifo.subview.access"(%2619) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2620, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2621 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2622 = "aie.objectfifo.subview.access"(%2621) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2622, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2623 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2624 = "aie.objectfifo.subview.access"(%2623) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2624, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2625 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2626 = "aie.objectfifo.subview.access"(%2625) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2626, %2614, %2552) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2556 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2557 = "aie.objectfifo.subview.access"(%2556) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2557) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2558 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2559 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2560 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2558, %2559, %2560) ({
        ^bb0(%arg156: index):
          %2599 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2600 = "aie.objectfifo.subview.access"(%2599) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2601 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2602 = "aie.objectfifo.subview.access"(%2601) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2602, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2603 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2604 = "aie.objectfifo.subview.access"(%2603) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2604, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2605 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2606 = "aie.objectfifo.subview.access"(%2605) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2606, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2607 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2608 = "aie.objectfifo.subview.access"(%2607) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2608, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2609 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2610 = "aie.objectfifo.subview.access"(%2609) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2610, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2611 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2612 = "aie.objectfifo.subview.access"(%2611) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2612, %2600, %2557) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2561 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2562 = "aie.objectfifo.subview.access"(%2561) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2562) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2563 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2564 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2565 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2563, %2564, %2565) ({
        ^bb0(%arg155: index):
          %2585 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2586 = "aie.objectfifo.subview.access"(%2585) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2587 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2588 = "aie.objectfifo.subview.access"(%2587) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2588, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2589 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2590 = "aie.objectfifo.subview.access"(%2589) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2590, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2591 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2592 = "aie.objectfifo.subview.access"(%2591) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2592, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2593 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2594 = "aie.objectfifo.subview.access"(%2593) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2594, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2595 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2596 = "aie.objectfifo.subview.access"(%2595) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2596, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2597 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2598 = "aie.objectfifo.subview.access"(%2597) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2598, %2586, %2562) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2566 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2567 = "aie.objectfifo.subview.access"(%2566) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2567) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2568 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2569 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2570 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2568, %2569, %2570) ({
        ^bb0(%arg154: index):
          %2571 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2572 = "aie.objectfifo.subview.access"(%2571) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2573 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2574 = "aie.objectfifo.subview.access"(%2573) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2574, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2575 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2576 = "aie.objectfifo.subview.access"(%2575) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2576, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2577 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2578 = "aie.objectfifo.subview.access"(%2577) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2578, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2579 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2580 = "aie.objectfifo.subview.access"(%2579) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2580, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2581 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2582 = "aie.objectfifo.subview.access"(%2581) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2582, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2583 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2584 = "aie.objectfifo.subview.access"(%2583) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2584, %2572, %2567) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %60 = "aie.core"(%24) <{stack_size = 1024 : i32}> ({
      %2469 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2470 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2471 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2469, %2470, %2471) ({
      ^bb0(%arg148: index):
        %2472 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2473 = "aie.objectfifo.subview.access"(%2472) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2473) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2474 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2475 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2476 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2474, %2475, %2476) ({
        ^bb0(%arg152: index):
          %2534 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2535 = "aie.objectfifo.subview.access"(%2534) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2536 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2537 = "aie.objectfifo.subview.access"(%2536) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2537, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2538 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2539 = "aie.objectfifo.subview.access"(%2538) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2539, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2540 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2541 = "aie.objectfifo.subview.access"(%2540) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2541, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2542 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2543 = "aie.objectfifo.subview.access"(%2542) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2543, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2544 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2545 = "aie.objectfifo.subview.access"(%2544) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2545, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2546 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2547 = "aie.objectfifo.subview.access"(%2546) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2547, %2535, %2473) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2477 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2478 = "aie.objectfifo.subview.access"(%2477) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2478) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2479 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2480 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2481 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2479, %2480, %2481) ({
        ^bb0(%arg151: index):
          %2520 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2521 = "aie.objectfifo.subview.access"(%2520) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2522 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2523 = "aie.objectfifo.subview.access"(%2522) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2523, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2524 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2525 = "aie.objectfifo.subview.access"(%2524) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2525, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2526 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2527 = "aie.objectfifo.subview.access"(%2526) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2527, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2528 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2529 = "aie.objectfifo.subview.access"(%2528) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2529, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2530 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2531 = "aie.objectfifo.subview.access"(%2530) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2531, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2532 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2533 = "aie.objectfifo.subview.access"(%2532) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2533, %2521, %2478) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2482 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2483 = "aie.objectfifo.subview.access"(%2482) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2483) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2484 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2485 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2486 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2484, %2485, %2486) ({
        ^bb0(%arg150: index):
          %2506 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2507 = "aie.objectfifo.subview.access"(%2506) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2508 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2509 = "aie.objectfifo.subview.access"(%2508) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2509, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2510 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2511 = "aie.objectfifo.subview.access"(%2510) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2511, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2512 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2513 = "aie.objectfifo.subview.access"(%2512) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2513, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2514 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2515 = "aie.objectfifo.subview.access"(%2514) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2515, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2516 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2517 = "aie.objectfifo.subview.access"(%2516) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2517, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2518 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2519 = "aie.objectfifo.subview.access"(%2518) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2519, %2507, %2483) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2487 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2488 = "aie.objectfifo.subview.access"(%2487) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2488) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2489 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2490 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2491 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2489, %2490, %2491) ({
        ^bb0(%arg149: index):
          %2492 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2493 = "aie.objectfifo.subview.access"(%2492) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2494 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2495 = "aie.objectfifo.subview.access"(%2494) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2495, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2496 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2497 = "aie.objectfifo.subview.access"(%2496) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2497, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2498 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2499 = "aie.objectfifo.subview.access"(%2498) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2499, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2500 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2501 = "aie.objectfifo.subview.access"(%2500) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2501, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2502 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2503 = "aie.objectfifo.subview.access"(%2502) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2503, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2504 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2505 = "aie.objectfifo.subview.access"(%2504) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2505, %2493, %2488) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %61 = "aie.core"(%25) <{stack_size = 1024 : i32}> ({
      %2390 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2391 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2392 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2390, %2391, %2392) ({
      ^bb0(%arg143: index):
        %2393 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2394 = "aie.objectfifo.subview.access"(%2393) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2394) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2395 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2396 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2397 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2395, %2396, %2397) ({
        ^bb0(%arg147: index):
          %2455 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2456 = "aie.objectfifo.subview.access"(%2455) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2457 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2458 = "aie.objectfifo.subview.access"(%2457) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2458, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2459 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2460 = "aie.objectfifo.subview.access"(%2459) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2460, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2461 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2462 = "aie.objectfifo.subview.access"(%2461) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2462, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2463 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2464 = "aie.objectfifo.subview.access"(%2463) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2464, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2465 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2466 = "aie.objectfifo.subview.access"(%2465) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2466, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2467 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2468 = "aie.objectfifo.subview.access"(%2467) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2468, %2456, %2394) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2398 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2399 = "aie.objectfifo.subview.access"(%2398) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2399) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2400 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2401 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2402 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2400, %2401, %2402) ({
        ^bb0(%arg146: index):
          %2441 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2442 = "aie.objectfifo.subview.access"(%2441) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2443 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2444 = "aie.objectfifo.subview.access"(%2443) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2444, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2445 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2446 = "aie.objectfifo.subview.access"(%2445) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2446, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2447 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2448 = "aie.objectfifo.subview.access"(%2447) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2448, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2449 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2450 = "aie.objectfifo.subview.access"(%2449) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2450, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2451 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2452 = "aie.objectfifo.subview.access"(%2451) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2452, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2453 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2454 = "aie.objectfifo.subview.access"(%2453) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2454, %2442, %2399) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2403 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2404 = "aie.objectfifo.subview.access"(%2403) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2404) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2405 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2406 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2407 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2405, %2406, %2407) ({
        ^bb0(%arg145: index):
          %2427 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2428 = "aie.objectfifo.subview.access"(%2427) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2429 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2430 = "aie.objectfifo.subview.access"(%2429) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2430, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2431 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2432 = "aie.objectfifo.subview.access"(%2431) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2432, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2433 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2434 = "aie.objectfifo.subview.access"(%2433) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2434, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2435 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2436 = "aie.objectfifo.subview.access"(%2435) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2436, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2437 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2438 = "aie.objectfifo.subview.access"(%2437) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2438, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2439 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2440 = "aie.objectfifo.subview.access"(%2439) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2440, %2428, %2404) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2408 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2409 = "aie.objectfifo.subview.access"(%2408) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2409) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2410 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2411 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2412 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2410, %2411, %2412) ({
        ^bb0(%arg144: index):
          %2413 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2414 = "aie.objectfifo.subview.access"(%2413) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2415 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2416 = "aie.objectfifo.subview.access"(%2415) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2416, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2417 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2418 = "aie.objectfifo.subview.access"(%2417) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2418, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2419 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2420 = "aie.objectfifo.subview.access"(%2419) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2420, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2421 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2422 = "aie.objectfifo.subview.access"(%2421) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2422, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2423 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2424 = "aie.objectfifo.subview.access"(%2423) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2424, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2425 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2426 = "aie.objectfifo.subview.access"(%2425) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2426, %2414, %2409) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %62 = "aie.core"(%26) <{stack_size = 1024 : i32}> ({
      %2311 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2312 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2313 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2311, %2312, %2313) ({
      ^bb0(%arg138: index):
        %2314 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2315 = "aie.objectfifo.subview.access"(%2314) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2315) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2316 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2317 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2318 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2316, %2317, %2318) ({
        ^bb0(%arg142: index):
          %2376 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2377 = "aie.objectfifo.subview.access"(%2376) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2378 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2379 = "aie.objectfifo.subview.access"(%2378) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2379, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2380 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2381 = "aie.objectfifo.subview.access"(%2380) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2381, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2382 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2383 = "aie.objectfifo.subview.access"(%2382) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2383, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2384 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2385 = "aie.objectfifo.subview.access"(%2384) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2385, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2386 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2387 = "aie.objectfifo.subview.access"(%2386) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2387, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2388 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2389 = "aie.objectfifo.subview.access"(%2388) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2389, %2377, %2315) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2319 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2320 = "aie.objectfifo.subview.access"(%2319) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2320) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2321 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2322 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2323 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2321, %2322, %2323) ({
        ^bb0(%arg141: index):
          %2362 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2363 = "aie.objectfifo.subview.access"(%2362) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2364 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2365 = "aie.objectfifo.subview.access"(%2364) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2365, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2366 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2367 = "aie.objectfifo.subview.access"(%2366) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2367, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2368 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2369 = "aie.objectfifo.subview.access"(%2368) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2369, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2370 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2371 = "aie.objectfifo.subview.access"(%2370) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2371, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2372 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2373 = "aie.objectfifo.subview.access"(%2372) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2373, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2374 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2375 = "aie.objectfifo.subview.access"(%2374) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2375, %2363, %2320) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2324 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2325 = "aie.objectfifo.subview.access"(%2324) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2325) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2326 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2327 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2328 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2326, %2327, %2328) ({
        ^bb0(%arg140: index):
          %2348 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2349 = "aie.objectfifo.subview.access"(%2348) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2350 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2351 = "aie.objectfifo.subview.access"(%2350) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2351, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2352 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2353 = "aie.objectfifo.subview.access"(%2352) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2353, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2354 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2355 = "aie.objectfifo.subview.access"(%2354) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2355, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2356 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2357 = "aie.objectfifo.subview.access"(%2356) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2357, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2358 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2359 = "aie.objectfifo.subview.access"(%2358) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2359, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2360 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2361 = "aie.objectfifo.subview.access"(%2360) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2361, %2349, %2325) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2329 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2330 = "aie.objectfifo.subview.access"(%2329) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2330) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2331 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2332 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2333 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2331, %2332, %2333) ({
        ^bb0(%arg139: index):
          %2334 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2335 = "aie.objectfifo.subview.access"(%2334) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2336 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2337 = "aie.objectfifo.subview.access"(%2336) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2337, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2338 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2339 = "aie.objectfifo.subview.access"(%2338) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2339, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2340 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2341 = "aie.objectfifo.subview.access"(%2340) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2341, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2342 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2343 = "aie.objectfifo.subview.access"(%2342) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2343, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2344 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2345 = "aie.objectfifo.subview.access"(%2344) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2345, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2346 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2347 = "aie.objectfifo.subview.access"(%2346) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2347, %2335, %2330) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %63 = "aie.core"(%27) <{stack_size = 1024 : i32}> ({
      %2232 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2233 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2234 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2232, %2233, %2234) ({
      ^bb0(%arg133: index):
        %2235 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2236 = "aie.objectfifo.subview.access"(%2235) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2236) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2237 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2238 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2239 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2237, %2238, %2239) ({
        ^bb0(%arg137: index):
          %2297 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2298 = "aie.objectfifo.subview.access"(%2297) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2299 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2300 = "aie.objectfifo.subview.access"(%2299) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2300, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2301 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2302 = "aie.objectfifo.subview.access"(%2301) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2302, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2303 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2304 = "aie.objectfifo.subview.access"(%2303) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2304, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2305 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2306 = "aie.objectfifo.subview.access"(%2305) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2306, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2307 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2308 = "aie.objectfifo.subview.access"(%2307) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2308, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2309 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2310 = "aie.objectfifo.subview.access"(%2309) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2310, %2298, %2236) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2240 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2241 = "aie.objectfifo.subview.access"(%2240) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2241) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2242 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2243 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2244 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2242, %2243, %2244) ({
        ^bb0(%arg136: index):
          %2283 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2284 = "aie.objectfifo.subview.access"(%2283) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2285 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2286 = "aie.objectfifo.subview.access"(%2285) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2286, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2287 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2288 = "aie.objectfifo.subview.access"(%2287) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2288, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2289 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2290 = "aie.objectfifo.subview.access"(%2289) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2290, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2291 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2292 = "aie.objectfifo.subview.access"(%2291) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2292, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2293 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2294 = "aie.objectfifo.subview.access"(%2293) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2294, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2295 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2296 = "aie.objectfifo.subview.access"(%2295) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2296, %2284, %2241) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2245 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2246 = "aie.objectfifo.subview.access"(%2245) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2246) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2247 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2248 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2249 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2247, %2248, %2249) ({
        ^bb0(%arg135: index):
          %2269 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2270 = "aie.objectfifo.subview.access"(%2269) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2271 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2272 = "aie.objectfifo.subview.access"(%2271) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2272, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2273 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2274 = "aie.objectfifo.subview.access"(%2273) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2274, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2275 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2276 = "aie.objectfifo.subview.access"(%2275) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2276, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2277 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2278 = "aie.objectfifo.subview.access"(%2277) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2278, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2279 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2280 = "aie.objectfifo.subview.access"(%2279) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2280, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2281 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2282 = "aie.objectfifo.subview.access"(%2281) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2282, %2270, %2246) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2250 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2251 = "aie.objectfifo.subview.access"(%2250) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2251) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2252 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2253 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2254 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2252, %2253, %2254) ({
        ^bb0(%arg134: index):
          %2255 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2256 = "aie.objectfifo.subview.access"(%2255) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2257 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2258 = "aie.objectfifo.subview.access"(%2257) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2258, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2259 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2260 = "aie.objectfifo.subview.access"(%2259) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2260, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2261 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2262 = "aie.objectfifo.subview.access"(%2261) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2262, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2263 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2264 = "aie.objectfifo.subview.access"(%2263) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2264, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2265 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2266 = "aie.objectfifo.subview.access"(%2265) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2266, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2267 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2268 = "aie.objectfifo.subview.access"(%2267) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2268, %2256, %2251) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %64 = "aie.core"(%28) <{stack_size = 1024 : i32}> ({
      %2153 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2154 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2155 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2153, %2154, %2155) ({
      ^bb0(%arg128: index):
        %2156 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2157 = "aie.objectfifo.subview.access"(%2156) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2157) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2158 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2159 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2160 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2158, %2159, %2160) ({
        ^bb0(%arg132: index):
          %2218 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2219 = "aie.objectfifo.subview.access"(%2218) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2220 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2221 = "aie.objectfifo.subview.access"(%2220) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2221, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2222 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2223 = "aie.objectfifo.subview.access"(%2222) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2223, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2224 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2225 = "aie.objectfifo.subview.access"(%2224) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2225, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2226 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2227 = "aie.objectfifo.subview.access"(%2226) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2227, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2228 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2229 = "aie.objectfifo.subview.access"(%2228) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2229, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2230 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2231 = "aie.objectfifo.subview.access"(%2230) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2231, %2219, %2157) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2161 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2162 = "aie.objectfifo.subview.access"(%2161) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2162) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2163 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2164 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2165 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2163, %2164, %2165) ({
        ^bb0(%arg131: index):
          %2204 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2205 = "aie.objectfifo.subview.access"(%2204) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2206 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2207 = "aie.objectfifo.subview.access"(%2206) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2207, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2208 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2209 = "aie.objectfifo.subview.access"(%2208) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2209, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2210 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2211 = "aie.objectfifo.subview.access"(%2210) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2211, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2212 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2213 = "aie.objectfifo.subview.access"(%2212) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2213, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2214 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2215 = "aie.objectfifo.subview.access"(%2214) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2215, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2216 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2217 = "aie.objectfifo.subview.access"(%2216) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2217, %2205, %2162) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2166 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2167 = "aie.objectfifo.subview.access"(%2166) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2167) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2168 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2169 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2170 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2168, %2169, %2170) ({
        ^bb0(%arg130: index):
          %2190 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2191 = "aie.objectfifo.subview.access"(%2190) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2192 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2193 = "aie.objectfifo.subview.access"(%2192) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2193, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2194 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2195 = "aie.objectfifo.subview.access"(%2194) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2195, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2196 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2197 = "aie.objectfifo.subview.access"(%2196) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2197, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2198 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2199 = "aie.objectfifo.subview.access"(%2198) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2199, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2200 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2201 = "aie.objectfifo.subview.access"(%2200) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2201, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2202 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2203 = "aie.objectfifo.subview.access"(%2202) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2203, %2191, %2167) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2171 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2172 = "aie.objectfifo.subview.access"(%2171) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2172) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2173 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2174 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2175 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2173, %2174, %2175) ({
        ^bb0(%arg129: index):
          %2176 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2177 = "aie.objectfifo.subview.access"(%2176) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2178 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2179 = "aie.objectfifo.subview.access"(%2178) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2179, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2180 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2181 = "aie.objectfifo.subview.access"(%2180) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2181, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2182 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2183 = "aie.objectfifo.subview.access"(%2182) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2183, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2184 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2185 = "aie.objectfifo.subview.access"(%2184) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2185, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2186 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2187 = "aie.objectfifo.subview.access"(%2186) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2187, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2188 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2189 = "aie.objectfifo.subview.access"(%2188) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2189, %2177, %2172) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %65 = "aie.core"(%29) <{stack_size = 1024 : i32}> ({
      %2074 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2075 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2076 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2074, %2075, %2076) ({
      ^bb0(%arg123: index):
        %2077 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2078 = "aie.objectfifo.subview.access"(%2077) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2078) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2079 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2080 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2081 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2079, %2080, %2081) ({
        ^bb0(%arg127: index):
          %2139 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2140 = "aie.objectfifo.subview.access"(%2139) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2141 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2142 = "aie.objectfifo.subview.access"(%2141) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2142, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2143 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2144 = "aie.objectfifo.subview.access"(%2143) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2144, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2145 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2146 = "aie.objectfifo.subview.access"(%2145) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2146, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2147 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2148 = "aie.objectfifo.subview.access"(%2147) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2148, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2149 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2150 = "aie.objectfifo.subview.access"(%2149) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2150, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2151 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2152 = "aie.objectfifo.subview.access"(%2151) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2152, %2140, %2078) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2082 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2083 = "aie.objectfifo.subview.access"(%2082) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2083) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2084 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2085 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2086 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2084, %2085, %2086) ({
        ^bb0(%arg126: index):
          %2125 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2126 = "aie.objectfifo.subview.access"(%2125) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2127 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2128 = "aie.objectfifo.subview.access"(%2127) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2128, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2129 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2130 = "aie.objectfifo.subview.access"(%2129) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2130, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2131 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2132 = "aie.objectfifo.subview.access"(%2131) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2132, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2133 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2134 = "aie.objectfifo.subview.access"(%2133) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2134, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2135 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2136 = "aie.objectfifo.subview.access"(%2135) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2136, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2137 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2138 = "aie.objectfifo.subview.access"(%2137) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2138, %2126, %2083) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2087 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2088 = "aie.objectfifo.subview.access"(%2087) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2088) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2089 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2090 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2091 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2089, %2090, %2091) ({
        ^bb0(%arg125: index):
          %2111 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2112 = "aie.objectfifo.subview.access"(%2111) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2113 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2114 = "aie.objectfifo.subview.access"(%2113) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2114, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2115 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2116 = "aie.objectfifo.subview.access"(%2115) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2116, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2117 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2118 = "aie.objectfifo.subview.access"(%2117) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2118, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2119 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2120 = "aie.objectfifo.subview.access"(%2119) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2120, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2121 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2122 = "aie.objectfifo.subview.access"(%2121) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2122, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2123 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2124 = "aie.objectfifo.subview.access"(%2123) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2124, %2112, %2088) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2092 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2093 = "aie.objectfifo.subview.access"(%2092) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2093) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2094 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2095 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2096 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2094, %2095, %2096) ({
        ^bb0(%arg124: index):
          %2097 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2098 = "aie.objectfifo.subview.access"(%2097) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2099 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2100 = "aie.objectfifo.subview.access"(%2099) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2100, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2101 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2102 = "aie.objectfifo.subview.access"(%2101) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2102, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2103 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2104 = "aie.objectfifo.subview.access"(%2103) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2104, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2105 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2106 = "aie.objectfifo.subview.access"(%2105) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2106, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2107 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2108 = "aie.objectfifo.subview.access"(%2107) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2108, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2109 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2110 = "aie.objectfifo.subview.access"(%2109) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2110, %2098, %2093) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %66 = "aie.core"(%30) <{stack_size = 1024 : i32}> ({
      %1995 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1996 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1997 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1995, %1996, %1997) ({
      ^bb0(%arg118: index):
        %1998 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1999 = "aie.objectfifo.subview.access"(%1998) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1999) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2000 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2001 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2002 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2000, %2001, %2002) ({
        ^bb0(%arg122: index):
          %2060 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2061 = "aie.objectfifo.subview.access"(%2060) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2062 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2063 = "aie.objectfifo.subview.access"(%2062) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2063, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2064 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2065 = "aie.objectfifo.subview.access"(%2064) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2065, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2066 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2067 = "aie.objectfifo.subview.access"(%2066) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2067, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2068 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2069 = "aie.objectfifo.subview.access"(%2068) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2069, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2070 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2071 = "aie.objectfifo.subview.access"(%2070) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2071, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2072 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2073 = "aie.objectfifo.subview.access"(%2072) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2073, %2061, %1999) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2003 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2004 = "aie.objectfifo.subview.access"(%2003) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2004) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2005 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2006 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2007 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2005, %2006, %2007) ({
        ^bb0(%arg121: index):
          %2046 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2047 = "aie.objectfifo.subview.access"(%2046) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2048 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2049 = "aie.objectfifo.subview.access"(%2048) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2049, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2050 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2051 = "aie.objectfifo.subview.access"(%2050) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2051, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2052 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2053 = "aie.objectfifo.subview.access"(%2052) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2053, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2054 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2055 = "aie.objectfifo.subview.access"(%2054) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2055, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2056 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2057 = "aie.objectfifo.subview.access"(%2056) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2057, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2058 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2059 = "aie.objectfifo.subview.access"(%2058) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2059, %2047, %2004) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2008 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2009 = "aie.objectfifo.subview.access"(%2008) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2009) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2010 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2011 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2012 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2010, %2011, %2012) ({
        ^bb0(%arg120: index):
          %2032 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2033 = "aie.objectfifo.subview.access"(%2032) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2034 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2035 = "aie.objectfifo.subview.access"(%2034) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2035, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2036 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2037 = "aie.objectfifo.subview.access"(%2036) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2037, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2038 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2039 = "aie.objectfifo.subview.access"(%2038) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2039, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2040 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2041 = "aie.objectfifo.subview.access"(%2040) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2041, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2042 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2043 = "aie.objectfifo.subview.access"(%2042) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2043, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2044 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2045 = "aie.objectfifo.subview.access"(%2044) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2045, %2033, %2009) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2013 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2014 = "aie.objectfifo.subview.access"(%2013) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2014) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2015 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2016 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2017 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2015, %2016, %2017) ({
        ^bb0(%arg119: index):
          %2018 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2019 = "aie.objectfifo.subview.access"(%2018) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2020 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2021 = "aie.objectfifo.subview.access"(%2020) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2021, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2022 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2023 = "aie.objectfifo.subview.access"(%2022) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2023, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2024 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2025 = "aie.objectfifo.subview.access"(%2024) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2025, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2026 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2027 = "aie.objectfifo.subview.access"(%2026) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2027, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2028 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2029 = "aie.objectfifo.subview.access"(%2028) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2029, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2030 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2031 = "aie.objectfifo.subview.access"(%2030) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2031, %2019, %2014) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %67 = "aie.core"(%31) <{stack_size = 1024 : i32}> ({
      %1916 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1917 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1918 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1916, %1917, %1918) ({
      ^bb0(%arg113: index):
        %1919 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1920 = "aie.objectfifo.subview.access"(%1919) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1920) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1921 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1922 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1923 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1921, %1922, %1923) ({
        ^bb0(%arg117: index):
          %1981 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1982 = "aie.objectfifo.subview.access"(%1981) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1983 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1984 = "aie.objectfifo.subview.access"(%1983) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1984, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1985 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1986 = "aie.objectfifo.subview.access"(%1985) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1986, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1987 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1988 = "aie.objectfifo.subview.access"(%1987) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1988, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1989 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1990 = "aie.objectfifo.subview.access"(%1989) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1990, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1991 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1992 = "aie.objectfifo.subview.access"(%1991) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1992, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1993 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1994 = "aie.objectfifo.subview.access"(%1993) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1994, %1982, %1920) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1924 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1925 = "aie.objectfifo.subview.access"(%1924) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1925) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1926 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1927 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1928 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1926, %1927, %1928) ({
        ^bb0(%arg116: index):
          %1967 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1968 = "aie.objectfifo.subview.access"(%1967) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1969 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1970 = "aie.objectfifo.subview.access"(%1969) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1970, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1971 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1972 = "aie.objectfifo.subview.access"(%1971) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1972, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1973 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1974 = "aie.objectfifo.subview.access"(%1973) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1974, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1975 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1976 = "aie.objectfifo.subview.access"(%1975) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1976, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1977 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1978 = "aie.objectfifo.subview.access"(%1977) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1978, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1979 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1980 = "aie.objectfifo.subview.access"(%1979) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1980, %1968, %1925) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1929 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1930 = "aie.objectfifo.subview.access"(%1929) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1930) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1931 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1932 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1933 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1931, %1932, %1933) ({
        ^bb0(%arg115: index):
          %1953 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1954 = "aie.objectfifo.subview.access"(%1953) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1955 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1956 = "aie.objectfifo.subview.access"(%1955) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1956, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1957 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1958 = "aie.objectfifo.subview.access"(%1957) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1958, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1959 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1960 = "aie.objectfifo.subview.access"(%1959) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1960, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1961 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1962 = "aie.objectfifo.subview.access"(%1961) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1962, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1963 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1964 = "aie.objectfifo.subview.access"(%1963) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1964, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1965 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1966 = "aie.objectfifo.subview.access"(%1965) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1966, %1954, %1930) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1934 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1935 = "aie.objectfifo.subview.access"(%1934) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1935) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1936 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1937 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1938 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1936, %1937, %1938) ({
        ^bb0(%arg114: index):
          %1939 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1940 = "aie.objectfifo.subview.access"(%1939) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1941 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1942 = "aie.objectfifo.subview.access"(%1941) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1942, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1943 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1944 = "aie.objectfifo.subview.access"(%1943) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1944, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1945 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1946 = "aie.objectfifo.subview.access"(%1945) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1946, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1947 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1948 = "aie.objectfifo.subview.access"(%1947) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1948, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1949 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1950 = "aie.objectfifo.subview.access"(%1949) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1950, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1951 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1952 = "aie.objectfifo.subview.access"(%1951) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1952, %1940, %1935) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %68 = "aie.core"(%32) <{stack_size = 1024 : i32}> ({
      %1837 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1838 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1839 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1837, %1838, %1839) ({
      ^bb0(%arg108: index):
        %1840 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1841 = "aie.objectfifo.subview.access"(%1840) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1841) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1842 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1843 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1844 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1842, %1843, %1844) ({
        ^bb0(%arg112: index):
          %1902 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1903 = "aie.objectfifo.subview.access"(%1902) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1904 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1905 = "aie.objectfifo.subview.access"(%1904) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1905, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1906 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1907 = "aie.objectfifo.subview.access"(%1906) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1907, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1908 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1909 = "aie.objectfifo.subview.access"(%1908) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1909, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1910 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1911 = "aie.objectfifo.subview.access"(%1910) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1911, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1912 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1913 = "aie.objectfifo.subview.access"(%1912) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1913, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1914 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1915 = "aie.objectfifo.subview.access"(%1914) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1915, %1903, %1841) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1845 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1846 = "aie.objectfifo.subview.access"(%1845) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1846) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1847 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1848 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1849 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1847, %1848, %1849) ({
        ^bb0(%arg111: index):
          %1888 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1889 = "aie.objectfifo.subview.access"(%1888) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1890 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1891 = "aie.objectfifo.subview.access"(%1890) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1891, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1892 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1893 = "aie.objectfifo.subview.access"(%1892) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1893, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1894 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1895 = "aie.objectfifo.subview.access"(%1894) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1895, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1896 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1897 = "aie.objectfifo.subview.access"(%1896) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1897, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1898 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1899 = "aie.objectfifo.subview.access"(%1898) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1899, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1900 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1901 = "aie.objectfifo.subview.access"(%1900) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1901, %1889, %1846) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1850 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1851 = "aie.objectfifo.subview.access"(%1850) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1851) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1852 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1853 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1854 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1852, %1853, %1854) ({
        ^bb0(%arg110: index):
          %1874 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1875 = "aie.objectfifo.subview.access"(%1874) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1876 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1877 = "aie.objectfifo.subview.access"(%1876) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1877, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1878 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1879 = "aie.objectfifo.subview.access"(%1878) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1879, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1880 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1881 = "aie.objectfifo.subview.access"(%1880) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1881, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1882 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1883 = "aie.objectfifo.subview.access"(%1882) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1883, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1884 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1885 = "aie.objectfifo.subview.access"(%1884) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1885, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1886 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1887 = "aie.objectfifo.subview.access"(%1886) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1887, %1875, %1851) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1855 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1856 = "aie.objectfifo.subview.access"(%1855) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1856) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1857 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1858 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1859 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1857, %1858, %1859) ({
        ^bb0(%arg109: index):
          %1860 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1861 = "aie.objectfifo.subview.access"(%1860) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1862 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1863 = "aie.objectfifo.subview.access"(%1862) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1863, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1864 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1865 = "aie.objectfifo.subview.access"(%1864) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1865, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1866 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1867 = "aie.objectfifo.subview.access"(%1866) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1867, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1868 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1869 = "aie.objectfifo.subview.access"(%1868) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1869, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1870 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1871 = "aie.objectfifo.subview.access"(%1870) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1871, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1872 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1873 = "aie.objectfifo.subview.access"(%1872) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1873, %1861, %1856) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %69 = "aie.core"(%33) <{stack_size = 1024 : i32}> ({
      %1758 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1759 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1760 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1758, %1759, %1760) ({
      ^bb0(%arg103: index):
        %1761 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1762 = "aie.objectfifo.subview.access"(%1761) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1762) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1763 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1764 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1765 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1763, %1764, %1765) ({
        ^bb0(%arg107: index):
          %1823 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1824 = "aie.objectfifo.subview.access"(%1823) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1825 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1826 = "aie.objectfifo.subview.access"(%1825) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1826, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1827 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1828 = "aie.objectfifo.subview.access"(%1827) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1828, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1829 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1830 = "aie.objectfifo.subview.access"(%1829) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1830, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1831 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1832 = "aie.objectfifo.subview.access"(%1831) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1832, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1833 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1834 = "aie.objectfifo.subview.access"(%1833) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1834, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1835 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1836 = "aie.objectfifo.subview.access"(%1835) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1836, %1824, %1762) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1766 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1767 = "aie.objectfifo.subview.access"(%1766) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1767) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1768 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1769 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1770 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1768, %1769, %1770) ({
        ^bb0(%arg106: index):
          %1809 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1810 = "aie.objectfifo.subview.access"(%1809) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1811 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1812 = "aie.objectfifo.subview.access"(%1811) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1812, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1813 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1814 = "aie.objectfifo.subview.access"(%1813) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1814, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1815 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1816 = "aie.objectfifo.subview.access"(%1815) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1816, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1817 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1818 = "aie.objectfifo.subview.access"(%1817) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1818, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1819 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1820 = "aie.objectfifo.subview.access"(%1819) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1820, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1821 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1822 = "aie.objectfifo.subview.access"(%1821) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1822, %1810, %1767) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1771 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1772 = "aie.objectfifo.subview.access"(%1771) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1772) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1773 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1774 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1775 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1773, %1774, %1775) ({
        ^bb0(%arg105: index):
          %1795 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1796 = "aie.objectfifo.subview.access"(%1795) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1797 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1798 = "aie.objectfifo.subview.access"(%1797) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1798, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1799 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1800 = "aie.objectfifo.subview.access"(%1799) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1800, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1801 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1802 = "aie.objectfifo.subview.access"(%1801) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1802, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1803 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1804 = "aie.objectfifo.subview.access"(%1803) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1804, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1805 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1806 = "aie.objectfifo.subview.access"(%1805) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1806, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1807 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1808 = "aie.objectfifo.subview.access"(%1807) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1808, %1796, %1772) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1776 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1777 = "aie.objectfifo.subview.access"(%1776) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1777) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1778 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1779 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1780 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1778, %1779, %1780) ({
        ^bb0(%arg104: index):
          %1781 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1782 = "aie.objectfifo.subview.access"(%1781) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1783 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1784 = "aie.objectfifo.subview.access"(%1783) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1784, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1785 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1786 = "aie.objectfifo.subview.access"(%1785) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1786, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1787 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1788 = "aie.objectfifo.subview.access"(%1787) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1788, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1789 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1790 = "aie.objectfifo.subview.access"(%1789) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1790, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1791 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1792 = "aie.objectfifo.subview.access"(%1791) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1792, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1793 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1794 = "aie.objectfifo.subview.access"(%1793) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1794, %1782, %1777) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %70 = "aie.core"(%34) <{stack_size = 1024 : i32}> ({
      %1679 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1680 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1681 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1679, %1680, %1681) ({
      ^bb0(%arg98: index):
        %1682 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1683 = "aie.objectfifo.subview.access"(%1682) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1683) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1684 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1685 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1686 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1684, %1685, %1686) ({
        ^bb0(%arg102: index):
          %1744 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1745 = "aie.objectfifo.subview.access"(%1744) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1746 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1747 = "aie.objectfifo.subview.access"(%1746) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1747, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1748 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1749 = "aie.objectfifo.subview.access"(%1748) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1749, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1750 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1751 = "aie.objectfifo.subview.access"(%1750) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1751, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1752 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1753 = "aie.objectfifo.subview.access"(%1752) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1753, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1754 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1755 = "aie.objectfifo.subview.access"(%1754) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1755, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1756 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1757 = "aie.objectfifo.subview.access"(%1756) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1757, %1745, %1683) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1687 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1688 = "aie.objectfifo.subview.access"(%1687) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1688) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1689 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1690 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1691 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1689, %1690, %1691) ({
        ^bb0(%arg101: index):
          %1730 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1731 = "aie.objectfifo.subview.access"(%1730) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1732 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1733 = "aie.objectfifo.subview.access"(%1732) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1733, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1734 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1735 = "aie.objectfifo.subview.access"(%1734) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1735, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1736 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1737 = "aie.objectfifo.subview.access"(%1736) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1737, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1738 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1739 = "aie.objectfifo.subview.access"(%1738) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1739, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1740 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1741 = "aie.objectfifo.subview.access"(%1740) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1741, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1742 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1743 = "aie.objectfifo.subview.access"(%1742) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1743, %1731, %1688) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1692 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1693 = "aie.objectfifo.subview.access"(%1692) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1693) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1694 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1695 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1696 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1694, %1695, %1696) ({
        ^bb0(%arg100: index):
          %1716 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1717 = "aie.objectfifo.subview.access"(%1716) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1718 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1719 = "aie.objectfifo.subview.access"(%1718) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1719, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1720 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1721 = "aie.objectfifo.subview.access"(%1720) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1721, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1722 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1723 = "aie.objectfifo.subview.access"(%1722) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1723, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1724 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1725 = "aie.objectfifo.subview.access"(%1724) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1725, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1726 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1727 = "aie.objectfifo.subview.access"(%1726) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1727, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1728 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1729 = "aie.objectfifo.subview.access"(%1728) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1729, %1717, %1693) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1697 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1698 = "aie.objectfifo.subview.access"(%1697) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1698) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1699 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1700 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1701 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1699, %1700, %1701) ({
        ^bb0(%arg99: index):
          %1702 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1703 = "aie.objectfifo.subview.access"(%1702) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1704 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1705 = "aie.objectfifo.subview.access"(%1704) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1705, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1706 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1707 = "aie.objectfifo.subview.access"(%1706) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1707, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1708 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1709 = "aie.objectfifo.subview.access"(%1708) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1709, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1710 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1711 = "aie.objectfifo.subview.access"(%1710) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1711, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1712 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1713 = "aie.objectfifo.subview.access"(%1712) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1713, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1714 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1715 = "aie.objectfifo.subview.access"(%1714) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1715, %1703, %1698) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %71 = "aie.core"(%35) <{stack_size = 1024 : i32}> ({
      %1600 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1601 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1602 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1600, %1601, %1602) ({
      ^bb0(%arg93: index):
        %1603 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1604 = "aie.objectfifo.subview.access"(%1603) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1604) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1605 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1606 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1607 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1605, %1606, %1607) ({
        ^bb0(%arg97: index):
          %1665 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1666 = "aie.objectfifo.subview.access"(%1665) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1667 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1668 = "aie.objectfifo.subview.access"(%1667) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1668, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1669 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1670 = "aie.objectfifo.subview.access"(%1669) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1670, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1671 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1672 = "aie.objectfifo.subview.access"(%1671) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1672, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1673 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1674 = "aie.objectfifo.subview.access"(%1673) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1674, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1675 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1676 = "aie.objectfifo.subview.access"(%1675) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1676, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1677 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1678 = "aie.objectfifo.subview.access"(%1677) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1678, %1666, %1604) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1608 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1609 = "aie.objectfifo.subview.access"(%1608) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1609) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1610 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1611 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1612 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1610, %1611, %1612) ({
        ^bb0(%arg96: index):
          %1651 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1652 = "aie.objectfifo.subview.access"(%1651) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1653 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1654 = "aie.objectfifo.subview.access"(%1653) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1654, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1655 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1656 = "aie.objectfifo.subview.access"(%1655) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1656, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1657 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1658 = "aie.objectfifo.subview.access"(%1657) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1658, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1659 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1660 = "aie.objectfifo.subview.access"(%1659) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1660, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1661 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1662 = "aie.objectfifo.subview.access"(%1661) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1662, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1663 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1664 = "aie.objectfifo.subview.access"(%1663) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1664, %1652, %1609) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1613 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1614 = "aie.objectfifo.subview.access"(%1613) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1614) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1615 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1616 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1617 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1615, %1616, %1617) ({
        ^bb0(%arg95: index):
          %1637 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1638 = "aie.objectfifo.subview.access"(%1637) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1639 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1640 = "aie.objectfifo.subview.access"(%1639) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1640, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1641 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1642 = "aie.objectfifo.subview.access"(%1641) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1642, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1643 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1644 = "aie.objectfifo.subview.access"(%1643) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1644, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1645 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1646 = "aie.objectfifo.subview.access"(%1645) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1646, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1647 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1648 = "aie.objectfifo.subview.access"(%1647) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1648, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1649 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1650 = "aie.objectfifo.subview.access"(%1649) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1650, %1638, %1614) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1618 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1619 = "aie.objectfifo.subview.access"(%1618) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1619) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1620 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1621 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1622 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1620, %1621, %1622) ({
        ^bb0(%arg94: index):
          %1623 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1624 = "aie.objectfifo.subview.access"(%1623) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1625 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1626 = "aie.objectfifo.subview.access"(%1625) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1626, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1627 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1628 = "aie.objectfifo.subview.access"(%1627) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1628, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1629 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1630 = "aie.objectfifo.subview.access"(%1629) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1630, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1631 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1632 = "aie.objectfifo.subview.access"(%1631) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1632, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1633 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1634 = "aie.objectfifo.subview.access"(%1633) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1634, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1635 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1636 = "aie.objectfifo.subview.access"(%1635) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1636, %1624, %1619) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %72 = "aie.core"(%36) <{stack_size = 1024 : i32}> ({
      %1521 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1522 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1523 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1521, %1522, %1523) ({
      ^bb0(%arg88: index):
        %1524 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1525 = "aie.objectfifo.subview.access"(%1524) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1525) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1526 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1527 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1528 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1526, %1527, %1528) ({
        ^bb0(%arg92: index):
          %1586 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1587 = "aie.objectfifo.subview.access"(%1586) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1588 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1589 = "aie.objectfifo.subview.access"(%1588) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1589, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1590 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1591 = "aie.objectfifo.subview.access"(%1590) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1591, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1592 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1593 = "aie.objectfifo.subview.access"(%1592) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1593, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1594 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1595 = "aie.objectfifo.subview.access"(%1594) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1595, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1596 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1597 = "aie.objectfifo.subview.access"(%1596) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1597, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1598 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1599 = "aie.objectfifo.subview.access"(%1598) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1599, %1587, %1525) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1529 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1530 = "aie.objectfifo.subview.access"(%1529) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1530) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1531 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1532 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1533 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1531, %1532, %1533) ({
        ^bb0(%arg91: index):
          %1572 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1573 = "aie.objectfifo.subview.access"(%1572) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1574 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1575 = "aie.objectfifo.subview.access"(%1574) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1575, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1576 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1577 = "aie.objectfifo.subview.access"(%1576) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1577, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1578 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1579 = "aie.objectfifo.subview.access"(%1578) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1579, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1580 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1581 = "aie.objectfifo.subview.access"(%1580) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1581, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1582 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1583 = "aie.objectfifo.subview.access"(%1582) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1583, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1584 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1585 = "aie.objectfifo.subview.access"(%1584) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1585, %1573, %1530) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1534 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1535 = "aie.objectfifo.subview.access"(%1534) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1535) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1536 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1537 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1538 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1536, %1537, %1538) ({
        ^bb0(%arg90: index):
          %1558 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1559 = "aie.objectfifo.subview.access"(%1558) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1560 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1561 = "aie.objectfifo.subview.access"(%1560) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1561, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1562 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1563 = "aie.objectfifo.subview.access"(%1562) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1563, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1564 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1565 = "aie.objectfifo.subview.access"(%1564) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1565, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1566 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1567 = "aie.objectfifo.subview.access"(%1566) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1567, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1568 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1569 = "aie.objectfifo.subview.access"(%1568) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1569, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1570 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1571 = "aie.objectfifo.subview.access"(%1570) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1571, %1559, %1535) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1539 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1540 = "aie.objectfifo.subview.access"(%1539) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1540) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1541 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1542 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1543 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1541, %1542, %1543) ({
        ^bb0(%arg89: index):
          %1544 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1545 = "aie.objectfifo.subview.access"(%1544) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1546 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1547 = "aie.objectfifo.subview.access"(%1546) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1547, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1548 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1549 = "aie.objectfifo.subview.access"(%1548) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1549, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1550 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1551 = "aie.objectfifo.subview.access"(%1550) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1551, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1552 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1553 = "aie.objectfifo.subview.access"(%1552) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1553, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1554 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1555 = "aie.objectfifo.subview.access"(%1554) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1555, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1556 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1557 = "aie.objectfifo.subview.access"(%1556) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1557, %1545, %1540) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %73 = "aie.core"(%37) <{stack_size = 1024 : i32}> ({
      %1442 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1443 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1444 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1442, %1443, %1444) ({
      ^bb0(%arg83: index):
        %1445 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1446 = "aie.objectfifo.subview.access"(%1445) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1446) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1447 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1448 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1449 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1447, %1448, %1449) ({
        ^bb0(%arg87: index):
          %1507 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1508 = "aie.objectfifo.subview.access"(%1507) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1509 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1510 = "aie.objectfifo.subview.access"(%1509) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1510, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1511 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1512 = "aie.objectfifo.subview.access"(%1511) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1512, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1513 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1514 = "aie.objectfifo.subview.access"(%1513) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1514, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1515 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1516 = "aie.objectfifo.subview.access"(%1515) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1516, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1517 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1518 = "aie.objectfifo.subview.access"(%1517) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1518, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1519 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1520 = "aie.objectfifo.subview.access"(%1519) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1520, %1508, %1446) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1450 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1451 = "aie.objectfifo.subview.access"(%1450) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1451) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1452 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1453 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1454 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1452, %1453, %1454) ({
        ^bb0(%arg86: index):
          %1493 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1494 = "aie.objectfifo.subview.access"(%1493) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1495 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1496 = "aie.objectfifo.subview.access"(%1495) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1496, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1497 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1498 = "aie.objectfifo.subview.access"(%1497) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1498, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1499 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1500 = "aie.objectfifo.subview.access"(%1499) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1500, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1501 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1502 = "aie.objectfifo.subview.access"(%1501) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1502, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1503 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1504 = "aie.objectfifo.subview.access"(%1503) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1504, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1505 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1506 = "aie.objectfifo.subview.access"(%1505) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1506, %1494, %1451) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1455 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1456 = "aie.objectfifo.subview.access"(%1455) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1456) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1457 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1458 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1459 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1457, %1458, %1459) ({
        ^bb0(%arg85: index):
          %1479 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1480 = "aie.objectfifo.subview.access"(%1479) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1481 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1482 = "aie.objectfifo.subview.access"(%1481) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1482, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1483 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1484 = "aie.objectfifo.subview.access"(%1483) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1484, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1485 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1486 = "aie.objectfifo.subview.access"(%1485) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1486, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1487 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1488 = "aie.objectfifo.subview.access"(%1487) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1488, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1489 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1490 = "aie.objectfifo.subview.access"(%1489) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1490, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1491 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1492 = "aie.objectfifo.subview.access"(%1491) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1492, %1480, %1456) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1460 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1461 = "aie.objectfifo.subview.access"(%1460) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1461) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1462 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1463 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1464 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1462, %1463, %1464) ({
        ^bb0(%arg84: index):
          %1465 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1466 = "aie.objectfifo.subview.access"(%1465) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1467 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1468 = "aie.objectfifo.subview.access"(%1467) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1468, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1469 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1470 = "aie.objectfifo.subview.access"(%1469) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1470, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1471 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1472 = "aie.objectfifo.subview.access"(%1471) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1472, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1473 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1474 = "aie.objectfifo.subview.access"(%1473) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1474, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1475 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1476 = "aie.objectfifo.subview.access"(%1475) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1476, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1477 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1478 = "aie.objectfifo.subview.access"(%1477) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1478, %1466, %1461) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %74 = "aie.core"(%38) <{stack_size = 1024 : i32}> ({
      %1363 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1364 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1365 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1363, %1364, %1365) ({
      ^bb0(%arg78: index):
        %1366 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1367 = "aie.objectfifo.subview.access"(%1366) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1367) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1368 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1369 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1370 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1368, %1369, %1370) ({
        ^bb0(%arg82: index):
          %1428 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1429 = "aie.objectfifo.subview.access"(%1428) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1430 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1431 = "aie.objectfifo.subview.access"(%1430) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1431, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1432 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1433 = "aie.objectfifo.subview.access"(%1432) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1433, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1434 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1435 = "aie.objectfifo.subview.access"(%1434) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1435, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1436 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1437 = "aie.objectfifo.subview.access"(%1436) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1437, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1438 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1439 = "aie.objectfifo.subview.access"(%1438) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1439, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1440 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1441 = "aie.objectfifo.subview.access"(%1440) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1441, %1429, %1367) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1371 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1372 = "aie.objectfifo.subview.access"(%1371) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1372) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1373 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1374 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1375 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1373, %1374, %1375) ({
        ^bb0(%arg81: index):
          %1414 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1415 = "aie.objectfifo.subview.access"(%1414) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1416 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1417 = "aie.objectfifo.subview.access"(%1416) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1417, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1418 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1419 = "aie.objectfifo.subview.access"(%1418) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1419, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1420 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1421 = "aie.objectfifo.subview.access"(%1420) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1421, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1422 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1423 = "aie.objectfifo.subview.access"(%1422) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1423, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1424 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1425 = "aie.objectfifo.subview.access"(%1424) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1425, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1426 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1427 = "aie.objectfifo.subview.access"(%1426) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1427, %1415, %1372) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1376 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1377 = "aie.objectfifo.subview.access"(%1376) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1377) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1378 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1379 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1380 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1378, %1379, %1380) ({
        ^bb0(%arg80: index):
          %1400 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1401 = "aie.objectfifo.subview.access"(%1400) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1402 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1403 = "aie.objectfifo.subview.access"(%1402) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1403, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1404 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1405 = "aie.objectfifo.subview.access"(%1404) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1405, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1406 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1407 = "aie.objectfifo.subview.access"(%1406) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1407, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1408 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1409 = "aie.objectfifo.subview.access"(%1408) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1409, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1410 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1411 = "aie.objectfifo.subview.access"(%1410) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1411, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1412 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1413 = "aie.objectfifo.subview.access"(%1412) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1413, %1401, %1377) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1381 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1382 = "aie.objectfifo.subview.access"(%1381) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1382) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1383 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1384 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1385 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1383, %1384, %1385) ({
        ^bb0(%arg79: index):
          %1386 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1387 = "aie.objectfifo.subview.access"(%1386) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1388 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1389 = "aie.objectfifo.subview.access"(%1388) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1389, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1390 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1391 = "aie.objectfifo.subview.access"(%1390) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1391, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1392 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1393 = "aie.objectfifo.subview.access"(%1392) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1393, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1394 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1395 = "aie.objectfifo.subview.access"(%1394) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1395, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1396 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1397 = "aie.objectfifo.subview.access"(%1396) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1397, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1398 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1399 = "aie.objectfifo.subview.access"(%1398) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1399, %1387, %1382) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %75 = "aie.core"(%39) <{stack_size = 1024 : i32}> ({
      %1284 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1285 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1286 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1284, %1285, %1286) ({
      ^bb0(%arg73: index):
        %1287 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1288 = "aie.objectfifo.subview.access"(%1287) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1288) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1289 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1290 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1291 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1289, %1290, %1291) ({
        ^bb0(%arg77: index):
          %1349 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1350 = "aie.objectfifo.subview.access"(%1349) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1351 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1352 = "aie.objectfifo.subview.access"(%1351) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1352, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1353 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1354 = "aie.objectfifo.subview.access"(%1353) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1354, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1355 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1356 = "aie.objectfifo.subview.access"(%1355) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1356, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1357 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1358 = "aie.objectfifo.subview.access"(%1357) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1358, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1359 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1360 = "aie.objectfifo.subview.access"(%1359) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1360, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1361 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1362 = "aie.objectfifo.subview.access"(%1361) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1362, %1350, %1288) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1292 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1293 = "aie.objectfifo.subview.access"(%1292) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1293) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1294 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1295 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1296 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1294, %1295, %1296) ({
        ^bb0(%arg76: index):
          %1335 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1336 = "aie.objectfifo.subview.access"(%1335) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1337 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1338 = "aie.objectfifo.subview.access"(%1337) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1338, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1339 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1340 = "aie.objectfifo.subview.access"(%1339) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1340, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1341 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1342 = "aie.objectfifo.subview.access"(%1341) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1342, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1343 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1344 = "aie.objectfifo.subview.access"(%1343) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1344, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1345 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1346 = "aie.objectfifo.subview.access"(%1345) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1346, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1347 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1348 = "aie.objectfifo.subview.access"(%1347) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1348, %1336, %1293) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1297 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1298 = "aie.objectfifo.subview.access"(%1297) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1298) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1299 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1300 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1301 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1299, %1300, %1301) ({
        ^bb0(%arg75: index):
          %1321 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1322 = "aie.objectfifo.subview.access"(%1321) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1323 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1324 = "aie.objectfifo.subview.access"(%1323) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1324, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1325 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1326 = "aie.objectfifo.subview.access"(%1325) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1326, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1327 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1328 = "aie.objectfifo.subview.access"(%1327) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1328, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1329 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1330 = "aie.objectfifo.subview.access"(%1329) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1330, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1331 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1332 = "aie.objectfifo.subview.access"(%1331) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1332, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1333 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1334 = "aie.objectfifo.subview.access"(%1333) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1334, %1322, %1298) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1302 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1303 = "aie.objectfifo.subview.access"(%1302) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1303) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1304 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1305 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1306 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1304, %1305, %1306) ({
        ^bb0(%arg74: index):
          %1307 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1308 = "aie.objectfifo.subview.access"(%1307) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1309 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1310 = "aie.objectfifo.subview.access"(%1309) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1310, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1311 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1312 = "aie.objectfifo.subview.access"(%1311) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1312, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1313 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1314 = "aie.objectfifo.subview.access"(%1313) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1314, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1315 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1316 = "aie.objectfifo.subview.access"(%1315) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1316, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1317 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1318 = "aie.objectfifo.subview.access"(%1317) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1318, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1319 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1320 = "aie.objectfifo.subview.access"(%1319) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1320, %1308, %1303) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %76 = "aie.core"(%40) <{stack_size = 1024 : i32}> ({
      %1205 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1206 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1207 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1205, %1206, %1207) ({
      ^bb0(%arg68: index):
        %1208 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1209 = "aie.objectfifo.subview.access"(%1208) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1209) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1210 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1211 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1212 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1210, %1211, %1212) ({
        ^bb0(%arg72: index):
          %1270 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1271 = "aie.objectfifo.subview.access"(%1270) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1272 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1273 = "aie.objectfifo.subview.access"(%1272) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1273, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1274 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1275 = "aie.objectfifo.subview.access"(%1274) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1275, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1276 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1277 = "aie.objectfifo.subview.access"(%1276) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1277, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1278 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1279 = "aie.objectfifo.subview.access"(%1278) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1279, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1280 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1281 = "aie.objectfifo.subview.access"(%1280) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1281, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1282 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1283 = "aie.objectfifo.subview.access"(%1282) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1283, %1271, %1209) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1213 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1214 = "aie.objectfifo.subview.access"(%1213) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1214) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1215 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1216 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1217 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1215, %1216, %1217) ({
        ^bb0(%arg71: index):
          %1256 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1257 = "aie.objectfifo.subview.access"(%1256) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1258 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1259 = "aie.objectfifo.subview.access"(%1258) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1259, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1260 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1261 = "aie.objectfifo.subview.access"(%1260) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1261, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1262 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1263 = "aie.objectfifo.subview.access"(%1262) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1263, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1264 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1265 = "aie.objectfifo.subview.access"(%1264) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1265, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1266 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1267 = "aie.objectfifo.subview.access"(%1266) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1267, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1268 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1269 = "aie.objectfifo.subview.access"(%1268) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1269, %1257, %1214) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1218 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1219 = "aie.objectfifo.subview.access"(%1218) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1219) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1220 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1221 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1222 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1220, %1221, %1222) ({
        ^bb0(%arg70: index):
          %1242 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1243 = "aie.objectfifo.subview.access"(%1242) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1244 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1245 = "aie.objectfifo.subview.access"(%1244) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1245, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1246 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1247 = "aie.objectfifo.subview.access"(%1246) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1247, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1248 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1249 = "aie.objectfifo.subview.access"(%1248) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1249, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1250 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1251 = "aie.objectfifo.subview.access"(%1250) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1251, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1252 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1253 = "aie.objectfifo.subview.access"(%1252) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1253, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1254 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1255 = "aie.objectfifo.subview.access"(%1254) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1255, %1243, %1219) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1223 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1224 = "aie.objectfifo.subview.access"(%1223) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1224) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1225 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1226 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1227 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1225, %1226, %1227) ({
        ^bb0(%arg69: index):
          %1228 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1229 = "aie.objectfifo.subview.access"(%1228) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1230 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1231 = "aie.objectfifo.subview.access"(%1230) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1231, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1232 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1233 = "aie.objectfifo.subview.access"(%1232) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1233, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1234 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1235 = "aie.objectfifo.subview.access"(%1234) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1235, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1236 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1237 = "aie.objectfifo.subview.access"(%1236) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1237, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1238 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1239 = "aie.objectfifo.subview.access"(%1238) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1239, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1240 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1241 = "aie.objectfifo.subview.access"(%1240) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1241, %1229, %1224) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %77 = "aie.core"(%41) <{stack_size = 1024 : i32}> ({
      %1126 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1127 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1128 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1126, %1127, %1128) ({
      ^bb0(%arg63: index):
        %1129 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1130 = "aie.objectfifo.subview.access"(%1129) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1130) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1131 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1132 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1133 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1131, %1132, %1133) ({
        ^bb0(%arg67: index):
          %1191 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1192 = "aie.objectfifo.subview.access"(%1191) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1193 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1194 = "aie.objectfifo.subview.access"(%1193) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1194, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1195 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1196 = "aie.objectfifo.subview.access"(%1195) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1196, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1197 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1198 = "aie.objectfifo.subview.access"(%1197) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1198, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1199 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1200 = "aie.objectfifo.subview.access"(%1199) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1200, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1201 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1202 = "aie.objectfifo.subview.access"(%1201) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1202, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1203 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1204 = "aie.objectfifo.subview.access"(%1203) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1204, %1192, %1130) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1134 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1135 = "aie.objectfifo.subview.access"(%1134) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1135) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1136 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1137 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1138 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1136, %1137, %1138) ({
        ^bb0(%arg66: index):
          %1177 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1178 = "aie.objectfifo.subview.access"(%1177) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1179 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1180 = "aie.objectfifo.subview.access"(%1179) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1180, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1181 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1182 = "aie.objectfifo.subview.access"(%1181) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1182, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1183 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1184 = "aie.objectfifo.subview.access"(%1183) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1184, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1185 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1186 = "aie.objectfifo.subview.access"(%1185) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1186, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1187 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1188 = "aie.objectfifo.subview.access"(%1187) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1188, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1189 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1190 = "aie.objectfifo.subview.access"(%1189) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1190, %1178, %1135) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1139 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1140 = "aie.objectfifo.subview.access"(%1139) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1140) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1141 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1142 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1143 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1141, %1142, %1143) ({
        ^bb0(%arg65: index):
          %1163 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1164 = "aie.objectfifo.subview.access"(%1163) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1165 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1166 = "aie.objectfifo.subview.access"(%1165) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1166, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1167 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1168 = "aie.objectfifo.subview.access"(%1167) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1168, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1169 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1170 = "aie.objectfifo.subview.access"(%1169) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1170, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1171 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1172 = "aie.objectfifo.subview.access"(%1171) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1172, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1173 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1174 = "aie.objectfifo.subview.access"(%1173) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1174, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1175 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1176 = "aie.objectfifo.subview.access"(%1175) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1176, %1164, %1140) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1144 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1145 = "aie.objectfifo.subview.access"(%1144) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1145) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1146 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1147 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1148 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1146, %1147, %1148) ({
        ^bb0(%arg64: index):
          %1149 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1150 = "aie.objectfifo.subview.access"(%1149) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1151 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1152 = "aie.objectfifo.subview.access"(%1151) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1152, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1153 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1154 = "aie.objectfifo.subview.access"(%1153) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1154, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1155 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1156 = "aie.objectfifo.subview.access"(%1155) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1156, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1157 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1158 = "aie.objectfifo.subview.access"(%1157) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1158, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1159 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1160 = "aie.objectfifo.subview.access"(%1159) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1160, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1161 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1162 = "aie.objectfifo.subview.access"(%1161) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1162, %1150, %1145) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %78 = "aie.core"(%42) <{stack_size = 1024 : i32}> ({
      %1047 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1048 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1049 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1047, %1048, %1049) ({
      ^bb0(%arg58: index):
        %1050 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1051 = "aie.objectfifo.subview.access"(%1050) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1051) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1052 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1053 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1054 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1052, %1053, %1054) ({
        ^bb0(%arg62: index):
          %1112 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1113 = "aie.objectfifo.subview.access"(%1112) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1114 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1115 = "aie.objectfifo.subview.access"(%1114) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1115, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1116 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1117 = "aie.objectfifo.subview.access"(%1116) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1117, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1118 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1119 = "aie.objectfifo.subview.access"(%1118) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1119, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1120 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1121 = "aie.objectfifo.subview.access"(%1120) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1121, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1122 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1123 = "aie.objectfifo.subview.access"(%1122) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1123, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1124 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1125 = "aie.objectfifo.subview.access"(%1124) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1125, %1113, %1051) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1055 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1056 = "aie.objectfifo.subview.access"(%1055) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1056) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1057 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1058 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1059 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1057, %1058, %1059) ({
        ^bb0(%arg61: index):
          %1098 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1099 = "aie.objectfifo.subview.access"(%1098) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1100 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1101 = "aie.objectfifo.subview.access"(%1100) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1101, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1102 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1103 = "aie.objectfifo.subview.access"(%1102) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1103, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1104 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1105 = "aie.objectfifo.subview.access"(%1104) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1105, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1106 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1107 = "aie.objectfifo.subview.access"(%1106) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1107, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1108 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1109 = "aie.objectfifo.subview.access"(%1108) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1109, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1110 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1111 = "aie.objectfifo.subview.access"(%1110) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1111, %1099, %1056) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1060 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1061 = "aie.objectfifo.subview.access"(%1060) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1061) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1062 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1063 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1064 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1062, %1063, %1064) ({
        ^bb0(%arg60: index):
          %1084 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1085 = "aie.objectfifo.subview.access"(%1084) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1086 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1087 = "aie.objectfifo.subview.access"(%1086) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1087, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1088 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1089 = "aie.objectfifo.subview.access"(%1088) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1089, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1090 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1091 = "aie.objectfifo.subview.access"(%1090) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1091, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1092 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1093 = "aie.objectfifo.subview.access"(%1092) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1093, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1094 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1095 = "aie.objectfifo.subview.access"(%1094) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1095, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1096 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1097 = "aie.objectfifo.subview.access"(%1096) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1097, %1085, %1061) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1065 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1066 = "aie.objectfifo.subview.access"(%1065) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1066) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1067 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1068 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1069 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1067, %1068, %1069) ({
        ^bb0(%arg59: index):
          %1070 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1071 = "aie.objectfifo.subview.access"(%1070) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1072 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1073 = "aie.objectfifo.subview.access"(%1072) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1073, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1074 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1075 = "aie.objectfifo.subview.access"(%1074) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1075, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1076 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1077 = "aie.objectfifo.subview.access"(%1076) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1077, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1078 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1079 = "aie.objectfifo.subview.access"(%1078) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1079, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1080 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1081 = "aie.objectfifo.subview.access"(%1080) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1081, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1082 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1083 = "aie.objectfifo.subview.access"(%1082) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1083, %1071, %1066) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %79 = "aie.core"(%43) <{stack_size = 1024 : i32}> ({
      %968 = "arith.constant"() <{value = 0 : index}> : () -> index
      %969 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %970 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%968, %969, %970) ({
      ^bb0(%arg53: index):
        %971 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %972 = "aie.objectfifo.subview.access"(%971) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%972) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %973 = "arith.constant"() <{value = 0 : index}> : () -> index
        %974 = "arith.constant"() <{value = 32 : index}> : () -> index
        %975 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%973, %974, %975) ({
        ^bb0(%arg57: index):
          %1033 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1034 = "aie.objectfifo.subview.access"(%1033) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1035 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1036 = "aie.objectfifo.subview.access"(%1035) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1036, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1037 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1038 = "aie.objectfifo.subview.access"(%1037) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1038, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1039 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1040 = "aie.objectfifo.subview.access"(%1039) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1040, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1041 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1042 = "aie.objectfifo.subview.access"(%1041) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1042, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1043 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1044 = "aie.objectfifo.subview.access"(%1043) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1044, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1045 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1046 = "aie.objectfifo.subview.access"(%1045) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1046, %1034, %972) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %976 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %977 = "aie.objectfifo.subview.access"(%976) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%977) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %978 = "arith.constant"() <{value = 0 : index}> : () -> index
        %979 = "arith.constant"() <{value = 32 : index}> : () -> index
        %980 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%978, %979, %980) ({
        ^bb0(%arg56: index):
          %1019 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1020 = "aie.objectfifo.subview.access"(%1019) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1021 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1022 = "aie.objectfifo.subview.access"(%1021) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1022, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1023 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1024 = "aie.objectfifo.subview.access"(%1023) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1024, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1025 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1026 = "aie.objectfifo.subview.access"(%1025) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1026, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1027 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1028 = "aie.objectfifo.subview.access"(%1027) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1028, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1029 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1030 = "aie.objectfifo.subview.access"(%1029) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1030, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1031 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1032 = "aie.objectfifo.subview.access"(%1031) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1032, %1020, %977) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %981 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %982 = "aie.objectfifo.subview.access"(%981) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%982) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %983 = "arith.constant"() <{value = 0 : index}> : () -> index
        %984 = "arith.constant"() <{value = 32 : index}> : () -> index
        %985 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%983, %984, %985) ({
        ^bb0(%arg55: index):
          %1005 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1006 = "aie.objectfifo.subview.access"(%1005) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1007 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1008 = "aie.objectfifo.subview.access"(%1007) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1008, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1009 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1010 = "aie.objectfifo.subview.access"(%1009) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1010, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1011 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1012 = "aie.objectfifo.subview.access"(%1011) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1012, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1013 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1014 = "aie.objectfifo.subview.access"(%1013) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1014, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1015 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1016 = "aie.objectfifo.subview.access"(%1015) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1016, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1017 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1018 = "aie.objectfifo.subview.access"(%1017) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1018, %1006, %982) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %986 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %987 = "aie.objectfifo.subview.access"(%986) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%987) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %988 = "arith.constant"() <{value = 0 : index}> : () -> index
        %989 = "arith.constant"() <{value = 32 : index}> : () -> index
        %990 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%988, %989, %990) ({
        ^bb0(%arg54: index):
          %991 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %992 = "aie.objectfifo.subview.access"(%991) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %993 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %994 = "aie.objectfifo.subview.access"(%993) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%994, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %995 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %996 = "aie.objectfifo.subview.access"(%995) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%996, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %997 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %998 = "aie.objectfifo.subview.access"(%997) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%998, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %999 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1000 = "aie.objectfifo.subview.access"(%999) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1000, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1001 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1002 = "aie.objectfifo.subview.access"(%1001) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1002, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1003 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1004 = "aie.objectfifo.subview.access"(%1003) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1004, %992, %987) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %80 = "aie.core"(%44) <{stack_size = 1024 : i32}> ({
      %889 = "arith.constant"() <{value = 0 : index}> : () -> index
      %890 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %891 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%889, %890, %891) ({
      ^bb0(%arg48: index):
        %892 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %893 = "aie.objectfifo.subview.access"(%892) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%893) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %894 = "arith.constant"() <{value = 0 : index}> : () -> index
        %895 = "arith.constant"() <{value = 32 : index}> : () -> index
        %896 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%894, %895, %896) ({
        ^bb0(%arg52: index):
          %954 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %955 = "aie.objectfifo.subview.access"(%954) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %956 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %957 = "aie.objectfifo.subview.access"(%956) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%957, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %958 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %959 = "aie.objectfifo.subview.access"(%958) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%959, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %960 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %961 = "aie.objectfifo.subview.access"(%960) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%961, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %962 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %963 = "aie.objectfifo.subview.access"(%962) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%963, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %964 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %965 = "aie.objectfifo.subview.access"(%964) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%965, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %966 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %967 = "aie.objectfifo.subview.access"(%966) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%967, %955, %893) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %897 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %898 = "aie.objectfifo.subview.access"(%897) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%898) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %899 = "arith.constant"() <{value = 0 : index}> : () -> index
        %900 = "arith.constant"() <{value = 32 : index}> : () -> index
        %901 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%899, %900, %901) ({
        ^bb0(%arg51: index):
          %940 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %941 = "aie.objectfifo.subview.access"(%940) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %942 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %943 = "aie.objectfifo.subview.access"(%942) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%943, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %944 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %945 = "aie.objectfifo.subview.access"(%944) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%945, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %946 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %947 = "aie.objectfifo.subview.access"(%946) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%947, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %948 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %949 = "aie.objectfifo.subview.access"(%948) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%949, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %950 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %951 = "aie.objectfifo.subview.access"(%950) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%951, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %952 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %953 = "aie.objectfifo.subview.access"(%952) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%953, %941, %898) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %902 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %903 = "aie.objectfifo.subview.access"(%902) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%903) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %904 = "arith.constant"() <{value = 0 : index}> : () -> index
        %905 = "arith.constant"() <{value = 32 : index}> : () -> index
        %906 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%904, %905, %906) ({
        ^bb0(%arg50: index):
          %926 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %927 = "aie.objectfifo.subview.access"(%926) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %928 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %929 = "aie.objectfifo.subview.access"(%928) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%929, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %930 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %931 = "aie.objectfifo.subview.access"(%930) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%931, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %932 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %933 = "aie.objectfifo.subview.access"(%932) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%933, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %934 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %935 = "aie.objectfifo.subview.access"(%934) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%935, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %936 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %937 = "aie.objectfifo.subview.access"(%936) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%937, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %938 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %939 = "aie.objectfifo.subview.access"(%938) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%939, %927, %903) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %907 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %908 = "aie.objectfifo.subview.access"(%907) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%908) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %909 = "arith.constant"() <{value = 0 : index}> : () -> index
        %910 = "arith.constant"() <{value = 32 : index}> : () -> index
        %911 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%909, %910, %911) ({
        ^bb0(%arg49: index):
          %912 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %913 = "aie.objectfifo.subview.access"(%912) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %914 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %915 = "aie.objectfifo.subview.access"(%914) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%915, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %916 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %917 = "aie.objectfifo.subview.access"(%916) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%917, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %918 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %919 = "aie.objectfifo.subview.access"(%918) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%919, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %920 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %921 = "aie.objectfifo.subview.access"(%920) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%921, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %922 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %923 = "aie.objectfifo.subview.access"(%922) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%923, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %924 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %925 = "aie.objectfifo.subview.access"(%924) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%925, %913, %908) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %81 = "aie.core"(%45) <{stack_size = 1024 : i32}> ({
      %810 = "arith.constant"() <{value = 0 : index}> : () -> index
      %811 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %812 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%810, %811, %812) ({
      ^bb0(%arg43: index):
        %813 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %814 = "aie.objectfifo.subview.access"(%813) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%814) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %815 = "arith.constant"() <{value = 0 : index}> : () -> index
        %816 = "arith.constant"() <{value = 32 : index}> : () -> index
        %817 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%815, %816, %817) ({
        ^bb0(%arg47: index):
          %875 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %876 = "aie.objectfifo.subview.access"(%875) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %877 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %878 = "aie.objectfifo.subview.access"(%877) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%878, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %879 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %880 = "aie.objectfifo.subview.access"(%879) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%880, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %881 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %882 = "aie.objectfifo.subview.access"(%881) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%882, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %883 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %884 = "aie.objectfifo.subview.access"(%883) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%884, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %885 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %886 = "aie.objectfifo.subview.access"(%885) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%886, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %887 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %888 = "aie.objectfifo.subview.access"(%887) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%888, %876, %814) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %818 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %819 = "aie.objectfifo.subview.access"(%818) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%819) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %820 = "arith.constant"() <{value = 0 : index}> : () -> index
        %821 = "arith.constant"() <{value = 32 : index}> : () -> index
        %822 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%820, %821, %822) ({
        ^bb0(%arg46: index):
          %861 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %862 = "aie.objectfifo.subview.access"(%861) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %863 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %864 = "aie.objectfifo.subview.access"(%863) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%864, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %865 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %866 = "aie.objectfifo.subview.access"(%865) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%866, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %867 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %868 = "aie.objectfifo.subview.access"(%867) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%868, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %869 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %870 = "aie.objectfifo.subview.access"(%869) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%870, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %871 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %872 = "aie.objectfifo.subview.access"(%871) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%872, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %873 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %874 = "aie.objectfifo.subview.access"(%873) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%874, %862, %819) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %823 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %824 = "aie.objectfifo.subview.access"(%823) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%824) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %825 = "arith.constant"() <{value = 0 : index}> : () -> index
        %826 = "arith.constant"() <{value = 32 : index}> : () -> index
        %827 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%825, %826, %827) ({
        ^bb0(%arg45: index):
          %847 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %848 = "aie.objectfifo.subview.access"(%847) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %849 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %850 = "aie.objectfifo.subview.access"(%849) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%850, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %851 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %852 = "aie.objectfifo.subview.access"(%851) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%852, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %853 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %854 = "aie.objectfifo.subview.access"(%853) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%854, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %855 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %856 = "aie.objectfifo.subview.access"(%855) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%856, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %857 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %858 = "aie.objectfifo.subview.access"(%857) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%858, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %859 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %860 = "aie.objectfifo.subview.access"(%859) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%860, %848, %824) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %828 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %829 = "aie.objectfifo.subview.access"(%828) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%829) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %830 = "arith.constant"() <{value = 0 : index}> : () -> index
        %831 = "arith.constant"() <{value = 32 : index}> : () -> index
        %832 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%830, %831, %832) ({
        ^bb0(%arg44: index):
          %833 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %834 = "aie.objectfifo.subview.access"(%833) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %835 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %836 = "aie.objectfifo.subview.access"(%835) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%836, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %837 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %838 = "aie.objectfifo.subview.access"(%837) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%838, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %839 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %840 = "aie.objectfifo.subview.access"(%839) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%840, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %841 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %842 = "aie.objectfifo.subview.access"(%841) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%842, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %843 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %844 = "aie.objectfifo.subview.access"(%843) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%844, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %845 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %846 = "aie.objectfifo.subview.access"(%845) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%846, %834, %829) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %82 = "aie.core"(%46) <{stack_size = 1024 : i32}> ({
      %731 = "arith.constant"() <{value = 0 : index}> : () -> index
      %732 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %733 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%731, %732, %733) ({
      ^bb0(%arg38: index):
        %734 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %735 = "aie.objectfifo.subview.access"(%734) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%735) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %736 = "arith.constant"() <{value = 0 : index}> : () -> index
        %737 = "arith.constant"() <{value = 32 : index}> : () -> index
        %738 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%736, %737, %738) ({
        ^bb0(%arg42: index):
          %796 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %797 = "aie.objectfifo.subview.access"(%796) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %798 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %799 = "aie.objectfifo.subview.access"(%798) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%799, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %800 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %801 = "aie.objectfifo.subview.access"(%800) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%801, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %802 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %803 = "aie.objectfifo.subview.access"(%802) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%803, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %804 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %805 = "aie.objectfifo.subview.access"(%804) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%805, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %806 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %807 = "aie.objectfifo.subview.access"(%806) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%807, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %808 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %809 = "aie.objectfifo.subview.access"(%808) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%809, %797, %735) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %739 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %740 = "aie.objectfifo.subview.access"(%739) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%740) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %741 = "arith.constant"() <{value = 0 : index}> : () -> index
        %742 = "arith.constant"() <{value = 32 : index}> : () -> index
        %743 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%741, %742, %743) ({
        ^bb0(%arg41: index):
          %782 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %783 = "aie.objectfifo.subview.access"(%782) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %784 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %785 = "aie.objectfifo.subview.access"(%784) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%785, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %786 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %787 = "aie.objectfifo.subview.access"(%786) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%787, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %788 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %789 = "aie.objectfifo.subview.access"(%788) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%789, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %790 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %791 = "aie.objectfifo.subview.access"(%790) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%791, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %792 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %793 = "aie.objectfifo.subview.access"(%792) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%793, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %794 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %795 = "aie.objectfifo.subview.access"(%794) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%795, %783, %740) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %744 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %745 = "aie.objectfifo.subview.access"(%744) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%745) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %746 = "arith.constant"() <{value = 0 : index}> : () -> index
        %747 = "arith.constant"() <{value = 32 : index}> : () -> index
        %748 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%746, %747, %748) ({
        ^bb0(%arg40: index):
          %768 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %769 = "aie.objectfifo.subview.access"(%768) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %770 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %771 = "aie.objectfifo.subview.access"(%770) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%771, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %772 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %773 = "aie.objectfifo.subview.access"(%772) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%773, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %774 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %775 = "aie.objectfifo.subview.access"(%774) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%775, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %776 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %777 = "aie.objectfifo.subview.access"(%776) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%777, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %778 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %779 = "aie.objectfifo.subview.access"(%778) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%779, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %780 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %781 = "aie.objectfifo.subview.access"(%780) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%781, %769, %745) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %749 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %750 = "aie.objectfifo.subview.access"(%749) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%750) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %751 = "arith.constant"() <{value = 0 : index}> : () -> index
        %752 = "arith.constant"() <{value = 32 : index}> : () -> index
        %753 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%751, %752, %753) ({
        ^bb0(%arg39: index):
          %754 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %755 = "aie.objectfifo.subview.access"(%754) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %756 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %757 = "aie.objectfifo.subview.access"(%756) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%757, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %758 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %759 = "aie.objectfifo.subview.access"(%758) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%759, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %760 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %761 = "aie.objectfifo.subview.access"(%760) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%761, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %762 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %763 = "aie.objectfifo.subview.access"(%762) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%763, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %764 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %765 = "aie.objectfifo.subview.access"(%764) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%765, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %766 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %767 = "aie.objectfifo.subview.access"(%766) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%767, %755, %750) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %83 = "aie.core"(%47) <{stack_size = 1024 : i32}> ({
      %652 = "arith.constant"() <{value = 0 : index}> : () -> index
      %653 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %654 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%652, %653, %654) ({
      ^bb0(%arg33: index):
        %655 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %656 = "aie.objectfifo.subview.access"(%655) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%656) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %657 = "arith.constant"() <{value = 0 : index}> : () -> index
        %658 = "arith.constant"() <{value = 32 : index}> : () -> index
        %659 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%657, %658, %659) ({
        ^bb0(%arg37: index):
          %717 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %718 = "aie.objectfifo.subview.access"(%717) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %719 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %720 = "aie.objectfifo.subview.access"(%719) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%720, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %721 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %722 = "aie.objectfifo.subview.access"(%721) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%722, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %723 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %724 = "aie.objectfifo.subview.access"(%723) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%724, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %725 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %726 = "aie.objectfifo.subview.access"(%725) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%726, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %727 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %728 = "aie.objectfifo.subview.access"(%727) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%728, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %729 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %730 = "aie.objectfifo.subview.access"(%729) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%730, %718, %656) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %660 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %661 = "aie.objectfifo.subview.access"(%660) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%661) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %662 = "arith.constant"() <{value = 0 : index}> : () -> index
        %663 = "arith.constant"() <{value = 32 : index}> : () -> index
        %664 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%662, %663, %664) ({
        ^bb0(%arg36: index):
          %703 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %704 = "aie.objectfifo.subview.access"(%703) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %705 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %706 = "aie.objectfifo.subview.access"(%705) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%706, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %707 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %708 = "aie.objectfifo.subview.access"(%707) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%708, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %709 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %710 = "aie.objectfifo.subview.access"(%709) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%710, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %711 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %712 = "aie.objectfifo.subview.access"(%711) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%712, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %713 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %714 = "aie.objectfifo.subview.access"(%713) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%714, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %715 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %716 = "aie.objectfifo.subview.access"(%715) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%716, %704, %661) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %665 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %666 = "aie.objectfifo.subview.access"(%665) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%666) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %667 = "arith.constant"() <{value = 0 : index}> : () -> index
        %668 = "arith.constant"() <{value = 32 : index}> : () -> index
        %669 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%667, %668, %669) ({
        ^bb0(%arg35: index):
          %689 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %690 = "aie.objectfifo.subview.access"(%689) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %691 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %692 = "aie.objectfifo.subview.access"(%691) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%692, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %693 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %694 = "aie.objectfifo.subview.access"(%693) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%694, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %695 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %696 = "aie.objectfifo.subview.access"(%695) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%696, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %697 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %698 = "aie.objectfifo.subview.access"(%697) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%698, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %699 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %700 = "aie.objectfifo.subview.access"(%699) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%700, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %701 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %702 = "aie.objectfifo.subview.access"(%701) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%702, %690, %666) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %670 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %671 = "aie.objectfifo.subview.access"(%670) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%671) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %672 = "arith.constant"() <{value = 0 : index}> : () -> index
        %673 = "arith.constant"() <{value = 32 : index}> : () -> index
        %674 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%672, %673, %674) ({
        ^bb0(%arg34: index):
          %675 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %676 = "aie.objectfifo.subview.access"(%675) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %677 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %678 = "aie.objectfifo.subview.access"(%677) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%678, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %679 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %680 = "aie.objectfifo.subview.access"(%679) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%680, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %681 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %682 = "aie.objectfifo.subview.access"(%681) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%682, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %683 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %684 = "aie.objectfifo.subview.access"(%683) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%684, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %685 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %686 = "aie.objectfifo.subview.access"(%685) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%686, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %687 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %688 = "aie.objectfifo.subview.access"(%687) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%688, %676, %671) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %84 = "aie.core"(%48) <{stack_size = 1024 : i32}> ({
      %573 = "arith.constant"() <{value = 0 : index}> : () -> index
      %574 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %575 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%573, %574, %575) ({
      ^bb0(%arg28: index):
        %576 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %577 = "aie.objectfifo.subview.access"(%576) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%577) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %578 = "arith.constant"() <{value = 0 : index}> : () -> index
        %579 = "arith.constant"() <{value = 32 : index}> : () -> index
        %580 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%578, %579, %580) ({
        ^bb0(%arg32: index):
          %638 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %639 = "aie.objectfifo.subview.access"(%638) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %640 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %641 = "aie.objectfifo.subview.access"(%640) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%641, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %642 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %643 = "aie.objectfifo.subview.access"(%642) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%643, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %644 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %645 = "aie.objectfifo.subview.access"(%644) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%645, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %646 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %647 = "aie.objectfifo.subview.access"(%646) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%647, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %648 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %649 = "aie.objectfifo.subview.access"(%648) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%649, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %650 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %651 = "aie.objectfifo.subview.access"(%650) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%651, %639, %577) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %581 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %582 = "aie.objectfifo.subview.access"(%581) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%582) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %583 = "arith.constant"() <{value = 0 : index}> : () -> index
        %584 = "arith.constant"() <{value = 32 : index}> : () -> index
        %585 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%583, %584, %585) ({
        ^bb0(%arg31: index):
          %624 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %625 = "aie.objectfifo.subview.access"(%624) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %626 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %627 = "aie.objectfifo.subview.access"(%626) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%627, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %628 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %629 = "aie.objectfifo.subview.access"(%628) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%629, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %630 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %631 = "aie.objectfifo.subview.access"(%630) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%631, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %632 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %633 = "aie.objectfifo.subview.access"(%632) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%633, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %634 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %635 = "aie.objectfifo.subview.access"(%634) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%635, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %636 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %637 = "aie.objectfifo.subview.access"(%636) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%637, %625, %582) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %586 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %587 = "aie.objectfifo.subview.access"(%586) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%587) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %588 = "arith.constant"() <{value = 0 : index}> : () -> index
        %589 = "arith.constant"() <{value = 32 : index}> : () -> index
        %590 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%588, %589, %590) ({
        ^bb0(%arg30: index):
          %610 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %611 = "aie.objectfifo.subview.access"(%610) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %612 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %613 = "aie.objectfifo.subview.access"(%612) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%613, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %614 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %615 = "aie.objectfifo.subview.access"(%614) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%615, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %616 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %617 = "aie.objectfifo.subview.access"(%616) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%617, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %618 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %619 = "aie.objectfifo.subview.access"(%618) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%619, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %620 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %621 = "aie.objectfifo.subview.access"(%620) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%621, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %622 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %623 = "aie.objectfifo.subview.access"(%622) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%623, %611, %587) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %591 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %592 = "aie.objectfifo.subview.access"(%591) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%592) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %593 = "arith.constant"() <{value = 0 : index}> : () -> index
        %594 = "arith.constant"() <{value = 32 : index}> : () -> index
        %595 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%593, %594, %595) ({
        ^bb0(%arg29: index):
          %596 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %597 = "aie.objectfifo.subview.access"(%596) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %598 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %599 = "aie.objectfifo.subview.access"(%598) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%599, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %600 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %601 = "aie.objectfifo.subview.access"(%600) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%601, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %602 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %603 = "aie.objectfifo.subview.access"(%602) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%603, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %604 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %605 = "aie.objectfifo.subview.access"(%604) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%605, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %606 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %607 = "aie.objectfifo.subview.access"(%606) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%607, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %608 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %609 = "aie.objectfifo.subview.access"(%608) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%609, %597, %592) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %85 = "aie.core"(%49) <{stack_size = 1024 : i32}> ({
      %494 = "arith.constant"() <{value = 0 : index}> : () -> index
      %495 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %496 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%494, %495, %496) ({
      ^bb0(%arg23: index):
        %497 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %498 = "aie.objectfifo.subview.access"(%497) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%498) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %499 = "arith.constant"() <{value = 0 : index}> : () -> index
        %500 = "arith.constant"() <{value = 32 : index}> : () -> index
        %501 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%499, %500, %501) ({
        ^bb0(%arg27: index):
          %559 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %560 = "aie.objectfifo.subview.access"(%559) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %561 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %562 = "aie.objectfifo.subview.access"(%561) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%562, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %563 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %564 = "aie.objectfifo.subview.access"(%563) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%564, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %565 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %566 = "aie.objectfifo.subview.access"(%565) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%566, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %567 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %568 = "aie.objectfifo.subview.access"(%567) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%568, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %569 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %570 = "aie.objectfifo.subview.access"(%569) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%570, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %571 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %572 = "aie.objectfifo.subview.access"(%571) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%572, %560, %498) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %502 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %503 = "aie.objectfifo.subview.access"(%502) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%503) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %504 = "arith.constant"() <{value = 0 : index}> : () -> index
        %505 = "arith.constant"() <{value = 32 : index}> : () -> index
        %506 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%504, %505, %506) ({
        ^bb0(%arg26: index):
          %545 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %546 = "aie.objectfifo.subview.access"(%545) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %547 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %548 = "aie.objectfifo.subview.access"(%547) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%548, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %549 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %550 = "aie.objectfifo.subview.access"(%549) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%550, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %551 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %552 = "aie.objectfifo.subview.access"(%551) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%552, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %553 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %554 = "aie.objectfifo.subview.access"(%553) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%554, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %555 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %556 = "aie.objectfifo.subview.access"(%555) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%556, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %557 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %558 = "aie.objectfifo.subview.access"(%557) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%558, %546, %503) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %507 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %508 = "aie.objectfifo.subview.access"(%507) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%508) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %509 = "arith.constant"() <{value = 0 : index}> : () -> index
        %510 = "arith.constant"() <{value = 32 : index}> : () -> index
        %511 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%509, %510, %511) ({
        ^bb0(%arg25: index):
          %531 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %532 = "aie.objectfifo.subview.access"(%531) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %533 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %534 = "aie.objectfifo.subview.access"(%533) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%534, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %535 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %536 = "aie.objectfifo.subview.access"(%535) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%536, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %537 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %538 = "aie.objectfifo.subview.access"(%537) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%538, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %539 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %540 = "aie.objectfifo.subview.access"(%539) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%540, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %541 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %542 = "aie.objectfifo.subview.access"(%541) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%542, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %543 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %544 = "aie.objectfifo.subview.access"(%543) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%544, %532, %508) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %512 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %513 = "aie.objectfifo.subview.access"(%512) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%513) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %514 = "arith.constant"() <{value = 0 : index}> : () -> index
        %515 = "arith.constant"() <{value = 32 : index}> : () -> index
        %516 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%514, %515, %516) ({
        ^bb0(%arg24: index):
          %517 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %518 = "aie.objectfifo.subview.access"(%517) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %519 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %520 = "aie.objectfifo.subview.access"(%519) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%520, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %521 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %522 = "aie.objectfifo.subview.access"(%521) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%522, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %523 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %524 = "aie.objectfifo.subview.access"(%523) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%524, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %525 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %526 = "aie.objectfifo.subview.access"(%525) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%526, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %527 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %528 = "aie.objectfifo.subview.access"(%527) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%528, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %529 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %530 = "aie.objectfifo.subview.access"(%529) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%530, %518, %513) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %86 = "aie.core"(%50) <{stack_size = 1024 : i32}> ({
      %415 = "arith.constant"() <{value = 0 : index}> : () -> index
      %416 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %417 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%415, %416, %417) ({
      ^bb0(%arg18: index):
        %418 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %419 = "aie.objectfifo.subview.access"(%418) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%419) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %420 = "arith.constant"() <{value = 0 : index}> : () -> index
        %421 = "arith.constant"() <{value = 32 : index}> : () -> index
        %422 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%420, %421, %422) ({
        ^bb0(%arg22: index):
          %480 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %481 = "aie.objectfifo.subview.access"(%480) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %482 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %483 = "aie.objectfifo.subview.access"(%482) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%483, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %484 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %485 = "aie.objectfifo.subview.access"(%484) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%485, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %486 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %487 = "aie.objectfifo.subview.access"(%486) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%487, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %488 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %489 = "aie.objectfifo.subview.access"(%488) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%489, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %490 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %491 = "aie.objectfifo.subview.access"(%490) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%491, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %492 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %493 = "aie.objectfifo.subview.access"(%492) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%493, %481, %419) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %423 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %424 = "aie.objectfifo.subview.access"(%423) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%424) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %425 = "arith.constant"() <{value = 0 : index}> : () -> index
        %426 = "arith.constant"() <{value = 32 : index}> : () -> index
        %427 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%425, %426, %427) ({
        ^bb0(%arg21: index):
          %466 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %467 = "aie.objectfifo.subview.access"(%466) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %468 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %469 = "aie.objectfifo.subview.access"(%468) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%469, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %470 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %471 = "aie.objectfifo.subview.access"(%470) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%471, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %472 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %473 = "aie.objectfifo.subview.access"(%472) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%473, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %474 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %475 = "aie.objectfifo.subview.access"(%474) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%475, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %476 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %477 = "aie.objectfifo.subview.access"(%476) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%477, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %478 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %479 = "aie.objectfifo.subview.access"(%478) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%479, %467, %424) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %428 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %429 = "aie.objectfifo.subview.access"(%428) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%429) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %430 = "arith.constant"() <{value = 0 : index}> : () -> index
        %431 = "arith.constant"() <{value = 32 : index}> : () -> index
        %432 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%430, %431, %432) ({
        ^bb0(%arg20: index):
          %452 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %453 = "aie.objectfifo.subview.access"(%452) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %454 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %455 = "aie.objectfifo.subview.access"(%454) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%455, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %456 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %457 = "aie.objectfifo.subview.access"(%456) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%457, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %458 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %459 = "aie.objectfifo.subview.access"(%458) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%459, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %460 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %461 = "aie.objectfifo.subview.access"(%460) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%461, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %462 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %463 = "aie.objectfifo.subview.access"(%462) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%463, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %464 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %465 = "aie.objectfifo.subview.access"(%464) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%465, %453, %429) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %433 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %434 = "aie.objectfifo.subview.access"(%433) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%434) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %435 = "arith.constant"() <{value = 0 : index}> : () -> index
        %436 = "arith.constant"() <{value = 32 : index}> : () -> index
        %437 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%435, %436, %437) ({
        ^bb0(%arg19: index):
          %438 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %439 = "aie.objectfifo.subview.access"(%438) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %440 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %441 = "aie.objectfifo.subview.access"(%440) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%441, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %442 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %443 = "aie.objectfifo.subview.access"(%442) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%443, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %444 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %445 = "aie.objectfifo.subview.access"(%444) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%445, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %446 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %447 = "aie.objectfifo.subview.access"(%446) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%447, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %448 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %449 = "aie.objectfifo.subview.access"(%448) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%449, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %450 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %451 = "aie.objectfifo.subview.access"(%450) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%451, %439, %434) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %87 = "aie.core"(%51) <{stack_size = 1024 : i32}> ({
      %336 = "arith.constant"() <{value = 0 : index}> : () -> index
      %337 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %338 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%336, %337, %338) ({
      ^bb0(%arg13: index):
        %339 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %340 = "aie.objectfifo.subview.access"(%339) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%340) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %341 = "arith.constant"() <{value = 0 : index}> : () -> index
        %342 = "arith.constant"() <{value = 32 : index}> : () -> index
        %343 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%341, %342, %343) ({
        ^bb0(%arg17: index):
          %401 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %402 = "aie.objectfifo.subview.access"(%401) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %403 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %404 = "aie.objectfifo.subview.access"(%403) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%404, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %405 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %406 = "aie.objectfifo.subview.access"(%405) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%406, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %407 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %408 = "aie.objectfifo.subview.access"(%407) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%408, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %409 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %410 = "aie.objectfifo.subview.access"(%409) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%410, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %411 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %412 = "aie.objectfifo.subview.access"(%411) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%412, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %413 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %414 = "aie.objectfifo.subview.access"(%413) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%414, %402, %340) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %344 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %345 = "aie.objectfifo.subview.access"(%344) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%345) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %346 = "arith.constant"() <{value = 0 : index}> : () -> index
        %347 = "arith.constant"() <{value = 32 : index}> : () -> index
        %348 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%346, %347, %348) ({
        ^bb0(%arg16: index):
          %387 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %388 = "aie.objectfifo.subview.access"(%387) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %389 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %390 = "aie.objectfifo.subview.access"(%389) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%390, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %391 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %392 = "aie.objectfifo.subview.access"(%391) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%392, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %393 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %394 = "aie.objectfifo.subview.access"(%393) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%394, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %395 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %396 = "aie.objectfifo.subview.access"(%395) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%396, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %397 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %398 = "aie.objectfifo.subview.access"(%397) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%398, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %399 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %400 = "aie.objectfifo.subview.access"(%399) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%400, %388, %345) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %349 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %350 = "aie.objectfifo.subview.access"(%349) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%350) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %351 = "arith.constant"() <{value = 0 : index}> : () -> index
        %352 = "arith.constant"() <{value = 32 : index}> : () -> index
        %353 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%351, %352, %353) ({
        ^bb0(%arg15: index):
          %373 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %374 = "aie.objectfifo.subview.access"(%373) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %375 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %376 = "aie.objectfifo.subview.access"(%375) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%376, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %377 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %378 = "aie.objectfifo.subview.access"(%377) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%378, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %379 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %380 = "aie.objectfifo.subview.access"(%379) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%380, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %381 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %382 = "aie.objectfifo.subview.access"(%381) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%382, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %383 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %384 = "aie.objectfifo.subview.access"(%383) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%384, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %385 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %386 = "aie.objectfifo.subview.access"(%385) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%386, %374, %350) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %354 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %355 = "aie.objectfifo.subview.access"(%354) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%355) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %356 = "arith.constant"() <{value = 0 : index}> : () -> index
        %357 = "arith.constant"() <{value = 32 : index}> : () -> index
        %358 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%356, %357, %358) ({
        ^bb0(%arg14: index):
          %359 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %360 = "aie.objectfifo.subview.access"(%359) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %361 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %362 = "aie.objectfifo.subview.access"(%361) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%362, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %363 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %364 = "aie.objectfifo.subview.access"(%363) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%364, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %365 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %366 = "aie.objectfifo.subview.access"(%365) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%366, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %367 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %368 = "aie.objectfifo.subview.access"(%367) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%368, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %369 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %370 = "aie.objectfifo.subview.access"(%369) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%370, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %371 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %372 = "aie.objectfifo.subview.access"(%371) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%372, %360, %355) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %88 = "aie.core"(%52) <{stack_size = 1024 : i32}> ({
      %257 = "arith.constant"() <{value = 0 : index}> : () -> index
      %258 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %259 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%257, %258, %259) ({
      ^bb0(%arg8: index):
        %260 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %261 = "aie.objectfifo.subview.access"(%260) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%261) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %262 = "arith.constant"() <{value = 0 : index}> : () -> index
        %263 = "arith.constant"() <{value = 32 : index}> : () -> index
        %264 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%262, %263, %264) ({
        ^bb0(%arg12: index):
          %322 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %323 = "aie.objectfifo.subview.access"(%322) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %324 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %325 = "aie.objectfifo.subview.access"(%324) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%325, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %326 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %327 = "aie.objectfifo.subview.access"(%326) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%327, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %328 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %329 = "aie.objectfifo.subview.access"(%328) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%329, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %330 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %331 = "aie.objectfifo.subview.access"(%330) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%331, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %332 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %333 = "aie.objectfifo.subview.access"(%332) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%333, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %334 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %335 = "aie.objectfifo.subview.access"(%334) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%335, %323, %261) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %265 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %266 = "aie.objectfifo.subview.access"(%265) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%266) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %267 = "arith.constant"() <{value = 0 : index}> : () -> index
        %268 = "arith.constant"() <{value = 32 : index}> : () -> index
        %269 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%267, %268, %269) ({
        ^bb0(%arg11: index):
          %308 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %309 = "aie.objectfifo.subview.access"(%308) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %310 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %311 = "aie.objectfifo.subview.access"(%310) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%311, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %312 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %313 = "aie.objectfifo.subview.access"(%312) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%313, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %314 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %315 = "aie.objectfifo.subview.access"(%314) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%315, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %316 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %317 = "aie.objectfifo.subview.access"(%316) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%317, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %318 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %319 = "aie.objectfifo.subview.access"(%318) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%319, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %320 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %321 = "aie.objectfifo.subview.access"(%320) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%321, %309, %266) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %270 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %271 = "aie.objectfifo.subview.access"(%270) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%271) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %272 = "arith.constant"() <{value = 0 : index}> : () -> index
        %273 = "arith.constant"() <{value = 32 : index}> : () -> index
        %274 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%272, %273, %274) ({
        ^bb0(%arg10: index):
          %294 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %295 = "aie.objectfifo.subview.access"(%294) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %296 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %297 = "aie.objectfifo.subview.access"(%296) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%297, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %298 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %299 = "aie.objectfifo.subview.access"(%298) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%299, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %300 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %301 = "aie.objectfifo.subview.access"(%300) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%301, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %302 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %303 = "aie.objectfifo.subview.access"(%302) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%303, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %304 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %305 = "aie.objectfifo.subview.access"(%304) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%305, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %306 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %307 = "aie.objectfifo.subview.access"(%306) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%307, %295, %271) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %275 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %276 = "aie.objectfifo.subview.access"(%275) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%276) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %277 = "arith.constant"() <{value = 0 : index}> : () -> index
        %278 = "arith.constant"() <{value = 32 : index}> : () -> index
        %279 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%277, %278, %279) ({
        ^bb0(%arg9: index):
          %280 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %281 = "aie.objectfifo.subview.access"(%280) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %282 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %283 = "aie.objectfifo.subview.access"(%282) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%283, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %284 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %285 = "aie.objectfifo.subview.access"(%284) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%285, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %286 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %287 = "aie.objectfifo.subview.access"(%286) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%287, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %288 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %289 = "aie.objectfifo.subview.access"(%288) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%289, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %290 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %291 = "aie.objectfifo.subview.access"(%290) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%291, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %292 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %293 = "aie.objectfifo.subview.access"(%292) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%293, %281, %276) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %89 = "aie.core"(%53) <{stack_size = 1024 : i32}> ({
      %178 = "arith.constant"() <{value = 0 : index}> : () -> index
      %179 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %180 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%178, %179, %180) ({
      ^bb0(%arg3: index):
        %181 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %182 = "aie.objectfifo.subview.access"(%181) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%182) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %183 = "arith.constant"() <{value = 0 : index}> : () -> index
        %184 = "arith.constant"() <{value = 32 : index}> : () -> index
        %185 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%183, %184, %185) ({
        ^bb0(%arg7: index):
          %243 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %244 = "aie.objectfifo.subview.access"(%243) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %245 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %246 = "aie.objectfifo.subview.access"(%245) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%246, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %247 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %248 = "aie.objectfifo.subview.access"(%247) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%248, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %249 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %250 = "aie.objectfifo.subview.access"(%249) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%250, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %251 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %252 = "aie.objectfifo.subview.access"(%251) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%252, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %253 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %254 = "aie.objectfifo.subview.access"(%253) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%254, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %255 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %256 = "aie.objectfifo.subview.access"(%255) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%256, %244, %182) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %186 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %187 = "aie.objectfifo.subview.access"(%186) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%187) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %188 = "arith.constant"() <{value = 0 : index}> : () -> index
        %189 = "arith.constant"() <{value = 32 : index}> : () -> index
        %190 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%188, %189, %190) ({
        ^bb0(%arg6: index):
          %229 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %230 = "aie.objectfifo.subview.access"(%229) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %231 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %232 = "aie.objectfifo.subview.access"(%231) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%232, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %233 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %234 = "aie.objectfifo.subview.access"(%233) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%234, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %235 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %236 = "aie.objectfifo.subview.access"(%235) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%236, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %237 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %238 = "aie.objectfifo.subview.access"(%237) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%238, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %239 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %240 = "aie.objectfifo.subview.access"(%239) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%240, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %241 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %242 = "aie.objectfifo.subview.access"(%241) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%242, %230, %187) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %191 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %192 = "aie.objectfifo.subview.access"(%191) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%192) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %193 = "arith.constant"() <{value = 0 : index}> : () -> index
        %194 = "arith.constant"() <{value = 32 : index}> : () -> index
        %195 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%193, %194, %195) ({
        ^bb0(%arg5: index):
          %215 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %216 = "aie.objectfifo.subview.access"(%215) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %217 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %218 = "aie.objectfifo.subview.access"(%217) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%218, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %219 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %220 = "aie.objectfifo.subview.access"(%219) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%220, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %221 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %222 = "aie.objectfifo.subview.access"(%221) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%222, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %223 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %224 = "aie.objectfifo.subview.access"(%223) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%224, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %225 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %226 = "aie.objectfifo.subview.access"(%225) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%226, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %227 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %228 = "aie.objectfifo.subview.access"(%227) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%228, %216, %192) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %196 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %197 = "aie.objectfifo.subview.access"(%196) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%197) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %198 = "arith.constant"() <{value = 0 : index}> : () -> index
        %199 = "arith.constant"() <{value = 32 : index}> : () -> index
        %200 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%198, %199, %200) ({
        ^bb0(%arg4: index):
          %201 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %202 = "aie.objectfifo.subview.access"(%201) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %203 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %204 = "aie.objectfifo.subview.access"(%203) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%204, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %205 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %206 = "aie.objectfifo.subview.access"(%205) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%206, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %207 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %208 = "aie.objectfifo.subview.access"(%207) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%208, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %209 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %210 = "aie.objectfifo.subview.access"(%209) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%210, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %211 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %212 = "aie.objectfifo.subview.access"(%211) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%212, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %213 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %214 = "aie.objectfifo.subview.access"(%213) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%214, %202, %197) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    "aie.runtime_sequence"() <{sym_name = "seq"}> ({
    ^bb0(%arg0: memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, %arg1: memref<442368x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<331776x!aiex.bfp<"v8bfp16ebs8">>):
      %90 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 0 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%90) : (index) -> ()
      %91 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 98304 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%91) : (index) -> ()
      %92 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 196608 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%92) : (index) -> ()
      %93 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 294912 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%93) : (index) -> ()
      %94 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%94) : (index) -> ()
      %95 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%95) : (index) -> ()
      %96 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%96) : (index) -> ()
      %97 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%97) : (index) -> ()
      %98 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%98) : (index) -> ()
      %99 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%99) : (index) -> ()
      %100 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%100) : (index) -> ()
      %101 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%101) : (index) -> ()
      %102 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%102) : (index) -> ()
      %103 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 0 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%103) : (index) -> ()
      %104 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 9216 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%104) : (index) -> ()
      %105 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 18432 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%105) : (index) -> ()
      %106 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 27648 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%106) : (index) -> ()
      %107 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 36864 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%107) : (index) -> ()
      %108 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 46080 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%108) : (index) -> ()
      %109 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 55296 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%109) : (index) -> ()
      %110 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 64512 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%110) : (index) -> ()
      %111 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 73728 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%111) : (index) -> ()
      %112 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 393216 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%112) : (index) -> ()
      %113 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 491520 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%113) : (index) -> ()
      %114 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 589824 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%114) : (index) -> ()
      %115 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 688128 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%115) : (index) -> ()
      %116 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%116) : (index) -> ()
      %117 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%117) : (index) -> ()
      %118 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%118) : (index) -> ()
      %119 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%119) : (index) -> ()
      %120 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%120) : (index) -> ()
      %121 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%121) : (index) -> ()
      %122 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%122) : (index) -> ()
      %123 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%123) : (index) -> ()
      %124 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%124) : (index) -> ()
      %125 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 82944 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%125) : (index) -> ()
      %126 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 92160 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%126) : (index) -> ()
      %127 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 101376 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%127) : (index) -> ()
      %128 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 110592 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%128) : (index) -> ()
      %129 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 119808 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%129) : (index) -> ()
      %130 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 129024 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%130) : (index) -> ()
      %131 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 138240 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%131) : (index) -> ()
      %132 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 147456 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%132) : (index) -> ()
      %133 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 156672 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%133) : (index) -> ()
      %134 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 786432 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%134) : (index) -> ()
      %135 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 884736 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%135) : (index) -> ()
      %136 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 983040 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%136) : (index) -> ()
      %137 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1081344 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%137) : (index) -> ()
      %138 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%138) : (index) -> ()
      %139 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%139) : (index) -> ()
      %140 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%140) : (index) -> ()
      %141 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%141) : (index) -> ()
      %142 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%142) : (index) -> ()
      %143 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%143) : (index) -> ()
      %144 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%144) : (index) -> ()
      %145 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%145) : (index) -> ()
      %146 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%146) : (index) -> ()
      %147 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 165888 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%147) : (index) -> ()
      %148 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 175104 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%148) : (index) -> ()
      %149 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 184320 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%149) : (index) -> ()
      %150 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 193536 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%150) : (index) -> ()
      %151 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 202752 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%151) : (index) -> ()
      %152 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 211968 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%152) : (index) -> ()
      %153 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 221184 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%153) : (index) -> ()
      %154 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 230400 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%154) : (index) -> ()
      %155 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 239616 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%155) : (index) -> ()
      %156 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1179648 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%156) : (index) -> ()
      %157 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1277952 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%157) : (index) -> ()
      %158 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1376256 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%158) : (index) -> ()
      %159 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1474560 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%159) : (index) -> ()
      %160 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%160) : (index) -> ()
      %161 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%161) : (index) -> ()
      %162 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%162) : (index) -> ()
      %163 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%163) : (index) -> ()
      %164 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%164) : (index) -> ()
      %165 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%165) : (index) -> ()
      %166 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%166) : (index) -> ()
      %167 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%167) : (index) -> ()
      %168 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<442368x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%168) : (index) -> ()
      %169 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 248832 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%169) : (index) -> ()
      %170 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 258048 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%170) : (index) -> ()
      %171 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 267264 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%171) : (index) -> ()
      %172 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 276480 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%172) : (index) -> ()
      %173 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 285696 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%173) : (index) -> ()
      %174 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 294912 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%174) : (index) -> ()
      %175 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 304128 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%175) : (index) -> ()
      %176 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 313344 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%176) : (index) -> ()
      %177 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 322560 : i32}> : (memref<331776x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%177) : (index) -> ()
    }) : () -> ()
    "aie.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

