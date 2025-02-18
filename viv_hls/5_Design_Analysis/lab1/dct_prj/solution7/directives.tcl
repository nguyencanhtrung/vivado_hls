############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_unroll -factor 8 "dct_1d/DCT_Inner_Loop"
set_directive_pipeline "dct_1d/DCT_Outer_Loop"
set_directive_array_partition -type block -factor 4 -dim 2 "dct_2d" col_inbuf
set_directive_array_partition -type block -factor 4 -dim 2 "dct" buf_2d_in
set_directive_dataflow "dct"
set_directive_inline "dct_2d"
set_directive_pipeline "read_data/RD_Loop_Row"
set_directive_pipeline "write_data/WR_Loop_Row"
set_directive_pipeline "dct_2d/Xpose_Row_Inner_Loop"
set_directive_pipeline "dct_2d/Xpose_Col_Inner_Loop"
set_directive_pipeline "dct_2d/Row_DCT_Loop"
set_directive_pipeline "dct_2d/Col_DCT_Loop"
