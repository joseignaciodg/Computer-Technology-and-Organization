////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: Mult_with_Adders_synthesis.v
// /___/   /\     Timestamp: Wed Oct 31 12:01:00 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Mult_with_Adders.ngc Mult_with_Adders_synthesis.v 
// Device	: xc3s1000-5-ft256
// Input file	: Mult_with_Adders.ngc
// Output file	: C:\hlocal\TOC\Lab3\netgen\synthesis\Mult_with_Adders_synthesis.v
// # of Modules	: 1
// Design Name	: Mult_with_Adders
// Xilinx        : C:\Xilinx\14.1\ISE_DS\ISE\
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

module Mult_with_Adders (
Z, X, Y
);
  output [7 : 0] Z;
  input [3 : 0] X;
  input [3 : 0] Y;
  wire N11;
  wire N13;
  wire N19;
  wire N21;
  wire X_0_IBUF_8;
  wire X_1_IBUF_9;
  wire X_2_IBUF_10;
  wire X_3_IBUF_11;
  wire Y_0_IBUF_16;
  wire Y_1_IBUF_17;
  wire Y_2_IBUF_18;
  wire Y_3_IBUF_19;
  wire Z_3_OBUF_28;
  wire Z_4_OBUF_29;
  wire Z_5_OBUF_30;
  wire Z_6_OBUF_31;
  wire \mod_adder8b2/Madd_c_uC1 ;
  wire \mod_adder8b2/Madd_c_uC2 ;
  wire \mod_adder8b2/Madd_c_uR ;
  wire \mod_adder8b2/Madd_c_u_Madd_lut<4>1_40 ;
  wire \mod_adder8b2/Madd_c_u_Madd_lut<4>2_41 ;
  wire \mod_adder8b3/Madd_c_u_cy<4>1 ;
  wire \mod_adder8b3/Madd_c_u_cy<4>11_45 ;
  wire \y_1[0] ;
  wire \y_1[2] ;
  wire \y_1[3] ;
  wire [4 : 2] \mod_adder8b2/Madd_c_u_Madd_cy ;
  wire [5 : 3] \mod_adder8b2/Madd_c_u_Madd_lut ;
  wire [6 : 4] \mod_adder8b3/Madd_c_u_cy ;
  wire [6 : 4] \mod_adder8b3/Madd_c_u_lut ;
  wire [3 : 2] x_2;
  wire [2 : 2] y_3;
  LUT2 #(
    .INIT ( 4'h8 ))
  y_1_0_and00001 (
    .I0(X_0_IBUF_8),
    .I1(Y_0_IBUF_16),
    .O(\y_1[0] )
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \mod_adder8b2/Madd_c_uR1  (
    .I0(Y_0_IBUF_16),
    .I1(Y_1_IBUF_17),
    .I2(X_0_IBUF_8),
    .I3(X_1_IBUF_9),
    .O(\mod_adder8b2/Madd_c_uR )
  );
  LUT4 #(
    .INIT ( 16'h20A0 ))
  \mod_adder8b2/Madd_c_u_Madd_lut<5>1  (
    .I0(X_3_IBUF_11),
    .I1(Y_1_IBUF_17),
    .I2(Y_2_IBUF_18),
    .I3(X_2_IBUF_10),
    .O(\mod_adder8b2/Madd_c_u_Madd_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \mod_adder8b3/Madd_c_u_xor<4>11  (
    .I0(\mod_adder8b3/Madd_c_u_lut [4]),
    .I1(Z_3_OBUF_28),
    .I2(Y_3_IBUF_19),
    .I3(X_0_IBUF_8),
    .O(Z_4_OBUF_29)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mod_adder8b3/Madd_c_u_xor<5>11  (
    .I0(\mod_adder8b3/Madd_c_u_lut [5]),
    .I1(\mod_adder8b3/Madd_c_u_cy [4]),
    .O(Z_5_OBUF_30)
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \mod_adder8b2/Madd_c_uC21  (
    .I0(x_2[3]),
    .I1(Y_1_IBUF_17),
    .I2(X_2_IBUF_10),
    .I3(\y_1[3] ),
    .O(\mod_adder8b2/Madd_c_uC2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  y_1_3_and00001 (
    .I0(X_3_IBUF_11),
    .I1(Y_0_IBUF_16),
    .O(\y_1[3] )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mod_adder8b2/Madd_c_u_Madd_cy<4>11  (
    .I0(\mod_adder8b2/Madd_c_u_Madd_lut [4]),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [3]),
    .I2(\mod_adder8b2/Madd_c_uC2 ),
    .O(\mod_adder8b2/Madd_c_u_Madd_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b3/Madd_c_u_lut<5>1  (
    .I0(Y_3_IBUF_19),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [4]),
    .I2(\mod_adder8b2/Madd_c_u_Madd_lut [5]),
    .I3(X_2_IBUF_10),
    .O(\mod_adder8b3/Madd_c_u_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b3/Madd_c_u_lut<3>1  (
    .I0(Y_3_IBUF_19),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [2]),
    .I2(\mod_adder8b2/Madd_c_u_Madd_lut [3]),
    .I3(X_0_IBUF_8),
    .O(Z_3_OBUF_28)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  x_2_3_and00001 (
    .I0(X_1_IBUF_9),
    .I1(Y_2_IBUF_18),
    .O(x_2[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  y_1_2_and00001 (
    .I0(X_2_IBUF_10),
    .I1(Y_0_IBUF_16),
    .O(\y_1[2] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  x_2_2_and00001 (
    .I0(X_0_IBUF_8),
    .I1(Y_2_IBUF_18),
    .O(x_2[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mod_adder8b3/Madd_c_u_xor<6>11  (
    .I0(\mod_adder8b3/Madd_c_u_lut [6]),
    .I1(\mod_adder8b3/Madd_c_u_cy [5]),
    .O(Z_6_OBUF_31)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mod_adder8b2/Madd_c_u_Madd_cy<3>11  (
    .I0(\mod_adder8b2/Madd_c_u_Madd_lut [3]),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [2]),
    .I2(\mod_adder8b2/Madd_c_uC1 ),
    .O(\mod_adder8b2/Madd_c_u_Madd_cy [3])
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \mod_adder8b3/Madd_c_u_cy<6>11  (
    .I0(\mod_adder8b3/Madd_c_u_lut [6]),
    .I1(\mod_adder8b3/Madd_c_u_cy [5]),
    .I2(X_3_IBUF_11),
    .I3(Y_3_IBUF_19),
    .O(\mod_adder8b3/Madd_c_u_cy [6])
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \mod_adder8b3/Madd_c_u_cy<5>11  (
    .I0(\mod_adder8b3/Madd_c_u_lut [5]),
    .I1(\mod_adder8b3/Madd_c_u_cy [4]),
    .I2(X_2_IBUF_10),
    .I3(Y_3_IBUF_19),
    .O(\mod_adder8b3/Madd_c_u_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b3/Madd_c_u_lut<4>1  (
    .I0(Y_3_IBUF_19),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [3]),
    .I2(\mod_adder8b2/Madd_c_u_Madd_lut [4]),
    .I3(X_1_IBUF_9),
    .O(\mod_adder8b3/Madd_c_u_lut [4])
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \mod_adder8b2/Madd_c_uC11  (
    .I0(x_2[2]),
    .I1(X_1_IBUF_9),
    .I2(Y_1_IBUF_17),
    .I3(\y_1[2] ),
    .O(\mod_adder8b2/Madd_c_uC1 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \mod_adder8b2/Madd_c_u_Madd_lut<2>_SW0  (
    .I0(X_1_IBUF_9),
    .I1(Y_0_IBUF_16),
    .I2(X_0_IBUF_8),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b2/Madd_c_u_Madd_lut<2>  (
    .I0(Y_1_IBUF_17),
    .I1(\y_1[2] ),
    .I2(x_2[2]),
    .I3(N11),
    .O(y_3[2])
  );
  IBUF   X_3_IBUF (
    .I(X[3]),
    .O(X_3_IBUF_11)
  );
  IBUF   X_2_IBUF (
    .I(X[2]),
    .O(X_2_IBUF_10)
  );
  IBUF   X_1_IBUF (
    .I(X[1]),
    .O(X_1_IBUF_9)
  );
  IBUF   X_0_IBUF (
    .I(X[0]),
    .O(X_0_IBUF_8)
  );
  IBUF   Y_3_IBUF (
    .I(Y[3]),
    .O(Y_3_IBUF_19)
  );
  IBUF   Y_2_IBUF (
    .I(Y[2]),
    .O(Y_2_IBUF_18)
  );
  IBUF   Y_1_IBUF (
    .I(Y[1]),
    .O(Y_1_IBUF_17)
  );
  IBUF   Y_0_IBUF (
    .I(Y[0]),
    .O(Y_0_IBUF_16)
  );
  OBUF   Z_7_OBUF (
    .I(\mod_adder8b3/Madd_c_u_cy [6]),
    .O(Z[7])
  );
  OBUF   Z_6_OBUF (
    .I(Z_6_OBUF_31),
    .O(Z[6])
  );
  OBUF   Z_5_OBUF (
    .I(Z_5_OBUF_30),
    .O(Z[5])
  );
  OBUF   Z_4_OBUF (
    .I(Z_4_OBUF_29),
    .O(Z[4])
  );
  OBUF   Z_3_OBUF (
    .I(Z_3_OBUF_28),
    .O(Z[3])
  );
  OBUF   Z_2_OBUF (
    .I(y_3[2]),
    .O(Z[2])
  );
  OBUF   Z_1_OBUF (
    .I(\mod_adder8b2/Madd_c_uR ),
    .O(Z[1])
  );
  OBUF   Z_0_OBUF (
    .I(\y_1[0] ),
    .O(Z[0])
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \mod_adder8b3/Madd_c_u_lut<6>24_SW0  (
    .I0(Y_1_IBUF_17),
    .I1(\mod_adder8b2/Madd_c_u_Madd_cy [4]),
    .I2(X_2_IBUF_10),
    .O(N13)
  );
  LUT4 #(
    .INIT ( 16'h8288 ))
  \mod_adder8b3/Madd_c_u_lut<6>24  (
    .I0(X_3_IBUF_11),
    .I1(Y_3_IBUF_19),
    .I2(N13),
    .I3(Y_2_IBUF_18),
    .O(\mod_adder8b3/Madd_c_u_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  \mod_adder8b2/Madd_c_u_Madd_cy<2>1_SW0  (
    .I0(X_2_IBUF_10),
    .I1(Y_1_IBUF_17),
    .I2(Y_2_IBUF_18),
    .O(N19)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \mod_adder8b2/Madd_c_u_Madd_cy<2>1  (
    .I0(X_0_IBUF_8),
    .I1(X_1_IBUF_9),
    .I2(Y_0_IBUF_16),
    .I3(N19),
    .O(\mod_adder8b2/Madd_c_u_Madd_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h6AC0 ))
  \mod_adder8b2/Madd_c_u_Madd_lut<3>_SW1  (
    .I0(Y_1_IBUF_17),
    .I1(Y_0_IBUF_16),
    .I2(X_3_IBUF_11),
    .I3(X_2_IBUF_10),
    .O(N21)
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b2/Madd_c_u_Madd_lut<3>  (
    .I0(X_1_IBUF_9),
    .I1(\mod_adder8b2/Madd_c_uC1 ),
    .I2(N21),
    .I3(Y_2_IBUF_18),
    .O(\mod_adder8b2/Madd_c_u_Madd_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \mod_adder8b2/Madd_c_u_Madd_lut<4>1  (
    .I0(Y_1_IBUF_17),
    .I1(\mod_adder8b2/Madd_c_uC2 ),
    .I2(X_2_IBUF_10),
    .I3(X_3_IBUF_11),
    .O(\mod_adder8b2/Madd_c_u_Madd_lut<4>1_40 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \mod_adder8b2/Madd_c_u_Madd_lut<4>2  (
    .I0(Y_1_IBUF_17),
    .I1(\mod_adder8b2/Madd_c_uC2 ),
    .I2(X_3_IBUF_11),
    .O(\mod_adder8b2/Madd_c_u_Madd_lut<4>2_41 )
  );
  MUXF5   \mod_adder8b2/Madd_c_u_Madd_lut<4>_f5  (
    .I0(\mod_adder8b2/Madd_c_u_Madd_lut<4>2_41 ),
    .I1(\mod_adder8b2/Madd_c_u_Madd_lut<4>1_40 ),
    .S(Y_2_IBUF_18),
    .O(\mod_adder8b2/Madd_c_u_Madd_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \mod_adder8b3/Madd_c_u_cy<4>11  (
    .I0(Y_3_IBUF_19),
    .I1(X_0_IBUF_8),
    .I2(\mod_adder8b2/Madd_c_u_Madd_lut [3]),
    .I3(\mod_adder8b2/Madd_c_u_Madd_cy [2]),
    .O(\mod_adder8b3/Madd_c_u_cy<4>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \mod_adder8b3/Madd_c_u_cy<4>12  (
    .I0(Y_3_IBUF_19),
    .I1(X_1_IBUF_9),
    .O(\mod_adder8b3/Madd_c_u_cy<4>11_45 )
  );
  MUXF5   \mod_adder8b3/Madd_c_u_cy<4>1_f5  (
    .I0(\mod_adder8b3/Madd_c_u_cy<4>11_45 ),
    .I1(\mod_adder8b3/Madd_c_u_cy<4>1 ),
    .S(\mod_adder8b3/Madd_c_u_lut [4]),
    .O(\mod_adder8b3/Madd_c_u_cy [4])
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

