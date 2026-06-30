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
    %9 = "aie.tile"() <{col = 9 : i32, row = 0 : i32}> : () -> index
    %10 = "aie.tile"() <{col = 0 : i32, row = 1 : i32}> : () -> index
    %11 = "aie.tile"() <{col = 1 : i32, row = 1 : i32}> : () -> index
    %12 = "aie.tile"() <{col = 2 : i32, row = 1 : i32}> : () -> index
    %13 = "aie.tile"() <{col = 3 : i32, row = 1 : i32}> : () -> index
    %14 = "aie.tile"() <{col = 4 : i32, row = 1 : i32}> : () -> index
    %15 = "aie.tile"() <{col = 5 : i32, row = 1 : i32}> : () -> index
    %16 = "aie.tile"() <{col = 6 : i32, row = 1 : i32}> : () -> index
    %17 = "aie.tile"() <{col = 7 : i32, row = 1 : i32}> : () -> index
    %18 = "aie.tile"() <{col = 8 : i32, row = 1 : i32}> : () -> index
    %19 = "aie.tile"() <{col = 9 : i32, row = 1 : i32}> : () -> index
    %20 = "aie.tile"() <{col = 0 : i32, row = 2 : i32}> : () -> index
    %21 = "aie.tile"() <{col = 1 : i32, row = 2 : i32}> : () -> index
    %22 = "aie.tile"() <{col = 2 : i32, row = 2 : i32}> : () -> index
    %23 = "aie.tile"() <{col = 3 : i32, row = 2 : i32}> : () -> index
    %24 = "aie.tile"() <{col = 4 : i32, row = 2 : i32}> : () -> index
    %25 = "aie.tile"() <{col = 5 : i32, row = 2 : i32}> : () -> index
    %26 = "aie.tile"() <{col = 6 : i32, row = 2 : i32}> : () -> index
    %27 = "aie.tile"() <{col = 7 : i32, row = 2 : i32}> : () -> index
    %28 = "aie.tile"() <{col = 8 : i32, row = 2 : i32}> : () -> index
    %29 = "aie.tile"() <{col = 9 : i32, row = 2 : i32}> : () -> index
    %30 = "aie.tile"() <{col = 0 : i32, row = 3 : i32}> : () -> index
    %31 = "aie.tile"() <{col = 1 : i32, row = 3 : i32}> : () -> index
    %32 = "aie.tile"() <{col = 2 : i32, row = 3 : i32}> : () -> index
    %33 = "aie.tile"() <{col = 3 : i32, row = 3 : i32}> : () -> index
    %34 = "aie.tile"() <{col = 4 : i32, row = 3 : i32}> : () -> index
    %35 = "aie.tile"() <{col = 5 : i32, row = 3 : i32}> : () -> index
    %36 = "aie.tile"() <{col = 6 : i32, row = 3 : i32}> : () -> index
    %37 = "aie.tile"() <{col = 7 : i32, row = 3 : i32}> : () -> index
    %38 = "aie.tile"() <{col = 8 : i32, row = 3 : i32}> : () -> index
    %39 = "aie.tile"() <{col = 9 : i32, row = 3 : i32}> : () -> index
    %40 = "aie.tile"() <{col = 0 : i32, row = 4 : i32}> : () -> index
    %41 = "aie.tile"() <{col = 1 : i32, row = 4 : i32}> : () -> index
    %42 = "aie.tile"() <{col = 2 : i32, row = 4 : i32}> : () -> index
    %43 = "aie.tile"() <{col = 3 : i32, row = 4 : i32}> : () -> index
    %44 = "aie.tile"() <{col = 4 : i32, row = 4 : i32}> : () -> index
    %45 = "aie.tile"() <{col = 5 : i32, row = 4 : i32}> : () -> index
    %46 = "aie.tile"() <{col = 6 : i32, row = 4 : i32}> : () -> index
    %47 = "aie.tile"() <{col = 7 : i32, row = 4 : i32}> : () -> index
    %48 = "aie.tile"() <{col = 8 : i32, row = 4 : i32}> : () -> index
    %49 = "aie.tile"() <{col = 9 : i32, row = 4 : i32}> : () -> index
    %50 = "aie.tile"() <{col = 0 : i32, row = 5 : i32}> : () -> index
    %51 = "aie.tile"() <{col = 1 : i32, row = 5 : i32}> : () -> index
    %52 = "aie.tile"() <{col = 2 : i32, row = 5 : i32}> : () -> index
    %53 = "aie.tile"() <{col = 3 : i32, row = 5 : i32}> : () -> index
    %54 = "aie.tile"() <{col = 4 : i32, row = 5 : i32}> : () -> index
    %55 = "aie.tile"() <{col = 5 : i32, row = 5 : i32}> : () -> index
    %56 = "aie.tile"() <{col = 6 : i32, row = 5 : i32}> : () -> index
    %57 = "aie.tile"() <{col = 7 : i32, row = 5 : i32}> : () -> index
    %58 = "aie.tile"() <{col = 8 : i32, row = 5 : i32}> : () -> index
    %59 = "aie.tile"() <{col = 9 : i32, row = 5 : i32}> : () -> index
    "aie.objectfifo"(%0, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%10, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_0", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_0], fifoOuts = [@A_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_1", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_1], fifoOuts = [@A_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%4, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_2", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_2], fifoOuts = [@A_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%6, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<192x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], [], [], [], [], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "A_L2L1_3", via_DMA = false}> : (index, index, index, index, index, index, index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@A_L3L2_3], fifoOuts = [@A_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%0, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%10, %20, %30, %40, %50) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_0", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_0], fifoOuts = [@B_L2L1_0], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%1, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%11, %21, %31, %41, %51) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_1", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_1], fifoOuts = [@B_L2L1_1], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%2, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %22, %32, %42, %52) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_2", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_2], fifoOuts = [@B_L2L1_2], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%3, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %23, %33, %43, %53) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_3", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_3], fifoOuts = [@B_L2L1_3], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%4, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_4", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %24, %34, %44, %54) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_4", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_4], fifoOuts = [@B_L2L1_4], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%5, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_5", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %25, %35, %45, %55) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_5", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_5], fifoOuts = [@B_L2L1_5], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%6, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_6", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %26, %36, %46, %56) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_6", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_6], fifoOuts = [@B_L2L1_6], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%7, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_7", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%17, %27, %37, %47, %57) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_7", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_7], fifoOuts = [@B_L2L1_7], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%8, %18) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_8", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%18, %28, %38, %48, %58) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_8", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_8], fifoOuts = [@B_L2L1_8], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%9, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L3L2_9", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%19, %29, %39, %49, %59) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[], [], [], []]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "B_L2L1_9", via_DMA = false}> : (index, index, index, index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@B_L3L2_9], fifoOuts = [@B_L2L1_9], src_offsets = []}> : () -> ()
    "aie.objectfifo"(%20, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%30, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%40, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%50, %10) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_0_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%10, %0) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_0_0, @C_L1L2_0_1, @C_L1L2_0_2, @C_L1L2_0_3], fifoOuts = [@C_L2L3_0], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%21, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%31, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%41, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%51, %11) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_1_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%11, %1) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_1_0, @C_L1L2_1_1, @C_L1L2_1_2, @C_L1L2_1_3], fifoOuts = [@C_L2L3_1], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%22, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%32, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%42, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%52, %12) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_2_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%12, %2) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_2_0, @C_L1L2_2_1, @C_L1L2_2_2, @C_L1L2_2_3], fifoOuts = [@C_L2L3_2], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%23, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%33, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%43, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%53, %13) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%13, %3) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_3_0, @C_L1L2_3_1, @C_L1L2_3_2, @C_L1L2_3_3], fifoOuts = [@C_L2L3_3], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%24, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%34, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%44, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%54, %14) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_4_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%14, %4) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_4", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_4_0, @C_L1L2_4_1, @C_L1L2_4_2, @C_L1L2_4_3], fifoOuts = [@C_L2L3_4], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%25, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%35, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%45, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%55, %15) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_5_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%15, %5) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_5", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_5_0, @C_L1L2_5_1, @C_L1L2_5_2, @C_L1L2_5_3], fifoOuts = [@C_L2L3_5], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%26, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%36, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%46, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%56, %16) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_6_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%16, %6) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_6", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_6_0, @C_L1L2_6_1, @C_L1L2_6_2, @C_L1L2_6_3], fifoOuts = [@C_L2L3_6], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%27, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%37, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%47, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%57, %17) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_7_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%17, %7) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_7", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_7_0, @C_L1L2_7_1, @C_L1L2_7_2, @C_L1L2_7_3], fifoOuts = [@C_L2L3_7], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%28, %18) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%38, %18) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%48, %18) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%58, %18) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_8_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%18, %8) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_8", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_8_0, @C_L1L2_8_1, @C_L1L2_8_2, @C_L1L2_8_3], fifoOuts = [@C_L2L3_8], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    "aie.objectfifo"(%29, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_9_0", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%39, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_9_1", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%49, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_9_2", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%59, %19) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 1 : i32, elemType = !aie.objectfifo<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L1L2_9_3", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo"(%19, %9) <{dimensionsFromStreamPerConsumer = #aie<bd_dim_layout_array_array[[]]>, dimensionsToStream = #aie<bd_dim_layout_array[]>, disable_synchronization = false, elemNumber = 2 : i32, elemType = !aie.objectfifo<memref<768x12x!aiex.bfp<"v8bfp16ebs8">>>, plio = false, sym_name = "C_L2L3_9", via_DMA = false}> : (index, index) -> ()
    "aie.objectfifo.link"() <{dst_offsets = [], fifoIns = [@C_L1L2_9_0, @C_L1L2_9_1, @C_L1L2_9_2, @C_L1L2_9_3], fifoOuts = [@C_L2L3_9], src_offsets = [0, 2304, 4608, 6912]}> : () -> ()
    %60 = "aie.core"(%20) <{stack_size = 1024 : i32}> ({
      %3277 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3278 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %3279 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%3277, %3278, %3279) ({
      ^bb0(%arg198: index):
        %3280 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3281 = "aie.objectfifo.subview.access"(%3280) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3281) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3282 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3283 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3284 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3282, %3283, %3284) ({
        ^bb0(%arg202: index):
          %3342 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3343 = "aie.objectfifo.subview.access"(%3342) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3344 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3345 = "aie.objectfifo.subview.access"(%3344) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3345, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3346 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3347 = "aie.objectfifo.subview.access"(%3346) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3347, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3348 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3349 = "aie.objectfifo.subview.access"(%3348) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3349, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3350 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3351 = "aie.objectfifo.subview.access"(%3350) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3351, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3352 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3353 = "aie.objectfifo.subview.access"(%3352) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3353, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3354 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3355 = "aie.objectfifo.subview.access"(%3354) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3355, %3343, %3281) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3285 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3286 = "aie.objectfifo.subview.access"(%3285) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3286) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3287 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3288 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3289 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3287, %3288, %3289) ({
        ^bb0(%arg201: index):
          %3328 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3329 = "aie.objectfifo.subview.access"(%3328) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3330 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3331 = "aie.objectfifo.subview.access"(%3330) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3331, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3332 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3333 = "aie.objectfifo.subview.access"(%3332) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3333, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3334 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3335 = "aie.objectfifo.subview.access"(%3334) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3335, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3336 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3337 = "aie.objectfifo.subview.access"(%3336) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3337, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3338 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3339 = "aie.objectfifo.subview.access"(%3338) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3339, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3340 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3341 = "aie.objectfifo.subview.access"(%3340) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3341, %3329, %3286) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3290 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3291 = "aie.objectfifo.subview.access"(%3290) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3291) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3292 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3293 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3294 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3292, %3293, %3294) ({
        ^bb0(%arg200: index):
          %3314 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3315 = "aie.objectfifo.subview.access"(%3314) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3316 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3317 = "aie.objectfifo.subview.access"(%3316) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3317, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3318 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3319 = "aie.objectfifo.subview.access"(%3318) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3319, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3320 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3321 = "aie.objectfifo.subview.access"(%3320) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3321, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3322 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3323 = "aie.objectfifo.subview.access"(%3322) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3323, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3324 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3325 = "aie.objectfifo.subview.access"(%3324) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3325, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3326 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3327 = "aie.objectfifo.subview.access"(%3326) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3327, %3315, %3291) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3295 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3296 = "aie.objectfifo.subview.access"(%3295) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3296) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3297 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3298 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3299 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3297, %3298, %3299) ({
        ^bb0(%arg199: index):
          %3300 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3301 = "aie.objectfifo.subview.access"(%3300) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3302 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3303 = "aie.objectfifo.subview.access"(%3302) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3303, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3304 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3305 = "aie.objectfifo.subview.access"(%3304) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3305, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3306 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3307 = "aie.objectfifo.subview.access"(%3306) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3307, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3308 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3309 = "aie.objectfifo.subview.access"(%3308) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3309, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3310 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3311 = "aie.objectfifo.subview.access"(%3310) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3311, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3312 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3313 = "aie.objectfifo.subview.access"(%3312) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3313, %3301, %3296) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %61 = "aie.core"(%21) <{stack_size = 1024 : i32}> ({
      %3198 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3199 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %3200 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%3198, %3199, %3200) ({
      ^bb0(%arg193: index):
        %3201 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3202 = "aie.objectfifo.subview.access"(%3201) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3202) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3203 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3204 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3205 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3203, %3204, %3205) ({
        ^bb0(%arg197: index):
          %3263 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3264 = "aie.objectfifo.subview.access"(%3263) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3265 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3266 = "aie.objectfifo.subview.access"(%3265) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3266, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3267 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3268 = "aie.objectfifo.subview.access"(%3267) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3268, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3269 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3270 = "aie.objectfifo.subview.access"(%3269) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3270, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3271 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3272 = "aie.objectfifo.subview.access"(%3271) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3272, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3273 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3274 = "aie.objectfifo.subview.access"(%3273) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3274, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3275 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3276 = "aie.objectfifo.subview.access"(%3275) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3276, %3264, %3202) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3206 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3207 = "aie.objectfifo.subview.access"(%3206) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3207) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3208 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3209 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3210 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3208, %3209, %3210) ({
        ^bb0(%arg196: index):
          %3249 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3250 = "aie.objectfifo.subview.access"(%3249) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3251 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3252 = "aie.objectfifo.subview.access"(%3251) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3252, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3253 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3254 = "aie.objectfifo.subview.access"(%3253) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3254, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3255 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3256 = "aie.objectfifo.subview.access"(%3255) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3256, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3257 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3258 = "aie.objectfifo.subview.access"(%3257) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3258, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3259 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3260 = "aie.objectfifo.subview.access"(%3259) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3260, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3261 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3262 = "aie.objectfifo.subview.access"(%3261) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3262, %3250, %3207) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3211 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3212 = "aie.objectfifo.subview.access"(%3211) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3212) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3213 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3214 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3215 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3213, %3214, %3215) ({
        ^bb0(%arg195: index):
          %3235 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3236 = "aie.objectfifo.subview.access"(%3235) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3237 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3238 = "aie.objectfifo.subview.access"(%3237) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3238, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3239 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3240 = "aie.objectfifo.subview.access"(%3239) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3240, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3241 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3242 = "aie.objectfifo.subview.access"(%3241) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3242, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3243 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3244 = "aie.objectfifo.subview.access"(%3243) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3244, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3245 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3246 = "aie.objectfifo.subview.access"(%3245) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3246, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3247 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3248 = "aie.objectfifo.subview.access"(%3247) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3248, %3236, %3212) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3216 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3217 = "aie.objectfifo.subview.access"(%3216) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3217) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3218 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3219 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3220 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3218, %3219, %3220) ({
        ^bb0(%arg194: index):
          %3221 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3222 = "aie.objectfifo.subview.access"(%3221) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3223 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3224 = "aie.objectfifo.subview.access"(%3223) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3224, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3225 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3226 = "aie.objectfifo.subview.access"(%3225) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3226, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3227 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3228 = "aie.objectfifo.subview.access"(%3227) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3228, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3229 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3230 = "aie.objectfifo.subview.access"(%3229) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3230, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3231 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3232 = "aie.objectfifo.subview.access"(%3231) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3232, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3233 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3234 = "aie.objectfifo.subview.access"(%3233) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3234, %3222, %3217) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %62 = "aie.core"(%22) <{stack_size = 1024 : i32}> ({
      %3119 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3120 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %3121 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%3119, %3120, %3121) ({
      ^bb0(%arg188: index):
        %3122 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3123 = "aie.objectfifo.subview.access"(%3122) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3123) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3124 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3125 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3126 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3124, %3125, %3126) ({
        ^bb0(%arg192: index):
          %3184 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3185 = "aie.objectfifo.subview.access"(%3184) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3186 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3187 = "aie.objectfifo.subview.access"(%3186) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3187, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3188 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3189 = "aie.objectfifo.subview.access"(%3188) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3189, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3190 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3191 = "aie.objectfifo.subview.access"(%3190) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3191, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3192 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3193 = "aie.objectfifo.subview.access"(%3192) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3193, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3194 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3195 = "aie.objectfifo.subview.access"(%3194) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3195, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3196 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3197 = "aie.objectfifo.subview.access"(%3196) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3197, %3185, %3123) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3127 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3128 = "aie.objectfifo.subview.access"(%3127) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3128) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3129 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3130 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3131 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3129, %3130, %3131) ({
        ^bb0(%arg191: index):
          %3170 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3171 = "aie.objectfifo.subview.access"(%3170) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3172 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3173 = "aie.objectfifo.subview.access"(%3172) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3173, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3174 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3175 = "aie.objectfifo.subview.access"(%3174) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3175, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3176 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3177 = "aie.objectfifo.subview.access"(%3176) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3177, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3178 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3179 = "aie.objectfifo.subview.access"(%3178) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3179, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3180 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3181 = "aie.objectfifo.subview.access"(%3180) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3181, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3182 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3183 = "aie.objectfifo.subview.access"(%3182) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3183, %3171, %3128) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3132 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3133 = "aie.objectfifo.subview.access"(%3132) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3133) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3134 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3135 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3136 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3134, %3135, %3136) ({
        ^bb0(%arg190: index):
          %3156 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3157 = "aie.objectfifo.subview.access"(%3156) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3158 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3159 = "aie.objectfifo.subview.access"(%3158) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3159, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3160 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3161 = "aie.objectfifo.subview.access"(%3160) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3161, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3162 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3163 = "aie.objectfifo.subview.access"(%3162) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3163, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3164 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3165 = "aie.objectfifo.subview.access"(%3164) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3165, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3166 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3167 = "aie.objectfifo.subview.access"(%3166) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3167, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3168 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3169 = "aie.objectfifo.subview.access"(%3168) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3169, %3157, %3133) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3137 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3138 = "aie.objectfifo.subview.access"(%3137) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3138) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3139 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3140 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3141 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3139, %3140, %3141) ({
        ^bb0(%arg189: index):
          %3142 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3143 = "aie.objectfifo.subview.access"(%3142) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3144 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3145 = "aie.objectfifo.subview.access"(%3144) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3145, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3146 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3147 = "aie.objectfifo.subview.access"(%3146) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3147, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3148 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3149 = "aie.objectfifo.subview.access"(%3148) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3149, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3150 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3151 = "aie.objectfifo.subview.access"(%3150) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3151, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3152 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3153 = "aie.objectfifo.subview.access"(%3152) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3153, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3154 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3155 = "aie.objectfifo.subview.access"(%3154) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3155, %3143, %3138) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %63 = "aie.core"(%23) <{stack_size = 1024 : i32}> ({
      %3040 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3041 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %3042 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%3040, %3041, %3042) ({
      ^bb0(%arg183: index):
        %3043 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3044 = "aie.objectfifo.subview.access"(%3043) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3044) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3045 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3046 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3047 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3045, %3046, %3047) ({
        ^bb0(%arg187: index):
          %3105 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3106 = "aie.objectfifo.subview.access"(%3105) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3107 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3108 = "aie.objectfifo.subview.access"(%3107) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3108, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3109 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3110 = "aie.objectfifo.subview.access"(%3109) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3110, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3111 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3112 = "aie.objectfifo.subview.access"(%3111) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3112, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3113 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3114 = "aie.objectfifo.subview.access"(%3113) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3114, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3115 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3116 = "aie.objectfifo.subview.access"(%3115) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3116, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3117 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3118 = "aie.objectfifo.subview.access"(%3117) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3118, %3106, %3044) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3048 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3049 = "aie.objectfifo.subview.access"(%3048) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3049) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3050 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3051 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3052 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3050, %3051, %3052) ({
        ^bb0(%arg186: index):
          %3091 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3092 = "aie.objectfifo.subview.access"(%3091) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3093 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3094 = "aie.objectfifo.subview.access"(%3093) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3094, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3095 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3096 = "aie.objectfifo.subview.access"(%3095) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3096, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3097 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3098 = "aie.objectfifo.subview.access"(%3097) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3098, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3099 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3100 = "aie.objectfifo.subview.access"(%3099) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3100, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3101 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3102 = "aie.objectfifo.subview.access"(%3101) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3102, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3103 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3104 = "aie.objectfifo.subview.access"(%3103) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3104, %3092, %3049) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3053 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3054 = "aie.objectfifo.subview.access"(%3053) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3054) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3055 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3056 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3057 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3055, %3056, %3057) ({
        ^bb0(%arg185: index):
          %3077 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3078 = "aie.objectfifo.subview.access"(%3077) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3079 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3080 = "aie.objectfifo.subview.access"(%3079) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3080, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3081 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3082 = "aie.objectfifo.subview.access"(%3081) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3082, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3083 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3084 = "aie.objectfifo.subview.access"(%3083) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3084, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3085 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3086 = "aie.objectfifo.subview.access"(%3085) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3086, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3087 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3088 = "aie.objectfifo.subview.access"(%3087) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3088, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3089 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3090 = "aie.objectfifo.subview.access"(%3089) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3090, %3078, %3054) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %3058 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %3059 = "aie.objectfifo.subview.access"(%3058) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%3059) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %3060 = "arith.constant"() <{value = 0 : index}> : () -> index
        %3061 = "arith.constant"() <{value = 32 : index}> : () -> index
        %3062 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%3060, %3061, %3062) ({
        ^bb0(%arg184: index):
          %3063 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3064 = "aie.objectfifo.subview.access"(%3063) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3065 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3066 = "aie.objectfifo.subview.access"(%3065) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3066, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3067 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3068 = "aie.objectfifo.subview.access"(%3067) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3068, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3069 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3070 = "aie.objectfifo.subview.access"(%3069) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3070, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3071 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3072 = "aie.objectfifo.subview.access"(%3071) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3072, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3073 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3074 = "aie.objectfifo.subview.access"(%3073) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3074, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3075 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3076 = "aie.objectfifo.subview.access"(%3075) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3076, %3064, %3059) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %64 = "aie.core"(%24) <{stack_size = 1024 : i32}> ({
      %2961 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2962 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2963 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2961, %2962, %2963) ({
      ^bb0(%arg178: index):
        %2964 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2965 = "aie.objectfifo.subview.access"(%2964) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2965) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2966 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2967 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2968 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2966, %2967, %2968) ({
        ^bb0(%arg182: index):
          %3026 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3027 = "aie.objectfifo.subview.access"(%3026) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3028 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3029 = "aie.objectfifo.subview.access"(%3028) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3029, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3030 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3031 = "aie.objectfifo.subview.access"(%3030) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3031, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3032 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3033 = "aie.objectfifo.subview.access"(%3032) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3033, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3034 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3035 = "aie.objectfifo.subview.access"(%3034) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3035, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3036 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3037 = "aie.objectfifo.subview.access"(%3036) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3037, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3038 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3039 = "aie.objectfifo.subview.access"(%3038) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3039, %3027, %2965) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2969 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2970 = "aie.objectfifo.subview.access"(%2969) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2970) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2971 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2972 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2973 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2971, %2972, %2973) ({
        ^bb0(%arg181: index):
          %3012 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %3013 = "aie.objectfifo.subview.access"(%3012) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3014 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3015 = "aie.objectfifo.subview.access"(%3014) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3015, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3016 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3017 = "aie.objectfifo.subview.access"(%3016) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3017, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3018 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3019 = "aie.objectfifo.subview.access"(%3018) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3019, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3020 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3021 = "aie.objectfifo.subview.access"(%3020) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3021, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3022 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3023 = "aie.objectfifo.subview.access"(%3022) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3023, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3024 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3025 = "aie.objectfifo.subview.access"(%3024) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3025, %3013, %2970) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2974 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2975 = "aie.objectfifo.subview.access"(%2974) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2975) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2976 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2977 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2978 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2976, %2977, %2978) ({
        ^bb0(%arg180: index):
          %2998 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2999 = "aie.objectfifo.subview.access"(%2998) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %3000 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3001 = "aie.objectfifo.subview.access"(%3000) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3001, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3002 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3003 = "aie.objectfifo.subview.access"(%3002) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3003, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3004 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3005 = "aie.objectfifo.subview.access"(%3004) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3005, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3006 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3007 = "aie.objectfifo.subview.access"(%3006) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3007, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3008 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3009 = "aie.objectfifo.subview.access"(%3008) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3009, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %3010 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %3011 = "aie.objectfifo.subview.access"(%3010) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%3011, %2999, %2975) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2979 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2980 = "aie.objectfifo.subview.access"(%2979) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2980) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2981 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2982 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2983 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2981, %2982, %2983) ({
        ^bb0(%arg179: index):
          %2984 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2985 = "aie.objectfifo.subview.access"(%2984) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2986 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2987 = "aie.objectfifo.subview.access"(%2986) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2987, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2988 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2989 = "aie.objectfifo.subview.access"(%2988) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2989, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2990 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2991 = "aie.objectfifo.subview.access"(%2990) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2991, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2992 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2993 = "aie.objectfifo.subview.access"(%2992) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2993, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2994 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2995 = "aie.objectfifo.subview.access"(%2994) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2995, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2996 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2997 = "aie.objectfifo.subview.access"(%2996) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2997, %2985, %2980) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %65 = "aie.core"(%25) <{stack_size = 1024 : i32}> ({
      %2882 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2883 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2884 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2882, %2883, %2884) ({
      ^bb0(%arg173: index):
        %2885 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2886 = "aie.objectfifo.subview.access"(%2885) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2886) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2887 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2888 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2889 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2887, %2888, %2889) ({
        ^bb0(%arg177: index):
          %2947 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2948 = "aie.objectfifo.subview.access"(%2947) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2949 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2950 = "aie.objectfifo.subview.access"(%2949) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2950, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2951 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2952 = "aie.objectfifo.subview.access"(%2951) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2952, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2953 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2954 = "aie.objectfifo.subview.access"(%2953) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2954, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2955 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2956 = "aie.objectfifo.subview.access"(%2955) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2956, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2957 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2958 = "aie.objectfifo.subview.access"(%2957) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2958, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2959 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2960 = "aie.objectfifo.subview.access"(%2959) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2960, %2948, %2886) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2890 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2891 = "aie.objectfifo.subview.access"(%2890) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2891) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2892 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2893 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2894 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2892, %2893, %2894) ({
        ^bb0(%arg176: index):
          %2933 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2934 = "aie.objectfifo.subview.access"(%2933) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2935 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2936 = "aie.objectfifo.subview.access"(%2935) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2936, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2937 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2938 = "aie.objectfifo.subview.access"(%2937) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2938, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2939 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2940 = "aie.objectfifo.subview.access"(%2939) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2940, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2941 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2942 = "aie.objectfifo.subview.access"(%2941) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2942, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2943 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2944 = "aie.objectfifo.subview.access"(%2943) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2944, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2945 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2946 = "aie.objectfifo.subview.access"(%2945) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2946, %2934, %2891) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2895 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2896 = "aie.objectfifo.subview.access"(%2895) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2896) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2897 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2898 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2899 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2897, %2898, %2899) ({
        ^bb0(%arg175: index):
          %2919 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2920 = "aie.objectfifo.subview.access"(%2919) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2921 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2922 = "aie.objectfifo.subview.access"(%2921) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2922, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2923 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2924 = "aie.objectfifo.subview.access"(%2923) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2924, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2925 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2926 = "aie.objectfifo.subview.access"(%2925) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2926, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2927 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2928 = "aie.objectfifo.subview.access"(%2927) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2928, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2929 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2930 = "aie.objectfifo.subview.access"(%2929) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2930, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2931 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2932 = "aie.objectfifo.subview.access"(%2931) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2932, %2920, %2896) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2900 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2901 = "aie.objectfifo.subview.access"(%2900) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2901) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2902 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2903 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2904 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2902, %2903, %2904) ({
        ^bb0(%arg174: index):
          %2905 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2906 = "aie.objectfifo.subview.access"(%2905) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2907 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2908 = "aie.objectfifo.subview.access"(%2907) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2908, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2909 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2910 = "aie.objectfifo.subview.access"(%2909) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2910, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2911 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2912 = "aie.objectfifo.subview.access"(%2911) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2912, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2913 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2914 = "aie.objectfifo.subview.access"(%2913) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2914, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2915 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2916 = "aie.objectfifo.subview.access"(%2915) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2916, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2917 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2918 = "aie.objectfifo.subview.access"(%2917) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2918, %2906, %2901) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %66 = "aie.core"(%26) <{stack_size = 1024 : i32}> ({
      %2803 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2804 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2805 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2803, %2804, %2805) ({
      ^bb0(%arg168: index):
        %2806 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2807 = "aie.objectfifo.subview.access"(%2806) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2807) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2808 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2809 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2810 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2808, %2809, %2810) ({
        ^bb0(%arg172: index):
          %2868 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2869 = "aie.objectfifo.subview.access"(%2868) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2870 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2871 = "aie.objectfifo.subview.access"(%2870) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2871, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2872 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2873 = "aie.objectfifo.subview.access"(%2872) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2873, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2874 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2875 = "aie.objectfifo.subview.access"(%2874) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2875, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2876 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2877 = "aie.objectfifo.subview.access"(%2876) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2877, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2878 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2879 = "aie.objectfifo.subview.access"(%2878) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2879, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2880 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2881 = "aie.objectfifo.subview.access"(%2880) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2881, %2869, %2807) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2811 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2812 = "aie.objectfifo.subview.access"(%2811) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2812) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2813 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2814 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2815 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2813, %2814, %2815) ({
        ^bb0(%arg171: index):
          %2854 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2855 = "aie.objectfifo.subview.access"(%2854) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2856 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2857 = "aie.objectfifo.subview.access"(%2856) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2857, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2858 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2859 = "aie.objectfifo.subview.access"(%2858) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2859, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2860 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2861 = "aie.objectfifo.subview.access"(%2860) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2861, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2862 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2863 = "aie.objectfifo.subview.access"(%2862) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2863, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2864 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2865 = "aie.objectfifo.subview.access"(%2864) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2865, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2866 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2867 = "aie.objectfifo.subview.access"(%2866) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2867, %2855, %2812) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2816 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2817 = "aie.objectfifo.subview.access"(%2816) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2817) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2818 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2819 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2820 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2818, %2819, %2820) ({
        ^bb0(%arg170: index):
          %2840 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2841 = "aie.objectfifo.subview.access"(%2840) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2842 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2843 = "aie.objectfifo.subview.access"(%2842) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2843, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2844 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2845 = "aie.objectfifo.subview.access"(%2844) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2845, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2846 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2847 = "aie.objectfifo.subview.access"(%2846) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2847, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2848 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2849 = "aie.objectfifo.subview.access"(%2848) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2849, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2850 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2851 = "aie.objectfifo.subview.access"(%2850) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2851, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2852 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2853 = "aie.objectfifo.subview.access"(%2852) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2853, %2841, %2817) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2821 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2822 = "aie.objectfifo.subview.access"(%2821) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2822) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2823 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2824 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2825 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2823, %2824, %2825) ({
        ^bb0(%arg169: index):
          %2826 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2827 = "aie.objectfifo.subview.access"(%2826) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2828 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2829 = "aie.objectfifo.subview.access"(%2828) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2829, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2830 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2831 = "aie.objectfifo.subview.access"(%2830) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2831, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2832 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2833 = "aie.objectfifo.subview.access"(%2832) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2833, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2834 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2835 = "aie.objectfifo.subview.access"(%2834) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2835, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2836 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2837 = "aie.objectfifo.subview.access"(%2836) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2837, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2838 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2839 = "aie.objectfifo.subview.access"(%2838) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2839, %2827, %2822) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %67 = "aie.core"(%27) <{stack_size = 1024 : i32}> ({
      %2724 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2725 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2726 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2724, %2725, %2726) ({
      ^bb0(%arg163: index):
        %2727 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2728 = "aie.objectfifo.subview.access"(%2727) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2728) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2729 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2730 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2731 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2729, %2730, %2731) ({
        ^bb0(%arg167: index):
          %2789 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2790 = "aie.objectfifo.subview.access"(%2789) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2791 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2792 = "aie.objectfifo.subview.access"(%2791) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2792, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2793 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2794 = "aie.objectfifo.subview.access"(%2793) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2794, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2795 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2796 = "aie.objectfifo.subview.access"(%2795) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2796, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2797 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2798 = "aie.objectfifo.subview.access"(%2797) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2798, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2799 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2800 = "aie.objectfifo.subview.access"(%2799) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2800, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2801 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2802 = "aie.objectfifo.subview.access"(%2801) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2802, %2790, %2728) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2732 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2733 = "aie.objectfifo.subview.access"(%2732) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2733) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2734 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2735 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2736 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2734, %2735, %2736) ({
        ^bb0(%arg166: index):
          %2775 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2776 = "aie.objectfifo.subview.access"(%2775) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2777 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2778 = "aie.objectfifo.subview.access"(%2777) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2778, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2779 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2780 = "aie.objectfifo.subview.access"(%2779) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2780, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2781 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2782 = "aie.objectfifo.subview.access"(%2781) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2782, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2783 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2784 = "aie.objectfifo.subview.access"(%2783) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2784, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2785 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2786 = "aie.objectfifo.subview.access"(%2785) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2786, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2787 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2788 = "aie.objectfifo.subview.access"(%2787) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2788, %2776, %2733) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2737 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2738 = "aie.objectfifo.subview.access"(%2737) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2738) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2739 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2740 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2741 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2739, %2740, %2741) ({
        ^bb0(%arg165: index):
          %2761 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2762 = "aie.objectfifo.subview.access"(%2761) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2763 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2764 = "aie.objectfifo.subview.access"(%2763) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2764, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2765 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2766 = "aie.objectfifo.subview.access"(%2765) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2766, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2767 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2768 = "aie.objectfifo.subview.access"(%2767) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2768, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2769 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2770 = "aie.objectfifo.subview.access"(%2769) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2770, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2771 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2772 = "aie.objectfifo.subview.access"(%2771) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2772, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2773 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2774 = "aie.objectfifo.subview.access"(%2773) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2774, %2762, %2738) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2742 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2743 = "aie.objectfifo.subview.access"(%2742) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2743) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2744 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2745 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2746 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2744, %2745, %2746) ({
        ^bb0(%arg164: index):
          %2747 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2748 = "aie.objectfifo.subview.access"(%2747) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2749 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2750 = "aie.objectfifo.subview.access"(%2749) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2750, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2751 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2752 = "aie.objectfifo.subview.access"(%2751) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2752, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2753 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2754 = "aie.objectfifo.subview.access"(%2753) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2754, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2755 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2756 = "aie.objectfifo.subview.access"(%2755) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2756, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2757 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2758 = "aie.objectfifo.subview.access"(%2757) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2758, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2759 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2760 = "aie.objectfifo.subview.access"(%2759) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2760, %2748, %2743) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %68 = "aie.core"(%28) <{stack_size = 1024 : i32}> ({
      %2645 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2646 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2647 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2645, %2646, %2647) ({
      ^bb0(%arg158: index):
        %2648 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2649 = "aie.objectfifo.subview.access"(%2648) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2649) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2650 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2651 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2652 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2650, %2651, %2652) ({
        ^bb0(%arg162: index):
          %2710 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2711 = "aie.objectfifo.subview.access"(%2710) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2712 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2713 = "aie.objectfifo.subview.access"(%2712) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2713, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2714 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2715 = "aie.objectfifo.subview.access"(%2714) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2715, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2716 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2717 = "aie.objectfifo.subview.access"(%2716) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2717, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2718 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2719 = "aie.objectfifo.subview.access"(%2718) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2719, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2720 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2721 = "aie.objectfifo.subview.access"(%2720) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2721, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2722 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2723 = "aie.objectfifo.subview.access"(%2722) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2723, %2711, %2649) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2653 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2654 = "aie.objectfifo.subview.access"(%2653) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2654) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2655 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2656 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2657 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2655, %2656, %2657) ({
        ^bb0(%arg161: index):
          %2696 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2697 = "aie.objectfifo.subview.access"(%2696) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2698 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2699 = "aie.objectfifo.subview.access"(%2698) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2699, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2700 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2701 = "aie.objectfifo.subview.access"(%2700) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2701, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2702 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2703 = "aie.objectfifo.subview.access"(%2702) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2703, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2704 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2705 = "aie.objectfifo.subview.access"(%2704) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2705, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2706 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2707 = "aie.objectfifo.subview.access"(%2706) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2707, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2708 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2709 = "aie.objectfifo.subview.access"(%2708) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2709, %2697, %2654) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2658 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2659 = "aie.objectfifo.subview.access"(%2658) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2659) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2660 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2661 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2662 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2660, %2661, %2662) ({
        ^bb0(%arg160: index):
          %2682 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2683 = "aie.objectfifo.subview.access"(%2682) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2684 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2685 = "aie.objectfifo.subview.access"(%2684) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2685, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2686 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2687 = "aie.objectfifo.subview.access"(%2686) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2687, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2688 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2689 = "aie.objectfifo.subview.access"(%2688) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2689, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2690 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2691 = "aie.objectfifo.subview.access"(%2690) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2691, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2692 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2693 = "aie.objectfifo.subview.access"(%2692) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2693, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2694 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2695 = "aie.objectfifo.subview.access"(%2694) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2695, %2683, %2659) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2663 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2664 = "aie.objectfifo.subview.access"(%2663) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2664) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2665 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2666 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2667 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2665, %2666, %2667) ({
        ^bb0(%arg159: index):
          %2668 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2669 = "aie.objectfifo.subview.access"(%2668) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2670 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2671 = "aie.objectfifo.subview.access"(%2670) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2671, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2672 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2673 = "aie.objectfifo.subview.access"(%2672) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2673, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2674 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2675 = "aie.objectfifo.subview.access"(%2674) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2675, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2676 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2677 = "aie.objectfifo.subview.access"(%2676) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2677, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2678 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2679 = "aie.objectfifo.subview.access"(%2678) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2679, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2680 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2681 = "aie.objectfifo.subview.access"(%2680) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2681, %2669, %2664) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %69 = "aie.core"(%29) <{stack_size = 1024 : i32}> ({
      %2566 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2567 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2568 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2566, %2567, %2568) ({
      ^bb0(%arg153: index):
        %2569 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2570 = "aie.objectfifo.subview.access"(%2569) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2570) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2571 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2572 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2573 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2571, %2572, %2573) ({
        ^bb0(%arg157: index):
          %2631 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2632 = "aie.objectfifo.subview.access"(%2631) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2633 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2634 = "aie.objectfifo.subview.access"(%2633) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2634, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2635 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2636 = "aie.objectfifo.subview.access"(%2635) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2636, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2637 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2638 = "aie.objectfifo.subview.access"(%2637) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2638, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2639 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2640 = "aie.objectfifo.subview.access"(%2639) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2640, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2641 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2642 = "aie.objectfifo.subview.access"(%2641) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2642, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2643 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2644 = "aie.objectfifo.subview.access"(%2643) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2644, %2632, %2570) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2574 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2575 = "aie.objectfifo.subview.access"(%2574) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2575) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2576 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2577 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2578 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2576, %2577, %2578) ({
        ^bb0(%arg156: index):
          %2617 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2618 = "aie.objectfifo.subview.access"(%2617) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2619 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2620 = "aie.objectfifo.subview.access"(%2619) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2620, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2621 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2622 = "aie.objectfifo.subview.access"(%2621) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2622, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2623 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2624 = "aie.objectfifo.subview.access"(%2623) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2624, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2625 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2626 = "aie.objectfifo.subview.access"(%2625) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2626, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2627 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2628 = "aie.objectfifo.subview.access"(%2627) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2628, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2629 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2630 = "aie.objectfifo.subview.access"(%2629) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2630, %2618, %2575) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2579 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2580 = "aie.objectfifo.subview.access"(%2579) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2580) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2581 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2582 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2583 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2581, %2582, %2583) ({
        ^bb0(%arg155: index):
          %2603 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2604 = "aie.objectfifo.subview.access"(%2603) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2605 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2606 = "aie.objectfifo.subview.access"(%2605) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2606, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2607 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2608 = "aie.objectfifo.subview.access"(%2607) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2608, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2609 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2610 = "aie.objectfifo.subview.access"(%2609) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2610, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2611 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2612 = "aie.objectfifo.subview.access"(%2611) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2612, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2613 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2614 = "aie.objectfifo.subview.access"(%2613) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2614, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2615 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2616 = "aie.objectfifo.subview.access"(%2615) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2616, %2604, %2580) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2584 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2585 = "aie.objectfifo.subview.access"(%2584) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2585) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2586 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2587 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2588 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2586, %2587, %2588) ({
        ^bb0(%arg154: index):
          %2589 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2590 = "aie.objectfifo.subview.access"(%2589) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2591 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2592 = "aie.objectfifo.subview.access"(%2591) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2592, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2593 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2594 = "aie.objectfifo.subview.access"(%2593) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2594, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2595 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2596 = "aie.objectfifo.subview.access"(%2595) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2596, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2597 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2598 = "aie.objectfifo.subview.access"(%2597) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2598, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2599 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2600 = "aie.objectfifo.subview.access"(%2599) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2600, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2601 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2602 = "aie.objectfifo.subview.access"(%2601) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2602, %2590, %2585) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_0, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %70 = "aie.core"(%30) <{stack_size = 1024 : i32}> ({
      %2487 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2488 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2489 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2487, %2488, %2489) ({
      ^bb0(%arg148: index):
        %2490 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2491 = "aie.objectfifo.subview.access"(%2490) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2491) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2492 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2493 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2494 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2492, %2493, %2494) ({
        ^bb0(%arg152: index):
          %2552 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2553 = "aie.objectfifo.subview.access"(%2552) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2554 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2555 = "aie.objectfifo.subview.access"(%2554) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2555, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2556 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2557 = "aie.objectfifo.subview.access"(%2556) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2557, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2558 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2559 = "aie.objectfifo.subview.access"(%2558) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2559, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2560 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2561 = "aie.objectfifo.subview.access"(%2560) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2561, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2562 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2563 = "aie.objectfifo.subview.access"(%2562) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2563, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2564 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2565 = "aie.objectfifo.subview.access"(%2564) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2565, %2553, %2491) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2495 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2496 = "aie.objectfifo.subview.access"(%2495) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2496) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2497 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2498 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2499 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2497, %2498, %2499) ({
        ^bb0(%arg151: index):
          %2538 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2539 = "aie.objectfifo.subview.access"(%2538) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2540 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2541 = "aie.objectfifo.subview.access"(%2540) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2541, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2542 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2543 = "aie.objectfifo.subview.access"(%2542) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2543, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2544 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2545 = "aie.objectfifo.subview.access"(%2544) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2545, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2546 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2547 = "aie.objectfifo.subview.access"(%2546) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2547, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2548 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2549 = "aie.objectfifo.subview.access"(%2548) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2549, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2550 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2551 = "aie.objectfifo.subview.access"(%2550) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2551, %2539, %2496) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2500 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2501 = "aie.objectfifo.subview.access"(%2500) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2501) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2502 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2503 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2504 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2502, %2503, %2504) ({
        ^bb0(%arg150: index):
          %2524 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2525 = "aie.objectfifo.subview.access"(%2524) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2526 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2527 = "aie.objectfifo.subview.access"(%2526) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2527, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2528 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2529 = "aie.objectfifo.subview.access"(%2528) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2529, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2530 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2531 = "aie.objectfifo.subview.access"(%2530) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2531, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2532 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2533 = "aie.objectfifo.subview.access"(%2532) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2533, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2534 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2535 = "aie.objectfifo.subview.access"(%2534) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2535, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2536 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2537 = "aie.objectfifo.subview.access"(%2536) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2537, %2525, %2501) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2505 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2506 = "aie.objectfifo.subview.access"(%2505) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2506) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2507 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2508 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2509 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2507, %2508, %2509) ({
        ^bb0(%arg149: index):
          %2510 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2511 = "aie.objectfifo.subview.access"(%2510) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2512 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2513 = "aie.objectfifo.subview.access"(%2512) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2513, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2514 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2515 = "aie.objectfifo.subview.access"(%2514) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2515, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2516 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2517 = "aie.objectfifo.subview.access"(%2516) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2517, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2518 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2519 = "aie.objectfifo.subview.access"(%2518) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2519, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2520 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2521 = "aie.objectfifo.subview.access"(%2520) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2521, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2522 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2523 = "aie.objectfifo.subview.access"(%2522) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2523, %2511, %2506) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %71 = "aie.core"(%31) <{stack_size = 1024 : i32}> ({
      %2408 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2409 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2410 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2408, %2409, %2410) ({
      ^bb0(%arg143: index):
        %2411 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2412 = "aie.objectfifo.subview.access"(%2411) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2412) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2413 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2414 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2415 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2413, %2414, %2415) ({
        ^bb0(%arg147: index):
          %2473 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2474 = "aie.objectfifo.subview.access"(%2473) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2475 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2476 = "aie.objectfifo.subview.access"(%2475) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2476, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2477 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2478 = "aie.objectfifo.subview.access"(%2477) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2478, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2479 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2480 = "aie.objectfifo.subview.access"(%2479) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2480, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2481 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2482 = "aie.objectfifo.subview.access"(%2481) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2482, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2483 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2484 = "aie.objectfifo.subview.access"(%2483) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2484, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2485 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2486 = "aie.objectfifo.subview.access"(%2485) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2486, %2474, %2412) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2416 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2417 = "aie.objectfifo.subview.access"(%2416) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2417) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2418 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2419 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2420 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2418, %2419, %2420) ({
        ^bb0(%arg146: index):
          %2459 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2460 = "aie.objectfifo.subview.access"(%2459) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2461 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2462 = "aie.objectfifo.subview.access"(%2461) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2462, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2463 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2464 = "aie.objectfifo.subview.access"(%2463) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2464, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2465 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2466 = "aie.objectfifo.subview.access"(%2465) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2466, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2467 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2468 = "aie.objectfifo.subview.access"(%2467) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2468, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2469 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2470 = "aie.objectfifo.subview.access"(%2469) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2470, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2471 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2472 = "aie.objectfifo.subview.access"(%2471) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2472, %2460, %2417) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2421 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2422 = "aie.objectfifo.subview.access"(%2421) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2422) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2423 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2424 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2425 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2423, %2424, %2425) ({
        ^bb0(%arg145: index):
          %2445 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2446 = "aie.objectfifo.subview.access"(%2445) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2447 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2448 = "aie.objectfifo.subview.access"(%2447) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2448, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2449 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2450 = "aie.objectfifo.subview.access"(%2449) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2450, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2451 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2452 = "aie.objectfifo.subview.access"(%2451) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2452, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2453 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2454 = "aie.objectfifo.subview.access"(%2453) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2454, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2455 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2456 = "aie.objectfifo.subview.access"(%2455) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2456, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2457 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2458 = "aie.objectfifo.subview.access"(%2457) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2458, %2446, %2422) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2426 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2427 = "aie.objectfifo.subview.access"(%2426) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2427) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2428 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2429 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2430 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2428, %2429, %2430) ({
        ^bb0(%arg144: index):
          %2431 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2432 = "aie.objectfifo.subview.access"(%2431) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2433 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2434 = "aie.objectfifo.subview.access"(%2433) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2434, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2435 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2436 = "aie.objectfifo.subview.access"(%2435) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2436, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2437 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2438 = "aie.objectfifo.subview.access"(%2437) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2438, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2439 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2440 = "aie.objectfifo.subview.access"(%2439) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2440, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2441 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2442 = "aie.objectfifo.subview.access"(%2441) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2442, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2443 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2444 = "aie.objectfifo.subview.access"(%2443) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2444, %2432, %2427) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %72 = "aie.core"(%32) <{stack_size = 1024 : i32}> ({
      %2329 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2330 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2331 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2329, %2330, %2331) ({
      ^bb0(%arg138: index):
        %2332 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2333 = "aie.objectfifo.subview.access"(%2332) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2333) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2334 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2335 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2336 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2334, %2335, %2336) ({
        ^bb0(%arg142: index):
          %2394 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2395 = "aie.objectfifo.subview.access"(%2394) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2396 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2397 = "aie.objectfifo.subview.access"(%2396) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2397, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2398 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2399 = "aie.objectfifo.subview.access"(%2398) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2399, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2400 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2401 = "aie.objectfifo.subview.access"(%2400) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2401, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2402 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2403 = "aie.objectfifo.subview.access"(%2402) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2403, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2404 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2405 = "aie.objectfifo.subview.access"(%2404) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2405, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2406 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2407 = "aie.objectfifo.subview.access"(%2406) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2407, %2395, %2333) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2337 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2338 = "aie.objectfifo.subview.access"(%2337) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2338) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2339 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2340 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2341 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2339, %2340, %2341) ({
        ^bb0(%arg141: index):
          %2380 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2381 = "aie.objectfifo.subview.access"(%2380) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2382 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2383 = "aie.objectfifo.subview.access"(%2382) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2383, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2384 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2385 = "aie.objectfifo.subview.access"(%2384) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2385, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2386 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2387 = "aie.objectfifo.subview.access"(%2386) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2387, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2388 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2389 = "aie.objectfifo.subview.access"(%2388) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2389, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2390 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2391 = "aie.objectfifo.subview.access"(%2390) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2391, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2392 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2393 = "aie.objectfifo.subview.access"(%2392) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2393, %2381, %2338) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2342 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2343 = "aie.objectfifo.subview.access"(%2342) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2343) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2344 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2345 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2346 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2344, %2345, %2346) ({
        ^bb0(%arg140: index):
          %2366 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2367 = "aie.objectfifo.subview.access"(%2366) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2368 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2369 = "aie.objectfifo.subview.access"(%2368) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2369, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2370 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2371 = "aie.objectfifo.subview.access"(%2370) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2371, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2372 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2373 = "aie.objectfifo.subview.access"(%2372) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2373, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2374 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2375 = "aie.objectfifo.subview.access"(%2374) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2375, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2376 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2377 = "aie.objectfifo.subview.access"(%2376) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2377, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2378 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2379 = "aie.objectfifo.subview.access"(%2378) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2379, %2367, %2343) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2347 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2348 = "aie.objectfifo.subview.access"(%2347) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2348) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2349 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2350 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2351 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2349, %2350, %2351) ({
        ^bb0(%arg139: index):
          %2352 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2353 = "aie.objectfifo.subview.access"(%2352) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2354 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2355 = "aie.objectfifo.subview.access"(%2354) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2355, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2356 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2357 = "aie.objectfifo.subview.access"(%2356) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2357, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2358 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2359 = "aie.objectfifo.subview.access"(%2358) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2359, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2360 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2361 = "aie.objectfifo.subview.access"(%2360) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2361, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2362 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2363 = "aie.objectfifo.subview.access"(%2362) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2363, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2364 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2365 = "aie.objectfifo.subview.access"(%2364) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2365, %2353, %2348) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %73 = "aie.core"(%33) <{stack_size = 1024 : i32}> ({
      %2250 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2251 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2252 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2250, %2251, %2252) ({
      ^bb0(%arg133: index):
        %2253 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2254 = "aie.objectfifo.subview.access"(%2253) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2254) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2255 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2256 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2257 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2255, %2256, %2257) ({
        ^bb0(%arg137: index):
          %2315 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2316 = "aie.objectfifo.subview.access"(%2315) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2317 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2318 = "aie.objectfifo.subview.access"(%2317) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2318, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2319 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2320 = "aie.objectfifo.subview.access"(%2319) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2320, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2321 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2322 = "aie.objectfifo.subview.access"(%2321) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2322, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2323 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2324 = "aie.objectfifo.subview.access"(%2323) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2324, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2325 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2326 = "aie.objectfifo.subview.access"(%2325) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2326, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2327 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2328 = "aie.objectfifo.subview.access"(%2327) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2328, %2316, %2254) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2258 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2259 = "aie.objectfifo.subview.access"(%2258) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2259) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2260 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2261 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2262 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2260, %2261, %2262) ({
        ^bb0(%arg136: index):
          %2301 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2302 = "aie.objectfifo.subview.access"(%2301) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2303 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2304 = "aie.objectfifo.subview.access"(%2303) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2304, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2305 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2306 = "aie.objectfifo.subview.access"(%2305) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2306, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2307 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2308 = "aie.objectfifo.subview.access"(%2307) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2308, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2309 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2310 = "aie.objectfifo.subview.access"(%2309) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2310, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2311 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2312 = "aie.objectfifo.subview.access"(%2311) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2312, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2313 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2314 = "aie.objectfifo.subview.access"(%2313) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2314, %2302, %2259) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2263 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2264 = "aie.objectfifo.subview.access"(%2263) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2264) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2265 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2266 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2267 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2265, %2266, %2267) ({
        ^bb0(%arg135: index):
          %2287 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2288 = "aie.objectfifo.subview.access"(%2287) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2289 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2290 = "aie.objectfifo.subview.access"(%2289) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2290, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2291 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2292 = "aie.objectfifo.subview.access"(%2291) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2292, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2293 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2294 = "aie.objectfifo.subview.access"(%2293) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2294, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2295 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2296 = "aie.objectfifo.subview.access"(%2295) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2296, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2297 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2298 = "aie.objectfifo.subview.access"(%2297) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2298, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2299 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2300 = "aie.objectfifo.subview.access"(%2299) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2300, %2288, %2264) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2268 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2269 = "aie.objectfifo.subview.access"(%2268) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2269) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2270 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2271 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2272 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2270, %2271, %2272) ({
        ^bb0(%arg134: index):
          %2273 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2274 = "aie.objectfifo.subview.access"(%2273) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2275 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2276 = "aie.objectfifo.subview.access"(%2275) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2276, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2277 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2278 = "aie.objectfifo.subview.access"(%2277) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2278, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2279 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2280 = "aie.objectfifo.subview.access"(%2279) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2280, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2281 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2282 = "aie.objectfifo.subview.access"(%2281) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2282, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2283 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2284 = "aie.objectfifo.subview.access"(%2283) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2284, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2285 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2286 = "aie.objectfifo.subview.access"(%2285) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2286, %2274, %2269) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %74 = "aie.core"(%34) <{stack_size = 1024 : i32}> ({
      %2171 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2172 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2173 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2171, %2172, %2173) ({
      ^bb0(%arg128: index):
        %2174 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2175 = "aie.objectfifo.subview.access"(%2174) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2175) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2176 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2177 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2178 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2176, %2177, %2178) ({
        ^bb0(%arg132: index):
          %2236 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2237 = "aie.objectfifo.subview.access"(%2236) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2238 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2239 = "aie.objectfifo.subview.access"(%2238) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2239, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2240 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2241 = "aie.objectfifo.subview.access"(%2240) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2241, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2242 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2243 = "aie.objectfifo.subview.access"(%2242) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2243, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2244 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2245 = "aie.objectfifo.subview.access"(%2244) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2245, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2246 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2247 = "aie.objectfifo.subview.access"(%2246) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2247, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2248 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2249 = "aie.objectfifo.subview.access"(%2248) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2249, %2237, %2175) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2179 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2180 = "aie.objectfifo.subview.access"(%2179) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2180) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2181 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2182 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2183 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2181, %2182, %2183) ({
        ^bb0(%arg131: index):
          %2222 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2223 = "aie.objectfifo.subview.access"(%2222) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2224 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2225 = "aie.objectfifo.subview.access"(%2224) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2225, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2226 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2227 = "aie.objectfifo.subview.access"(%2226) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2227, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2228 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2229 = "aie.objectfifo.subview.access"(%2228) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2229, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2230 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2231 = "aie.objectfifo.subview.access"(%2230) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2231, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2232 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2233 = "aie.objectfifo.subview.access"(%2232) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2233, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2234 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2235 = "aie.objectfifo.subview.access"(%2234) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2235, %2223, %2180) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2184 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2185 = "aie.objectfifo.subview.access"(%2184) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2185) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2186 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2187 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2188 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2186, %2187, %2188) ({
        ^bb0(%arg130: index):
          %2208 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2209 = "aie.objectfifo.subview.access"(%2208) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2210 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2211 = "aie.objectfifo.subview.access"(%2210) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2211, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2212 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2213 = "aie.objectfifo.subview.access"(%2212) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2213, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2214 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2215 = "aie.objectfifo.subview.access"(%2214) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2215, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2216 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2217 = "aie.objectfifo.subview.access"(%2216) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2217, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2218 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2219 = "aie.objectfifo.subview.access"(%2218) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2219, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2220 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2221 = "aie.objectfifo.subview.access"(%2220) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2221, %2209, %2185) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2189 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2190 = "aie.objectfifo.subview.access"(%2189) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2190) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2191 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2192 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2193 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2191, %2192, %2193) ({
        ^bb0(%arg129: index):
          %2194 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2195 = "aie.objectfifo.subview.access"(%2194) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2196 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2197 = "aie.objectfifo.subview.access"(%2196) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2197, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2198 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2199 = "aie.objectfifo.subview.access"(%2198) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2199, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2200 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2201 = "aie.objectfifo.subview.access"(%2200) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2201, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2202 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2203 = "aie.objectfifo.subview.access"(%2202) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2203, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2204 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2205 = "aie.objectfifo.subview.access"(%2204) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2205, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2206 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2207 = "aie.objectfifo.subview.access"(%2206) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2207, %2195, %2190) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %75 = "aie.core"(%35) <{stack_size = 1024 : i32}> ({
      %2092 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2093 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2094 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2092, %2093, %2094) ({
      ^bb0(%arg123: index):
        %2095 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2096 = "aie.objectfifo.subview.access"(%2095) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2096) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2097 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2098 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2099 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2097, %2098, %2099) ({
        ^bb0(%arg127: index):
          %2157 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2158 = "aie.objectfifo.subview.access"(%2157) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2159 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2160 = "aie.objectfifo.subview.access"(%2159) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2160, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2161 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2162 = "aie.objectfifo.subview.access"(%2161) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2162, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2163 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2164 = "aie.objectfifo.subview.access"(%2163) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2164, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2165 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2166 = "aie.objectfifo.subview.access"(%2165) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2166, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2167 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2168 = "aie.objectfifo.subview.access"(%2167) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2168, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2169 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2170 = "aie.objectfifo.subview.access"(%2169) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2170, %2158, %2096) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2100 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2101 = "aie.objectfifo.subview.access"(%2100) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2101) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2102 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2103 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2104 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2102, %2103, %2104) ({
        ^bb0(%arg126: index):
          %2143 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2144 = "aie.objectfifo.subview.access"(%2143) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2145 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2146 = "aie.objectfifo.subview.access"(%2145) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2146, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2147 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2148 = "aie.objectfifo.subview.access"(%2147) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2148, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2149 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2150 = "aie.objectfifo.subview.access"(%2149) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2150, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2151 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2152 = "aie.objectfifo.subview.access"(%2151) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2152, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2153 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2154 = "aie.objectfifo.subview.access"(%2153) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2154, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2155 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2156 = "aie.objectfifo.subview.access"(%2155) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2156, %2144, %2101) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2105 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2106 = "aie.objectfifo.subview.access"(%2105) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2106) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2107 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2108 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2109 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2107, %2108, %2109) ({
        ^bb0(%arg125: index):
          %2129 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2130 = "aie.objectfifo.subview.access"(%2129) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2131 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2132 = "aie.objectfifo.subview.access"(%2131) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2132, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2133 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2134 = "aie.objectfifo.subview.access"(%2133) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2134, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2135 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2136 = "aie.objectfifo.subview.access"(%2135) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2136, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2137 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2138 = "aie.objectfifo.subview.access"(%2137) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2138, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2139 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2140 = "aie.objectfifo.subview.access"(%2139) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2140, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2141 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2142 = "aie.objectfifo.subview.access"(%2141) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2142, %2130, %2106) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2110 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2111 = "aie.objectfifo.subview.access"(%2110) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2111) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2112 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2113 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2114 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2112, %2113, %2114) ({
        ^bb0(%arg124: index):
          %2115 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2116 = "aie.objectfifo.subview.access"(%2115) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2117 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2118 = "aie.objectfifo.subview.access"(%2117) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2118, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2119 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2120 = "aie.objectfifo.subview.access"(%2119) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2120, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2121 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2122 = "aie.objectfifo.subview.access"(%2121) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2122, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2123 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2124 = "aie.objectfifo.subview.access"(%2123) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2124, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2125 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2126 = "aie.objectfifo.subview.access"(%2125) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2126, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2127 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2128 = "aie.objectfifo.subview.access"(%2127) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2128, %2116, %2111) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %76 = "aie.core"(%36) <{stack_size = 1024 : i32}> ({
      %2013 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2014 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %2015 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%2013, %2014, %2015) ({
      ^bb0(%arg118: index):
        %2016 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2017 = "aie.objectfifo.subview.access"(%2016) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2017) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2018 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2019 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2020 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2018, %2019, %2020) ({
        ^bb0(%arg122: index):
          %2078 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2079 = "aie.objectfifo.subview.access"(%2078) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2080 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2081 = "aie.objectfifo.subview.access"(%2080) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2081, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2082 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2083 = "aie.objectfifo.subview.access"(%2082) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2083, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2084 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2085 = "aie.objectfifo.subview.access"(%2084) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2085, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2086 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2087 = "aie.objectfifo.subview.access"(%2086) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2087, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2088 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2089 = "aie.objectfifo.subview.access"(%2088) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2089, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2090 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2091 = "aie.objectfifo.subview.access"(%2090) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2091, %2079, %2017) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2021 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2022 = "aie.objectfifo.subview.access"(%2021) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2022) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2023 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2024 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2025 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2023, %2024, %2025) ({
        ^bb0(%arg121: index):
          %2064 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2065 = "aie.objectfifo.subview.access"(%2064) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2066 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2067 = "aie.objectfifo.subview.access"(%2066) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2067, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2068 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2069 = "aie.objectfifo.subview.access"(%2068) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2069, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2070 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2071 = "aie.objectfifo.subview.access"(%2070) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2071, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2072 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2073 = "aie.objectfifo.subview.access"(%2072) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2073, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2074 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2075 = "aie.objectfifo.subview.access"(%2074) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2075, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2076 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2077 = "aie.objectfifo.subview.access"(%2076) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2077, %2065, %2022) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2026 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2027 = "aie.objectfifo.subview.access"(%2026) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2027) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2028 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2029 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2030 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2028, %2029, %2030) ({
        ^bb0(%arg120: index):
          %2050 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2051 = "aie.objectfifo.subview.access"(%2050) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2052 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2053 = "aie.objectfifo.subview.access"(%2052) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2053, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2054 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2055 = "aie.objectfifo.subview.access"(%2054) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2055, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2056 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2057 = "aie.objectfifo.subview.access"(%2056) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2057, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2058 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2059 = "aie.objectfifo.subview.access"(%2058) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2059, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2060 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2061 = "aie.objectfifo.subview.access"(%2060) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2061, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2062 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2063 = "aie.objectfifo.subview.access"(%2062) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2063, %2051, %2027) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %2031 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %2032 = "aie.objectfifo.subview.access"(%2031) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%2032) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %2033 = "arith.constant"() <{value = 0 : index}> : () -> index
        %2034 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2035 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%2033, %2034, %2035) ({
        ^bb0(%arg119: index):
          %2036 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2037 = "aie.objectfifo.subview.access"(%2036) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2038 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2039 = "aie.objectfifo.subview.access"(%2038) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2039, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2040 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2041 = "aie.objectfifo.subview.access"(%2040) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2041, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2042 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2043 = "aie.objectfifo.subview.access"(%2042) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2043, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2044 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2045 = "aie.objectfifo.subview.access"(%2044) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2045, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2046 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2047 = "aie.objectfifo.subview.access"(%2046) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2047, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2048 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2049 = "aie.objectfifo.subview.access"(%2048) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2049, %2037, %2032) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %77 = "aie.core"(%37) <{stack_size = 1024 : i32}> ({
      %1934 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1935 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1936 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1934, %1935, %1936) ({
      ^bb0(%arg113: index):
        %1937 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1938 = "aie.objectfifo.subview.access"(%1937) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1938) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1939 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1940 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1941 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1939, %1940, %1941) ({
        ^bb0(%arg117: index):
          %1999 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %2000 = "aie.objectfifo.subview.access"(%1999) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %2001 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2002 = "aie.objectfifo.subview.access"(%2001) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2002, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2003 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2004 = "aie.objectfifo.subview.access"(%2003) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2004, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2005 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2006 = "aie.objectfifo.subview.access"(%2005) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2006, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2007 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2008 = "aie.objectfifo.subview.access"(%2007) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2008, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2009 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2010 = "aie.objectfifo.subview.access"(%2009) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2010, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %2011 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %2012 = "aie.objectfifo.subview.access"(%2011) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%2012, %2000, %1938) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1942 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1943 = "aie.objectfifo.subview.access"(%1942) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1943) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1944 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1945 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1946 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1944, %1945, %1946) ({
        ^bb0(%arg116: index):
          %1985 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1986 = "aie.objectfifo.subview.access"(%1985) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1987 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1988 = "aie.objectfifo.subview.access"(%1987) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1988, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1989 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1990 = "aie.objectfifo.subview.access"(%1989) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1990, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1991 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1992 = "aie.objectfifo.subview.access"(%1991) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1992, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1993 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1994 = "aie.objectfifo.subview.access"(%1993) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1994, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1995 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1996 = "aie.objectfifo.subview.access"(%1995) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1996, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1997 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1998 = "aie.objectfifo.subview.access"(%1997) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1998, %1986, %1943) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1947 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1948 = "aie.objectfifo.subview.access"(%1947) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1948) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1949 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1950 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1951 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1949, %1950, %1951) ({
        ^bb0(%arg115: index):
          %1971 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1972 = "aie.objectfifo.subview.access"(%1971) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1973 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1974 = "aie.objectfifo.subview.access"(%1973) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1974, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1975 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1976 = "aie.objectfifo.subview.access"(%1975) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1976, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1977 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1978 = "aie.objectfifo.subview.access"(%1977) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1978, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1979 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1980 = "aie.objectfifo.subview.access"(%1979) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1980, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1981 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1982 = "aie.objectfifo.subview.access"(%1981) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1982, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1983 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1984 = "aie.objectfifo.subview.access"(%1983) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1984, %1972, %1948) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1952 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1953 = "aie.objectfifo.subview.access"(%1952) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1953) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1954 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1955 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1956 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1954, %1955, %1956) ({
        ^bb0(%arg114: index):
          %1957 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1958 = "aie.objectfifo.subview.access"(%1957) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1959 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1960 = "aie.objectfifo.subview.access"(%1959) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1960, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1961 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1962 = "aie.objectfifo.subview.access"(%1961) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1962, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1963 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1964 = "aie.objectfifo.subview.access"(%1963) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1964, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1965 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1966 = "aie.objectfifo.subview.access"(%1965) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1966, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1967 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1968 = "aie.objectfifo.subview.access"(%1967) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1968, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1969 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1970 = "aie.objectfifo.subview.access"(%1969) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1970, %1958, %1953) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %78 = "aie.core"(%38) <{stack_size = 1024 : i32}> ({
      %1855 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1856 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1857 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1855, %1856, %1857) ({
      ^bb0(%arg108: index):
        %1858 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1859 = "aie.objectfifo.subview.access"(%1858) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1859) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1860 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1861 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1862 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1860, %1861, %1862) ({
        ^bb0(%arg112: index):
          %1920 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1921 = "aie.objectfifo.subview.access"(%1920) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1922 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1923 = "aie.objectfifo.subview.access"(%1922) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1923, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1924 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1925 = "aie.objectfifo.subview.access"(%1924) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1925, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1926 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1927 = "aie.objectfifo.subview.access"(%1926) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1927, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1928 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1929 = "aie.objectfifo.subview.access"(%1928) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1929, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1930 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1931 = "aie.objectfifo.subview.access"(%1930) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1931, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1932 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1933 = "aie.objectfifo.subview.access"(%1932) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1933, %1921, %1859) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1863 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1864 = "aie.objectfifo.subview.access"(%1863) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1864) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1865 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1866 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1867 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1865, %1866, %1867) ({
        ^bb0(%arg111: index):
          %1906 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1907 = "aie.objectfifo.subview.access"(%1906) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1908 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1909 = "aie.objectfifo.subview.access"(%1908) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1909, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1910 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1911 = "aie.objectfifo.subview.access"(%1910) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1911, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1912 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1913 = "aie.objectfifo.subview.access"(%1912) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1913, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1914 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1915 = "aie.objectfifo.subview.access"(%1914) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1915, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1916 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1917 = "aie.objectfifo.subview.access"(%1916) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1917, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1918 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1919 = "aie.objectfifo.subview.access"(%1918) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1919, %1907, %1864) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1868 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1869 = "aie.objectfifo.subview.access"(%1868) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1869) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1870 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1871 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1872 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1870, %1871, %1872) ({
        ^bb0(%arg110: index):
          %1892 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1893 = "aie.objectfifo.subview.access"(%1892) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1894 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1895 = "aie.objectfifo.subview.access"(%1894) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1895, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1896 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1897 = "aie.objectfifo.subview.access"(%1896) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1897, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1898 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1899 = "aie.objectfifo.subview.access"(%1898) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1899, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1900 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1901 = "aie.objectfifo.subview.access"(%1900) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1901, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1902 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1903 = "aie.objectfifo.subview.access"(%1902) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1903, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1904 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1905 = "aie.objectfifo.subview.access"(%1904) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1905, %1893, %1869) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1873 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1874 = "aie.objectfifo.subview.access"(%1873) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1874) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1875 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1876 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1877 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1875, %1876, %1877) ({
        ^bb0(%arg109: index):
          %1878 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1879 = "aie.objectfifo.subview.access"(%1878) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1880 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1881 = "aie.objectfifo.subview.access"(%1880) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1881, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1882 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1883 = "aie.objectfifo.subview.access"(%1882) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1883, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1884 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1885 = "aie.objectfifo.subview.access"(%1884) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1885, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1886 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1887 = "aie.objectfifo.subview.access"(%1886) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1887, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1888 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1889 = "aie.objectfifo.subview.access"(%1888) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1889, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1890 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1891 = "aie.objectfifo.subview.access"(%1890) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1891, %1879, %1874) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %79 = "aie.core"(%39) <{stack_size = 1024 : i32}> ({
      %1776 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1777 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1778 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1776, %1777, %1778) ({
      ^bb0(%arg103: index):
        %1779 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1780 = "aie.objectfifo.subview.access"(%1779) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1780) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1781 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1782 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1783 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1781, %1782, %1783) ({
        ^bb0(%arg107: index):
          %1841 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1842 = "aie.objectfifo.subview.access"(%1841) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1843 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1844 = "aie.objectfifo.subview.access"(%1843) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1844, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1845 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1846 = "aie.objectfifo.subview.access"(%1845) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1846, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1847 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1848 = "aie.objectfifo.subview.access"(%1847) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1848, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1849 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1850 = "aie.objectfifo.subview.access"(%1849) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1850, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1851 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1852 = "aie.objectfifo.subview.access"(%1851) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1852, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1853 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1854 = "aie.objectfifo.subview.access"(%1853) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1854, %1842, %1780) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1784 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1785 = "aie.objectfifo.subview.access"(%1784) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1785) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1786 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1787 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1788 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1786, %1787, %1788) ({
        ^bb0(%arg106: index):
          %1827 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1828 = "aie.objectfifo.subview.access"(%1827) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1829 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1830 = "aie.objectfifo.subview.access"(%1829) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1830, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1831 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1832 = "aie.objectfifo.subview.access"(%1831) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1832, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1833 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1834 = "aie.objectfifo.subview.access"(%1833) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1834, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1835 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1836 = "aie.objectfifo.subview.access"(%1835) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1836, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1837 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1838 = "aie.objectfifo.subview.access"(%1837) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1838, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1839 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1840 = "aie.objectfifo.subview.access"(%1839) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1840, %1828, %1785) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1789 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1790 = "aie.objectfifo.subview.access"(%1789) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1790) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1791 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1792 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1793 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1791, %1792, %1793) ({
        ^bb0(%arg105: index):
          %1813 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1814 = "aie.objectfifo.subview.access"(%1813) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1815 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1816 = "aie.objectfifo.subview.access"(%1815) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1816, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1817 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1818 = "aie.objectfifo.subview.access"(%1817) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1818, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1819 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1820 = "aie.objectfifo.subview.access"(%1819) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1820, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1821 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1822 = "aie.objectfifo.subview.access"(%1821) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1822, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1823 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1824 = "aie.objectfifo.subview.access"(%1823) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1824, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1825 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1826 = "aie.objectfifo.subview.access"(%1825) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1826, %1814, %1790) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1794 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1795 = "aie.objectfifo.subview.access"(%1794) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1795) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1796 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1797 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1798 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1796, %1797, %1798) ({
        ^bb0(%arg104: index):
          %1799 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1800 = "aie.objectfifo.subview.access"(%1799) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1801 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1802 = "aie.objectfifo.subview.access"(%1801) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1802, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1803 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1804 = "aie.objectfifo.subview.access"(%1803) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1804, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1805 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1806 = "aie.objectfifo.subview.access"(%1805) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1806, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1807 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1808 = "aie.objectfifo.subview.access"(%1807) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1808, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1809 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1810 = "aie.objectfifo.subview.access"(%1809) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1810, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1811 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1812 = "aie.objectfifo.subview.access"(%1811) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1812, %1800, %1795) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_1, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %80 = "aie.core"(%40) <{stack_size = 1024 : i32}> ({
      %1697 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1698 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1699 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1697, %1698, %1699) ({
      ^bb0(%arg98: index):
        %1700 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1701 = "aie.objectfifo.subview.access"(%1700) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1701) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1702 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1703 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1704 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1702, %1703, %1704) ({
        ^bb0(%arg102: index):
          %1762 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1763 = "aie.objectfifo.subview.access"(%1762) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1764 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1765 = "aie.objectfifo.subview.access"(%1764) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1765, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1766 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1767 = "aie.objectfifo.subview.access"(%1766) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1767, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1768 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1769 = "aie.objectfifo.subview.access"(%1768) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1769, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1770 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1771 = "aie.objectfifo.subview.access"(%1770) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1771, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1772 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1773 = "aie.objectfifo.subview.access"(%1772) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1773, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1774 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1775 = "aie.objectfifo.subview.access"(%1774) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1775, %1763, %1701) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1705 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1706 = "aie.objectfifo.subview.access"(%1705) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1706) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1707 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1708 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1709 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1707, %1708, %1709) ({
        ^bb0(%arg101: index):
          %1748 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1749 = "aie.objectfifo.subview.access"(%1748) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1750 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1751 = "aie.objectfifo.subview.access"(%1750) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1751, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1752 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1753 = "aie.objectfifo.subview.access"(%1752) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1753, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1754 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1755 = "aie.objectfifo.subview.access"(%1754) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1755, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1756 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1757 = "aie.objectfifo.subview.access"(%1756) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1757, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1758 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1759 = "aie.objectfifo.subview.access"(%1758) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1759, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1760 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1761 = "aie.objectfifo.subview.access"(%1760) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1761, %1749, %1706) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1710 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1711 = "aie.objectfifo.subview.access"(%1710) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1711) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1712 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1713 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1714 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1712, %1713, %1714) ({
        ^bb0(%arg100: index):
          %1734 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1735 = "aie.objectfifo.subview.access"(%1734) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1736 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1737 = "aie.objectfifo.subview.access"(%1736) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1737, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1738 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1739 = "aie.objectfifo.subview.access"(%1738) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1739, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1740 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1741 = "aie.objectfifo.subview.access"(%1740) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1741, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1742 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1743 = "aie.objectfifo.subview.access"(%1742) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1743, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1744 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1745 = "aie.objectfifo.subview.access"(%1744) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1745, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1746 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1747 = "aie.objectfifo.subview.access"(%1746) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1747, %1735, %1711) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1715 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1716 = "aie.objectfifo.subview.access"(%1715) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1716) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1717 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1718 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1719 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1717, %1718, %1719) ({
        ^bb0(%arg99: index):
          %1720 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1721 = "aie.objectfifo.subview.access"(%1720) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1722 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1723 = "aie.objectfifo.subview.access"(%1722) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1723, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1724 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1725 = "aie.objectfifo.subview.access"(%1724) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1725, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1726 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1727 = "aie.objectfifo.subview.access"(%1726) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1727, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1728 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1729 = "aie.objectfifo.subview.access"(%1728) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1729, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1730 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1731 = "aie.objectfifo.subview.access"(%1730) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1731, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1732 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1733 = "aie.objectfifo.subview.access"(%1732) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1733, %1721, %1716) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %81 = "aie.core"(%41) <{stack_size = 1024 : i32}> ({
      %1618 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1619 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1620 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1618, %1619, %1620) ({
      ^bb0(%arg93: index):
        %1621 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1622 = "aie.objectfifo.subview.access"(%1621) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1622) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1623 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1624 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1625 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1623, %1624, %1625) ({
        ^bb0(%arg97: index):
          %1683 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1684 = "aie.objectfifo.subview.access"(%1683) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1685 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1686 = "aie.objectfifo.subview.access"(%1685) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1686, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1687 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1688 = "aie.objectfifo.subview.access"(%1687) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1688, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1689 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1690 = "aie.objectfifo.subview.access"(%1689) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1690, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1691 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1692 = "aie.objectfifo.subview.access"(%1691) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1692, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1693 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1694 = "aie.objectfifo.subview.access"(%1693) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1694, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1695 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1696 = "aie.objectfifo.subview.access"(%1695) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1696, %1684, %1622) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1626 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1627 = "aie.objectfifo.subview.access"(%1626) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1627) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1628 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1629 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1630 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1628, %1629, %1630) ({
        ^bb0(%arg96: index):
          %1669 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1670 = "aie.objectfifo.subview.access"(%1669) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1671 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1672 = "aie.objectfifo.subview.access"(%1671) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1672, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1673 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1674 = "aie.objectfifo.subview.access"(%1673) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1674, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1675 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1676 = "aie.objectfifo.subview.access"(%1675) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1676, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1677 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1678 = "aie.objectfifo.subview.access"(%1677) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1678, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1679 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1680 = "aie.objectfifo.subview.access"(%1679) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1680, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1681 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1682 = "aie.objectfifo.subview.access"(%1681) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1682, %1670, %1627) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1631 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1632 = "aie.objectfifo.subview.access"(%1631) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1632) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1633 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1634 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1635 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1633, %1634, %1635) ({
        ^bb0(%arg95: index):
          %1655 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1656 = "aie.objectfifo.subview.access"(%1655) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1657 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1658 = "aie.objectfifo.subview.access"(%1657) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1658, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1659 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1660 = "aie.objectfifo.subview.access"(%1659) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1660, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1661 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1662 = "aie.objectfifo.subview.access"(%1661) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1662, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1663 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1664 = "aie.objectfifo.subview.access"(%1663) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1664, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1665 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1666 = "aie.objectfifo.subview.access"(%1665) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1666, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1667 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1668 = "aie.objectfifo.subview.access"(%1667) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1668, %1656, %1632) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1636 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1637 = "aie.objectfifo.subview.access"(%1636) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1637) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1638 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1639 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1640 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1638, %1639, %1640) ({
        ^bb0(%arg94: index):
          %1641 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1642 = "aie.objectfifo.subview.access"(%1641) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1643 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1644 = "aie.objectfifo.subview.access"(%1643) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1644, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1645 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1646 = "aie.objectfifo.subview.access"(%1645) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1646, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1647 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1648 = "aie.objectfifo.subview.access"(%1647) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1648, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1649 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1650 = "aie.objectfifo.subview.access"(%1649) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1650, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1651 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1652 = "aie.objectfifo.subview.access"(%1651) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1652, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1653 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1654 = "aie.objectfifo.subview.access"(%1653) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1654, %1642, %1637) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %82 = "aie.core"(%42) <{stack_size = 1024 : i32}> ({
      %1539 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1540 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1541 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1539, %1540, %1541) ({
      ^bb0(%arg88: index):
        %1542 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1543 = "aie.objectfifo.subview.access"(%1542) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1543) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1544 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1545 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1546 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1544, %1545, %1546) ({
        ^bb0(%arg92: index):
          %1604 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1605 = "aie.objectfifo.subview.access"(%1604) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1606 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1607 = "aie.objectfifo.subview.access"(%1606) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1607, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1608 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1609 = "aie.objectfifo.subview.access"(%1608) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1609, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1610 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1611 = "aie.objectfifo.subview.access"(%1610) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1611, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1612 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1613 = "aie.objectfifo.subview.access"(%1612) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1613, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1614 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1615 = "aie.objectfifo.subview.access"(%1614) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1615, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1616 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1617 = "aie.objectfifo.subview.access"(%1616) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1617, %1605, %1543) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1547 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1548 = "aie.objectfifo.subview.access"(%1547) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1548) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1549 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1550 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1551 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1549, %1550, %1551) ({
        ^bb0(%arg91: index):
          %1590 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1591 = "aie.objectfifo.subview.access"(%1590) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1592 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1593 = "aie.objectfifo.subview.access"(%1592) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1593, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1594 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1595 = "aie.objectfifo.subview.access"(%1594) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1595, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1596 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1597 = "aie.objectfifo.subview.access"(%1596) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1597, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1598 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1599 = "aie.objectfifo.subview.access"(%1598) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1599, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1600 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1601 = "aie.objectfifo.subview.access"(%1600) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1601, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1602 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1603 = "aie.objectfifo.subview.access"(%1602) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1603, %1591, %1548) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1552 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1553 = "aie.objectfifo.subview.access"(%1552) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1553) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1554 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1555 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1556 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1554, %1555, %1556) ({
        ^bb0(%arg90: index):
          %1576 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1577 = "aie.objectfifo.subview.access"(%1576) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1578 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1579 = "aie.objectfifo.subview.access"(%1578) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1579, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1580 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1581 = "aie.objectfifo.subview.access"(%1580) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1581, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1582 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1583 = "aie.objectfifo.subview.access"(%1582) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1583, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1584 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1585 = "aie.objectfifo.subview.access"(%1584) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1585, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1586 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1587 = "aie.objectfifo.subview.access"(%1586) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1587, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1588 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1589 = "aie.objectfifo.subview.access"(%1588) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1589, %1577, %1553) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1557 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1558 = "aie.objectfifo.subview.access"(%1557) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1558) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1559 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1560 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1561 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1559, %1560, %1561) ({
        ^bb0(%arg89: index):
          %1562 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1563 = "aie.objectfifo.subview.access"(%1562) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1564 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1565 = "aie.objectfifo.subview.access"(%1564) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1565, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1566 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1567 = "aie.objectfifo.subview.access"(%1566) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1567, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1568 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1569 = "aie.objectfifo.subview.access"(%1568) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1569, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1570 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1571 = "aie.objectfifo.subview.access"(%1570) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1571, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1572 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1573 = "aie.objectfifo.subview.access"(%1572) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1573, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1574 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1575 = "aie.objectfifo.subview.access"(%1574) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1575, %1563, %1558) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %83 = "aie.core"(%43) <{stack_size = 1024 : i32}> ({
      %1460 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1461 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1462 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1460, %1461, %1462) ({
      ^bb0(%arg83: index):
        %1463 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1464 = "aie.objectfifo.subview.access"(%1463) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1464) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1465 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1466 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1467 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1465, %1466, %1467) ({
        ^bb0(%arg87: index):
          %1525 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1526 = "aie.objectfifo.subview.access"(%1525) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1527 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1528 = "aie.objectfifo.subview.access"(%1527) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1528, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1529 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1530 = "aie.objectfifo.subview.access"(%1529) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1530, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1531 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1532 = "aie.objectfifo.subview.access"(%1531) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1532, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1533 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1534 = "aie.objectfifo.subview.access"(%1533) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1534, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1535 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1536 = "aie.objectfifo.subview.access"(%1535) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1536, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1537 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1538 = "aie.objectfifo.subview.access"(%1537) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1538, %1526, %1464) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1468 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1469 = "aie.objectfifo.subview.access"(%1468) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1469) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1470 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1471 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1472 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1470, %1471, %1472) ({
        ^bb0(%arg86: index):
          %1511 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1512 = "aie.objectfifo.subview.access"(%1511) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1513 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1514 = "aie.objectfifo.subview.access"(%1513) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1514, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1515 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1516 = "aie.objectfifo.subview.access"(%1515) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1516, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1517 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1518 = "aie.objectfifo.subview.access"(%1517) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1518, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1519 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1520 = "aie.objectfifo.subview.access"(%1519) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1520, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1521 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1522 = "aie.objectfifo.subview.access"(%1521) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1522, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1523 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1524 = "aie.objectfifo.subview.access"(%1523) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1524, %1512, %1469) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1473 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1474 = "aie.objectfifo.subview.access"(%1473) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1474) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1475 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1476 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1477 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1475, %1476, %1477) ({
        ^bb0(%arg85: index):
          %1497 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1498 = "aie.objectfifo.subview.access"(%1497) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1499 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1500 = "aie.objectfifo.subview.access"(%1499) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1500, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1501 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1502 = "aie.objectfifo.subview.access"(%1501) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1502, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1503 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1504 = "aie.objectfifo.subview.access"(%1503) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1504, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1505 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1506 = "aie.objectfifo.subview.access"(%1505) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1506, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1507 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1508 = "aie.objectfifo.subview.access"(%1507) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1508, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1509 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1510 = "aie.objectfifo.subview.access"(%1509) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1510, %1498, %1474) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1478 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1479 = "aie.objectfifo.subview.access"(%1478) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1479) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1480 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1481 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1482 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1480, %1481, %1482) ({
        ^bb0(%arg84: index):
          %1483 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1484 = "aie.objectfifo.subview.access"(%1483) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1485 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1486 = "aie.objectfifo.subview.access"(%1485) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1486, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1487 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1488 = "aie.objectfifo.subview.access"(%1487) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1488, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1489 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1490 = "aie.objectfifo.subview.access"(%1489) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1490, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1491 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1492 = "aie.objectfifo.subview.access"(%1491) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1492, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1493 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1494 = "aie.objectfifo.subview.access"(%1493) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1494, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1495 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1496 = "aie.objectfifo.subview.access"(%1495) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1496, %1484, %1479) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %84 = "aie.core"(%44) <{stack_size = 1024 : i32}> ({
      %1381 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1382 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1383 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1381, %1382, %1383) ({
      ^bb0(%arg78: index):
        %1384 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1385 = "aie.objectfifo.subview.access"(%1384) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1385) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1386 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1387 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1388 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1386, %1387, %1388) ({
        ^bb0(%arg82: index):
          %1446 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1447 = "aie.objectfifo.subview.access"(%1446) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1448 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1449 = "aie.objectfifo.subview.access"(%1448) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1449, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1450 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1451 = "aie.objectfifo.subview.access"(%1450) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1451, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1452 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1453 = "aie.objectfifo.subview.access"(%1452) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1453, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1454 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1455 = "aie.objectfifo.subview.access"(%1454) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1455, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1456 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1457 = "aie.objectfifo.subview.access"(%1456) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1457, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1458 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1459 = "aie.objectfifo.subview.access"(%1458) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1459, %1447, %1385) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1389 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1390 = "aie.objectfifo.subview.access"(%1389) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1390) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1391 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1392 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1393 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1391, %1392, %1393) ({
        ^bb0(%arg81: index):
          %1432 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1433 = "aie.objectfifo.subview.access"(%1432) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1434 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1435 = "aie.objectfifo.subview.access"(%1434) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1435, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1436 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1437 = "aie.objectfifo.subview.access"(%1436) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1437, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1438 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1439 = "aie.objectfifo.subview.access"(%1438) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1439, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1440 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1441 = "aie.objectfifo.subview.access"(%1440) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1441, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1442 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1443 = "aie.objectfifo.subview.access"(%1442) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1443, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1444 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1445 = "aie.objectfifo.subview.access"(%1444) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1445, %1433, %1390) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1394 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1395 = "aie.objectfifo.subview.access"(%1394) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1395) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1396 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1397 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1398 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1396, %1397, %1398) ({
        ^bb0(%arg80: index):
          %1418 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1419 = "aie.objectfifo.subview.access"(%1418) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1420 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1421 = "aie.objectfifo.subview.access"(%1420) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1421, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1422 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1423 = "aie.objectfifo.subview.access"(%1422) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1423, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1424 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1425 = "aie.objectfifo.subview.access"(%1424) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1425, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1426 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1427 = "aie.objectfifo.subview.access"(%1426) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1427, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1428 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1429 = "aie.objectfifo.subview.access"(%1428) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1429, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1430 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1431 = "aie.objectfifo.subview.access"(%1430) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1431, %1419, %1395) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1399 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1400 = "aie.objectfifo.subview.access"(%1399) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1400) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1401 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1402 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1403 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1401, %1402, %1403) ({
        ^bb0(%arg79: index):
          %1404 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1405 = "aie.objectfifo.subview.access"(%1404) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1406 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1407 = "aie.objectfifo.subview.access"(%1406) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1407, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1408 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1409 = "aie.objectfifo.subview.access"(%1408) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1409, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1410 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1411 = "aie.objectfifo.subview.access"(%1410) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1411, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1412 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1413 = "aie.objectfifo.subview.access"(%1412) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1413, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1414 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1415 = "aie.objectfifo.subview.access"(%1414) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1415, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1416 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1417 = "aie.objectfifo.subview.access"(%1416) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1417, %1405, %1400) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %85 = "aie.core"(%45) <{stack_size = 1024 : i32}> ({
      %1302 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1303 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1304 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1302, %1303, %1304) ({
      ^bb0(%arg73: index):
        %1305 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1306 = "aie.objectfifo.subview.access"(%1305) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1306) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1307 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1308 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1309 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1307, %1308, %1309) ({
        ^bb0(%arg77: index):
          %1367 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1368 = "aie.objectfifo.subview.access"(%1367) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1369 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1370 = "aie.objectfifo.subview.access"(%1369) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1370, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1371 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1372 = "aie.objectfifo.subview.access"(%1371) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1372, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1373 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1374 = "aie.objectfifo.subview.access"(%1373) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1374, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1375 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1376 = "aie.objectfifo.subview.access"(%1375) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1376, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1377 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1378 = "aie.objectfifo.subview.access"(%1377) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1378, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1379 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1380 = "aie.objectfifo.subview.access"(%1379) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1380, %1368, %1306) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1310 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1311 = "aie.objectfifo.subview.access"(%1310) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1311) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1312 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1313 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1314 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1312, %1313, %1314) ({
        ^bb0(%arg76: index):
          %1353 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1354 = "aie.objectfifo.subview.access"(%1353) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1355 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1356 = "aie.objectfifo.subview.access"(%1355) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1356, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1357 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1358 = "aie.objectfifo.subview.access"(%1357) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1358, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1359 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1360 = "aie.objectfifo.subview.access"(%1359) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1360, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1361 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1362 = "aie.objectfifo.subview.access"(%1361) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1362, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1363 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1364 = "aie.objectfifo.subview.access"(%1363) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1364, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1365 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1366 = "aie.objectfifo.subview.access"(%1365) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1366, %1354, %1311) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1315 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1316 = "aie.objectfifo.subview.access"(%1315) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1316) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1317 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1318 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1319 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1317, %1318, %1319) ({
        ^bb0(%arg75: index):
          %1339 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1340 = "aie.objectfifo.subview.access"(%1339) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1341 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1342 = "aie.objectfifo.subview.access"(%1341) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1342, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1343 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1344 = "aie.objectfifo.subview.access"(%1343) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1344, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1345 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1346 = "aie.objectfifo.subview.access"(%1345) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1346, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1347 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1348 = "aie.objectfifo.subview.access"(%1347) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1348, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1349 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1350 = "aie.objectfifo.subview.access"(%1349) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1350, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1351 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1352 = "aie.objectfifo.subview.access"(%1351) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1352, %1340, %1316) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1320 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1321 = "aie.objectfifo.subview.access"(%1320) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1321) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1322 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1323 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1324 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1322, %1323, %1324) ({
        ^bb0(%arg74: index):
          %1325 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1326 = "aie.objectfifo.subview.access"(%1325) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1327 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1328 = "aie.objectfifo.subview.access"(%1327) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1328, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1329 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1330 = "aie.objectfifo.subview.access"(%1329) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1330, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1331 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1332 = "aie.objectfifo.subview.access"(%1331) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1332, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1333 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1334 = "aie.objectfifo.subview.access"(%1333) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1334, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1335 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1336 = "aie.objectfifo.subview.access"(%1335) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1336, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1337 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1338 = "aie.objectfifo.subview.access"(%1337) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1338, %1326, %1321) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %86 = "aie.core"(%46) <{stack_size = 1024 : i32}> ({
      %1223 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1224 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1225 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1223, %1224, %1225) ({
      ^bb0(%arg68: index):
        %1226 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1227 = "aie.objectfifo.subview.access"(%1226) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1227) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1228 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1229 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1230 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1228, %1229, %1230) ({
        ^bb0(%arg72: index):
          %1288 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1289 = "aie.objectfifo.subview.access"(%1288) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1290 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1291 = "aie.objectfifo.subview.access"(%1290) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1291, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1292 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1293 = "aie.objectfifo.subview.access"(%1292) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1293, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1294 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1295 = "aie.objectfifo.subview.access"(%1294) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1295, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1296 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1297 = "aie.objectfifo.subview.access"(%1296) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1297, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1298 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1299 = "aie.objectfifo.subview.access"(%1298) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1299, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1300 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1301 = "aie.objectfifo.subview.access"(%1300) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1301, %1289, %1227) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1231 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1232 = "aie.objectfifo.subview.access"(%1231) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1232) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1233 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1234 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1235 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1233, %1234, %1235) ({
        ^bb0(%arg71: index):
          %1274 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1275 = "aie.objectfifo.subview.access"(%1274) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1276 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1277 = "aie.objectfifo.subview.access"(%1276) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1277, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1278 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1279 = "aie.objectfifo.subview.access"(%1278) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1279, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1280 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1281 = "aie.objectfifo.subview.access"(%1280) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1281, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1282 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1283 = "aie.objectfifo.subview.access"(%1282) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1283, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1284 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1285 = "aie.objectfifo.subview.access"(%1284) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1285, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1286 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1287 = "aie.objectfifo.subview.access"(%1286) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1287, %1275, %1232) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1236 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1237 = "aie.objectfifo.subview.access"(%1236) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1237) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1238 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1239 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1240 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1238, %1239, %1240) ({
        ^bb0(%arg70: index):
          %1260 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1261 = "aie.objectfifo.subview.access"(%1260) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1262 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1263 = "aie.objectfifo.subview.access"(%1262) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1263, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1264 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1265 = "aie.objectfifo.subview.access"(%1264) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1265, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1266 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1267 = "aie.objectfifo.subview.access"(%1266) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1267, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1268 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1269 = "aie.objectfifo.subview.access"(%1268) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1269, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1270 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1271 = "aie.objectfifo.subview.access"(%1270) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1271, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1272 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1273 = "aie.objectfifo.subview.access"(%1272) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1273, %1261, %1237) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1241 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1242 = "aie.objectfifo.subview.access"(%1241) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1242) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1243 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1244 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1245 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1243, %1244, %1245) ({
        ^bb0(%arg69: index):
          %1246 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1247 = "aie.objectfifo.subview.access"(%1246) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1248 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1249 = "aie.objectfifo.subview.access"(%1248) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1249, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1250 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1251 = "aie.objectfifo.subview.access"(%1250) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1251, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1252 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1253 = "aie.objectfifo.subview.access"(%1252) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1253, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1254 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1255 = "aie.objectfifo.subview.access"(%1254) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1255, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1256 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1257 = "aie.objectfifo.subview.access"(%1256) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1257, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1258 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1259 = "aie.objectfifo.subview.access"(%1258) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1259, %1247, %1242) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %87 = "aie.core"(%47) <{stack_size = 1024 : i32}> ({
      %1144 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1145 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1146 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1144, %1145, %1146) ({
      ^bb0(%arg63: index):
        %1147 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1148 = "aie.objectfifo.subview.access"(%1147) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1148) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1149 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1150 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1151 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1149, %1150, %1151) ({
        ^bb0(%arg67: index):
          %1209 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1210 = "aie.objectfifo.subview.access"(%1209) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1211 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1212 = "aie.objectfifo.subview.access"(%1211) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1212, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1213 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1214 = "aie.objectfifo.subview.access"(%1213) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1214, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1215 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1216 = "aie.objectfifo.subview.access"(%1215) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1216, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1217 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1218 = "aie.objectfifo.subview.access"(%1217) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1218, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1219 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1220 = "aie.objectfifo.subview.access"(%1219) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1220, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1221 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1222 = "aie.objectfifo.subview.access"(%1221) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1222, %1210, %1148) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1152 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1153 = "aie.objectfifo.subview.access"(%1152) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1153) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1154 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1155 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1156 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1154, %1155, %1156) ({
        ^bb0(%arg66: index):
          %1195 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1196 = "aie.objectfifo.subview.access"(%1195) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1197 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1198 = "aie.objectfifo.subview.access"(%1197) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1198, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1199 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1200 = "aie.objectfifo.subview.access"(%1199) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1200, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1201 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1202 = "aie.objectfifo.subview.access"(%1201) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1202, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1203 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1204 = "aie.objectfifo.subview.access"(%1203) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1204, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1205 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1206 = "aie.objectfifo.subview.access"(%1205) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1206, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1207 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1208 = "aie.objectfifo.subview.access"(%1207) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1208, %1196, %1153) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1157 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1158 = "aie.objectfifo.subview.access"(%1157) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1158) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1159 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1160 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1161 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1159, %1160, %1161) ({
        ^bb0(%arg65: index):
          %1181 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1182 = "aie.objectfifo.subview.access"(%1181) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1183 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1184 = "aie.objectfifo.subview.access"(%1183) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1184, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1185 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1186 = "aie.objectfifo.subview.access"(%1185) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1186, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1187 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1188 = "aie.objectfifo.subview.access"(%1187) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1188, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1189 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1190 = "aie.objectfifo.subview.access"(%1189) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1190, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1191 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1192 = "aie.objectfifo.subview.access"(%1191) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1192, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1193 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1194 = "aie.objectfifo.subview.access"(%1193) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1194, %1182, %1158) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1162 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1163 = "aie.objectfifo.subview.access"(%1162) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1163) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1164 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1165 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1166 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1164, %1165, %1166) ({
        ^bb0(%arg64: index):
          %1167 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1168 = "aie.objectfifo.subview.access"(%1167) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1169 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1170 = "aie.objectfifo.subview.access"(%1169) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1170, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1171 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1172 = "aie.objectfifo.subview.access"(%1171) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1172, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1173 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1174 = "aie.objectfifo.subview.access"(%1173) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1174, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1175 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1176 = "aie.objectfifo.subview.access"(%1175) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1176, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1177 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1178 = "aie.objectfifo.subview.access"(%1177) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1178, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1179 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1180 = "aie.objectfifo.subview.access"(%1179) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1180, %1168, %1163) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %88 = "aie.core"(%48) <{stack_size = 1024 : i32}> ({
      %1065 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1066 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %1067 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%1065, %1066, %1067) ({
      ^bb0(%arg58: index):
        %1068 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1069 = "aie.objectfifo.subview.access"(%1068) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1069) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1070 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1071 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1072 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1070, %1071, %1072) ({
        ^bb0(%arg62: index):
          %1130 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1131 = "aie.objectfifo.subview.access"(%1130) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1132 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1133 = "aie.objectfifo.subview.access"(%1132) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1133, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1134 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1135 = "aie.objectfifo.subview.access"(%1134) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1135, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1136 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1137 = "aie.objectfifo.subview.access"(%1136) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1137, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1138 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1139 = "aie.objectfifo.subview.access"(%1138) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1139, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1140 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1141 = "aie.objectfifo.subview.access"(%1140) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1141, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1142 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1143 = "aie.objectfifo.subview.access"(%1142) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1143, %1131, %1069) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1073 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1074 = "aie.objectfifo.subview.access"(%1073) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1074) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1075 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1076 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1077 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1075, %1076, %1077) ({
        ^bb0(%arg61: index):
          %1116 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1117 = "aie.objectfifo.subview.access"(%1116) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1118 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1119 = "aie.objectfifo.subview.access"(%1118) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1119, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1120 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1121 = "aie.objectfifo.subview.access"(%1120) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1121, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1122 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1123 = "aie.objectfifo.subview.access"(%1122) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1123, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1124 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1125 = "aie.objectfifo.subview.access"(%1124) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1125, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1126 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1127 = "aie.objectfifo.subview.access"(%1126) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1127, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1128 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1129 = "aie.objectfifo.subview.access"(%1128) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1129, %1117, %1074) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1078 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1079 = "aie.objectfifo.subview.access"(%1078) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1079) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1080 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1081 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1082 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1080, %1081, %1082) ({
        ^bb0(%arg60: index):
          %1102 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1103 = "aie.objectfifo.subview.access"(%1102) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1104 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1105 = "aie.objectfifo.subview.access"(%1104) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1105, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1106 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1107 = "aie.objectfifo.subview.access"(%1106) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1107, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1108 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1109 = "aie.objectfifo.subview.access"(%1108) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1109, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1110 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1111 = "aie.objectfifo.subview.access"(%1110) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1111, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1112 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1113 = "aie.objectfifo.subview.access"(%1112) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1113, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1114 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1115 = "aie.objectfifo.subview.access"(%1114) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1115, %1103, %1079) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1083 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1084 = "aie.objectfifo.subview.access"(%1083) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1084) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1085 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1086 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1087 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1085, %1086, %1087) ({
        ^bb0(%arg59: index):
          %1088 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1089 = "aie.objectfifo.subview.access"(%1088) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1090 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1091 = "aie.objectfifo.subview.access"(%1090) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1091, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1092 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1093 = "aie.objectfifo.subview.access"(%1092) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1093, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1094 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1095 = "aie.objectfifo.subview.access"(%1094) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1095, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1096 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1097 = "aie.objectfifo.subview.access"(%1096) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1097, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1098 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1099 = "aie.objectfifo.subview.access"(%1098) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1099, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1100 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1101 = "aie.objectfifo.subview.access"(%1100) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1101, %1089, %1084) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %89 = "aie.core"(%49) <{stack_size = 1024 : i32}> ({
      %986 = "arith.constant"() <{value = 0 : index}> : () -> index
      %987 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %988 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%986, %987, %988) ({
      ^bb0(%arg53: index):
        %989 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %990 = "aie.objectfifo.subview.access"(%989) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%990) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %991 = "arith.constant"() <{value = 0 : index}> : () -> index
        %992 = "arith.constant"() <{value = 32 : index}> : () -> index
        %993 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%991, %992, %993) ({
        ^bb0(%arg57: index):
          %1051 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1052 = "aie.objectfifo.subview.access"(%1051) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1053 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1054 = "aie.objectfifo.subview.access"(%1053) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1054, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1055 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1056 = "aie.objectfifo.subview.access"(%1055) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1056, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1057 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1058 = "aie.objectfifo.subview.access"(%1057) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1058, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1059 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1060 = "aie.objectfifo.subview.access"(%1059) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1060, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1061 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1062 = "aie.objectfifo.subview.access"(%1061) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1062, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1063 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1064 = "aie.objectfifo.subview.access"(%1063) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1064, %1052, %990) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %994 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %995 = "aie.objectfifo.subview.access"(%994) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%995) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %996 = "arith.constant"() <{value = 0 : index}> : () -> index
        %997 = "arith.constant"() <{value = 32 : index}> : () -> index
        %998 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%996, %997, %998) ({
        ^bb0(%arg56: index):
          %1037 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1038 = "aie.objectfifo.subview.access"(%1037) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1039 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1040 = "aie.objectfifo.subview.access"(%1039) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1040, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1041 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1042 = "aie.objectfifo.subview.access"(%1041) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1042, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1043 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1044 = "aie.objectfifo.subview.access"(%1043) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1044, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1045 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1046 = "aie.objectfifo.subview.access"(%1045) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1046, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1047 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1048 = "aie.objectfifo.subview.access"(%1047) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1048, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1049 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1050 = "aie.objectfifo.subview.access"(%1049) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1050, %1038, %995) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %999 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1000 = "aie.objectfifo.subview.access"(%999) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1000) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1001 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1002 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1003 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1001, %1002, %1003) ({
        ^bb0(%arg55: index):
          %1023 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1024 = "aie.objectfifo.subview.access"(%1023) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1025 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1026 = "aie.objectfifo.subview.access"(%1025) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1026, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1027 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1028 = "aie.objectfifo.subview.access"(%1027) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1028, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1029 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1030 = "aie.objectfifo.subview.access"(%1029) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1030, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1031 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1032 = "aie.objectfifo.subview.access"(%1031) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1032, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1033 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1034 = "aie.objectfifo.subview.access"(%1033) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1034, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1035 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1036 = "aie.objectfifo.subview.access"(%1035) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1036, %1024, %1000) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        %1004 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %1005 = "aie.objectfifo.subview.access"(%1004) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%1005) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %1006 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1007 = "arith.constant"() <{value = 32 : index}> : () -> index
        %1008 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%1006, %1007, %1008) ({
        ^bb0(%arg54: index):
          %1009 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %1010 = "aie.objectfifo.subview.access"(%1009) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %1011 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1012 = "aie.objectfifo.subview.access"(%1011) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1012, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1013 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1014 = "aie.objectfifo.subview.access"(%1013) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1014, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1015 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1016 = "aie.objectfifo.subview.access"(%1015) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1016, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1017 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1018 = "aie.objectfifo.subview.access"(%1017) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1018, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1019 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1020 = "aie.objectfifo.subview.access"(%1019) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1020, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          %1021 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %1022 = "aie.objectfifo.subview.access"(%1021) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%1022, %1010, %1005) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_2, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %90 = "aie.core"(%50) <{stack_size = 1024 : i32}> ({
      %907 = "arith.constant"() <{value = 0 : index}> : () -> index
      %908 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %909 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%907, %908, %909) ({
      ^bb0(%arg48: index):
        %910 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %911 = "aie.objectfifo.subview.access"(%910) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%911) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %912 = "arith.constant"() <{value = 0 : index}> : () -> index
        %913 = "arith.constant"() <{value = 32 : index}> : () -> index
        %914 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%912, %913, %914) ({
        ^bb0(%arg52: index):
          %972 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %973 = "aie.objectfifo.subview.access"(%972) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %974 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %975 = "aie.objectfifo.subview.access"(%974) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%975, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %976 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %977 = "aie.objectfifo.subview.access"(%976) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%977, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %978 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %979 = "aie.objectfifo.subview.access"(%978) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%979, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %980 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %981 = "aie.objectfifo.subview.access"(%980) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%981, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %982 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %983 = "aie.objectfifo.subview.access"(%982) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%983, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %984 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %985 = "aie.objectfifo.subview.access"(%984) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%985, %973, %911) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %915 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %916 = "aie.objectfifo.subview.access"(%915) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%916) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %917 = "arith.constant"() <{value = 0 : index}> : () -> index
        %918 = "arith.constant"() <{value = 32 : index}> : () -> index
        %919 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%917, %918, %919) ({
        ^bb0(%arg51: index):
          %958 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %959 = "aie.objectfifo.subview.access"(%958) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %960 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %961 = "aie.objectfifo.subview.access"(%960) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%961, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %962 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %963 = "aie.objectfifo.subview.access"(%962) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%963, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %964 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %965 = "aie.objectfifo.subview.access"(%964) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%965, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %966 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %967 = "aie.objectfifo.subview.access"(%966) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%967, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %968 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %969 = "aie.objectfifo.subview.access"(%968) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%969, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %970 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %971 = "aie.objectfifo.subview.access"(%970) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%971, %959, %916) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %920 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %921 = "aie.objectfifo.subview.access"(%920) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%921) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %922 = "arith.constant"() <{value = 0 : index}> : () -> index
        %923 = "arith.constant"() <{value = 32 : index}> : () -> index
        %924 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%922, %923, %924) ({
        ^bb0(%arg50: index):
          %944 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %945 = "aie.objectfifo.subview.access"(%944) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %946 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %947 = "aie.objectfifo.subview.access"(%946) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%947, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %948 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %949 = "aie.objectfifo.subview.access"(%948) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%949, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %950 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %951 = "aie.objectfifo.subview.access"(%950) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%951, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %952 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %953 = "aie.objectfifo.subview.access"(%952) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%953, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %954 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %955 = "aie.objectfifo.subview.access"(%954) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%955, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %956 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %957 = "aie.objectfifo.subview.access"(%956) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%957, %945, %921) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %925 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %926 = "aie.objectfifo.subview.access"(%925) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%926) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %927 = "arith.constant"() <{value = 0 : index}> : () -> index
        %928 = "arith.constant"() <{value = 32 : index}> : () -> index
        %929 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%927, %928, %929) ({
        ^bb0(%arg49: index):
          %930 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %931 = "aie.objectfifo.subview.access"(%930) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %932 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %933 = "aie.objectfifo.subview.access"(%932) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%933, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %934 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %935 = "aie.objectfifo.subview.access"(%934) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%935, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %936 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %937 = "aie.objectfifo.subview.access"(%936) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%937, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %938 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %939 = "aie.objectfifo.subview.access"(%938) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%939, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %940 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %941 = "aie.objectfifo.subview.access"(%940) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%941, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %942 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %943 = "aie.objectfifo.subview.access"(%942) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%943, %931, %926) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_0, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_0_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %91 = "aie.core"(%51) <{stack_size = 1024 : i32}> ({
      %828 = "arith.constant"() <{value = 0 : index}> : () -> index
      %829 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %830 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%828, %829, %830) ({
      ^bb0(%arg43: index):
        %831 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %832 = "aie.objectfifo.subview.access"(%831) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%832) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %833 = "arith.constant"() <{value = 0 : index}> : () -> index
        %834 = "arith.constant"() <{value = 32 : index}> : () -> index
        %835 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%833, %834, %835) ({
        ^bb0(%arg47: index):
          %893 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %894 = "aie.objectfifo.subview.access"(%893) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %895 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %896 = "aie.objectfifo.subview.access"(%895) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%896, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %897 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %898 = "aie.objectfifo.subview.access"(%897) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%898, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %899 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %900 = "aie.objectfifo.subview.access"(%899) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%900, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %901 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %902 = "aie.objectfifo.subview.access"(%901) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%902, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %903 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %904 = "aie.objectfifo.subview.access"(%903) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%904, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %905 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %906 = "aie.objectfifo.subview.access"(%905) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%906, %894, %832) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %836 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %837 = "aie.objectfifo.subview.access"(%836) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%837) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %838 = "arith.constant"() <{value = 0 : index}> : () -> index
        %839 = "arith.constant"() <{value = 32 : index}> : () -> index
        %840 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%838, %839, %840) ({
        ^bb0(%arg46: index):
          %879 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %880 = "aie.objectfifo.subview.access"(%879) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %881 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %882 = "aie.objectfifo.subview.access"(%881) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%882, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %883 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %884 = "aie.objectfifo.subview.access"(%883) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%884, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %885 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %886 = "aie.objectfifo.subview.access"(%885) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%886, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %887 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %888 = "aie.objectfifo.subview.access"(%887) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%888, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %889 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %890 = "aie.objectfifo.subview.access"(%889) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%890, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %891 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %892 = "aie.objectfifo.subview.access"(%891) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%892, %880, %837) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %841 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %842 = "aie.objectfifo.subview.access"(%841) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%842) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %843 = "arith.constant"() <{value = 0 : index}> : () -> index
        %844 = "arith.constant"() <{value = 32 : index}> : () -> index
        %845 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%843, %844, %845) ({
        ^bb0(%arg45: index):
          %865 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %866 = "aie.objectfifo.subview.access"(%865) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %867 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %868 = "aie.objectfifo.subview.access"(%867) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%868, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %869 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %870 = "aie.objectfifo.subview.access"(%869) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%870, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %871 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %872 = "aie.objectfifo.subview.access"(%871) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%872, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %873 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %874 = "aie.objectfifo.subview.access"(%873) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%874, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %875 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %876 = "aie.objectfifo.subview.access"(%875) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%876, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %877 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %878 = "aie.objectfifo.subview.access"(%877) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%878, %866, %842) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %846 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %847 = "aie.objectfifo.subview.access"(%846) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%847) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %848 = "arith.constant"() <{value = 0 : index}> : () -> index
        %849 = "arith.constant"() <{value = 32 : index}> : () -> index
        %850 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%848, %849, %850) ({
        ^bb0(%arg44: index):
          %851 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %852 = "aie.objectfifo.subview.access"(%851) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %853 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %854 = "aie.objectfifo.subview.access"(%853) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%854, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %855 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %856 = "aie.objectfifo.subview.access"(%855) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%856, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %857 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %858 = "aie.objectfifo.subview.access"(%857) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%858, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %859 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %860 = "aie.objectfifo.subview.access"(%859) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%860, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %861 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %862 = "aie.objectfifo.subview.access"(%861) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%862, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %863 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %864 = "aie.objectfifo.subview.access"(%863) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%864, %852, %847) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_1, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_1_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %92 = "aie.core"(%52) <{stack_size = 1024 : i32}> ({
      %749 = "arith.constant"() <{value = 0 : index}> : () -> index
      %750 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %751 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%749, %750, %751) ({
      ^bb0(%arg38: index):
        %752 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %753 = "aie.objectfifo.subview.access"(%752) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%753) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %754 = "arith.constant"() <{value = 0 : index}> : () -> index
        %755 = "arith.constant"() <{value = 32 : index}> : () -> index
        %756 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%754, %755, %756) ({
        ^bb0(%arg42: index):
          %814 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %815 = "aie.objectfifo.subview.access"(%814) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %816 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %817 = "aie.objectfifo.subview.access"(%816) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%817, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %818 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %819 = "aie.objectfifo.subview.access"(%818) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%819, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %820 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %821 = "aie.objectfifo.subview.access"(%820) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%821, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %822 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %823 = "aie.objectfifo.subview.access"(%822) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%823, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %824 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %825 = "aie.objectfifo.subview.access"(%824) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%825, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %826 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %827 = "aie.objectfifo.subview.access"(%826) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%827, %815, %753) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %757 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %758 = "aie.objectfifo.subview.access"(%757) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%758) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %759 = "arith.constant"() <{value = 0 : index}> : () -> index
        %760 = "arith.constant"() <{value = 32 : index}> : () -> index
        %761 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%759, %760, %761) ({
        ^bb0(%arg41: index):
          %800 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %801 = "aie.objectfifo.subview.access"(%800) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %802 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %803 = "aie.objectfifo.subview.access"(%802) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%803, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %804 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %805 = "aie.objectfifo.subview.access"(%804) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%805, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %806 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %807 = "aie.objectfifo.subview.access"(%806) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%807, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %808 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %809 = "aie.objectfifo.subview.access"(%808) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%809, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %810 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %811 = "aie.objectfifo.subview.access"(%810) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%811, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %812 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %813 = "aie.objectfifo.subview.access"(%812) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%813, %801, %758) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %762 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %763 = "aie.objectfifo.subview.access"(%762) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%763) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %764 = "arith.constant"() <{value = 0 : index}> : () -> index
        %765 = "arith.constant"() <{value = 32 : index}> : () -> index
        %766 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%764, %765, %766) ({
        ^bb0(%arg40: index):
          %786 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %787 = "aie.objectfifo.subview.access"(%786) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %788 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %789 = "aie.objectfifo.subview.access"(%788) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%789, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %790 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %791 = "aie.objectfifo.subview.access"(%790) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%791, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %792 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %793 = "aie.objectfifo.subview.access"(%792) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%793, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %794 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %795 = "aie.objectfifo.subview.access"(%794) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%795, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %796 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %797 = "aie.objectfifo.subview.access"(%796) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%797, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %798 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %799 = "aie.objectfifo.subview.access"(%798) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%799, %787, %763) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %767 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %768 = "aie.objectfifo.subview.access"(%767) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%768) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %769 = "arith.constant"() <{value = 0 : index}> : () -> index
        %770 = "arith.constant"() <{value = 32 : index}> : () -> index
        %771 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%769, %770, %771) ({
        ^bb0(%arg39: index):
          %772 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %773 = "aie.objectfifo.subview.access"(%772) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %774 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %775 = "aie.objectfifo.subview.access"(%774) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%775, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %776 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %777 = "aie.objectfifo.subview.access"(%776) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%777, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %778 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %779 = "aie.objectfifo.subview.access"(%778) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%779, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %780 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %781 = "aie.objectfifo.subview.access"(%780) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%781, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %782 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %783 = "aie.objectfifo.subview.access"(%782) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%783, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %784 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %785 = "aie.objectfifo.subview.access"(%784) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%785, %773, %768) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_2, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_2_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %93 = "aie.core"(%53) <{stack_size = 1024 : i32}> ({
      %670 = "arith.constant"() <{value = 0 : index}> : () -> index
      %671 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %672 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%670, %671, %672) ({
      ^bb0(%arg33: index):
        %673 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %674 = "aie.objectfifo.subview.access"(%673) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%674) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %675 = "arith.constant"() <{value = 0 : index}> : () -> index
        %676 = "arith.constant"() <{value = 32 : index}> : () -> index
        %677 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%675, %676, %677) ({
        ^bb0(%arg37: index):
          %735 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %736 = "aie.objectfifo.subview.access"(%735) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %737 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %738 = "aie.objectfifo.subview.access"(%737) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%738, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %739 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %740 = "aie.objectfifo.subview.access"(%739) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%740, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %741 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %742 = "aie.objectfifo.subview.access"(%741) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%742, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %743 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %744 = "aie.objectfifo.subview.access"(%743) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%744, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %745 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %746 = "aie.objectfifo.subview.access"(%745) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%746, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %747 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %748 = "aie.objectfifo.subview.access"(%747) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%748, %736, %674) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %678 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %679 = "aie.objectfifo.subview.access"(%678) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%679) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %680 = "arith.constant"() <{value = 0 : index}> : () -> index
        %681 = "arith.constant"() <{value = 32 : index}> : () -> index
        %682 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%680, %681, %682) ({
        ^bb0(%arg36: index):
          %721 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %722 = "aie.objectfifo.subview.access"(%721) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %723 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %724 = "aie.objectfifo.subview.access"(%723) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%724, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %725 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %726 = "aie.objectfifo.subview.access"(%725) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%726, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %727 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %728 = "aie.objectfifo.subview.access"(%727) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%728, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %729 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %730 = "aie.objectfifo.subview.access"(%729) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%730, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %731 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %732 = "aie.objectfifo.subview.access"(%731) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%732, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %733 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %734 = "aie.objectfifo.subview.access"(%733) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%734, %722, %679) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %683 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %684 = "aie.objectfifo.subview.access"(%683) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%684) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %685 = "arith.constant"() <{value = 0 : index}> : () -> index
        %686 = "arith.constant"() <{value = 32 : index}> : () -> index
        %687 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%685, %686, %687) ({
        ^bb0(%arg35: index):
          %707 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %708 = "aie.objectfifo.subview.access"(%707) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %709 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %710 = "aie.objectfifo.subview.access"(%709) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%710, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %711 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %712 = "aie.objectfifo.subview.access"(%711) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%712, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %713 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %714 = "aie.objectfifo.subview.access"(%713) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%714, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %715 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %716 = "aie.objectfifo.subview.access"(%715) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%716, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %717 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %718 = "aie.objectfifo.subview.access"(%717) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%718, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %719 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %720 = "aie.objectfifo.subview.access"(%719) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%720, %708, %684) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %688 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %689 = "aie.objectfifo.subview.access"(%688) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%689) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %690 = "arith.constant"() <{value = 0 : index}> : () -> index
        %691 = "arith.constant"() <{value = 32 : index}> : () -> index
        %692 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%690, %691, %692) ({
        ^bb0(%arg34: index):
          %693 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %694 = "aie.objectfifo.subview.access"(%693) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %695 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %696 = "aie.objectfifo.subview.access"(%695) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%696, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %697 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %698 = "aie.objectfifo.subview.access"(%697) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%698, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %699 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %700 = "aie.objectfifo.subview.access"(%699) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%700, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %701 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %702 = "aie.objectfifo.subview.access"(%701) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%702, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %703 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %704 = "aie.objectfifo.subview.access"(%703) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%704, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %705 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %706 = "aie.objectfifo.subview.access"(%705) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%706, %694, %689) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_3_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %94 = "aie.core"(%54) <{stack_size = 1024 : i32}> ({
      %591 = "arith.constant"() <{value = 0 : index}> : () -> index
      %592 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %593 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%591, %592, %593) ({
      ^bb0(%arg28: index):
        %594 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %595 = "aie.objectfifo.subview.access"(%594) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%595) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %596 = "arith.constant"() <{value = 0 : index}> : () -> index
        %597 = "arith.constant"() <{value = 32 : index}> : () -> index
        %598 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%596, %597, %598) ({
        ^bb0(%arg32: index):
          %656 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %657 = "aie.objectfifo.subview.access"(%656) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %658 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %659 = "aie.objectfifo.subview.access"(%658) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%659, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %660 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %661 = "aie.objectfifo.subview.access"(%660) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%661, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %662 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %663 = "aie.objectfifo.subview.access"(%662) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%663, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %664 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %665 = "aie.objectfifo.subview.access"(%664) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%665, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %666 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %667 = "aie.objectfifo.subview.access"(%666) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%667, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %668 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %669 = "aie.objectfifo.subview.access"(%668) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%669, %657, %595) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %599 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %600 = "aie.objectfifo.subview.access"(%599) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%600) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %601 = "arith.constant"() <{value = 0 : index}> : () -> index
        %602 = "arith.constant"() <{value = 32 : index}> : () -> index
        %603 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%601, %602, %603) ({
        ^bb0(%arg31: index):
          %642 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %643 = "aie.objectfifo.subview.access"(%642) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %644 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %645 = "aie.objectfifo.subview.access"(%644) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%645, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %646 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %647 = "aie.objectfifo.subview.access"(%646) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%647, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %648 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %649 = "aie.objectfifo.subview.access"(%648) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%649, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %650 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %651 = "aie.objectfifo.subview.access"(%650) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%651, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %652 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %653 = "aie.objectfifo.subview.access"(%652) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%653, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %654 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %655 = "aie.objectfifo.subview.access"(%654) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%655, %643, %600) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %604 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %605 = "aie.objectfifo.subview.access"(%604) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%605) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %606 = "arith.constant"() <{value = 0 : index}> : () -> index
        %607 = "arith.constant"() <{value = 32 : index}> : () -> index
        %608 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%606, %607, %608) ({
        ^bb0(%arg30: index):
          %628 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %629 = "aie.objectfifo.subview.access"(%628) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %630 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %631 = "aie.objectfifo.subview.access"(%630) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%631, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %632 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %633 = "aie.objectfifo.subview.access"(%632) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%633, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %634 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %635 = "aie.objectfifo.subview.access"(%634) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%635, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %636 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %637 = "aie.objectfifo.subview.access"(%636) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%637, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %638 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %639 = "aie.objectfifo.subview.access"(%638) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%639, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %640 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %641 = "aie.objectfifo.subview.access"(%640) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%641, %629, %605) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %609 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %610 = "aie.objectfifo.subview.access"(%609) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%610) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %611 = "arith.constant"() <{value = 0 : index}> : () -> index
        %612 = "arith.constant"() <{value = 32 : index}> : () -> index
        %613 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%611, %612, %613) ({
        ^bb0(%arg29: index):
          %614 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %615 = "aie.objectfifo.subview.access"(%614) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %616 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %617 = "aie.objectfifo.subview.access"(%616) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%617, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %618 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %619 = "aie.objectfifo.subview.access"(%618) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%619, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %620 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %621 = "aie.objectfifo.subview.access"(%620) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%621, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %622 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %623 = "aie.objectfifo.subview.access"(%622) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%623, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %624 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %625 = "aie.objectfifo.subview.access"(%624) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%625, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %626 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %627 = "aie.objectfifo.subview.access"(%626) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%627, %615, %610) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_4, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_4_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %95 = "aie.core"(%55) <{stack_size = 1024 : i32}> ({
      %512 = "arith.constant"() <{value = 0 : index}> : () -> index
      %513 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %514 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%512, %513, %514) ({
      ^bb0(%arg23: index):
        %515 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %516 = "aie.objectfifo.subview.access"(%515) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%516) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %517 = "arith.constant"() <{value = 0 : index}> : () -> index
        %518 = "arith.constant"() <{value = 32 : index}> : () -> index
        %519 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%517, %518, %519) ({
        ^bb0(%arg27: index):
          %577 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %578 = "aie.objectfifo.subview.access"(%577) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %579 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %580 = "aie.objectfifo.subview.access"(%579) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%580, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %581 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %582 = "aie.objectfifo.subview.access"(%581) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%582, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %583 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %584 = "aie.objectfifo.subview.access"(%583) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%584, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %585 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %586 = "aie.objectfifo.subview.access"(%585) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%586, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %587 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %588 = "aie.objectfifo.subview.access"(%587) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%588, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %589 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %590 = "aie.objectfifo.subview.access"(%589) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%590, %578, %516) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %520 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %521 = "aie.objectfifo.subview.access"(%520) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%521) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %522 = "arith.constant"() <{value = 0 : index}> : () -> index
        %523 = "arith.constant"() <{value = 32 : index}> : () -> index
        %524 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%522, %523, %524) ({
        ^bb0(%arg26: index):
          %563 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %564 = "aie.objectfifo.subview.access"(%563) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %565 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %566 = "aie.objectfifo.subview.access"(%565) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%566, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %567 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %568 = "aie.objectfifo.subview.access"(%567) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%568, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %569 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %570 = "aie.objectfifo.subview.access"(%569) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%570, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %571 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %572 = "aie.objectfifo.subview.access"(%571) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%572, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %573 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %574 = "aie.objectfifo.subview.access"(%573) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%574, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %575 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %576 = "aie.objectfifo.subview.access"(%575) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%576, %564, %521) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %525 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %526 = "aie.objectfifo.subview.access"(%525) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%526) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %527 = "arith.constant"() <{value = 0 : index}> : () -> index
        %528 = "arith.constant"() <{value = 32 : index}> : () -> index
        %529 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%527, %528, %529) ({
        ^bb0(%arg25: index):
          %549 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %550 = "aie.objectfifo.subview.access"(%549) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %551 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %552 = "aie.objectfifo.subview.access"(%551) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%552, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %553 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %554 = "aie.objectfifo.subview.access"(%553) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%554, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %555 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %556 = "aie.objectfifo.subview.access"(%555) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%556, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %557 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %558 = "aie.objectfifo.subview.access"(%557) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%558, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %559 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %560 = "aie.objectfifo.subview.access"(%559) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%560, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %561 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %562 = "aie.objectfifo.subview.access"(%561) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%562, %550, %526) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %530 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %531 = "aie.objectfifo.subview.access"(%530) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%531) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %532 = "arith.constant"() <{value = 0 : index}> : () -> index
        %533 = "arith.constant"() <{value = 32 : index}> : () -> index
        %534 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%532, %533, %534) ({
        ^bb0(%arg24: index):
          %535 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %536 = "aie.objectfifo.subview.access"(%535) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %537 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %538 = "aie.objectfifo.subview.access"(%537) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%538, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %539 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %540 = "aie.objectfifo.subview.access"(%539) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%540, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %541 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %542 = "aie.objectfifo.subview.access"(%541) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%542, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %543 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %544 = "aie.objectfifo.subview.access"(%543) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%544, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %545 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %546 = "aie.objectfifo.subview.access"(%545) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%546, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %547 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %548 = "aie.objectfifo.subview.access"(%547) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%548, %536, %531) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_5, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_5_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %96 = "aie.core"(%56) <{stack_size = 1024 : i32}> ({
      %433 = "arith.constant"() <{value = 0 : index}> : () -> index
      %434 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %435 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%433, %434, %435) ({
      ^bb0(%arg18: index):
        %436 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %437 = "aie.objectfifo.subview.access"(%436) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%437) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %438 = "arith.constant"() <{value = 0 : index}> : () -> index
        %439 = "arith.constant"() <{value = 32 : index}> : () -> index
        %440 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%438, %439, %440) ({
        ^bb0(%arg22: index):
          %498 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %499 = "aie.objectfifo.subview.access"(%498) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %500 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %501 = "aie.objectfifo.subview.access"(%500) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%501, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %502 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %503 = "aie.objectfifo.subview.access"(%502) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%503, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %504 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %505 = "aie.objectfifo.subview.access"(%504) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%505, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %506 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %507 = "aie.objectfifo.subview.access"(%506) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%507, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %508 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %509 = "aie.objectfifo.subview.access"(%508) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%509, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %510 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %511 = "aie.objectfifo.subview.access"(%510) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%511, %499, %437) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %441 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %442 = "aie.objectfifo.subview.access"(%441) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%442) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %443 = "arith.constant"() <{value = 0 : index}> : () -> index
        %444 = "arith.constant"() <{value = 32 : index}> : () -> index
        %445 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%443, %444, %445) ({
        ^bb0(%arg21: index):
          %484 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %485 = "aie.objectfifo.subview.access"(%484) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %486 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %487 = "aie.objectfifo.subview.access"(%486) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%487, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %488 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %489 = "aie.objectfifo.subview.access"(%488) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%489, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %490 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %491 = "aie.objectfifo.subview.access"(%490) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%491, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %492 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %493 = "aie.objectfifo.subview.access"(%492) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%493, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %494 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %495 = "aie.objectfifo.subview.access"(%494) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%495, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %496 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %497 = "aie.objectfifo.subview.access"(%496) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%497, %485, %442) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %446 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %447 = "aie.objectfifo.subview.access"(%446) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%447) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %448 = "arith.constant"() <{value = 0 : index}> : () -> index
        %449 = "arith.constant"() <{value = 32 : index}> : () -> index
        %450 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%448, %449, %450) ({
        ^bb0(%arg20: index):
          %470 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %471 = "aie.objectfifo.subview.access"(%470) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %472 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %473 = "aie.objectfifo.subview.access"(%472) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%473, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %474 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %475 = "aie.objectfifo.subview.access"(%474) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%475, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %476 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %477 = "aie.objectfifo.subview.access"(%476) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%477, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %478 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %479 = "aie.objectfifo.subview.access"(%478) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%479, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %480 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %481 = "aie.objectfifo.subview.access"(%480) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%481, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %482 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %483 = "aie.objectfifo.subview.access"(%482) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%483, %471, %447) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %451 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %452 = "aie.objectfifo.subview.access"(%451) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%452) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %453 = "arith.constant"() <{value = 0 : index}> : () -> index
        %454 = "arith.constant"() <{value = 32 : index}> : () -> index
        %455 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%453, %454, %455) ({
        ^bb0(%arg19: index):
          %456 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %457 = "aie.objectfifo.subview.access"(%456) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %458 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %459 = "aie.objectfifo.subview.access"(%458) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%459, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %460 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %461 = "aie.objectfifo.subview.access"(%460) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%461, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %462 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %463 = "aie.objectfifo.subview.access"(%462) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%463, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %464 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %465 = "aie.objectfifo.subview.access"(%464) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%465, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %466 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %467 = "aie.objectfifo.subview.access"(%466) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%467, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %468 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %469 = "aie.objectfifo.subview.access"(%468) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%469, %457, %452) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_6, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_6_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %97 = "aie.core"(%57) <{stack_size = 1024 : i32}> ({
      %354 = "arith.constant"() <{value = 0 : index}> : () -> index
      %355 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %356 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%354, %355, %356) ({
      ^bb0(%arg13: index):
        %357 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %358 = "aie.objectfifo.subview.access"(%357) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%358) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %359 = "arith.constant"() <{value = 0 : index}> : () -> index
        %360 = "arith.constant"() <{value = 32 : index}> : () -> index
        %361 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%359, %360, %361) ({
        ^bb0(%arg17: index):
          %419 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %420 = "aie.objectfifo.subview.access"(%419) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %421 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %422 = "aie.objectfifo.subview.access"(%421) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%422, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %423 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %424 = "aie.objectfifo.subview.access"(%423) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%424, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %425 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %426 = "aie.objectfifo.subview.access"(%425) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%426, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %427 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %428 = "aie.objectfifo.subview.access"(%427) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%428, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %429 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %430 = "aie.objectfifo.subview.access"(%429) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%430, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %431 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %432 = "aie.objectfifo.subview.access"(%431) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%432, %420, %358) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %362 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %363 = "aie.objectfifo.subview.access"(%362) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%363) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %364 = "arith.constant"() <{value = 0 : index}> : () -> index
        %365 = "arith.constant"() <{value = 32 : index}> : () -> index
        %366 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%364, %365, %366) ({
        ^bb0(%arg16: index):
          %405 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %406 = "aie.objectfifo.subview.access"(%405) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %407 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %408 = "aie.objectfifo.subview.access"(%407) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%408, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %409 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %410 = "aie.objectfifo.subview.access"(%409) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%410, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %411 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %412 = "aie.objectfifo.subview.access"(%411) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%412, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %413 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %414 = "aie.objectfifo.subview.access"(%413) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%414, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %415 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %416 = "aie.objectfifo.subview.access"(%415) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%416, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %417 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %418 = "aie.objectfifo.subview.access"(%417) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%418, %406, %363) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %367 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %368 = "aie.objectfifo.subview.access"(%367) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%368) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %369 = "arith.constant"() <{value = 0 : index}> : () -> index
        %370 = "arith.constant"() <{value = 32 : index}> : () -> index
        %371 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%369, %370, %371) ({
        ^bb0(%arg15: index):
          %391 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %392 = "aie.objectfifo.subview.access"(%391) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %393 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %394 = "aie.objectfifo.subview.access"(%393) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%394, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %395 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %396 = "aie.objectfifo.subview.access"(%395) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%396, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %397 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %398 = "aie.objectfifo.subview.access"(%397) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%398, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %399 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %400 = "aie.objectfifo.subview.access"(%399) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%400, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %401 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %402 = "aie.objectfifo.subview.access"(%401) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%402, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %403 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %404 = "aie.objectfifo.subview.access"(%403) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%404, %392, %368) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %372 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %373 = "aie.objectfifo.subview.access"(%372) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%373) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %374 = "arith.constant"() <{value = 0 : index}> : () -> index
        %375 = "arith.constant"() <{value = 32 : index}> : () -> index
        %376 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%374, %375, %376) ({
        ^bb0(%arg14: index):
          %377 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %378 = "aie.objectfifo.subview.access"(%377) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %379 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %380 = "aie.objectfifo.subview.access"(%379) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%380, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %381 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %382 = "aie.objectfifo.subview.access"(%381) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%382, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %383 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %384 = "aie.objectfifo.subview.access"(%383) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%384, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %385 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %386 = "aie.objectfifo.subview.access"(%385) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%386, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %387 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %388 = "aie.objectfifo.subview.access"(%387) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%388, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %389 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %390 = "aie.objectfifo.subview.access"(%389) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%390, %378, %373) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_7, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_7_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %98 = "aie.core"(%58) <{stack_size = 1024 : i32}> ({
      %275 = "arith.constant"() <{value = 0 : index}> : () -> index
      %276 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %277 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%275, %276, %277) ({
      ^bb0(%arg8: index):
        %278 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %279 = "aie.objectfifo.subview.access"(%278) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%279) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %280 = "arith.constant"() <{value = 0 : index}> : () -> index
        %281 = "arith.constant"() <{value = 32 : index}> : () -> index
        %282 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%280, %281, %282) ({
        ^bb0(%arg12: index):
          %340 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %341 = "aie.objectfifo.subview.access"(%340) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %342 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %343 = "aie.objectfifo.subview.access"(%342) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%343, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %344 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %345 = "aie.objectfifo.subview.access"(%344) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%345, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %346 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %347 = "aie.objectfifo.subview.access"(%346) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%347, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %348 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %349 = "aie.objectfifo.subview.access"(%348) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%349, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %350 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %351 = "aie.objectfifo.subview.access"(%350) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%351, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %352 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %353 = "aie.objectfifo.subview.access"(%352) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%353, %341, %279) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %283 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %284 = "aie.objectfifo.subview.access"(%283) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%284) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %285 = "arith.constant"() <{value = 0 : index}> : () -> index
        %286 = "arith.constant"() <{value = 32 : index}> : () -> index
        %287 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%285, %286, %287) ({
        ^bb0(%arg11: index):
          %326 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %327 = "aie.objectfifo.subview.access"(%326) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %328 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %329 = "aie.objectfifo.subview.access"(%328) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%329, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %330 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %331 = "aie.objectfifo.subview.access"(%330) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%331, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %332 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %333 = "aie.objectfifo.subview.access"(%332) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%333, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %334 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %335 = "aie.objectfifo.subview.access"(%334) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%335, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %336 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %337 = "aie.objectfifo.subview.access"(%336) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%337, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %338 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %339 = "aie.objectfifo.subview.access"(%338) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%339, %327, %284) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %288 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %289 = "aie.objectfifo.subview.access"(%288) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%289) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %290 = "arith.constant"() <{value = 0 : index}> : () -> index
        %291 = "arith.constant"() <{value = 32 : index}> : () -> index
        %292 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%290, %291, %292) ({
        ^bb0(%arg10: index):
          %312 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %313 = "aie.objectfifo.subview.access"(%312) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %314 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %315 = "aie.objectfifo.subview.access"(%314) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%315, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %316 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %317 = "aie.objectfifo.subview.access"(%316) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%317, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %318 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %319 = "aie.objectfifo.subview.access"(%318) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%319, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %320 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %321 = "aie.objectfifo.subview.access"(%320) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%321, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %322 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %323 = "aie.objectfifo.subview.access"(%322) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%323, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %324 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %325 = "aie.objectfifo.subview.access"(%324) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%325, %313, %289) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %293 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %294 = "aie.objectfifo.subview.access"(%293) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%294) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %295 = "arith.constant"() <{value = 0 : index}> : () -> index
        %296 = "arith.constant"() <{value = 32 : index}> : () -> index
        %297 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%295, %296, %297) ({
        ^bb0(%arg9: index):
          %298 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %299 = "aie.objectfifo.subview.access"(%298) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %300 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %301 = "aie.objectfifo.subview.access"(%300) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%301, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %302 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %303 = "aie.objectfifo.subview.access"(%302) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%303, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %304 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %305 = "aie.objectfifo.subview.access"(%304) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%305, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %306 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %307 = "aie.objectfifo.subview.access"(%306) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%307, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %308 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %309 = "aie.objectfifo.subview.access"(%308) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%309, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %310 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %311 = "aie.objectfifo.subview.access"(%310) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%311, %299, %294) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_8, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_8_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    %99 = "aie.core"(%59) <{stack_size = 1024 : i32}> ({
      %196 = "arith.constant"() <{value = 0 : index}> : () -> index
      %197 = "arith.constant"() <{value = 4294967295 : index}> : () -> index
      %198 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%196, %197, %198) ({
      ^bb0(%arg3: index):
        %199 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %200 = "aie.objectfifo.subview.access"(%199) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%200) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %201 = "arith.constant"() <{value = 0 : index}> : () -> index
        %202 = "arith.constant"() <{value = 32 : index}> : () -> index
        %203 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%201, %202, %203) ({
        ^bb0(%arg7: index):
          %261 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %262 = "aie.objectfifo.subview.access"(%261) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %263 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %264 = "aie.objectfifo.subview.access"(%263) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%264, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %265 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %266 = "aie.objectfifo.subview.access"(%265) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%266, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %267 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %268 = "aie.objectfifo.subview.access"(%267) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%268, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %269 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %270 = "aie.objectfifo.subview.access"(%269) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%270, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %271 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %272 = "aie.objectfifo.subview.access"(%271) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%272, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %273 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %274 = "aie.objectfifo.subview.access"(%273) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%274, %262, %200) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %204 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %205 = "aie.objectfifo.subview.access"(%204) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%205) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %206 = "arith.constant"() <{value = 0 : index}> : () -> index
        %207 = "arith.constant"() <{value = 32 : index}> : () -> index
        %208 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%206, %207, %208) ({
        ^bb0(%arg6: index):
          %247 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %248 = "aie.objectfifo.subview.access"(%247) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %249 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %250 = "aie.objectfifo.subview.access"(%249) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%250, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %251 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %252 = "aie.objectfifo.subview.access"(%251) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%252, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %253 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %254 = "aie.objectfifo.subview.access"(%253) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%254, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %255 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %256 = "aie.objectfifo.subview.access"(%255) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%256, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %257 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %258 = "aie.objectfifo.subview.access"(%257) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%258, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %259 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %260 = "aie.objectfifo.subview.access"(%259) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%260, %248, %205) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %209 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %210 = "aie.objectfifo.subview.access"(%209) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%210) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %211 = "arith.constant"() <{value = 0 : index}> : () -> index
        %212 = "arith.constant"() <{value = 32 : index}> : () -> index
        %213 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%211, %212, %213) ({
        ^bb0(%arg5: index):
          %233 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %234 = "aie.objectfifo.subview.access"(%233) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %235 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %236 = "aie.objectfifo.subview.access"(%235) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%236, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %237 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %238 = "aie.objectfifo.subview.access"(%237) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%238, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %239 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %240 = "aie.objectfifo.subview.access"(%239) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%240, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %241 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %242 = "aie.objectfifo.subview.access"(%241) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%242, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %243 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %244 = "aie.objectfifo.subview.access"(%243) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%244, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %245 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %246 = "aie.objectfifo.subview.access"(%245) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%246, %234, %210) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        %214 = "aie.objectfifo.acquire"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>
        %215 = "aie.objectfifo.subview.access"(%214) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<192x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<192x12x!aiex.bfp<"v8bfp16ebs8">>
        "func.call"(%215) <{callee = @zero_kernel}> : (memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        %216 = "arith.constant"() <{value = 0 : index}> : () -> index
        %217 = "arith.constant"() <{value = 32 : index}> : () -> index
        %218 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%216, %217, %218) ({
        ^bb0(%arg4: index):
          %219 = "aie.objectfifo.acquire"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>
          %220 = "aie.objectfifo.subview.access"(%219) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<128x12x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<128x12x!aiex.bfp<"v8bfp16ebs8">>
          %221 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %222 = "aie.objectfifo.subview.access"(%221) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%222, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %223 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %224 = "aie.objectfifo.subview.access"(%223) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%224, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %225 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %226 = "aie.objectfifo.subview.access"(%225) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%226, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %227 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %228 = "aie.objectfifo.subview.access"(%227) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%228, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %229 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %230 = "aie.objectfifo.subview.access"(%229) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%230, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          %231 = "aie.objectfifo.acquire"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> !aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>
          %232 = "aie.objectfifo.subview.access"(%231) <{index = 0 : i32}> : (!aie.objectfifosubview<memref<32x16x!aiex.bfp<"v8bfp16ebs8">>>) -> memref<32x16x!aiex.bfp<"v8bfp16ebs8">>
          "func.call"(%232, %220, %215) <{callee = @matmul_vectorized_bfp16}> : (memref<32x16x!aiex.bfp<"v8bfp16ebs8">>, memref<128x12x!aiex.bfp<"v8bfp16ebs8">>, memref<192x12x!aiex.bfp<"v8bfp16ebs8">>) -> ()
          "aie.objectfifo.release"() <{objFifo_name = @A_L2L1_3, port = 1 : i32, size = 1 : i32}> : () -> ()
          "aie.objectfifo.release"() <{objFifo_name = @B_L2L1_9, port = 1 : i32, size = 1 : i32}> : () -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "aie.objectfifo.release"() <{objFifo_name = @C_L1L2_9_3, port = 0 : i32, size = 1 : i32}> : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "aie.end"() : () -> ()
    }) : (index) -> index
    "aie.runtime_sequence"() <{sym_name = "seq"}> ({
    ^bb0(%arg0: memref<1572864x!aiex.bfp<"v8bfp16ebs8">>, %arg1: memref<491520x!aiex.bfp<"v8bfp16ebs8">>, %arg2: memref<368640x!aiex.bfp<"v8bfp16ebs8">>):
      %100 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 0 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%100) : (index) -> ()
      %101 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 98304 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%101) : (index) -> ()
      %102 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 196608 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%102) : (index) -> ()
      %103 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 294912 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%103) : (index) -> ()
      %104 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%104) : (index) -> ()
      %105 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%105) : (index) -> ()
      %106 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%106) : (index) -> ()
      %107 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%107) : (index) -> ()
      %108 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%108) : (index) -> ()
      %109 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%109) : (index) -> ()
      %110 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%110) : (index) -> ()
      %111 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%111) : (index) -> ()
      %112 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%112) : (index) -> ()
      %113 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_9, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 442368 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%113) : (index) -> ()
      %114 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 0 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%114) : (index) -> ()
      %115 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 9216 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%115) : (index) -> ()
      %116 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 18432 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%116) : (index) -> ()
      %117 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 27648 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%117) : (index) -> ()
      %118 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 36864 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%118) : (index) -> ()
      %119 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 46080 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%119) : (index) -> ()
      %120 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 55296 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%120) : (index) -> ()
      %121 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 64512 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%121) : (index) -> ()
      %122 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 73728 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%122) : (index) -> ()
      %123 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_9, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 82944 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%123) : (index) -> ()
      %124 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 393216 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%124) : (index) -> ()
      %125 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 491520 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%125) : (index) -> ()
      %126 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 589824 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%126) : (index) -> ()
      %127 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 688128 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%127) : (index) -> ()
      %128 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%128) : (index) -> ()
      %129 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%129) : (index) -> ()
      %130 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%130) : (index) -> ()
      %131 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%131) : (index) -> ()
      %132 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%132) : (index) -> ()
      %133 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%133) : (index) -> ()
      %134 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%134) : (index) -> ()
      %135 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%135) : (index) -> ()
      %136 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%136) : (index) -> ()
      %137 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_9, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 442368 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%137) : (index) -> ()
      %138 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 92160 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%138) : (index) -> ()
      %139 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 101376 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%139) : (index) -> ()
      %140 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 110592 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%140) : (index) -> ()
      %141 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 119808 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%141) : (index) -> ()
      %142 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 129024 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%142) : (index) -> ()
      %143 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 138240 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%143) : (index) -> ()
      %144 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 147456 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%144) : (index) -> ()
      %145 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 156672 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%145) : (index) -> ()
      %146 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 165888 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%146) : (index) -> ()
      %147 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_9, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 175104 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%147) : (index) -> ()
      %148 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 786432 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%148) : (index) -> ()
      %149 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 884736 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%149) : (index) -> ()
      %150 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 983040 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%150) : (index) -> ()
      %151 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1081344 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%151) : (index) -> ()
      %152 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%152) : (index) -> ()
      %153 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%153) : (index) -> ()
      %154 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%154) : (index) -> ()
      %155 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%155) : (index) -> ()
      %156 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%156) : (index) -> ()
      %157 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%157) : (index) -> ()
      %158 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%158) : (index) -> ()
      %159 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%159) : (index) -> ()
      %160 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%160) : (index) -> ()
      %161 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_9, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 442368 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%161) : (index) -> ()
      %162 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 184320 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%162) : (index) -> ()
      %163 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 193536 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%163) : (index) -> ()
      %164 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 202752 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%164) : (index) -> ()
      %165 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 211968 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%165) : (index) -> ()
      %166 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 221184 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%166) : (index) -> ()
      %167 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 230400 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%167) : (index) -> ()
      %168 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 239616 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%168) : (index) -> ()
      %169 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 248832 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%169) : (index) -> ()
      %170 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 258048 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%170) : (index) -> ()
      %171 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_9, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 267264 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%171) : (index) -> ()
      %172 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1179648 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%172) : (index) -> ()
      %173 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1277952 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%173) : (index) -> ()
      %174 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1376256 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%174) : (index) -> ()
      %175 = "aiex.dma_configure_task_for"() <{alloc = @A_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg0) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 98304, stride = 1>]>, len = 98304 : i32, offset = 1474560 : i32}> : (memref<1572864x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%175) : (index) -> ()
      %176 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_0, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 0 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%176) : (index) -> ()
      %177 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_1, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 49152 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%177) : (index) -> ()
      %178 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_2, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 98304 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%178) : (index) -> ()
      %179 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_3, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 147456 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%179) : (index) -> ()
      %180 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_4, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 196608 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%180) : (index) -> ()
      %181 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_5, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 245760 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%181) : (index) -> ()
      %182 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_6, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 294912 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%182) : (index) -> ()
      %183 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_7, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 344064 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%183) : (index) -> ()
      %184 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_8, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 393216 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%184) : (index) -> ()
      %185 = "aiex.dma_configure_task_for"() <{alloc = @B_L3L2_9, issue_token = false, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg1) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 49152, stride = 1>]>, len = 49152 : i32, offset = 442368 : i32}> : (memref<491520x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%185) : (index) -> ()
      %186 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_0, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 276480 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%186) : (index) -> ()
      %187 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_1, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 285696 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%187) : (index) -> ()
      %188 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_2, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 294912 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%188) : (index) -> ()
      %189 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_3, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 304128 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%189) : (index) -> ()
      %190 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_4, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 313344 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%190) : (index) -> ()
      %191 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_5, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 322560 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%191) : (index) -> ()
      %192 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_6, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 331776 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%192) : (index) -> ()
      %193 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_7, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 340992 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%193) : (index) -> ()
      %194 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_8, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 350208 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%194) : (index) -> ()
      %195 = "aiex.dma_configure_task_for"() <{alloc = @C_L2L3_9, issue_token = true, repeat_count = 0 : i32}> ({
        "aie.dma_bd"(%arg2) <{burst_length = 0 : i32, dimensions = #aie<bd_dim_layout_array[<size = 1, stride = 0>, <size = 1, stride = 0>, <size = 1, stride = 0>, <size = 9216, stride = 1>]>, len = 9216 : i32, offset = 359424 : i32}> : (memref<368640x!aiex.bfp<"v8bfp16ebs8">>) -> ()
        "aie.end"() : () -> ()
      }) : () -> index
      "aiex.dma_start_task"(%195) : (index) -> ()
    }) : () -> ()
    "aie.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

