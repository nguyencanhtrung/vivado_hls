# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2015.3
# Copyright (C) 2015 Xilinx Inc. All rights reserved.
# 
# ==============================================================

proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    puts "@E SystemC simulation FAILED with ${mismatch_num} mismatches detected."
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                puts "@E Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            } else {
                puts "@E Simulation failed."
            }
        } else {
            puts "@E Simulation failed."
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            puts "@E Simulation failed."
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            puts "@E Simulation FAILED with ${unmatch_num} mismatches detected."
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            puts "@E Simulation failed: Function \'main\' returns nonzero value \'$line\'."
        }
    }
    if {[file exists ".exit.err"]} {
        puts "@E Simulation failed."
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.axi_interfaces.autotvin_d_o_0.dat"
         "c.axi_interfaces.autotvin_d_o_1.dat"
         "c.axi_interfaces.autotvin_d_o_2.dat"
         "c.axi_interfaces.autotvin_d_o_3.dat"
         "c.axi_interfaces.autotvin_d_o_4.dat"
         "c.axi_interfaces.autotvin_d_o_5.dat"
         "c.axi_interfaces.autotvin_d_o_6.dat"
         "c.axi_interfaces.autotvin_d_o_7.dat"
         "c.axi_interfaces.autotvin_d_i_0.dat"
         "c.axi_interfaces.autotvin_d_i_1.dat"
         "c.axi_interfaces.autotvin_d_i_2.dat"
         "c.axi_interfaces.autotvin_d_i_3.dat"
         "c.axi_interfaces.autotvin_d_i_4.dat"
         "c.axi_interfaces.autotvin_d_i_5.dat"
         "c.axi_interfaces.autotvin_d_i_6.dat"
         "c.axi_interfaces.autotvin_d_i_7.dat"
         "c.axi_interfaces.autotvout_d_o_0.dat"
         "c.axi_interfaces.autotvout_d_o_1.dat"
         "c.axi_interfaces.autotvout_d_o_2.dat"
         "c.axi_interfaces.autotvout_d_o_3.dat"
         "c.axi_interfaces.autotvout_d_o_4.dat"
         "c.axi_interfaces.autotvout_d_o_5.dat"
         "c.axi_interfaces.autotvout_d_o_6.dat"
         "c.axi_interfaces.autotvout_d_o_7.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            puts "@E \[SIM-320\] C TB testing failed. Please check C TB or re-run cosim.  "
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            puts "@E \[SIM-320\] C TB testing failed. Please check C TB or re-run cosim.  "
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.axi_interfaces.autotvout_d_o_0.dat"
         "rtl.axi_interfaces.autotvout_d_o_1.dat"
         "rtl.axi_interfaces.autotvout_d_o_2.dat"
         "rtl.axi_interfaces.autotvout_d_o_3.dat"
         "rtl.axi_interfaces.autotvout_d_o_4.dat"
         "rtl.axi_interfaces.autotvout_d_o_5.dat"
         "rtl.axi_interfaces.autotvout_d_o_6.dat"
         "rtl.axi_interfaces.autotvout_d_o_7.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            puts "@E \[SIM-303\] Aborting co-simulation: RTL simulation failed.  "
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            puts "@E \[SIM-303\] Aborting co-simulation: RTL simulation failed.  "
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
