############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
set_directive_array_partition -type cyclic -factor 8 -dim 1 "axi_interfaces" d_o
set_directive_interface -mode axis "axi_interfaces" d_o
set_directive_array_partition -type cyclic -factor 8 -dim 1 "axi_interfaces" d_i
set_directive_interface -mode axis "axi_interfaces" d_i
set_directive_unroll -factor 8 "axi_interfaces/For_Loop"
set_directive_pipeline -II 1 -rewind "axi_interfaces/For_Loop"
