############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_pipeline "matrixmul/Col"
set_directive_array_reshape -type complete -dim 2 "matrixmul" a
set_directive_array_reshape -type complete -dim 1 "matrixmul" b
set_directive_interface -mode ap_fifo "matrixmul" a
set_directive_interface -mode ap_fifo "matrixmul" b
set_directive_interface -mode ap_fifo "matrixmul" res
