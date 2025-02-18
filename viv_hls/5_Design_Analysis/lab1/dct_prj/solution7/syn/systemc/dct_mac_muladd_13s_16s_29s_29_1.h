// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __dct_mac_muladd_13s_16s_29s_29_1__HH__
#define __dct_mac_muladd_13s_16s_29s_29_1__HH__
#include "simcore_mac_11.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mac_muladd_13s_16s_29s_29_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    simcore_mac_11<ID, 1, din0_WIDTH, din1_WIDTH, din2_WIDTH, dout_WIDTH> simcore_mac_11_U;

    SC_CTOR(dct_mac_muladd_13s_16s_29s_29_1):  simcore_mac_11_U ("simcore_mac_11_U") {
        simcore_mac_11_U.din0(din0);
        simcore_mac_11_U.din1(din1);
        simcore_mac_11_U.din2(din2);
        simcore_mac_11_U.dout(dout);

    }

};

#endif //
