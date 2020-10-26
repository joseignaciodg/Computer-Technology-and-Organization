////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: Module_synthesis.v
// /___/   /\     Timestamp: Wed Dec 05 14:56:40 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Module.ngc Module_synthesis.v 
// Device	: xc3s1000-5-ft256
// Input file	: Module.ngc
// Output file	: C:\hlocal\Lab5\netgen\synthesis\Module_synthesis.v
// # of Modules	: 1
// Design Name	: Module
// Xilinx        : C:\software\electronica\xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Module (
  stop, start, reset, clock, leds, Result1, Result2
);
  input stop;
  input start;
  input reset;
  input clock;
  output [9 : 0] leds;
  output [6 : 0] Result1;
  output [6 : 0] Result2;
  wire N0;
  wire N1;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N41;
  wire Result1_0_OBUF_14;
  wire Result1_1_OBUF_15;
  wire Result1_2_OBUF_16;
  wire Result1_3_OBUF_17;
  wire Result1_4_OBUF_18;
  wire Result1_5_OBUF_19;
  wire Result1_6_OBUF_20;
  wire Result2_0_OBUF_28;
  wire Result2_1_OBUF_29;
  wire Result2_2_OBUF_30;
  wire Result2_3_OBUF_31;
  wire Result2_4_OBUF_32;
  wire Result2_5_OBUF_33;
  wire Result2_6_OBUF_34;
  wire clock_BUFGP_36;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In26_48 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In53_49 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In82_50 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In_52 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ;
  wire \mod_slot_machine/U_CNTRL/STATE_FSM_FFd3-In ;
  wire \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output ;
  wire \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output1 ;
  wire \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output2 ;
  wire \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output3 ;
  wire \mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ;
  wire \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output ;
  wire \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output1 ;
  wire \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output2 ;
  wire \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output3 ;
  wire \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output ;
  wire \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output1 ;
  wire \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output2 ;
  wire \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output3 ;
  wire \mod_slot_machine/U_DP/Result<0>1 ;
  wire \mod_slot_machine/U_DP/Result<0>2 ;
  wire \mod_slot_machine/U_DP/Result<10>1 ;
  wire \mod_slot_machine/U_DP/Result<10>2 ;
  wire \mod_slot_machine/U_DP/Result<11>1 ;
  wire \mod_slot_machine/U_DP/Result<11>2 ;
  wire \mod_slot_machine/U_DP/Result<12>1 ;
  wire \mod_slot_machine/U_DP/Result<12>2 ;
  wire \mod_slot_machine/U_DP/Result<13>1 ;
  wire \mod_slot_machine/U_DP/Result<13>2 ;
  wire \mod_slot_machine/U_DP/Result<14>1 ;
  wire \mod_slot_machine/U_DP/Result<14>2 ;
  wire \mod_slot_machine/U_DP/Result<15>1 ;
  wire \mod_slot_machine/U_DP/Result<15>2 ;
  wire \mod_slot_machine/U_DP/Result<16>1 ;
  wire \mod_slot_machine/U_DP/Result<17>1 ;
  wire \mod_slot_machine/U_DP/Result<18>1 ;
  wire \mod_slot_machine/U_DP/Result<19>1 ;
  wire \mod_slot_machine/U_DP/Result<1>1 ;
  wire \mod_slot_machine/U_DP/Result<1>2 ;
  wire \mod_slot_machine/U_DP/Result<20>1 ;
  wire \mod_slot_machine/U_DP/Result<21>1 ;
  wire \mod_slot_machine/U_DP/Result<22>1 ;
  wire \mod_slot_machine/U_DP/Result<2>1 ;
  wire \mod_slot_machine/U_DP/Result<2>2 ;
  wire \mod_slot_machine/U_DP/Result<3>1 ;
  wire \mod_slot_machine/U_DP/Result<3>2 ;
  wire \mod_slot_machine/U_DP/Result<4>1 ;
  wire \mod_slot_machine/U_DP/Result<4>2 ;
  wire \mod_slot_machine/U_DP/Result<5>1 ;
  wire \mod_slot_machine/U_DP/Result<5>2 ;
  wire \mod_slot_machine/U_DP/Result<6>1 ;
  wire \mod_slot_machine/U_DP/Result<6>2 ;
  wire \mod_slot_machine/U_DP/Result<7>1 ;
  wire \mod_slot_machine/U_DP/Result<7>2 ;
  wire \mod_slot_machine/U_DP/Result<8>1 ;
  wire \mod_slot_machine/U_DP/Result<8>2 ;
  wire \mod_slot_machine/U_DP/Result<9>1 ;
  wire \mod_slot_machine/U_DP/Result<9>2 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout[1] ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_1_1_147 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_1_2_148 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_1_3_149 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout[2] ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_2_1_151 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_2_2_152 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_2_3_153 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout_2_4_154 ;
  wire \mod_slot_machine/U_DP/SEQ_GENE/dout[9] ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>_rt_158 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>_rt_160 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>_rt_162 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>_rt_164 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>_rt_166 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>_rt_168 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>_rt_170 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>_rt_172 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>_rt_174 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>_rt_176 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>_rt_178 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>_rt_180 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>_rt_182 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>_rt_184 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>_rt_186 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>_rt_188 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>_rt_190 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>_rt_192 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>_rt_194 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>_rt_196 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>_rt_198 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_0 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_1 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_10 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_11 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_12 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_13 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_14 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_15 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_16 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_17 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_18 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_19 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_2 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_20 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_21 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_22 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_3 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_4 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_5 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_6 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_7 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_8 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_9 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<22>_rt_223 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_not0001 ;
  wire \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>_rt_263 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>_rt_265 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>_rt_267 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>_rt_269 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>_rt_271 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>_rt_273 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>_rt_275 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>_rt_277 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>_rt_279 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>_rt_281 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>_rt_283 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>_rt_285 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>_rt_287 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>_rt_289 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>_rt_291 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>_rt_293 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>_rt_295 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>_rt_297 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>_rt_299 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>_rt_301 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>_rt_303 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>_rt_305 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>_rt_307 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>_rt_309 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_0 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_1 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_10 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_11 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_12 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_13 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_14 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_15 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_16 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_17 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_18 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_19 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_2 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_20 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_21 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_22 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_23 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_24 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_25 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_3 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_4 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_5 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_6 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_7 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_8 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_9 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<25>_rt_337 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_not0001 ;
  wire \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>_rt_382 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>_rt_384 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>_rt_386 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>_rt_388 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>_rt_390 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>_rt_392 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>_rt_394 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>_rt_396 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>_rt_398 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>_rt_400 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>_rt_402 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>_rt_404 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>_rt_406 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>_rt_408 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_0 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_1 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_10 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_11 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_12 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_13 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_14 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_15 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_2 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_3 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_4 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_5 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_6 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_7 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_8 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_9 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<15>_rt_426 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_not0001 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000016_446 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000034_447 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq00004_448 ;
  wire \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000043_449 ;
  wire \mod_slot_machine/control[0] ;
  wire \mod_slot_machine/control[2] ;
  wire \mod_slot_machine/control[3] ;
  wire \mod_slot_machine/reset_u ;
  wire reset_IBUF_456;
  wire start_IBUF_458;
  wire stop_IBUF_460;
  wire [3 : 0] \mod_slot_machine/U_DP/COUNTER_1/aux_output ;
  wire [3 : 0] \mod_slot_machine/U_DP/COUNTER_2/aux_output ;
  wire [3 : 0] \mod_slot_machine/U_DP/COUNTER_3/aux_output ;
  wire [25 : 0] \mod_slot_machine/U_DP/Result ;
  wire [21 : 0] \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy ;
  wire [0 : 0] \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_lut ;
  wire [22 : 0] \mod_slot_machine/U_DP/U_FREQ10HZ/count ;
  wire [4 : 0] \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy ;
  wire [5 : 0] \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut ;
  wire [24 : 0] \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy ;
  wire [0 : 0] \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_lut ;
  wire [25 : 0] \mod_slot_machine/U_DP/U_FREQ1HZ/count ;
  wire [5 : 0] \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy ;
  wire [6 : 0] \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut ;
  wire [14 : 0] \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy ;
  wire [0 : 0] \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_lut ;
  wire [15 : 0] \mod_slot_machine/U_DP/U_FREQ1KHZ/count ;
  wire [1 : 1] \mod_slot_machine/status ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd3  (
    .C(clock_BUFGP_36),
    .D(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3-In ),
    .R(\mod_slot_machine/reset_u ),
    .Q(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2  (
    .C(clock_BUFGP_36),
    .D(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In_52 ),
    .R(\mod_slot_machine/reset_u ),
    .Q(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout[2] )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout[1] )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_9  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(N1),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout[9] )
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<15>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [14]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<15>_rt_426 ),
    .O(\mod_slot_machine/U_DP/Result<15>2 )
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [13]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>_rt_390 ),
    .O(\mod_slot_machine/U_DP/Result<14>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [13]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>_rt_390 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [14])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [12]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>_rt_388 ),
    .O(\mod_slot_machine/U_DP/Result<13>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [12]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>_rt_388 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [13])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [11]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>_rt_386 ),
    .O(\mod_slot_machine/U_DP/Result<12>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [11]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>_rt_386 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [12])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [10]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>_rt_384 ),
    .O(\mod_slot_machine/U_DP/Result<11>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [10]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>_rt_384 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [11])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [9]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>_rt_382 ),
    .O(\mod_slot_machine/U_DP/Result<10>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [9]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>_rt_382 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [10])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [8]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>_rt_408 ),
    .O(\mod_slot_machine/U_DP/Result<9>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [8]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>_rt_408 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [9])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [7]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>_rt_406 ),
    .O(\mod_slot_machine/U_DP/Result<8>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [7]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>_rt_406 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [8])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [6]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>_rt_404 ),
    .O(\mod_slot_machine/U_DP/Result<7>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [6]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>_rt_404 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [7])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [5]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>_rt_402 ),
    .O(\mod_slot_machine/U_DP/Result<6>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [5]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>_rt_402 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [6])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [4]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>_rt_400 ),
    .O(\mod_slot_machine/U_DP/Result<5>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [4]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>_rt_400 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [5])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [3]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>_rt_398 ),
    .O(\mod_slot_machine/U_DP/Result<4>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [3]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>_rt_398 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [4])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [2]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>_rt_396 ),
    .O(\mod_slot_machine/U_DP/Result<3>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [2]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>_rt_396 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [3])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [1]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>_rt_394 ),
    .O(\mod_slot_machine/U_DP/Result<2>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [1]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>_rt_394 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [2])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [0]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>_rt_392 ),
    .O(\mod_slot_machine/U_DP/Result<1>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [0]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>_rt_392 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [1])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/Result<0>2 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy [0])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<22>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [21]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<22>_rt_223 ),
    .O(\mod_slot_machine/U_DP/Result<22>1 )
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<21>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [20]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>_rt_182 ),
    .O(\mod_slot_machine/U_DP/Result<21>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [20]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>_rt_182 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [21])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<20>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [19]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>_rt_180 ),
    .O(\mod_slot_machine/U_DP/Result<20>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [19]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>_rt_180 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [20])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<19>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [18]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>_rt_176 ),
    .O(\mod_slot_machine/U_DP/Result<19>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [18]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>_rt_176 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [19])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<18>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [17]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>_rt_174 ),
    .O(\mod_slot_machine/U_DP/Result<18>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [17]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>_rt_174 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [18])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<17>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [16]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>_rt_172 ),
    .O(\mod_slot_machine/U_DP/Result<17>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [16]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>_rt_172 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [17])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<16>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [15]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>_rt_170 ),
    .O(\mod_slot_machine/U_DP/Result<16>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [15]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>_rt_170 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [16])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<15>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [14]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>_rt_168 ),
    .O(\mod_slot_machine/U_DP/Result<15>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [14]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>_rt_168 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [15])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [13]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>_rt_166 ),
    .O(\mod_slot_machine/U_DP/Result<14>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [13]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>_rt_166 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [14])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [12]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>_rt_164 ),
    .O(\mod_slot_machine/U_DP/Result<13>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [12]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>_rt_164 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [13])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [11]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>_rt_162 ),
    .O(\mod_slot_machine/U_DP/Result<12>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [11]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>_rt_162 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [12])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [10]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>_rt_160 ),
    .O(\mod_slot_machine/U_DP/Result<11>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [10]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>_rt_160 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [11])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [9]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>_rt_158 ),
    .O(\mod_slot_machine/U_DP/Result<10>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [9]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>_rt_158 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [10])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [8]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>_rt_198 ),
    .O(\mod_slot_machine/U_DP/Result<9>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [8]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>_rt_198 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [9])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [7]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>_rt_196 ),
    .O(\mod_slot_machine/U_DP/Result<8>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [7]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>_rt_196 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [8])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [6]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>_rt_194 ),
    .O(\mod_slot_machine/U_DP/Result<7>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [6]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>_rt_194 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [7])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [5]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>_rt_192 ),
    .O(\mod_slot_machine/U_DP/Result<6>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [5]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>_rt_192 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [6])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [4]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>_rt_190 ),
    .O(\mod_slot_machine/U_DP/Result<5>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [4]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>_rt_190 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [5])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [3]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>_rt_188 ),
    .O(\mod_slot_machine/U_DP/Result<4>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [3]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>_rt_188 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [4])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [2]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>_rt_186 ),
    .O(\mod_slot_machine/U_DP/Result<3>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [2]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>_rt_186 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [3])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [1]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>_rt_184 ),
    .O(\mod_slot_machine/U_DP/Result<2>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [1]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>_rt_184 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [2])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [0]),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>_rt_178 ),
    .O(\mod_slot_machine/U_DP/Result<1>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [0]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>_rt_178 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [1])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/Result<0>1 )
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy [0])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<25>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [24]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<25>_rt_337 ),
    .O(\mod_slot_machine/U_DP/Result [25])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<24>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [23]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>_rt_293 ),
    .O(\mod_slot_machine/U_DP/Result [24])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [23]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>_rt_293 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [24])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<23>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [22]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>_rt_291 ),
    .O(\mod_slot_machine/U_DP/Result [23])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [22]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>_rt_291 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [23])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<22>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [21]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>_rt_289 ),
    .O(\mod_slot_machine/U_DP/Result [22])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [21]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>_rt_289 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [22])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<21>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [20]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>_rt_287 ),
    .O(\mod_slot_machine/U_DP/Result [21])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [20]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>_rt_287 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [21])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<20>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [19]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>_rt_285 ),
    .O(\mod_slot_machine/U_DP/Result [20])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [19]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>_rt_285 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [20])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<19>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [18]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>_rt_281 ),
    .O(\mod_slot_machine/U_DP/Result [19])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [18]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>_rt_281 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [19])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<18>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [17]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>_rt_279 ),
    .O(\mod_slot_machine/U_DP/Result [18])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [17]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>_rt_279 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [18])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<17>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [16]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>_rt_277 ),
    .O(\mod_slot_machine/U_DP/Result [17])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [16]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>_rt_277 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [17])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<16>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [15]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>_rt_275 ),
    .O(\mod_slot_machine/U_DP/Result [16])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [15]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>_rt_275 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [16])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<15>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [14]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>_rt_273 ),
    .O(\mod_slot_machine/U_DP/Result [15])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [14]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>_rt_273 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [15])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [13]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>_rt_271 ),
    .O(\mod_slot_machine/U_DP/Result [14])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [13]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>_rt_271 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [14])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [12]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>_rt_269 ),
    .O(\mod_slot_machine/U_DP/Result [13])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [12]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>_rt_269 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [13])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [11]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>_rt_267 ),
    .O(\mod_slot_machine/U_DP/Result [12])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [11]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>_rt_267 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [12])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [10]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>_rt_265 ),
    .O(\mod_slot_machine/U_DP/Result [11])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [10]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>_rt_265 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [11])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [9]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>_rt_263 ),
    .O(\mod_slot_machine/U_DP/Result [10])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [9]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>_rt_263 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [10])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [8]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>_rt_309 ),
    .O(\mod_slot_machine/U_DP/Result [9])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [8]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>_rt_309 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [9])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [7]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>_rt_307 ),
    .O(\mod_slot_machine/U_DP/Result [8])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [7]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>_rt_307 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [8])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [6]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>_rt_305 ),
    .O(\mod_slot_machine/U_DP/Result [7])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [6]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>_rt_305 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [7])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [5]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>_rt_303 ),
    .O(\mod_slot_machine/U_DP/Result [6])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [5]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>_rt_303 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [6])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [4]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>_rt_301 ),
    .O(\mod_slot_machine/U_DP/Result [5])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [4]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>_rt_301 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [5])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [3]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>_rt_299 ),
    .O(\mod_slot_machine/U_DP/Result [4])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [3]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>_rt_299 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [4])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [2]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>_rt_297 ),
    .O(\mod_slot_machine/U_DP/Result [3])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [2]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>_rt_297 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [3])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [1]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>_rt_295 ),
    .O(\mod_slot_machine/U_DP/Result [2])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [1]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>_rt_295 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [2])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [0]),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>_rt_283 ),
    .O(\mod_slot_machine/U_DP/Result [1])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [0]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>_rt_283 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [1])
  );
  XORCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/Result [0])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_lut [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_0  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_15 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_1  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_14 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [1])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_2  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_13 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [2])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_3  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_12 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [3])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_4  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_11 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [4])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_5  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_10 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [5])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_6  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_9 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [6])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_7  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_8 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [7])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_8  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_7 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [8])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_9  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_6 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [9])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_10  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_5 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [10])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_11  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_4 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [11])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_12  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_3 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [12])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_13  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_2 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [13])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_14  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_1 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [14])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1KHZ/count_15  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_0 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [15])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_1/aux_output_3  (
    .C(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ),
    .CE(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output3 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_1/aux_output [3])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_1/aux_output_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ),
    .CE(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output2 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_1/aux_output [2])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_1/aux_output_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ),
    .CE(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output1 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_1/aux_output [1])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_1/aux_output_0  (
    .C(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ),
    .CE(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output ),
    .Q(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_0  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_22 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_1  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_21 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [1])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_2  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_20 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [2])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_3  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_19 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [3])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_4  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_18 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [4])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_5  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_17 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [5])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_6  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_16 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [6])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_7  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_15 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [7])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_8  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_14 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [8])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_9  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_13 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [9])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_10  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_12 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [10])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_11  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_11 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [11])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_12  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_10 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [12])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_13  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_9 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [13])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_14  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_8 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [14])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_15  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_7 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [15])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_16  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_6 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [16])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_17  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_5 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [17])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_18  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_4 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [18])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_19  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_3 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [19])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_20  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_2 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [20])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_21  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_1 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [21])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ10HZ/count_22  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_0 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/count [22])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_3/aux_output_3  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output3 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_3/aux_output_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output2 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_3/aux_output_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output1 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_3/aux_output_0  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output ),
    .Q(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_0  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_25 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [0])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_1  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_24 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [1])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_2  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_23 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [2])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_3  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_22 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [3])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_4  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_21 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [4])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_5  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_20 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [5])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_6  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_19 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [6])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_7  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_18 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [7])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_8  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_17 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [8])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_9  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_16 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [9])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_10  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_15 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [10])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_11  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_14 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [11])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_12  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_13 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [12])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_13  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_12 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [13])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_14  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_11 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [14])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_15  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_10 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [15])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_16  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_9 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [16])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_17  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_8 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [17])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_18  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_7 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [18])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_19  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_6 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [19])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_20  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_5 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [20])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_21  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_4 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [21])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_22  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_3 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [22])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_23  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_2 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [23])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_24  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_1 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [24])
  );
  FDC   \mod_slot_machine/U_DP/U_FREQ1HZ/count_25  (
    .C(clock_BUFGP_36),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_0 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/count [25])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_2/aux_output_3  (
    .C(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output3 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_2/aux_output_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output2 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_2/aux_output_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output1 ),
    .Q(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1])
  );
  FDCE   \mod_slot_machine/U_DP/COUNTER_2/aux_output_0  (
    .C(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ),
    .CE(\mod_slot_machine/control[0] ),
    .CLR(\mod_slot_machine/control[2] ),
    .D(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output ),
    .Q(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0])
  );
  FDCE   \mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux  (
    .C(clock_BUFGP_36),
    .CE(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_not0001 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 )
  );
  FDCE   \mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux  (
    .C(clock_BUFGP_36),
    .CE(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_not0001 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 )
  );
  FDCE   \mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux  (
    .C(clock_BUFGP_36),
    .CE(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_not0001 ),
    .Q(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<0>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [14]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [18]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [16]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<1>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [15]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [11]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [19]),
    .I3(\mod_slot_machine/U_DP/U_FREQ10HZ/count [13]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [1]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<2>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [12]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [8]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [17]),
    .I3(\mod_slot_machine/U_DP/U_FREQ10HZ/count [10]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<3>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [9]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [5]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [21]),
    .I3(\mod_slot_machine/U_DP/U_FREQ10HZ/count [7]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<4>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [6]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [4]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [22]),
    .I3(\mod_slot_machine/U_DP/U_FREQ10HZ/count [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut<5>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [1]),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count [3]),
    .I2(\mod_slot_machine/U_DP/U_FREQ10HZ/count [20]),
    .I3(\mod_slot_machine/U_DP/U_FREQ10HZ/count [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_cy [4]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000_wg_lut [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<0>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [20]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [16]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<1>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [18]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [13]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [21]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [17]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<1>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [1]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<2>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [15]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [12]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [19]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [14]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<2>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<3>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [9]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [10]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [22]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<3>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<4>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [7]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [8]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [23]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [6]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<4>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<5>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [3]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [5]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [24]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<5>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [4]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut<6>  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [1]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count [2]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1HZ/count [25]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1HZ/count [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [6])
  );
  MUXCY   \mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy<6>  (
    .CI(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_cy [5]),
    .DI(N0),
    .S(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000_wg_lut [6]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_Out11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .O(\mod_slot_machine/control[0] )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_Out01  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .O(\mod_slot_machine/control[2] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \mod_slot_machine/U_CNTRL/STATE_Out41  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .O(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/status_1_cmp_eq00001  (
    .I0(\mod_slot_machine/U_DP/COUNTER_1/aux_output [1]),
    .I1(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_1/aux_output [3]),
    .I3(\mod_slot_machine/U_DP/COUNTER_1/aux_output [2]),
    .O(\mod_slot_machine/status [1])
  );
  LUT4 #(
    .INIT ( 16'hFD51 ))
  \mod_conv_7seg2/Mrom_display41  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .O(Result2_4_OBUF_32)
  );
  LUT4 #(
    .INIT ( 16'hFD51 ))
  \mod_conv_7seg1/Mrom_display41  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .O(Result1_4_OBUF_18)
  );
  LUT4 #(
    .INIT ( 16'h76F7 ))
  \mod_conv_7seg2/Mrom_display21  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .O(Result2_2_OBUF_30)
  );
  LUT4 #(
    .INIT ( 16'h76F7 ))
  \mod_conv_7seg1/Mrom_display21  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .O(Result1_2_OBUF_16)
  );
  LUT4 #(
    .INIT ( 16'hA6EF ))
  \mod_conv_7seg2/Mrom_display51  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .O(Result2_5_OBUF_33)
  );
  LUT4 #(
    .INIT ( 16'hA6EF ))
  \mod_conv_7seg1/Mrom_display51  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .O(Result1_5_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'hBDEE ))
  \mod_conv_7seg2/Mrom_display61  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .O(Result2_6_OBUF_34)
  );
  LUT4 #(
    .INIT ( 16'hBDEE ))
  \mod_conv_7seg1/Mrom_display61  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .O(Result1_6_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h497F ))
  \mod_conv_7seg2/Mrom_display111  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .O(Result2_1_OBUF_29)
  );
  LUT4 #(
    .INIT ( 16'h497F ))
  \mod_conv_7seg1/Mrom_display111  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .O(Result1_1_OBUF_15)
  );
  LUT4 #(
    .INIT ( 16'hF76B ))
  \mod_conv_7seg2/Mrom_display11  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .O(Result2_0_OBUF_28)
  );
  LUT4 #(
    .INIT ( 16'hF76B ))
  \mod_conv_7seg1/Mrom_display11  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .O(Result1_0_OBUF_14)
  );
  LUT4 #(
    .INIT ( 16'h3EE7 ))
  \mod_conv_7seg2/Mrom_display31  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .O(Result2_3_OBUF_31)
  );
  LUT4 #(
    .INIT ( 16'h3EE7 ))
  \mod_conv_7seg1/Mrom_display31  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .O(Result1_3_OBUF_17)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd3-In1  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I2(start_IBUF_458),
    .O(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output_xor<1>11  (
    .I0(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_1/aux_output [1]),
    .O(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output1 )
  );
  LUT4 #(
    .INIT ( 16'h1450 ))
  \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output_xor<2>11  (
    .I0(\mod_slot_machine/control[0] ),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .O(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output2 )
  );
  LUT4 #(
    .INIT ( 16'h1450 ))
  \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output_xor<2>11  (
    .I0(\mod_slot_machine/control[0] ),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .O(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output2 )
  );
  LUT4 #(
    .INIT ( 16'h1450 ))
  \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output_xor<2>11  (
    .I0(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_1/aux_output [2]),
    .I3(\mod_slot_machine/U_DP/COUNTER_1/aux_output [1]),
    .O(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output2 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In26  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .O(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In26_48 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In53  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I3(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .O(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In53_49 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In82  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In26_48 ),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In53_49 ),
    .O(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In82_50 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_01  (
    .I0(\mod_slot_machine/U_DP/Result<0>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_0 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000016  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [8]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [10]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [9]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000016_446 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000034  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [2]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [1]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [0]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000034_447 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000043  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [4]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [7]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [6]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000043_449 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000055  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq00004_448 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000016_446 ),
    .I2(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000034_447 ),
    .I3(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq000043_449 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_16  (
    .I0(\mod_slot_machine/U_DP/Result<1>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_21  (
    .I0(\mod_slot_machine/U_DP/Result<2>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_31  (
    .I0(\mod_slot_machine/U_DP/Result<3>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_41  (
    .I0(\mod_slot_machine/U_DP/Result<4>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_51  (
    .I0(\mod_slot_machine/U_DP/Result<5>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_51  (
    .I0(\mod_slot_machine/U_DP/Result<5>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_41  (
    .I0(\mod_slot_machine/U_DP/Result<4>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_01  (
    .I0(\mod_slot_machine/U_DP/Result<0>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_01  (
    .I0(\mod_slot_machine/U_DP/Result [0]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_110  (
    .I0(\mod_slot_machine/U_DP/Result [1]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_110  (
    .I0(\mod_slot_machine/U_DP/Result<1>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_26  (
    .I0(\mod_slot_machine/U_DP/Result [2]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_23  (
    .I0(\mod_slot_machine/U_DP/Result<2>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_31  (
    .I0(\mod_slot_machine/U_DP/Result [3]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_31  (
    .I0(\mod_slot_machine/U_DP/Result<3>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_41  (
    .I0(\mod_slot_machine/U_DP/Result [4]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_51  (
    .I0(\mod_slot_machine/U_DP/Result [5]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_61  (
    .I0(\mod_slot_machine/U_DP/Result<6>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_61  (
    .I0(\mod_slot_machine/U_DP/Result [6]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_61  (
    .I0(\mod_slot_machine/U_DP/Result<6>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_71  (
    .I0(\mod_slot_machine/U_DP/Result<7>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_71  (
    .I0(\mod_slot_machine/U_DP/Result [7]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_71  (
    .I0(\mod_slot_machine/U_DP/Result<7>1 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_81  (
    .I0(\mod_slot_machine/U_DP/Result<8>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_81  (
    .I0(\mod_slot_machine/U_DP/Result [8]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_81  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<8>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_91  (
    .I0(\mod_slot_machine/U_DP/Result<9>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_91  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [9]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_91  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<9>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_101  (
    .I0(\mod_slot_machine/U_DP/Result<10>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_101  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [10]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_101  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<10>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_111  (
    .I0(\mod_slot_machine/U_DP/Result<11>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_111  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_111  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<11>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_121  (
    .I0(\mod_slot_machine/U_DP/Result<12>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_121  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [12]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_121  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<12>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_131  (
    .I0(\mod_slot_machine/U_DP/Result<13>2 ),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_131  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [13]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_131  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<13>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_141  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<14>2 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_141  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [14]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_141  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<14>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_151  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<15>2 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_151  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [15]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_151  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<15>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_161  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [16]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_16 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_161  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<16>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_16 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_171  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [17]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_17 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_171  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<17>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_17 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_181  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [18]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_18 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_181  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<18>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_18 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_191  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [19]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_19 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_191  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<19>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_19 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_201  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [20]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_20 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_201  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<20>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_20 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_211  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [21]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_21 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_211  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<21>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_21 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_221  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [22]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_22 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_221  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result<22>1 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_eqn_22 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_231  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [23]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_23 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_241  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [24]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_24 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_251  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count_cmp_eq0000 ),
    .I1(\mod_slot_machine/U_DP/Result [25]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_eqn_25 )
  );
  IBUF   stop_IBUF (
    .I(stop),
    .O(stop_IBUF_460)
  );
  IBUF   start_IBUF (
    .I(start),
    .O(start_IBUF_458)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_456)
  );
  OBUF   leds_9_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout[9] ),
    .O(leds[9])
  );
  OBUF   leds_8_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_1_151 ),
    .O(leds[8])
  );
  OBUF   leds_7_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_1_147 ),
    .O(leds[7])
  );
  OBUF   leds_6_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_2_152 ),
    .O(leds[6])
  );
  OBUF   leds_5_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_2_148 ),
    .O(leds[5])
  );
  OBUF   leds_4_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_3_153 ),
    .O(leds[4])
  );
  OBUF   leds_3_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_3_149 ),
    .O(leds[3])
  );
  OBUF   leds_2_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_4_154 ),
    .O(leds[2])
  );
  OBUF   leds_1_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout[1] ),
    .O(leds[1])
  );
  OBUF   leds_0_OBUF (
    .I(\mod_slot_machine/U_DP/SEQ_GENE/dout[2] ),
    .O(leds[0])
  );
  OBUF   Result1_6_OBUF (
    .I(Result1_6_OBUF_20),
    .O(Result1[6])
  );
  OBUF   Result1_5_OBUF (
    .I(Result1_5_OBUF_19),
    .O(Result1[5])
  );
  OBUF   Result1_4_OBUF (
    .I(Result1_4_OBUF_18),
    .O(Result1[4])
  );
  OBUF   Result1_3_OBUF (
    .I(Result1_3_OBUF_17),
    .O(Result1[3])
  );
  OBUF   Result1_2_OBUF (
    .I(Result1_2_OBUF_16),
    .O(Result1[2])
  );
  OBUF   Result1_1_OBUF (
    .I(Result1_1_OBUF_15),
    .O(Result1[1])
  );
  OBUF   Result1_0_OBUF (
    .I(Result1_0_OBUF_14),
    .O(Result1[0])
  );
  OBUF   Result2_6_OBUF (
    .I(Result2_6_OBUF_34),
    .O(Result2[6])
  );
  OBUF   Result2_5_OBUF (
    .I(Result2_5_OBUF_33),
    .O(Result2[5])
  );
  OBUF   Result2_4_OBUF (
    .I(Result2_4_OBUF_32),
    .O(Result2[4])
  );
  OBUF   Result2_3_OBUF (
    .I(Result2_3_OBUF_31),
    .O(Result2[3])
  );
  OBUF   Result2_2_OBUF (
    .I(Result2_2_OBUF_30),
    .O(Result2[2])
  );
  OBUF   Result2_1_OBUF (
    .I(Result2_1_OBUF_29),
    .O(Result2[1])
  );
  OBUF   Result2_0_OBUF (
    .I(Result2_0_OBUF_28),
    .O(Result2[0])
  );
  FDRSE #(
    .INIT ( 1'b0 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd1  (
    .C(clock_BUFGP_36),
    .CE(\mod_slot_machine/status [1]),
    .D(N0),
    .R(\mod_slot_machine/reset_u ),
    .S(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1-In82_50 ),
    .Q(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [1]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<14>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<13>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<12>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<11>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<10>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [6]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<9>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [7]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<8>_rt_406 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [8]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<7>_rt_404 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [9]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<6>_rt_402 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [10]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<5>_rt_400 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<4>_rt_398 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [12]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<3>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [13]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<2>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [14]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_cy<1>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [1]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<21>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<20>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<19>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<18>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<17>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [6]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<16>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [7]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<15>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [8]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<14>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [9]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<13>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [10]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<12>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<11>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [12]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<10>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [13]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<9>_rt_198 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [14]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<8>_rt_196 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [15]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<7>_rt_194 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [16]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<6>_rt_192 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [17]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<5>_rt_190 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [18]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<4>_rt_188 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [19]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<3>_rt_186 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [20]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<2>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [21]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_cy<1>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [1]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<24>_rt_293 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [2]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<23>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [3]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<22>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [4]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<21>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [5]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<20>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [6]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<19>_rt_281 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [7]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<18>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [8]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<17>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [9]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<16>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [10]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<15>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [11]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<14>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [12]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<13>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [13]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<12>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [14]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<11>_rt_265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [15]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<10>_rt_263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [16]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<9>_rt_309 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [17]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<8>_rt_307 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [18]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<7>_rt_305 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [19]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<6>_rt_303 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [20]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<5>_rt_301 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [21]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<4>_rt_299 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [22]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<3>_rt_297 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [23]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<2>_rt_295 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [24]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_cy<1>_rt_283 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<15>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_xor<15>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<22>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ10HZ/count [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_xor<22>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<25>_rt  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1HZ/count [0]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_xor<25>_rt_337 )
  );
  LUT4 #(
    .INIT ( 16'h0301 ))
  \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output_xor<0>11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .I2(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0]),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output )
  );
  LUT3 #(
    .INIT ( 8'h23 ))
  \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output_xor<0>11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output )
  );
  LUT3 #(
    .INIT ( 8'h23 ))
  \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output_xor<0>11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output )
  );
  LUT4 #(
    .INIT ( 16'h283C ))
  \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output_xor<1>11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output1 )
  );
  LUT4 #(
    .INIT ( 16'h283C ))
  \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output_xor<1>11  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output1 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \mod_slot_machine/U_DP/SEQ_GENE/dout_8_mux00011  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .O(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 )
  );
  LUT4 #(
    .INIT ( 16'h82C3 ))
  \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output_xor<3>1  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [3]),
    .I2(N34),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output3 )
  );
  LUT4 #(
    .INIT ( 16'h82C3 ))
  \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output_xor<3>1  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [3]),
    .I2(N36),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output3 )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output_xor<3>1_SW1  (
    .I0(\mod_slot_machine/U_DP/COUNTER_1/aux_output [3]),
    .I1(\mod_slot_machine/U_DP/COUNTER_1/aux_output [0]),
    .I2(\mod_slot_machine/U_DP/COUNTER_1/aux_output [1]),
    .I3(\mod_slot_machine/U_DP/COUNTER_1/aux_output [2]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'h0301 ))
  \mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output_xor<3>1  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .I2(N38),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_DP/COUNTER_1/Mcount_aux_output3 )
  );
  MUXF5   \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In  (
    .I0(N40),
    .I1(N41),
    .S(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In_52 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In_F  (
    .I0(\mod_slot_machine/status [1]),
    .I1(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .I2(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hEFEE ))
  \mod_slot_machine/U_CNTRL/STATE_FSM_FFd2-In_G  (
    .I0(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd2_51 ),
    .I1(stop_IBUF_460),
    .I2(\mod_slot_machine/status [1]),
    .I3(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd1_47 ),
    .O(N41)
  );
  BUFGP   clock_BUFGP (
    .I(clock),
    .O(clock_BUFGP_36)
  );
  INV   \mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_lut<0>_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [15]),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/Mcount_count_lut [0])
  );
  INV   \mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_lut<0>_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ10HZ/count [22]),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/Mcount_count_lut [0])
  );
  INV   \mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_lut<0>_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ1HZ/count [25]),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/Mcount_count_lut [0])
  );
  INV   \mod_slot_machine/U_CNTRL/STATE_FSM_Out61_INV_0  (
    .I(\mod_slot_machine/U_CNTRL/STATE_FSM_FFd3_53 ),
    .O(\mod_slot_machine/control[3] )
  );
  INV   \mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_not00011_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_not0001 )
  );
  INV   \mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_not00011_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_338 ),
    .O(\mod_slot_machine/U_DP/U_FREQ1HZ/clk_aux_not0001 )
  );
  INV   \mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_not00011_INV_0  (
    .I(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_224 ),
    .O(\mod_slot_machine/U_DP/U_FREQ10HZ/clk_aux_not0001 )
  );
  INV   \mod_slot_machine/reset_u1_INV_0  (
    .I(reset_IBUF_456),
    .O(\mod_slot_machine/reset_u )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq00004  (
    .I0(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [12]),
    .I1(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [13]),
    .I2(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [14]),
    .I3(\mod_slot_machine/U_DP/U_FREQ1KHZ/count [15]),
    .LO(\mod_slot_machine/U_DP/U_FREQ1KHZ/count_cmp_eq00004_448 )
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \mod_slot_machine/U_DP/COUNTER_3/Mcount_aux_output_xor<3>1_SW1  (
    .I0(\mod_slot_machine/U_DP/COUNTER_3/aux_output [0]),
    .I1(\mod_slot_machine/U_DP/COUNTER_3/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_3/aux_output [2]),
    .LO(N34)
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \mod_slot_machine/U_DP/COUNTER_2/Mcount_aux_output_xor<3>1_SW1  (
    .I0(\mod_slot_machine/U_DP/COUNTER_2/aux_output [0]),
    .I1(\mod_slot_machine/U_DP/COUNTER_2/aux_output [1]),
    .I2(\mod_slot_machine/U_DP/COUNTER_2/aux_output [2]),
    .LO(N36)
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_2_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_1_151 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_1_1  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_1_147 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_2_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_2_152 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_1_2  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_2_148 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_2_3  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_3_153 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_1_3  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/COUNTER_1/aux_output_not0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_1_3_149 )
  );
  FDCE   \mod_slot_machine/U_DP/SEQ_GENE/dout_2_4  (
    .C(\mod_slot_machine/U_DP/U_FREQ1KHZ/clk_aux_427 ),
    .CE(\mod_slot_machine/control[3] ),
    .CLR(\mod_slot_machine/reset_u ),
    .D(\mod_slot_machine/U_DP/SEQ_GENE/dout_0_mux0001 ),
    .Q(\mod_slot_machine/U_DP/SEQ_GENE/dout_2_4_154 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

