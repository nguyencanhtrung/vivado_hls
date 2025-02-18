// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _adders_io_HH_
#define _adders_io_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct adders_io : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in1;
    sc_in< sc_logic > in1_ap_vld;
    sc_in< sc_lv<32> > in2;
    sc_out< sc_logic > in2_ap_ack;
    sc_in< sc_lv<32> > in_out1_i;
    sc_in< sc_logic > in_out1_i_ap_vld;
    sc_out< sc_logic > in_out1_i_ap_ack;
    sc_out< sc_lv<32> > in_out1_o;
    sc_out< sc_logic > in_out1_o_ap_vld;
    sc_in< sc_logic > in_out1_o_ap_ack;


    // Module declarations
    adders_io(sc_module_name name);
    SC_HAS_PROCESS(adders_io);

    ~adders_io();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_18;
    sc_signal< sc_lv<32> > in1_in_sig;
    sc_signal< sc_lv<32> > in1_preg;
    sc_signal< sc_logic > in1_ap_vld_in_sig;
    sc_signal< sc_logic > in1_ap_vld_preg;
    sc_signal< sc_lv<32> > in_out1_read_reg_68;
    sc_signal< bool > ap_sig_bdd_51;
    sc_signal< sc_lv<32> > tmp1_fu_57_p2;
    sc_signal< sc_lv<32> > tmp1_reg_73;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_64;
    sc_signal< sc_logic > ap_reg_ioackin_in_out1_o_ap_ack;
    sc_signal< sc_logic > ap_sig_ioackin_in_out1_o_ap_ack;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_18();
    void thread_ap_sig_bdd_51();
    void thread_ap_sig_bdd_64();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_ioackin_in_out1_o_ap_ack();
    void thread_in1_ap_vld_in_sig();
    void thread_in1_in_sig();
    void thread_in2_ap_ack();
    void thread_in_out1_i_ap_ack();
    void thread_in_out1_o();
    void thread_in_out1_o_ap_vld();
    void thread_tmp1_fu_57_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
