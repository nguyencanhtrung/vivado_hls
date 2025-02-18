/*******************************************************************************
Vendor: Xilinx 
Associated Filename: hamming_window.c
Purpose: Vivado HLS tutorial example 
Revision History: March 1, 2013 - initial release
                                                
*******************************************************************************
Copyright (C) 2013 XILINX, Inc. 

This file contains confidential and proprietary information of Xilinx, Inc. and 
is protected under U.S. and international copyright and other intellectual 
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials 
distributed herewith. Except as otherwise provided in a valid license issued to 
you by Xilinx, and to the maximum extent permitted by applicable law: 
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
in contract or tort, including negligence, or under any other theory of 
liability) for any loss or damage of any kind or nature related to, arising under 
or in connection with these materials, including for any direct, or any indirect, 
special, incidental, or consequential loss or damage (including loss of data, 
profits, goodwill, or any type of loss or damage suffered as a result of any 
action brought by a third party) even if such damage or loss was reasonably 
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any 
application requiring fail-safe performance, such as life-support or safety 
devices or systems, Class III medical devices, nuclear facilities, applications 
related to the deployment of airbags, or any other applications that could lead 
to death, personal injury, or severe property or environmental damage 
(individually and collectively, "Critical Applications"). Customer assumes the 
sole risk and liability of any use of Xilinx products in Critical Applications, 
subject only to applicable laws and regulations governing limitations on product 
liability. 

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
ALL TIMES.

*******************************************************************************/
#include "hamming_window.h" // Provides default WINDOW_LEN if not user defined

// Translation module function prototypes:
// [Static Declaration] just to ensure this function is only visible in current
// translation unit
// Static keyword can be deleted -- Trung comment
static void hamming_rom_init(in_data_t rom_array[]);

// Function definitions:
void hamming_window(
		out_data_t outdata[WINDOW_LEN],     // output -- array = BRAM access
		in_data_t indata[WINDOW_LEN])		// input -- array = BRAM access
{
   // Keyword static here just ensure this variable ins only visible in current function
   static in_data_t window_coeff[WINDOW_LEN];
   unsigned i;

   // In order to ensure that 'window_coeff' is inferred and properly
   // initialized as a ROM, it is recommended that the array initialization
   // be done in a sub-function with global (wrt this source file) scope.
   hamming_rom_init(window_coeff);

//  hamming_window_label1:for (i = 0; i < WINDOW_LEN; i++) {
//	 float real_val = 0.54f -
//		0.46f * cos(2.0f * M_PI * i / (float)(WINDOW_LEN - 1));
//	 window_coeff[i] = (in_data_t)(WIN_COEFF_SCALE * real_val);
//  }

   for (i = 0; i < WINDOW_LEN; i++) {
#pragma AP pipeline
      outdata[i] = (out_data_t)window_coeff[i] * (out_data_t)indata[i];
   }
}

// This initialization function will be optimized away during high level
// sythesis (HLS), resulting in the underlying memory being inferred as a ROM
// by RTL synthesis.
// What happen if we optimize here?????
static void hamming_rom_init(in_data_t rom_array[WINDOW_LEN])
{
   int i;
   for (i = 0; i < WINDOW_LEN; i++) {
      float real_val = 0.54f -
         0.46f * cos(2.0f * M_PI * i / (float)(WINDOW_LEN - 1));
      rom_array[i] = (in_data_t)(WIN_COEFF_SCALE * real_val);
   }
}

