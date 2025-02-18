// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_write_data (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        buf_r_address0,
        buf_r_ce0,
        buf_r_q0,
        buf_r_address1,
        buf_r_ce1,
        buf_r_q1,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        output_r_address1,
        output_r_ce1,
        output_r_we1,
        output_r_d1
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 6'b10;
parameter    ap_ST_pp0_stg1_fsm_2 = 6'b100;
parameter    ap_ST_pp0_stg2_fsm_3 = 6'b1000;
parameter    ap_ST_pp0_stg3_fsm_4 = 6'b10000;
parameter    ap_ST_st7_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv57_0 = 57'b000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv7_2 = 7'b10;
parameter    ap_const_lv7_3 = 7'b11;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv7_4 = 7'b100;
parameter    ap_const_lv7_5 = 7'b101;
parameter    ap_const_lv6_2 = 6'b10;
parameter    ap_const_lv6_3 = 6'b11;
parameter    ap_const_lv7_6 = 7'b110;
parameter    ap_const_lv7_7 = 7'b111;
parameter    ap_const_lv6_4 = 6'b100;
parameter    ap_const_lv6_5 = 6'b101;
parameter    ap_const_lv6_6 = 6'b110;
parameter    ap_const_lv6_7 = 6'b111;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] buf_r_address0;
output   buf_r_ce0;
input  [15:0] buf_r_q0;
output  [5:0] buf_r_address1;
output   buf_r_ce1;
input  [15:0] buf_r_q1;
output  [5:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;
output  [5:0] output_r_address1;
output   output_r_ce1;
output   output_r_we1;
output  [15:0] output_r_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] buf_r_address0;
reg buf_r_ce0;
reg[5:0] buf_r_address1;
reg buf_r_ce1;
reg[5:0] output_r_address0;
reg output_r_ce0;
reg output_r_we0;
reg[5:0] output_r_address1;
reg output_r_ce1;
reg output_r_we1;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm = 6'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_25;
reg   [3:0] r_reg_214;
wire   [0:0] exitcond1_fu_225_p2;
reg   [0:0] exitcond1_reg_436;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_bdd_61;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [3:0] r_1_fu_231_p2;
reg   [3:0] r_1_reg_440;
wire   [6:0] tmp_fu_237_p3;
reg   [6:0] tmp_reg_445;
wire   [2:0] tmp_18_fu_265_p1;
reg   [2:0] tmp_18_reg_465;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_2;
reg    ap_sig_bdd_88;
wire   [5:0] tmp_1_fu_297_p3;
reg   [5:0] tmp_1_reg_480;
reg    ap_sig_cseq_ST_pp0_stg2_fsm_3;
reg    ap_sig_bdd_103;
reg    ap_sig_cseq_ST_pp0_stg3_fsm_4;
reg    ap_sig_bdd_115;
reg    ap_sig_bdd_123;
reg   [3:0] r_phi_fu_218_p4;
wire   [63:0] tmp_3_fu_245_p1;
wire   [63:0] tmp_6_fu_256_p3;
wire   [63:0] tmp_8_fu_274_p3;
wire   [63:0] tmp_s_fu_288_p3;
wire   [63:0] tmp_5_fu_304_p1;
wire   [63:0] tmp_5_1_fu_315_p1;
wire   [63:0] tmp_11_fu_325_p3;
wire   [63:0] tmp_13_fu_339_p3;
wire   [63:0] tmp_5_2_fu_353_p1;
wire   [63:0] tmp_5_3_fu_363_p1;
wire   [63:0] tmp_15_fu_373_p3;
wire   [63:0] tmp_17_fu_387_p3;
wire   [63:0] tmp_5_4_fu_401_p1;
wire   [63:0] tmp_5_5_fu_411_p1;
wire   [63:0] tmp_5_6_fu_421_p1;
wire   [63:0] tmp_5_7_fu_431_p1;
wire   [6:0] tmp_4_fu_250_p2;
wire   [6:0] tmp_7_fu_269_p2;
wire   [6:0] tmp_9_fu_283_p2;
wire   [5:0] tmp_4_s_fu_309_p2;
wire   [6:0] tmp_10_fu_320_p2;
wire   [6:0] tmp_12_fu_334_p2;
wire   [5:0] tmp_4_1_fu_348_p2;
wire   [5:0] tmp_4_2_fu_358_p2;
wire   [6:0] tmp_14_fu_368_p2;
wire   [6:0] tmp_16_fu_382_p2;
wire   [5:0] tmp_4_3_fu_396_p2;
wire   [5:0] tmp_4_4_fu_406_p2;
wire   [5:0] tmp_4_5_fu_416_p2;
wire   [5:0] tmp_4_6_fu_426_p2;
reg    ap_sig_cseq_ST_st7_fsm_5;
reg    ap_sig_bdd_307;
reg   [5:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond1_fu_225_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_123)) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((exitcond1_reg_436 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_123) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & ~(exitcond1_reg_436 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_436 == ap_const_lv1_0))) begin
        r_reg_214 <= r_1_reg_440;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_123)) begin
        r_reg_214 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        exitcond1_reg_436 <= exitcond1_fu_225_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        r_1_reg_440 <= r_1_fu_231_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond1_fu_225_p2 == ap_const_lv1_0))) begin
        tmp_18_reg_465 <= tmp_18_fu_265_p1;
        tmp_reg_445[6 : 3] <= tmp_fu_237_p3[6 : 3];
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_436 == ap_const_lv1_0))) begin
        tmp_1_reg_480[5 : 3] <= tmp_1_fu_297_p3[5 : 3];
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st7_fsm_5) begin
    if (((ap_const_logic_1 == ap_done_reg) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st7_fsm_5) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. ///
always @ (ap_sig_bdd_61) begin
    if (ap_sig_bdd_61) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg1_fsm_2 assign process. ///
always @ (ap_sig_bdd_88) begin
    if (ap_sig_bdd_88) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg2_fsm_3 assign process. ///
always @ (ap_sig_bdd_103) begin
    if (ap_sig_bdd_103) begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg3_fsm_4 assign process. ///
always @ (ap_sig_bdd_115) begin
    if (ap_sig_bdd_115) begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_25) begin
    if (ap_sig_bdd_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_5 assign process. ///
always @ (ap_sig_bdd_307) begin
    if (ap_sig_bdd_307) begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_0;
    end
end

/// buf_r_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or tmp_3_fu_245_p1 or tmp_8_fu_274_p3 or tmp_11_fu_325_p3 or tmp_15_fu_373_p3) begin
    if ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            buf_r_address0 = tmp_15_fu_373_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) begin
            buf_r_address0 = tmp_11_fu_325_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) begin
            buf_r_address0 = tmp_8_fu_274_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
            buf_r_address0 = tmp_3_fu_245_p1;
        end else begin
            buf_r_address0 = 'bx;
        end
    end else begin
        buf_r_address0 = 'bx;
    end
end

/// buf_r_address1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or tmp_6_fu_256_p3 or tmp_s_fu_288_p3 or tmp_13_fu_339_p3 or tmp_17_fu_387_p3) begin
    if ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            buf_r_address1 = tmp_17_fu_387_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) begin
            buf_r_address1 = tmp_13_fu_339_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) begin
            buf_r_address1 = tmp_s_fu_288_p3;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
            buf_r_address1 = tmp_6_fu_256_p3;
        end else begin
            buf_r_address1 = 'bx;
        end
    end else begin
        buf_r_address1 = 'bx;
    end
end

/// buf_r_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        buf_r_ce0 = ap_const_logic_1;
    end else begin
        buf_r_ce0 = ap_const_logic_0;
    end
end

/// buf_r_ce1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        buf_r_ce1 = ap_const_logic_1;
    end else begin
        buf_r_ce1 = ap_const_logic_0;
    end
end

/// output_r_address0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or tmp_5_fu_304_p1 or tmp_5_2_fu_353_p1 or tmp_5_4_fu_401_p1 or tmp_5_6_fu_421_p1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        output_r_address0 = tmp_5_6_fu_421_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
        output_r_address0 = tmp_5_4_fu_401_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        output_r_address0 = tmp_5_2_fu_353_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2))) begin
        output_r_address0 = tmp_5_fu_304_p1;
    end else begin
        output_r_address0 = 'bx;
    end
end

/// output_r_address1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4 or tmp_5_1_fu_315_p1 or tmp_5_3_fu_363_p1 or tmp_5_5_fu_411_p1 or tmp_5_7_fu_431_p1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        output_r_address1 = tmp_5_7_fu_431_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
        output_r_address1 = tmp_5_5_fu_411_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3))) begin
        output_r_address1 = tmp_5_3_fu_363_p1;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2))) begin
        output_r_address1 = tmp_5_1_fu_315_p1;
    end else begin
        output_r_address1 = 'bx;
    end
end

/// output_r_ce0 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        output_r_ce0 = ap_const_logic_1;
    end else begin
        output_r_ce0 = ap_const_logic_0;
    end
end

/// output_r_ce1 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        output_r_ce1 = ap_const_logic_1;
    end else begin
        output_r_ce1 = ap_const_logic_0;
    end
end

/// output_r_we0 assign process. ///
always @ (exitcond1_reg_436 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_436 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_436 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond1_reg_436 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond1_reg_436 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        output_r_we0 = ap_const_logic_1;
    end else begin
        output_r_we0 = ap_const_logic_0;
    end
end

/// output_r_we1 assign process. ///
always @ (exitcond1_reg_436 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_2 or ap_sig_cseq_ST_pp0_stg2_fsm_3 or ap_sig_cseq_ST_pp0_stg3_fsm_4) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_436 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond1_reg_436 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond1_reg_436 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond1_reg_436 == ap_const_lv1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)))) begin
        output_r_we1 = ap_const_logic_1;
    end else begin
        output_r_we1 = ap_const_logic_0;
    end
end

/// r_phi_fu_218_p4 assign process. ///
always @ (r_reg_214 or exitcond1_reg_436 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or r_1_reg_440) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond1_reg_436 == ap_const_lv1_0))) begin
        r_phi_fu_218_p4 = r_1_reg_440;
    end else begin
        r_phi_fu_218_p4 = r_reg_214;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or exitcond1_fu_225_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_123) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_123) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond1_fu_225_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_pp0_stg1_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg2_fsm_3;
        end
        ap_ST_pp0_stg2_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg3_fsm_4;
        end
        ap_ST_pp0_stg3_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
        end
        ap_ST_st7_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_103 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_103 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_115 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_115 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_123 assign process. ///
always @ (ap_start or ap_done_reg) begin
    ap_sig_bdd_123 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_25 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_25 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_307 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_307 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_61 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_61 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_88 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_88 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end
assign exitcond1_fu_225_p2 = (r_phi_fu_218_p4 == ap_const_lv4_8? 1'b1: 1'b0);
assign output_r_d0 = buf_r_q0;
assign output_r_d1 = buf_r_q1;
assign r_1_fu_231_p2 = (r_phi_fu_218_p4 + ap_const_lv4_1);
assign tmp_10_fu_320_p2 = (tmp_reg_445 | ap_const_lv7_4);
assign tmp_11_fu_325_p3 = {{ap_const_lv57_0}, {tmp_10_fu_320_p2}};
assign tmp_12_fu_334_p2 = (tmp_reg_445 | ap_const_lv7_5);
assign tmp_13_fu_339_p3 = {{ap_const_lv57_0}, {tmp_12_fu_334_p2}};
assign tmp_14_fu_368_p2 = (tmp_reg_445 | ap_const_lv7_6);
assign tmp_15_fu_373_p3 = {{ap_const_lv57_0}, {tmp_14_fu_368_p2}};
assign tmp_16_fu_382_p2 = (tmp_reg_445 | ap_const_lv7_7);
assign tmp_17_fu_387_p3 = {{ap_const_lv57_0}, {tmp_16_fu_382_p2}};
assign tmp_18_fu_265_p1 = r_phi_fu_218_p4[2:0];
assign tmp_1_fu_297_p3 = {{tmp_18_reg_465}, {ap_const_lv3_0}};
assign tmp_3_fu_245_p1 = tmp_fu_237_p3;
assign tmp_4_1_fu_348_p2 = (tmp_1_reg_480 | ap_const_lv6_2);
assign tmp_4_2_fu_358_p2 = (tmp_1_reg_480 | ap_const_lv6_3);
assign tmp_4_3_fu_396_p2 = (tmp_1_reg_480 | ap_const_lv6_4);
assign tmp_4_4_fu_406_p2 = (tmp_1_reg_480 | ap_const_lv6_5);
assign tmp_4_5_fu_416_p2 = (tmp_1_reg_480 | ap_const_lv6_6);
assign tmp_4_6_fu_426_p2 = (tmp_1_reg_480 | ap_const_lv6_7);
assign tmp_4_fu_250_p2 = (tmp_fu_237_p3 | ap_const_lv7_1);
assign tmp_4_s_fu_309_p2 = (tmp_1_fu_297_p3 | ap_const_lv6_1);
assign tmp_5_1_fu_315_p1 = tmp_4_s_fu_309_p2;
assign tmp_5_2_fu_353_p1 = tmp_4_1_fu_348_p2;
assign tmp_5_3_fu_363_p1 = tmp_4_2_fu_358_p2;
assign tmp_5_4_fu_401_p1 = tmp_4_3_fu_396_p2;
assign tmp_5_5_fu_411_p1 = tmp_4_4_fu_406_p2;
assign tmp_5_6_fu_421_p1 = tmp_4_5_fu_416_p2;
assign tmp_5_7_fu_431_p1 = tmp_4_6_fu_426_p2;
assign tmp_5_fu_304_p1 = tmp_1_fu_297_p3;
assign tmp_6_fu_256_p3 = {{ap_const_lv57_0}, {tmp_4_fu_250_p2}};
assign tmp_7_fu_269_p2 = (tmp_reg_445 | ap_const_lv7_2);
assign tmp_8_fu_274_p3 = {{ap_const_lv57_0}, {tmp_7_fu_269_p2}};
assign tmp_9_fu_283_p2 = (tmp_reg_445 | ap_const_lv7_3);
assign tmp_fu_237_p3 = {{r_phi_fu_218_p4}, {ap_const_lv3_0}};
assign tmp_s_fu_288_p3 = {{ap_const_lv57_0}, {tmp_9_fu_283_p2}};
always @ (posedge ap_clk) begin
    tmp_reg_445[2:0] <= 3'b000;
    tmp_1_reg_480[2:0] <= 3'b000;
end



endmodule //dct_write_data

