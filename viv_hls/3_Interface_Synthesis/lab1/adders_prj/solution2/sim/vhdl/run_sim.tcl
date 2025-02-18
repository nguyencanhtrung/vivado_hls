# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.3
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

set ::env(LD_LIBRARY_PATH) /opt/Xilinx/Vivado_HLS/2015.3/lnx64/tools/fpo_v7_0:$::env(LD_LIBRARY_PATH)

set ::env(LD_LIBRARY_PATH) /opt/Xilinx/Vivado_HLS/2015.3/lnx64/tools/opencv:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx/Vivado_HLS/2015.3/lnx64/tools/fft_v9_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx/Vivado_HLS/2015.3/lnx64/tools/fir_v7_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx/Vivado_HLS/2015.3/lnx64/tools/dds_v6_0:$::env(LD_LIBRARY_PATH)

source check_sim.tcl

# --> test vector generation

puts "@I \[SIM-302\] Starting C TB testing ...  "

cd ../wrapc

file delete -force  "err.log"

if {![file exists cosim.tv.exe]} {
	puts "@E \[SIM-321\] EXE file generate failed, please re-run cosim."
	return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.tv.exe | tee temp0.log >&@ stdout} err]

if {$ret == 1} {
	puts "@E \[SIM-320\] C TB testing failed, stop generating test vectors. Please check C TB or re-run cosim."
	return -code error -errorcode $::errorCode
}

if {[file isfile adders.autotvin.dat]} {
	file delete -force adders.autotvin.dat
}

if {[file isfile adders.autotvout.dat]} {
	file delete -force adders.autotvout.dat
}

sc_sim_check $ret $err "temp0.log"

cd ../tv/cdatafile
set ret [check_tvin_file]

if {$ret == 1} {
	puts "@E \[SIM-344\] Rtl simulation failed."
	return -code error -errorcode $::errorCode
}

cd ../

# --> vhdl simulation

puts "@I \[SIM-322\] Starting VHDL simulation..."

puts "@I \[SIM-15\] Starting XSIM ..."

cd ../vhdl

file delete -force ".exit.err"
file delete -force ".aesl_error"
file delete -force "err.log"

if {[file isfile run_xsim.sh]} {
	set ret [catch {eval exec "sh ./run_xsim.sh | tee temp2.log" >&@ stdout} err]
}

cd ../tv/rtldatafile

set ret [check_tvout_file]

if {$ret == 1} {
	puts "@E \[SIM-344\] Rtl simulation failed."
	return -code error -errorcode $::errorCode
}

cd ../../wrapc_pc

puts "@I \[SIM-316\] Starting C post checking ..."

if {![file exists cosim.pc.exe]} {
    puts "@E \[SIM-320\] EXE file generate failed, please re-run cosim."
    return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.pc.exe | tee temp0.log >&@ stdout} err]

sc_sim_check $ret $err "temp3.log"
