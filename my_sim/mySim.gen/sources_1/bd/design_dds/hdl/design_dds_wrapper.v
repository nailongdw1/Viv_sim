//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Nov  1 00:23:38 2026
//Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
//Command     : generate_target design_dds_wrapper.bd
//Design      : design_dds_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_dds_wrapper
   (AM_out,
    aclk_0,
    rst_n,
    sin_1K,
    sin_1M,
    sin_modu);
  output [15:0]AM_out;
  input aclk_0;
  input rst_n;
  output [15:0]sin_1K;
  output [15:0]sin_1M;
  output [31:0]sin_modu;

  wire [15:0]AM_out;
  wire aclk_0;
  wire rst_n;
  wire [15:0]sin_1K;
  wire [15:0]sin_1M;
  wire [31:0]sin_modu;

  design_dds design_dds_i
       (.AM_out(AM_out),
        .aclk_0(aclk_0),
        .rst_n(rst_n),
        .sin_1K(sin_1K),
        .sin_1M(sin_1M),
        .sin_modu(sin_modu));
endmodule
