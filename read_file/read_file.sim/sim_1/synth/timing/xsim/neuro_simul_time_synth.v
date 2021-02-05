// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Feb  4 13:48:10 2021
// Host        : d309-pc1 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/tarek/read_file/read_file.sim/sim_1/synth/timing/xsim/neuro_simul_time_synth.v
// Design      : counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module counter
   (clk,
    file_in,
    file_out);
  input clk;
  input [-1111111106:-1111111043]file_in;
  output [15:-6]file_out;

  wire [15:-6]file_out;

initial begin
 $sdf_annotate("neuro_simul_time_synth.sdf",,,,"tool_control");
end
  OBUFT \file_out_OBUF[-1]_inst 
       (.I(1'b0),
        .O(file_out[-1]),
        .T(1'b1));
  OBUFT \file_out_OBUF[-2]_inst 
       (.I(1'b0),
        .O(file_out[-2]),
        .T(1'b1));
  OBUFT \file_out_OBUF[-3]_inst 
       (.I(1'b0),
        .O(file_out[-3]),
        .T(1'b1));
  OBUFT \file_out_OBUF[-4]_inst 
       (.I(1'b0),
        .O(file_out[-4]),
        .T(1'b1));
  OBUFT \file_out_OBUF[-5]_inst 
       (.I(1'b0),
        .O(file_out[-5]),
        .T(1'b1));
  OBUFT \file_out_OBUF[-6]_inst 
       (.I(1'b0),
        .O(file_out[-6]),
        .T(1'b1));
  OBUFT \file_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(file_out[0]),
        .T(1'b1));
  OBUFT \file_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(file_out[10]),
        .T(1'b1));
  OBUFT \file_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(file_out[11]),
        .T(1'b1));
  OBUFT \file_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(file_out[12]),
        .T(1'b1));
  OBUFT \file_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(file_out[13]),
        .T(1'b1));
  OBUFT \file_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(file_out[14]),
        .T(1'b1));
  OBUFT \file_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(file_out[15]),
        .T(1'b1));
  OBUFT \file_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(file_out[1]),
        .T(1'b1));
  OBUFT \file_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(file_out[2]),
        .T(1'b1));
  OBUFT \file_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(file_out[3]),
        .T(1'b1));
  OBUFT \file_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(file_out[4]),
        .T(1'b1));
  OBUFT \file_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(file_out[5]),
        .T(1'b1));
  OBUFT \file_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(file_out[6]),
        .T(1'b1));
  OBUFT \file_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(file_out[7]),
        .T(1'b1));
  OBUFT \file_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(file_out[8]),
        .T(1'b1));
  OBUFT \file_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(file_out[9]),
        .T(1'b1));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
