// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Oct 31 22:54:14 2026
// Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_dds_carrier_scale_0_0_stub.v
// Design      : design_dds_carrier_scale_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "carrier_scale,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, tvalid, din, tvalid_o, dout)
/* synthesis syn_black_box black_box_pad_pin="clk,tvalid,din[15:0],tvalid_o,dout[15:0]" */;
  input clk;
  input tvalid;
  input [15:0]din;
  output tvalid_o;
  output [15:0]dout;
endmodule
