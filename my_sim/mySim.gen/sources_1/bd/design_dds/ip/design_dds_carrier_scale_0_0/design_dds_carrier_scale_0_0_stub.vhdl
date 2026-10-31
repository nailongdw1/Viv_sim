-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Oct 31 22:54:14 2026
-- Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ASUS/Xilinx_project/my_sim/my_sim/mySim.gen/sources_1/bd/design_dds/ip/design_dds_carrier_scale_0_0/design_dds_carrier_scale_0_0_stub.vhdl
-- Design      : design_dds_carrier_scale_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_dds_carrier_scale_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    tvalid : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid_o : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_dds_carrier_scale_0_0;

architecture stub of design_dds_carrier_scale_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,tvalid,din[15:0],tvalid_o,dout[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "carrier_scale,Vivado 2020.2";
begin
end;
