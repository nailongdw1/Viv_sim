//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Nov  1 00:23:38 2026
//Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
//Command     : generate_target design_dds.bd
//Design      : design_dds
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Modulator_imp_1QZ5NNK
   (aclk_0,
    rst_n,
    sin_1K,
    sin_1M,
    sin_modu);
  input aclk_0;
  input rst_n;
  output [15:0]sin_1K;
  output [15:0]sin_1M;
  output [31:0]sin_modu;

  wire aclk_0_1;
  wire [15:0]carrier_scale_0_dout;
  wire [15:0]dds_compiler_0_m_axis_data_tdata;
  wire dds_compiler_0_m_axis_data_tvalid;
  wire [15:0]dds_compiler_1_m_axis_data_tdata;
  wire dds_compiler_1_m_axis_data_tvalid;
  wire [15:0]envelope_16b_0_env;
  wire [31:0]mult_gen_0_P;
  wire rst_n_1;

  assign aclk_0_1 = aclk_0;
  assign rst_n_1 = rst_n;
  assign sin_1K[15:0] = envelope_16b_0_env;
  assign sin_1M[15:0] = carrier_scale_0_dout;
  assign sin_modu[31:0] = mult_gen_0_P;
  design_dds_carrier_scale_0_0 carrier_scale_0
       (.clk(aclk_0_1),
        .din(dds_compiler_1_m_axis_data_tdata),
        .dout(carrier_scale_0_dout),
        .tvalid(dds_compiler_0_m_axis_data_tvalid));
  design_dds_dds_compiler_0_0 dds_compiler_0
       (.aclk(aclk_0_1),
        .aresetn(rst_n_1),
        .m_axis_data_tdata(dds_compiler_1_m_axis_data_tdata),
        .m_axis_data_tvalid(dds_compiler_0_m_axis_data_tvalid));
  design_dds_dds_compiler_1_0 dds_compiler_1
       (.aclk(aclk_0_1),
        .aresetn(rst_n_1),
        .m_axis_data_tdata(dds_compiler_0_m_axis_data_tdata),
        .m_axis_data_tvalid(dds_compiler_1_m_axis_data_tvalid));
  design_dds_envelope_16b_0_0 envelope_16b_0
       (.clk(aclk_0_1),
        .env(envelope_16b_0_env),
        .msg(dds_compiler_0_m_axis_data_tdata),
        .tvalid(dds_compiler_1_m_axis_data_tvalid));
  design_dds_mult_gen_0_0 mult_gen_0
       (.A(carrier_scale_0_dout),
        .B(envelope_16b_0_env),
        .CLK(aclk_0_1),
        .P(mult_gen_0_P));
endmodule

(* CORE_GENERATION_INFO = "design_dds,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_dds,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_dds.hwdef" *) 
module design_dds
   (AM_out,
    aclk_0,
    rst_n,
    sin_1K,
    sin_1M,
    sin_modu);
  output [15:0]AM_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_RESET rst_n, CLK_DOMAIN design_dds_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  output [15:0]sin_1K;
  output [15:0]sin_1M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SIN_MODU DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SIN_MODU, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]sin_modu;

  wire aclk_0_1;
  wire [15:0]carrier_scale_0_dout;
  wire [15:0]dds_compiler_0_m_axis_data_tdata;
  wire [15:0]envelope_16b_0_env;
  wire [55:0]fir_compiler_0_m_axis_data_tdata;
  wire [31:0]mult_gen_0_P;
  wire [31:0]mult_gen_0_P1;
  wire rst_n_1;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlslice_0_Dout;
  wire [15:0]xlslice_1_Dout;

  assign AM_out[15:0] = xlslice_0_Dout;
  assign aclk_0_1 = aclk_0;
  assign rst_n_1 = rst_n;
  assign sin_1K[15:0] = envelope_16b_0_env;
  assign sin_1M[15:0] = carrier_scale_0_dout;
  assign sin_modu[31:0] = mult_gen_0_P;
  Modulator_imp_1QZ5NNK Modulator
       (.aclk_0(aclk_0_1),
        .rst_n(rst_n_1),
        .sin_1K(envelope_16b_0_env),
        .sin_1M(carrier_scale_0_dout),
        .sin_modu(mult_gen_0_P));
  design_dds_dds_compiler_0_2 dds_compiler_0
       (.aclk(aclk_0_1),
        .aresetn(rst_n_1),
        .m_axis_data_tdata(dds_compiler_0_m_axis_data_tdata));
  design_dds_fir_compiler_0_2 fir_compiler_0
       (.aclk(aclk_0_1),
        .aresetn(1'b1),
        .m_axis_data_tdata(fir_compiler_0_m_axis_data_tdata),
        .s_axis_data_tdata(mult_gen_0_P1),
        .s_axis_data_tvalid(xlconstant_0_dout));
  design_dds_mult_gen_0_3 mult_gen_0
       (.A(dds_compiler_0_m_axis_data_tdata),
        .B(xlslice_1_Dout),
        .CLK(aclk_0_1),
        .P(mult_gen_0_P1));
  design_dds_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_dds_xlslice_0_0 xlslice_0
       (.Din(fir_compiler_0_m_axis_data_tdata),
        .Dout(xlslice_0_Dout));
  design_dds_xlslice_1_1 xlslice_1
       (.Din(mult_gen_0_P),
        .Dout(xlslice_1_Dout));
endmodule
