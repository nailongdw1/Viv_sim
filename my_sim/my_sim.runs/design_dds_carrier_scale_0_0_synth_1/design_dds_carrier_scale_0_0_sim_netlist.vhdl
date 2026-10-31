-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Oct 31 22:54:14 2026
-- Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_dds_carrier_scale_0_0_sim_netlist.vhdl
-- Design      : design_dds_carrier_scale_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carrier_scale is
  port (
    tvalid_o : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carrier_scale;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carrier_scale is
  signal prod_reg_n_100 : STD_LOGIC;
  signal prod_reg_n_101 : STD_LOGIC;
  signal prod_reg_n_102 : STD_LOGIC;
  signal prod_reg_n_103 : STD_LOGIC;
  signal prod_reg_n_104 : STD_LOGIC;
  signal prod_reg_n_105 : STD_LOGIC;
  signal prod_reg_n_91 : STD_LOGIC;
  signal prod_reg_n_92 : STD_LOGIC;
  signal prod_reg_n_93 : STD_LOGIC;
  signal prod_reg_n_94 : STD_LOGIC;
  signal prod_reg_n_95 : STD_LOGIC;
  signal prod_reg_n_96 : STD_LOGIC;
  signal prod_reg_n_97 : STD_LOGIC;
  signal prod_reg_n_98 : STD_LOGIC;
  signal prod_reg_n_99 : STD_LOGIC;
  signal NLW_prod_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_prod_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of prod_reg : label is "{SYNTH-12 {cell *THIS*}}";
begin
prod_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => din(15),
      A(28) => din(15),
      A(27) => din(15),
      A(26) => din(15),
      A(25) => din(15),
      A(24) => din(15),
      A(23) => din(15),
      A(22) => din(15),
      A(21) => din(15),
      A(20) => din(15),
      A(19) => din(15),
      A(18) => din(15),
      A(17) => din(15),
      A(16) => din(15),
      A(15 downto 0) => din(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000010011001100110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_prod_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_prod_reg_P_UNCONNECTED(47 downto 31),
      P(30 downto 15) => dout(15 downto 0),
      P(14) => prod_reg_n_91,
      P(13) => prod_reg_n_92,
      P(12) => prod_reg_n_93,
      P(11) => prod_reg_n_94,
      P(10) => prod_reg_n_95,
      P(9) => prod_reg_n_96,
      P(8) => prod_reg_n_97,
      P(7) => prod_reg_n_98,
      P(6) => prod_reg_n_99,
      P(5) => prod_reg_n_100,
      P(4) => prod_reg_n_101,
      P(3) => prod_reg_n_102,
      P(2) => prod_reg_n_103,
      P(1) => prod_reg_n_104,
      P(0) => prod_reg_n_105,
      PATTERNBDETECT => NLW_prod_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod_reg_UNDERFLOW_UNCONNECTED
    );
tvalid_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tvalid,
      Q => tvalid_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    tvalid : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid_o : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_dds_carrier_scale_0_0,carrier_scale,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "carrier_scale,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_dds_aclk_0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carrier_scale
     port map (
      clk => clk,
      din(15 downto 0) => din(15 downto 0),
      dout(15 downto 0) => dout(15 downto 0),
      tvalid => tvalid,
      tvalid_o => tvalid_o
    );
end STRUCTURE;
