set moduleName dct_Loop_Xpose_Col_Outer_Loop_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct_Loop_Xpose_Col_Outer_Loop_proc}
set C_modelType { void 0 }
set C_modelArgList { 
	{ col_outbuf_i int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ buf_2d_out int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_outbuf_i", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_2d_out", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_outbuf_i_address0 sc_out sc_lv 6 signal 0 } 
	{ col_outbuf_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_outbuf_i_q0 sc_in sc_lv 16 signal 0 } 
	{ buf_2d_out_address0 sc_out sc_lv 6 signal 1 } 
	{ buf_2d_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_2d_out_we0 sc_out sc_logic 1 signal 1 } 
	{ buf_2d_out_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_outbuf_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "address0" }} , 
 	{ "name": "col_outbuf_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "ce0" }} , 
 	{ "name": "col_outbuf_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_outbuf_i", "role": "q0" }} , 
 	{ "name": "buf_2d_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf_2d_out", "role": "address0" }} , 
 	{ "name": "buf_2d_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_out", "role": "ce0" }} , 
 	{ "name": "buf_2d_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2d_out", "role": "we0" }} , 
 	{ "name": "buf_2d_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_2d_out", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	col_outbuf_i { ap_memory {  { col_outbuf_i_address0 mem_address 1 6 }  { col_outbuf_i_ce0 mem_ce 1 1 }  { col_outbuf_i_q0 mem_dout 0 16 } } }
	buf_2d_out { ap_memory {  { buf_2d_out_address0 mem_address 1 6 }  { buf_2d_out_ce0 mem_ce 1 1 }  { buf_2d_out_we0 mem_we 1 1 }  { buf_2d_out_d0 mem_din 1 16 } } }
}
