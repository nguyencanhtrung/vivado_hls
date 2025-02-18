// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _adders_HH_
#define _adders_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "adders_add_32ns_32ns_32_8.h"

namespace ap_rtl {

struct adders : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in1;
    sc_in< sc_lv<32> > in2;
    sc_in< sc_lv<32> > in3;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    adders(sc_module_name name);
    SC_HAS_PROCESS(adders);

    ~adders();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    adders_add_32ns_32ns_32_8<1,8,32,32,32>* adders_add_32ns_32ns_32_8_U1;
    adders_add_32ns_32ns_32_8<1,8,32,32,32>* adders_add_32ns_32ns_32_8_U2;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_32;
    sc_signal< sc_lv<32> > grp_fu_42_p2;
    sc_signal< sc_lv<32> > tmp1_reg_63;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_bdd_57;
    sc_signal< sc_logic > grp_fu_42_ce;
    sc_signal< sc_lv<32> > grp_fu_48_p2;
    sc_signal< sc_logic > grp_fu_48_ce;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_bdd_83;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_st1_fsm_0;
    static const sc_lv<16> ap_ST_st2_fsm_1;
    static const sc_lv<16> ap_ST_st3_fsm_2;
    static const sc_lv<16> ap_ST_st4_fsm_3;
    static const sc_lv<16> ap_ST_st5_fsm_4;
    static const sc_lv<16> ap_ST_st6_fsm_5;
    static const sc_lv<16> ap_ST_st7_fsm_6;
    static const sc_lv<16> ap_ST_st8_fsm_7;
    static const sc_lv<16> ap_ST_st9_fsm_8;
    static const sc_lv<16> ap_ST_st10_fsm_9;
    static const sc_lv<16> ap_ST_st11_fsm_10;
    static const sc_lv<16> ap_ST_st12_fsm_11;
    static const sc_lv<16> ap_ST_st13_fsm_12;
    static const sc_lv<16> ap_ST_st14_fsm_13;
    static const sc_lv<16> ap_ST_st15_fsm_14;
    static const sc_lv<16> ap_ST_st16_fsm_15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_32();
    void thread_ap_sig_bdd_57();
    void thread_ap_sig_bdd_83();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_grp_fu_42_ce();
    void thread_grp_fu_48_ce();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
