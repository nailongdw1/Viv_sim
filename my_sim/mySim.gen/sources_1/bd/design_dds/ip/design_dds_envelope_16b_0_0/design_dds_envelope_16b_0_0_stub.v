// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Oct 31 22:54:14 2026
// Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ASUS/Xilinx_project/my_sim/my_sim/mySim.gen/sources_1/bd/design_dds/ip/design_dds_envelope_16b_0_0/design_dds_envelope_16b_0_0_stub.v
// Design      : design_dds_envelope_16b_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "envelope_16b,Vivado 2020.2" *)
module design_dds_envelope_16b_0_0(clk, tvalid, msg, tvalid_o, env)
/* synthesis syn_black_box black_box_pad_pin="clk,tvalid,msg[15:0],tvalid_o,env[15:0]" */;
  input clk;
  input tvalid;
  input [15:0]msg;
  output tvalid_o;
  output [15:0]env;
endmodule
