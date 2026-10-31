-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Oct 31 22:54:13 2026
-- Host        : LAPTOP-G7S5V53H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_dds_envelope_16b_0_0_sim_netlist.vhdl
-- Design      : design_dds_envelope_16b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_envelope_16b is
  port (
    tvalid_o : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 14 downto 0 );
    tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    msg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_envelope_16b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_envelope_16b is
  signal p_0_in : STD_LOGIC_VECTOR ( 14 to 14 );
  signal prod_reg_n_100 : STD_LOGIC;
  signal prod_reg_n_101 : STD_LOGIC;
  signal prod_reg_n_102 : STD_LOGIC;
  signal prod_reg_n_103 : STD_LOGIC;
  signal prod_reg_n_104 : STD_LOGIC;
  signal prod_reg_n_105 : STD_LOGIC;
  signal prod_reg_n_76 : STD_LOGIC;
  signal prod_reg_n_77 : STD_LOGIC;
  signal prod_reg_n_78 : STD_LOGIC;
  signal prod_reg_n_79 : STD_LOGIC;
  signal prod_reg_n_80 : STD_LOGIC;
  signal prod_reg_n_81 : STD_LOGIC;
  signal prod_reg_n_82 : STD_LOGIC;
  signal prod_reg_n_83 : STD_LOGIC;
  signal prod_reg_n_84 : STD_LOGIC;
  signal prod_reg_n_85 : STD_LOGIC;
  signal prod_reg_n_86 : STD_LOGIC;
  signal prod_reg_n_87 : STD_LOGIC;
  signal prod_reg_n_88 : STD_LOGIC;
  signal prod_reg_n_89 : STD_LOGIC;
  signal prod_reg_n_90 : STD_LOGIC;
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
  signal NLW_prod_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_prod_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of prod_reg : label is "{SYNTH-12 {cell *THIS*}}";
begin
\env[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prod_reg_n_76,
      O => p_0_in(14)
    );
\env_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_90,
      Q => env(0),
      R => '0'
    );
\env_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_80,
      Q => env(10),
      R => '0'
    );
\env_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_79,
      Q => env(11),
      R => '0'
    );
\env_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_78,
      Q => env(12),
      R => '0'
    );
\env_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_77,
      Q => env(13),
      R => '0'
    );
\env_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => env(14),
      R => '0'
    );
\env_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_89,
      Q => env(1),
      R => '0'
    );
\env_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_88,
      Q => env(2),
      R => '0'
    );
\env_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_87,
      Q => env(3),
      R => '0'
    );
\env_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_86,
      Q => env(4),
      R => '0'
    );
\env_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_85,
      Q => env(5),
      R => '0'
    );
\env_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_84,
      Q => env(6),
      R => '0'
    );
\env_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_83,
      Q => env(7),
      R => '0'
    );
\env_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_82,
      Q => env(8),
      R => '0'
    );
\env_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => prod_reg_n_81,
      Q => env(9),
      R => '0'
    );
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
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
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
      A(29) => msg(15),
      A(28) => msg(15),
      A(27) => msg(15),
      A(26) => msg(15),
      A(25) => msg(15),
      A(24) => msg(15),
      A(23) => msg(15),
      A(22) => msg(15),
      A(21) => msg(15),
      A(20) => msg(15),
      A(19) => msg(15),
      A(18) => msg(15),
      A(17) => msg(15),
      A(16) => msg(15),
      A(15 downto 0) => msg(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000001001100110011",
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
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_prod_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_prod_reg_P_UNCONNECTED(47 downto 30),
      P(29) => prod_reg_n_76,
      P(28) => prod_reg_n_77,
      P(27) => prod_reg_n_78,
      P(26) => prod_reg_n_79,
      P(25) => prod_reg_n_80,
      P(24) => prod_reg_n_81,
      P(23) => prod_reg_n_82,
      P(22) => prod_reg_n_83,
      P(21) => prod_reg_n_84,
      P(20) => prod_reg_n_85,
      P(19) => prod_reg_n_86,
      P(18) => prod_reg_n_87,
      P(17) => prod_reg_n_88,
      P(16) => prod_reg_n_89,
      P(15) => prod_reg_n_90,
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
    msg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tvalid_o : out STD_LOGIC;
    env : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_dds_envelope_16b_0_0,envelope_16b,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "envelope_16b,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^env\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_dds_aclk_0, INSERT_VIP 0";
begin
  env(15) <= \<const0>\;
  env(14 downto 0) <= \^env\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_envelope_16b
     port map (
      clk => clk,
      env(14 downto 0) => \^env\(14 downto 0),
      msg(15 downto 0) => msg(15 downto 0),
      tvalid => tvalid,
      tvalid_o => tvalid_o
    );
end STRUCTURE;
