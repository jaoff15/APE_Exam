-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Jun  9 12:37:15 2020
-- Host        : JacobOffersen running 64-bit Ubuntu 19.10
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jacoboffersen/advanced_programmable_electronics/APE_Exam/APE_Exam.sim/sim_1/synth/func/xsim/top_tb_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OSERDES_10BIT_WRAP is
  port (
    \hdmi_out_n[0]\ : out STD_LOGIC;
    CLK_I_X5 : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RESET_I : in STD_LOGIC
  );
end OSERDES_10BIT_WRAP;

architecture STRUCTURE of OSERDES_10BIT_WRAP is
  signal SHIFTOUT1 : STD_LOGIC;
  signal SHIFTOUT2 : STD_LOGIC;
  signal NLW_OSERDESE2_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of OSERDESE2_m : label is "PRIMITIVE";
  attribute box_type of OSERDESE2_s : label is "PRIMITIVE";
begin
OSERDESE2_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => Q(0),
      D2 => Q(0),
      D3 => Q(1),
      D4 => Q(0),
      D5 => Q(1),
      D6 => Q(0),
      D7 => Q(1),
      D8 => Q(0),
      OCE => '1',
      OFB => NLW_OSERDESE2_m_OFB_UNCONNECTED,
      OQ => \hdmi_out_n[0]\,
      RST => RESET_I,
      SHIFTIN1 => SHIFTOUT1,
      SHIFTIN2 => SHIFTOUT2,
      SHIFTOUT1 => NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_m_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_m_TQ_UNCONNECTED
    );
OSERDESE2_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => '0',
      D2 => '0',
      D3 => Q(2),
      D4 => Q(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_s_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_s_OQ_UNCONNECTED,
      RST => RESET_I,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTOUT1,
      SHIFTOUT2 => SHIFTOUT2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_s_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OSERDES_10BIT_WRAP_1 is
  port (
    \hdmi_out_n[3]\ : out STD_LOGIC;
    CLK_I_X5 : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    RESET_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OSERDES_10BIT_WRAP_1 : entity is "OSERDES_10BIT_WRAP";
end OSERDES_10BIT_WRAP_1;

architecture STRUCTURE of OSERDES_10BIT_WRAP_1 is
  signal SHIFTOUT1 : STD_LOGIC;
  signal SHIFTOUT2 : STD_LOGIC;
  signal NLW_OSERDESE2_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of OSERDESE2_m : label is "PRIMITIVE";
  attribute box_type of OSERDESE2_s : label is "PRIMITIVE";
begin
OSERDESE2_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => '1',
      D2 => '1',
      D3 => '1',
      D4 => '0',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_m_OFB_UNCONNECTED,
      OQ => \hdmi_out_n[3]\,
      RST => RESET_I,
      SHIFTIN1 => SHIFTOUT1,
      SHIFTIN2 => SHIFTOUT2,
      SHIFTOUT1 => NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_m_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_m_TQ_UNCONNECTED
    );
OSERDESE2_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_s_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_s_OQ_UNCONNECTED,
      RST => RESET_I,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTOUT1,
      SHIFTOUT2 => SHIFTOUT2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_s_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OSERDES_10BIT_WRAP_2 is
  port (
    \hdmi_out_n[1]\ : out STD_LOGIC;
    CLK_I_X5 : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    DATA_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RESET_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OSERDES_10BIT_WRAP_2 : entity is "OSERDES_10BIT_WRAP";
end OSERDES_10BIT_WRAP_2;

architecture STRUCTURE of OSERDES_10BIT_WRAP_2 is
  signal SHIFTOUT1 : STD_LOGIC;
  signal SHIFTOUT2 : STD_LOGIC;
  signal NLW_OSERDESE2_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of OSERDESE2_m : label is "PRIMITIVE";
  attribute box_type of OSERDESE2_s : label is "PRIMITIVE";
begin
OSERDESE2_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => DATA_I(1),
      D2 => DATA_I(1),
      D3 => DATA_I(0),
      D4 => DATA_I(1),
      D5 => DATA_I(0),
      D6 => DATA_I(1),
      D7 => DATA_I(0),
      D8 => DATA_I(1),
      OCE => '1',
      OFB => NLW_OSERDESE2_m_OFB_UNCONNECTED,
      OQ => \hdmi_out_n[1]\,
      RST => RESET_I,
      SHIFTIN1 => SHIFTOUT1,
      SHIFTIN2 => SHIFTOUT2,
      SHIFTOUT1 => NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_m_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_m_TQ_UNCONNECTED
    );
OSERDESE2_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => '0',
      D2 => '0',
      D3 => DATA_I(2),
      D4 => DATA_I(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_s_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_s_OQ_UNCONNECTED,
      RST => RESET_I,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTOUT1,
      SHIFTOUT2 => SHIFTOUT2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_s_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OSERDES_10BIT_WRAP_3 is
  port (
    DATA_O : out STD_LOGIC;
    CLK_I_X5 : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    DATA_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RESET_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OSERDES_10BIT_WRAP_3 : entity is "OSERDES_10BIT_WRAP";
end OSERDES_10BIT_WRAP_3;

architecture STRUCTURE of OSERDES_10BIT_WRAP_3 is
  signal SHIFTOUT1 : STD_LOGIC;
  signal SHIFTOUT2 : STD_LOGIC;
  signal NLW_OSERDESE2_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of OSERDESE2_m : label is "PRIMITIVE";
  attribute box_type of OSERDESE2_s : label is "PRIMITIVE";
begin
OSERDESE2_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => DATA_I(1),
      D2 => DATA_I(1),
      D3 => DATA_I(0),
      D4 => DATA_I(1),
      D5 => DATA_I(0),
      D6 => DATA_I(1),
      D7 => DATA_I(0),
      D8 => DATA_I(1),
      OCE => '1',
      OFB => NLW_OSERDESE2_m_OFB_UNCONNECTED,
      OQ => DATA_O,
      RST => RESET_I,
      SHIFTIN1 => SHIFTOUT1,
      SHIFTIN2 => SHIFTOUT2,
      SHIFTOUT1 => NLW_OSERDESE2_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_m_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_m_TQ_UNCONNECTED
    );
OSERDESE2_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => CLK_I_X5,
      CLKDIV => O_buff_clkpixel,
      D1 => '0',
      D2 => '0',
      D3 => DATA_I(2),
      D4 => DATA_I(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_s_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_s_OQ_UNCONNECTED,
      RST => RESET_I,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTOUT1,
      SHIFTOUT2 => SHIFTOUT2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_s_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDMS_encoder is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    e12_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    O_buff_clkpixel : in STD_LOGIC;
    \queue_reg[15][hSync]__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \queue_reg[15][vSync]\ : in STD_LOGIC;
    \queue_reg[15][hSync]\ : in STD_LOGIC
  );
end TDMS_encoder;

architecture STRUCTURE of TDMS_encoder is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \dc_bias[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \^e12_out\ : STD_LOGIC;
  signal \e[8]_i_1_n_0\ : STD_LOGIC;
  signal \e[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \e[2]_i_2\ : label is "soft_lutpair90";
begin
  Q(0) <= \^q\(0);
  e12_out <= \^e12_out\;
\dc_bias[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1__1_n_0\
    );
\dc_bias[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D278"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \r_out_reg[1]\,
      O => \dc_bias[1]_i_1__1_n_0\
    );
\dc_bias[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33399333"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]\,
      O => \dc_bias[2]_i_1__1_n_0\
    );
\dc_bias[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333B1333"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]\,
      O => \dc_bias[3]_i_1__1_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[0]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[1]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[2]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[3]_i_1__1_n_0\,
      Q => \^q\(0),
      R => p_1_in(0)
    );
\e[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      O => \^e12_out\
    );
\e[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \queue_reg[15][hSync]\,
      I1 => \r_out_reg[1]\,
      I2 => p_1_in(0),
      O => \e[8]_i_1_n_0\
    );
\e[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3C3C3FF0055AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \queue_reg[15][vSync]\,
      I2 => \queue_reg[15][hSync]\,
      I3 => \r_out_reg[1]\,
      I4 => \^e12_out\,
      I5 => p_1_in(0),
      O => \e[9]_i_1_n_0\
    );
\e_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[15][hSync]__0\(0),
      Q => D(0),
      R => '0'
    );
\e_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[15][hSync]__0\(1),
      Q => D(1),
      R => '0'
    );
\e_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \e[8]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
\e_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \e[9]_i_1_n_0\,
      Q => D(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDMS_encoder_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_out_reg[1]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    O_buff_clkpixel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDMS_encoder_4 : entity is "TDMS_encoder";
end TDMS_encoder_4;

architecture STRUCTURE of TDMS_encoder_4 is
  signal \dc_bias[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \e[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__0\ : label is "soft_lutpair91";
begin
\dc_bias[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1__0_n_0\
    );
\dc_bias[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D278"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \r_out_reg[1]\,
      O => \dc_bias[1]_i_1__0_n_0\
    );
\dc_bias[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33399333"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]\,
      O => \dc_bias[2]_i_1__0_n_0\
    );
\dc_bias[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333B1333"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]\,
      O => \dc_bias[3]_i_1__0_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[0]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[1]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[2]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[3]_i_1__0_n_0\,
      Q => p_1_in_0,
      R => p_1_in(0)
    );
\e[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \r_out_reg[1]\,
      I1 => p_1_in_0,
      I2 => p_1_in(0),
      O => \e[9]_i_1_n_0\
    );
\e_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in_0,
      Q => D(0),
      R => p_1_in(0)
    );
\e_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in_0,
      Q => D(1),
      S => p_1_in(0)
    );
\e_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \e[9]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDMS_encoder_5 is
  port (
    \latched_red_reg[8]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_out_reg[1]\ : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    \r_out_reg[1]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDMS_encoder_5 : entity is "TDMS_encoder";
end TDMS_encoder_5;

architecture STRUCTURE of TDMS_encoder_5 is
  signal \dc_bias[0]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \e[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1\ : label is "soft_lutpair93";
begin
\dc_bias[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1_n_0\
    );
\dc_bias[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D278"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \r_out_reg[1]_0\,
      O => \dc_bias[1]_i_1_n_0\
    );
\dc_bias[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33399333"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]_0\,
      O => \dc_bias[2]_i_1_n_0\
    );
\dc_bias[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333B1333"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \r_out_reg[1]_0\,
      O => \dc_bias[3]_i_1_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[0]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[1]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[2]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[3]_i_1_n_0\,
      Q => p_1_in_0,
      R => p_1_in(0)
    );
\e[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \r_out_reg[1]_0\,
      I1 => p_1_in_0,
      I2 => p_1_in(0),
      O => \e[9]_i_1_n_0\
    );
\e_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in_0,
      Q => D(0),
      R => p_1_in(0)
    );
\e_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in_0,
      Q => D(1),
      S => p_1_in(0)
    );
\e_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \r_out_reg[1]\,
      Q => \latched_red_reg[8]\,
      R => '0'
    );
\e_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \e[9]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TD_RAM_36K_WRAP is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_A : in STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK100MHZ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end TD_RAM_36K_WRAP;

architecture STRUCTURE of TD_RAM_36K_WRAP is
  signal UNISIM_RAM0_n_36 : STD_LOGIC;
  signal UNISIM_RAM0_n_37 : STD_LOGIC;
  signal UNISIM_RAM0_n_38 : STD_LOGIC;
  signal UNISIM_RAM0_n_39 : STD_LOGIC;
  signal UNISIM_RAM0_n_40 : STD_LOGIC;
  signal UNISIM_RAM0_n_41 : STD_LOGIC;
  signal UNISIM_RAM0_n_42 : STD_LOGIC;
  signal UNISIM_RAM0_n_43 : STD_LOGIC;
  signal UNISIM_RAM0_n_44 : STD_LOGIC;
  signal UNISIM_RAM0_n_45 : STD_LOGIC;
  signal UNISIM_RAM0_n_46 : STD_LOGIC;
  signal UNISIM_RAM0_n_47 : STD_LOGIC;
  signal UNISIM_RAM0_n_48 : STD_LOGIC;
  signal UNISIM_RAM0_n_49 : STD_LOGIC;
  signal UNISIM_RAM0_n_50 : STD_LOGIC;
  signal UNISIM_RAM0_n_51 : STD_LOGIC;
  signal UNISIM_RAM0_n_52 : STD_LOGIC;
  signal UNISIM_RAM0_n_53 : STD_LOGIC;
  signal UNISIM_RAM0_n_54 : STD_LOGIC;
  signal UNISIM_RAM0_n_55 : STD_LOGIC;
  signal UNISIM_RAM0_n_56 : STD_LOGIC;
  signal UNISIM_RAM0_n_57 : STD_LOGIC;
  signal UNISIM_RAM0_n_58 : STD_LOGIC;
  signal UNISIM_RAM0_n_59 : STD_LOGIC;
  signal UNISIM_RAM0_n_60 : STD_LOGIC;
  signal UNISIM_RAM0_n_61 : STD_LOGIC;
  signal UNISIM_RAM0_n_62 : STD_LOGIC;
  signal UNISIM_RAM0_n_63 : STD_LOGIC;
  signal UNISIM_RAM0_n_64 : STD_LOGIC;
  signal UNISIM_RAM0_n_65 : STD_LOGIC;
  signal UNISIM_RAM0_n_66 : STD_LOGIC;
  signal UNISIM_RAM0_n_67 : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of UNISIM_RAM0 : label is "PRIMITIVE";
begin
UNISIM_RAM0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 12) => B"0000",
      ADDRARDADDR(11 downto 5) => Q(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_A,
      CLKBWRCLK => SPI_SCLK_I_IBUF,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => CLK100MHZ(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31) => UNISIM_RAM0_n_36,
      DOBDO(30) => UNISIM_RAM0_n_37,
      DOBDO(29) => UNISIM_RAM0_n_38,
      DOBDO(28) => UNISIM_RAM0_n_39,
      DOBDO(27) => UNISIM_RAM0_n_40,
      DOBDO(26) => UNISIM_RAM0_n_41,
      DOBDO(25) => UNISIM_RAM0_n_42,
      DOBDO(24) => UNISIM_RAM0_n_43,
      DOBDO(23) => UNISIM_RAM0_n_44,
      DOBDO(22) => UNISIM_RAM0_n_45,
      DOBDO(21) => UNISIM_RAM0_n_46,
      DOBDO(20) => UNISIM_RAM0_n_47,
      DOBDO(19) => UNISIM_RAM0_n_48,
      DOBDO(18) => UNISIM_RAM0_n_49,
      DOBDO(17) => UNISIM_RAM0_n_50,
      DOBDO(16) => UNISIM_RAM0_n_51,
      DOBDO(15) => UNISIM_RAM0_n_52,
      DOBDO(14) => UNISIM_RAM0_n_53,
      DOBDO(13) => UNISIM_RAM0_n_54,
      DOBDO(12) => UNISIM_RAM0_n_55,
      DOBDO(11) => UNISIM_RAM0_n_56,
      DOBDO(10) => UNISIM_RAM0_n_57,
      DOBDO(9) => UNISIM_RAM0_n_58,
      DOBDO(8) => UNISIM_RAM0_n_59,
      DOBDO(7) => UNISIM_RAM0_n_60,
      DOBDO(6) => UNISIM_RAM0_n_61,
      DOBDO(5) => UNISIM_RAM0_n_62,
      DOBDO(4) => UNISIM_RAM0_n_63,
      DOBDO(3) => UNISIM_RAM0_n_64,
      DOBDO(2) => UNISIM_RAM0_n_65,
      DOBDO(1) => UNISIM_RAM0_n_66,
      DOBDO(0) => UNISIM_RAM0_n_67,
      DOPADOP(3 downto 0) => NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_UNISIM_RAM0_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => WEBWE(0),
      WEBWE(6) => WEBWE(0),
      WEBWE(5) => WEBWE(0),
      WEBWE(4) => WEBWE(0),
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TD_RAM_36K_WRAP_0 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \r_out_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_out_reg[1]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_4\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_5\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_out_reg[1]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_11\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O_buff_clkpixel : in STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLUE_O : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][hCounter][11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][hCounter][11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ : in STD_LOGIC;
    \queue_reg[15][hCounter]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \queue_reg[15][vCounter]\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TD_RAM_36K_WRAP_0 : entity is "TD_RAM_36K_WRAP";
end TD_RAM_36K_WRAP_0;

architecture STRUCTURE of TD_RAM_36K_WRAP_0 is
  signal DATA_A_O : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal \^doado\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal UNISIM_RAM0_n_36 : STD_LOGIC;
  signal UNISIM_RAM0_n_37 : STD_LOGIC;
  signal UNISIM_RAM0_n_38 : STD_LOGIC;
  signal UNISIM_RAM0_n_39 : STD_LOGIC;
  signal UNISIM_RAM0_n_40 : STD_LOGIC;
  signal UNISIM_RAM0_n_41 : STD_LOGIC;
  signal UNISIM_RAM0_n_42 : STD_LOGIC;
  signal UNISIM_RAM0_n_43 : STD_LOGIC;
  signal UNISIM_RAM0_n_44 : STD_LOGIC;
  signal UNISIM_RAM0_n_45 : STD_LOGIC;
  signal UNISIM_RAM0_n_46 : STD_LOGIC;
  signal UNISIM_RAM0_n_47 : STD_LOGIC;
  signal UNISIM_RAM0_n_48 : STD_LOGIC;
  signal UNISIM_RAM0_n_49 : STD_LOGIC;
  signal UNISIM_RAM0_n_50 : STD_LOGIC;
  signal UNISIM_RAM0_n_51 : STD_LOGIC;
  signal UNISIM_RAM0_n_52 : STD_LOGIC;
  signal UNISIM_RAM0_n_53 : STD_LOGIC;
  signal UNISIM_RAM0_n_54 : STD_LOGIC;
  signal UNISIM_RAM0_n_55 : STD_LOGIC;
  signal UNISIM_RAM0_n_56 : STD_LOGIC;
  signal UNISIM_RAM0_n_57 : STD_LOGIC;
  signal UNISIM_RAM0_n_58 : STD_LOGIC;
  signal UNISIM_RAM0_n_59 : STD_LOGIC;
  signal UNISIM_RAM0_n_60 : STD_LOGIC;
  signal UNISIM_RAM0_n_61 : STD_LOGIC;
  signal UNISIM_RAM0_n_62 : STD_LOGIC;
  signal UNISIM_RAM0_n_63 : STD_LOGIC;
  signal UNISIM_RAM0_n_64 : STD_LOGIC;
  signal UNISIM_RAM0_n_65 : STD_LOGIC;
  signal UNISIM_RAM0_n_66 : STD_LOGIC;
  signal UNISIM_RAM0_n_67 : STD_LOGIC;
  signal \r_out1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \r_out1_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \r_out1_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \r_out1_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \r_out1_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \r_out1_carry__0_i_9_n_3\ : STD_LOGIC;
  signal r_out1_carry_i_10_n_0 : STD_LOGIC;
  signal r_out1_carry_i_10_n_1 : STD_LOGIC;
  signal r_out1_carry_i_10_n_2 : STD_LOGIC;
  signal r_out1_carry_i_10_n_3 : STD_LOGIC;
  signal r_out1_carry_i_11_n_0 : STD_LOGIC;
  signal r_out1_carry_i_12_n_0 : STD_LOGIC;
  signal r_out1_carry_i_13_n_0 : STD_LOGIC;
  signal r_out1_carry_i_14_n_0 : STD_LOGIC;
  signal r_out1_carry_i_15_n_0 : STD_LOGIC;
  signal r_out1_carry_i_16_n_0 : STD_LOGIC;
  signal r_out1_carry_i_17_n_0 : STD_LOGIC;
  signal r_out1_carry_i_9_n_0 : STD_LOGIC;
  signal r_out1_carry_i_9_n_1 : STD_LOGIC;
  signal r_out1_carry_i_9_n_2 : STD_LOGIC;
  signal r_out1_carry_i_9_n_3 : STD_LOGIC;
  signal \r_out3_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \r_out3_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \r_out3_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \r_out3_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \r_out3_carry__0_i_10_n_4\ : STD_LOGIC;
  signal \r_out3_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \r_out3_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \r_out3_carry__0_i_9_n_5\ : STD_LOGIC;
  signal \r_out3_carry__0_i_9_n_6\ : STD_LOGIC;
  signal \r_out3_carry__0_i_9_n_7\ : STD_LOGIC;
  signal r_out3_carry_i_10_n_0 : STD_LOGIC;
  signal r_out3_carry_i_10_n_1 : STD_LOGIC;
  signal r_out3_carry_i_10_n_2 : STD_LOGIC;
  signal r_out3_carry_i_10_n_3 : STD_LOGIC;
  signal r_out3_carry_i_11_n_0 : STD_LOGIC;
  signal r_out3_carry_i_12_n_0 : STD_LOGIC;
  signal r_out3_carry_i_13_n_0 : STD_LOGIC;
  signal r_out3_carry_i_14_n_0 : STD_LOGIC;
  signal r_out3_carry_i_15_n_0 : STD_LOGIC;
  signal r_out3_carry_i_16_n_0 : STD_LOGIC;
  signal r_out3_carry_i_17_n_0 : STD_LOGIC;
  signal r_out3_carry_i_9_n_0 : STD_LOGIC;
  signal r_out3_carry_i_9_n_1 : STD_LOGIC;
  signal r_out3_carry_i_9_n_2 : STD_LOGIC;
  signal r_out3_carry_i_9_n_3 : STD_LOGIC;
  signal \^r_out_reg[1]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_out_reg[1]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_r_out1_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_out1_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_out3_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_out3_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of UNISIM_RAM0 : label is "PRIMITIVE";
begin
  DOADO(23 downto 0) <= \^doado\(23 downto 0);
  O(3 downto 0) <= \^o\(3 downto 0);
  \r_out_reg[1]_0\(3 downto 0) <= \^r_out_reg[1]_0\(3 downto 0);
  \r_out_reg[1]_2\(2 downto 0) <= \^r_out_reg[1]_2\(2 downto 0);
UNISIM_RAM0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 0) => B"0000001000000000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => O_buff_clkpixel,
      CLKBWRCLK => SPI_SCLK_I_IBUF,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => Q(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 28) => DATA_A_O(31 downto 28),
      DOADO(27 downto 16) => \^doado\(23 downto 12),
      DOADO(15 downto 12) => DATA_A_O(15 downto 12),
      DOADO(11 downto 0) => \^doado\(11 downto 0),
      DOBDO(31) => UNISIM_RAM0_n_36,
      DOBDO(30) => UNISIM_RAM0_n_37,
      DOBDO(29) => UNISIM_RAM0_n_38,
      DOBDO(28) => UNISIM_RAM0_n_39,
      DOBDO(27) => UNISIM_RAM0_n_40,
      DOBDO(26) => UNISIM_RAM0_n_41,
      DOBDO(25) => UNISIM_RAM0_n_42,
      DOBDO(24) => UNISIM_RAM0_n_43,
      DOBDO(23) => UNISIM_RAM0_n_44,
      DOBDO(22) => UNISIM_RAM0_n_45,
      DOBDO(21) => UNISIM_RAM0_n_46,
      DOBDO(20) => UNISIM_RAM0_n_47,
      DOBDO(19) => UNISIM_RAM0_n_48,
      DOBDO(18) => UNISIM_RAM0_n_49,
      DOBDO(17) => UNISIM_RAM0_n_50,
      DOBDO(16) => UNISIM_RAM0_n_51,
      DOBDO(15) => UNISIM_RAM0_n_52,
      DOBDO(14) => UNISIM_RAM0_n_53,
      DOBDO(13) => UNISIM_RAM0_n_54,
      DOBDO(12) => UNISIM_RAM0_n_55,
      DOBDO(11) => UNISIM_RAM0_n_56,
      DOBDO(10) => UNISIM_RAM0_n_57,
      DOBDO(9) => UNISIM_RAM0_n_58,
      DOBDO(8) => UNISIM_RAM0_n_59,
      DOBDO(7) => UNISIM_RAM0_n_60,
      DOBDO(6) => UNISIM_RAM0_n_61,
      DOBDO(5) => UNISIM_RAM0_n_62,
      DOBDO(4) => UNISIM_RAM0_n_63,
      DOBDO(3) => UNISIM_RAM0_n_64,
      DOBDO(2) => UNISIM_RAM0_n_65,
      DOBDO(1) => UNISIM_RAM0_n_66,
      DOBDO(0) => UNISIM_RAM0_n_67,
      DOPADOP(3 downto 0) => NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_UNISIM_RAM0_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => WEBWE(0),
      WEBWE(6) => WEBWE(0),
      WEBWE(5) => WEBWE(0),
      WEBWE(4) => WEBWE(0),
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(30),
      I1 => DATA_A_O(31),
      O => \r_out_reg[1]_7\(3)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(28),
      I1 => DATA_A_O(29),
      O => \r_out_reg[1]_7\(2)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^doado\(23),
      I1 => \queue_reg[15][hCounter]\(9),
      I2 => \^doado\(22),
      I3 => \queue_reg[15][hCounter]\(8),
      O => \r_out_reg[1]_7\(1)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^doado\(21),
      I1 => \queue_reg[15][hCounter]\(7),
      I2 => \^doado\(20),
      I3 => \queue_reg[15][hCounter]\(6),
      O => \r_out_reg[1]_7\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^doado\(19),
      I1 => \queue_reg[15][hCounter]\(5),
      I2 => \^doado\(18),
      I3 => \queue_reg[15][hCounter]\(4),
      O => \r_out_reg[1]_6\(2)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^doado\(17),
      I1 => \queue_reg[15][hCounter]\(3),
      I2 => \^doado\(16),
      I3 => \queue_reg[15][hCounter]\(2),
      O => \r_out_reg[1]_6\(1)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^doado\(15),
      I1 => \queue_reg[15][hCounter]\(1),
      I2 => \^doado\(14),
      I3 => \queue_reg[15][hCounter]\(0),
      O => \r_out_reg[1]_6\(0)
    );
\r_out1_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => r_out1_carry_i_9_n_0,
      CO(3) => \r_out1_carry__0_i_10_n_0\,
      CO(2) => \r_out1_carry__0_i_10_n_1\,
      CO(1) => \r_out1_carry__0_i_10_n_2\,
      CO(0) => \r_out1_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \r_out_reg[1]_10\(3 downto 0),
      S(3) => DATA_A_O(12),
      S(2 downto 0) => \^doado\(11 downto 9)
    );
\r_out1_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_out1_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_r_out1_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_out1_carry__0_i_9_n_2\,
      CO(0) => \r_out1_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_out1_carry__0_i_9_O_UNCONNECTED\(3),
      O(2 downto 0) => \r_out_reg[1]_11\(2 downto 0),
      S(3) => '0',
      S(2 downto 0) => DATA_A_O(15 downto 13)
    );
r_out1_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_out1_carry_i_10_n_0,
      CO(2) => r_out1_carry_i_10_n_1,
      CO(1) => r_out1_carry_i_10_n_2,
      CO(0) => r_out1_carry_i_10_n_3,
      CYINIT => \^doado\(0),
      DI(3 downto 0) => \^doado\(4 downto 1),
      O(3 downto 0) => \r_out_reg[1]_8\(3 downto 0),
      S(3) => r_out1_carry_i_14_n_0,
      S(2) => r_out1_carry_i_15_n_0,
      S(1) => r_out1_carry_i_16_n_0,
      S(0) => r_out1_carry_i_17_n_0
    );
r_out1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(7),
      O => r_out1_carry_i_11_n_0
    );
r_out1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(6),
      O => r_out1_carry_i_12_n_0
    );
r_out1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(5),
      O => r_out1_carry_i_13_n_0
    );
r_out1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(4),
      O => r_out1_carry_i_14_n_0
    );
r_out1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(3),
      O => r_out1_carry_i_15_n_0
    );
r_out1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(2),
      O => r_out1_carry_i_16_n_0
    );
r_out1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(1),
      O => r_out1_carry_i_17_n_0
    );
r_out1_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => r_out1_carry_i_10_n_0,
      CO(3) => r_out1_carry_i_9_n_0,
      CO(2) => r_out1_carry_i_9_n_1,
      CO(1) => r_out1_carry_i_9_n_2,
      CO(0) => r_out1_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^doado\(7 downto 5),
      O(3 downto 0) => \r_out_reg[1]_9\(3 downto 0),
      S(3) => \^doado\(8),
      S(2) => r_out1_carry_i_11_n_0,
      S(1) => r_out1_carry_i_12_n_0,
      S(0) => r_out1_carry_i_13_n_0
    );
\r_out2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^doado\(11),
      I1 => \queue_reg[15][vCounter]\(11),
      I2 => \queue_reg[15][vCounter]\(10),
      I3 => \^doado\(10),
      O => \r_out_reg[1]_4\(1)
    );
\r_out2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^doado\(9),
      I1 => \queue_reg[15][vCounter]\(9),
      I2 => \queue_reg[15][vCounter]\(8),
      I3 => \^doado\(8),
      O => \r_out_reg[1]_4\(0)
    );
\r_out2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(14),
      I1 => DATA_A_O(15),
      O => \r_out_reg[1]_5\(1)
    );
\r_out2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(12),
      I1 => DATA_A_O(13),
      O => \r_out_reg[1]_5\(0)
    );
r_out2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \queue_reg[15][vCounter]\(7),
      I2 => \queue_reg[15][vCounter]\(6),
      I3 => \^doado\(6),
      O => \r_out_reg[1]_3\(3)
    );
r_out2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \queue_reg[15][vCounter]\(5),
      I2 => \queue_reg[15][vCounter]\(4),
      I3 => \^doado\(4),
      O => \r_out_reg[1]_3\(2)
    );
r_out2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \queue_reg[15][vCounter]\(3),
      I2 => \queue_reg[15][vCounter]\(2),
      I3 => \^doado\(2),
      O => \r_out_reg[1]_3\(1)
    );
r_out2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => \^doado\(1),
      I1 => \queue_reg[15][vCounter]\(1),
      I2 => \^doado\(0),
      I3 => \queue_reg[15][vCounter]\(0),
      O => \r_out_reg[1]_3\(0)
    );
\r_out3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_out3_carry__0_i_9_n_6\,
      I1 => \r_out3_carry__0_i_9_n_5\,
      O => DI(1)
    );
\r_out3_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => r_out3_carry_i_9_n_0,
      CO(3) => \r_out3_carry__0_i_10_n_0\,
      CO(2) => \r_out3_carry__0_i_10_n_1\,
      CO(1) => \r_out3_carry__0_i_10_n_2\,
      CO(0) => \r_out3_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_out3_carry__0_i_10_n_4\,
      O(2 downto 0) => \^r_out_reg[1]_2\(2 downto 0),
      S(3) => DATA_A_O(28),
      S(2 downto 0) => \^doado\(23 downto 21)
    );
\r_out3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_out3_carry__0_i_10_n_4\,
      I1 => \r_out3_carry__0_i_9_n_7\,
      O => DI(0)
    );
\r_out3_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_out3_carry__0_i_9_n_5\,
      I1 => \r_out3_carry__0_i_9_n_6\,
      O => \r_out_reg[1]_1\(3)
    );
\r_out3_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_out3_carry__0_i_9_n_7\,
      I1 => \r_out3_carry__0_i_10_n_4\,
      O => \r_out_reg[1]_1\(2)
    );
\r_out3_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_2\(2),
      I1 => \queue_reg[15][hCounter]\(9),
      I2 => \^r_out_reg[1]_2\(1),
      I3 => \queue_reg[15][hCounter]\(8),
      O => \r_out_reg[1]_1\(1)
    );
\r_out3_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_2\(0),
      I1 => \queue_reg[15][hCounter]\(7),
      I2 => \^o\(3),
      I3 => \queue_reg[15][hCounter]\(6),
      O => \r_out_reg[1]_1\(0)
    );
\r_out3_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_out3_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_r_out3_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_out3_carry__0_i_9_n_2\,
      CO(0) => \r_out3_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_out3_carry__0_i_9_O_UNCONNECTED\(3),
      O(2) => \r_out3_carry__0_i_9_n_5\,
      O(1) => \r_out3_carry__0_i_9_n_6\,
      O(0) => \r_out3_carry__0_i_9_n_7\,
      S(3) => '0',
      S(2 downto 0) => DATA_A_O(31 downto 29)
    );
r_out3_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_out3_carry_i_10_n_0,
      CO(2) => r_out3_carry_i_10_n_1,
      CO(1) => r_out3_carry_i_10_n_2,
      CO(0) => r_out3_carry_i_10_n_3,
      CYINIT => \^doado\(12),
      DI(3 downto 0) => \^doado\(16 downto 13),
      O(3 downto 0) => \^r_out_reg[1]_0\(3 downto 0),
      S(3) => r_out3_carry_i_14_n_0,
      S(2) => r_out3_carry_i_15_n_0,
      S(1) => r_out3_carry_i_16_n_0,
      S(0) => r_out3_carry_i_17_n_0
    );
r_out3_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(19),
      O => r_out3_carry_i_11_n_0
    );
r_out3_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(18),
      O => r_out3_carry_i_12_n_0
    );
r_out3_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(17),
      O => r_out3_carry_i_13_n_0
    );
r_out3_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(16),
      O => r_out3_carry_i_14_n_0
    );
r_out3_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(15),
      O => r_out3_carry_i_15_n_0
    );
r_out3_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(14),
      O => r_out3_carry_i_16_n_0
    );
r_out3_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(13),
      O => r_out3_carry_i_17_n_0
    );
r_out3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^o\(2),
      I1 => \queue_reg[15][hCounter]\(5),
      I2 => \^o\(1),
      I3 => \queue_reg[15][hCounter]\(4),
      O => S(2)
    );
r_out3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^o\(0),
      I1 => \queue_reg[15][hCounter]\(3),
      I2 => \^r_out_reg[1]_0\(3),
      I3 => \queue_reg[15][hCounter]\(2),
      O => S(1)
    );
r_out3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_0\(2),
      I1 => \queue_reg[15][hCounter]\(1),
      I2 => \^r_out_reg[1]_0\(1),
      I3 => \queue_reg[15][hCounter]\(0),
      O => S(0)
    );
r_out3_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => r_out3_carry_i_10_n_0,
      CO(3) => r_out3_carry_i_9_n_0,
      CO(2) => r_out3_carry_i_9_n_1,
      CO(1) => r_out3_carry_i_9_n_2,
      CO(0) => r_out3_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^doado\(19 downto 17),
      O(3 downto 0) => \^o\(3 downto 0),
      S(3) => \^doado\(20),
      S(2) => r_out3_carry_i_11_n_0,
      S(1) => r_out3_carry_i_12_n_0,
      S(0) => r_out3_carry_i_13_n_0
    );
\r_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => BLUE_O(0),
      I1 => CO(0),
      I2 => \queue_reg[15][hCounter][11]\(0),
      I3 => \queue_reg[15][hCounter][11]_0\(0),
      I4 => UNISIM_RAM0_0(0),
      I5 => CLK100MHZ,
      O => \r_out_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TD_RAM_36K_WRAP_6 is
  port (
    \data32_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_A : in STD_LOGIC;
    CLK_SPI_O : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \data32_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TD_RAM_36K_WRAP_6 : entity is "TD_RAM_36K_WRAP";
end TD_RAM_36K_WRAP_6;

architecture STRUCTURE of TD_RAM_36K_WRAP_6 is
  signal UNISIM_RAM0_n_36 : STD_LOGIC;
  signal UNISIM_RAM0_n_37 : STD_LOGIC;
  signal UNISIM_RAM0_n_38 : STD_LOGIC;
  signal UNISIM_RAM0_n_39 : STD_LOGIC;
  signal UNISIM_RAM0_n_40 : STD_LOGIC;
  signal UNISIM_RAM0_n_41 : STD_LOGIC;
  signal UNISIM_RAM0_n_42 : STD_LOGIC;
  signal UNISIM_RAM0_n_43 : STD_LOGIC;
  signal UNISIM_RAM0_n_44 : STD_LOGIC;
  signal UNISIM_RAM0_n_45 : STD_LOGIC;
  signal UNISIM_RAM0_n_46 : STD_LOGIC;
  signal UNISIM_RAM0_n_47 : STD_LOGIC;
  signal UNISIM_RAM0_n_48 : STD_LOGIC;
  signal UNISIM_RAM0_n_49 : STD_LOGIC;
  signal UNISIM_RAM0_n_50 : STD_LOGIC;
  signal UNISIM_RAM0_n_51 : STD_LOGIC;
  signal UNISIM_RAM0_n_52 : STD_LOGIC;
  signal UNISIM_RAM0_n_53 : STD_LOGIC;
  signal UNISIM_RAM0_n_54 : STD_LOGIC;
  signal UNISIM_RAM0_n_55 : STD_LOGIC;
  signal UNISIM_RAM0_n_56 : STD_LOGIC;
  signal UNISIM_RAM0_n_57 : STD_LOGIC;
  signal UNISIM_RAM0_n_58 : STD_LOGIC;
  signal UNISIM_RAM0_n_59 : STD_LOGIC;
  signal UNISIM_RAM0_n_60 : STD_LOGIC;
  signal UNISIM_RAM0_n_61 : STD_LOGIC;
  signal UNISIM_RAM0_n_62 : STD_LOGIC;
  signal UNISIM_RAM0_n_63 : STD_LOGIC;
  signal UNISIM_RAM0_n_64 : STD_LOGIC;
  signal UNISIM_RAM0_n_65 : STD_LOGIC;
  signal UNISIM_RAM0_n_66 : STD_LOGIC;
  signal UNISIM_RAM0_n_67 : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of UNISIM_RAM0 : label is "PRIMITIVE";
begin
UNISIM_RAM0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 12) => B"0000",
      ADDRARDADDR(11 downto 5) => Q(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_A,
      CLKBWRCLK => CLK_SPI_O,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \data32_reg[31]_0\(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \data32_reg[31]\(31 downto 0),
      DOBDO(31) => UNISIM_RAM0_n_36,
      DOBDO(30) => UNISIM_RAM0_n_37,
      DOBDO(29) => UNISIM_RAM0_n_38,
      DOBDO(28) => UNISIM_RAM0_n_39,
      DOBDO(27) => UNISIM_RAM0_n_40,
      DOBDO(26) => UNISIM_RAM0_n_41,
      DOBDO(25) => UNISIM_RAM0_n_42,
      DOBDO(24) => UNISIM_RAM0_n_43,
      DOBDO(23) => UNISIM_RAM0_n_44,
      DOBDO(22) => UNISIM_RAM0_n_45,
      DOBDO(21) => UNISIM_RAM0_n_46,
      DOBDO(20) => UNISIM_RAM0_n_47,
      DOBDO(19) => UNISIM_RAM0_n_48,
      DOBDO(18) => UNISIM_RAM0_n_49,
      DOBDO(17) => UNISIM_RAM0_n_50,
      DOBDO(16) => UNISIM_RAM0_n_51,
      DOBDO(15) => UNISIM_RAM0_n_52,
      DOBDO(14) => UNISIM_RAM0_n_53,
      DOBDO(13) => UNISIM_RAM0_n_54,
      DOBDO(12) => UNISIM_RAM0_n_55,
      DOBDO(11) => UNISIM_RAM0_n_56,
      DOBDO(10) => UNISIM_RAM0_n_57,
      DOBDO(9) => UNISIM_RAM0_n_58,
      DOBDO(8) => UNISIM_RAM0_n_59,
      DOBDO(7) => UNISIM_RAM0_n_60,
      DOBDO(6) => UNISIM_RAM0_n_61,
      DOBDO(5) => UNISIM_RAM0_n_62,
      DOBDO(4) => UNISIM_RAM0_n_63,
      DOBDO(3) => UNISIM_RAM0_n_64,
      DOBDO(2) => UNISIM_RAM0_n_65,
      DOBDO(1) => UNISIM_RAM0_n_66,
      DOBDO(0) => UNISIM_RAM0_n_67,
      DOPADOP(3 downto 0) => NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_UNISIM_RAM0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocking is
  port (
    O_buff_clkpixel : out STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC
  );
end clocking;

architecture STRUCTURE of clocking is
  signal BUFG_clk_n_0 : STD_LOGIC;
  signal BUFG_pclockx5_180_n_0 : STD_LOGIC;
  signal BUFG_pclockx5_n_0 : STD_LOGIC;
  signal PLL_BASE_inst_n_7 : STD_LOGIC;
  signal clk_feedback : STD_LOGIC;
  signal clock_pixel_unbuffered : STD_LOGIC;
  signal clock_x5pixel_unbuffered : STD_LOGIC;
  signal clock_x5pixelinv_unbuffered : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of BUFG_clk : label is "PRIMITIVE";
  attribute box_type of BUFG_pclock : label is "PRIMITIVE";
  attribute box_type of BUFG_pclockx5 : label is "PRIMITIVE";
  attribute box_type of BUFG_pclockx5_180 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of PLL_BASE_inst : label is "PLL_BASE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of PLL_BASE_inst : label is "CLKIN:CLKIN1";
  attribute box_type of PLL_BASE_inst : label is "PRIMITIVE";
begin
BUFG_clk: unisim.vcomponents.BUFG
     port map (
      I => I_unbuff_clk,
      O => BUFG_clk_n_0
    );
BUFG_pclock: unisim.vcomponents.BUFG
     port map (
      I => clock_pixel_unbuffered,
      O => O_buff_clkpixel
    );
BUFG_pclockx5: unisim.vcomponents.BUFG
     port map (
      I => clock_x5pixel_unbuffered,
      O => BUFG_pclockx5_n_0
    );
BUFG_pclockx5_180: unisim.vcomponents.BUFG
     port map (
      I => clock_x5pixelinv_unbuffered,
      O => BUFG_pclockx5_180_n_0
    );
PLL_BASE_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 9.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 12.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 2,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 180.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.100000,
      REF_JITTER2 => 0.100000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clk_feedback,
      CLKFBOUT => clk_feedback,
      CLKFBOUTB => NLW_PLL_BASE_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_PLL_BASE_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => BUFG_clk_n_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_PLL_BASE_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clock_pixel_unbuffered,
      CLKOUT0B => NLW_PLL_BASE_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clock_x5pixel_unbuffered,
      CLKOUT1B => NLW_PLL_BASE_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clock_x5pixelinv_unbuffered,
      CLKOUT2B => NLW_PLL_BASE_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_PLL_BASE_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_PLL_BASE_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_PLL_BASE_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_PLL_BASE_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_PLL_BASE_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_PLL_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_PLL_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => PLL_BASE_inst_n_7,
      PSCLK => '0',
      PSDONE => NLW_PLL_BASE_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocking_1 is
  port (
    CLK_SPI_O : out STD_LOGIC;
    clk_A : out STD_LOGIC;
    tx_req_reg : out STD_LOGIC;
    SPI_MOSI_O : out STD_LOGIC;
    SPI_MOSI_O_0 : out STD_LOGIC;
    SPI_MOSI_O_1 : out STD_LOGIC;
    SPI_MOSI_O_2 : out STD_LOGIC;
    SPI_MOSI_O_3 : out STD_LOGIC;
    global_reset : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    nxt_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ_0 : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC
  );
end clocking_1;

architecture STRUCTURE of clocking_1 is
  signal CLKFBIN : STD_LOGIC;
  signal \^spi_mosi_o\ : STD_LOGIC;
  signal \^spi_mosi_o_0\ : STD_LOGIC;
  signal \^spi_mosi_o_1\ : STD_LOGIC;
  signal \^spi_mosi_o_2\ : STD_LOGIC;
  signal \^spi_mosi_o_3\ : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_15_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal SPI_MOSI_O_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal \SpiTx/spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/bitcnt\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \nxt_data_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \^tx_req_reg\ : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MMCME2_BASE_48_inst : label is "MMCME2_BASE";
  attribute box_type : string;
  attribute box_type of MMCME2_BASE_48_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SPI_MOSI_O_OBUF_inst_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of SPI_MOSI_O_OBUF_inst_i_10 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of SPI_MOSI_O_OBUF_inst_i_6 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of SPI_MOSI_O_OBUF_inst_i_7 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of SPI_MOSI_O_OBUF_inst_i_8 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \nxt_data[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \nxt_data_reg[31]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \nxt_data_reg[3]_i_1\ : label is "soft_lutpair74";
begin
  SPI_MOSI_O <= \^spi_mosi_o\;
  SPI_MOSI_O_0 <= \^spi_mosi_o_0\;
  SPI_MOSI_O_1 <= \^spi_mosi_o_1\;
  SPI_MOSI_O_2 <= \^spi_mosi_o_2\;
  SPI_MOSI_O_3 <= \^spi_mosi_o_3\;
  tx_req_reg <= \^tx_req_reg\;
MMCME2_BASE_48_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.250000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 10.250000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 64,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => CLKFBIN,
      CLKFBOUT => CLKFBIN,
      CLKFBOUTB => NLW_MMCME2_BASE_48_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_MMCME2_BASE_48_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => I_unbuff_clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_MMCME2_BASE_48_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => CLK_SPI_O,
      CLKOUT0B => NLW_MMCME2_BASE_48_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_A,
      CLKOUT1B => NLW_MMCME2_BASE_48_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_MMCME2_BASE_48_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_MMCME2_BASE_48_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_MMCME2_BASE_48_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_MMCME2_BASE_48_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_MMCME2_BASE_48_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_MMCME2_BASE_48_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_MMCME2_BASE_48_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_MMCME2_BASE_48_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_MMCME2_BASE_48_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => \^tx_req_reg\,
      PSCLK => '0',
      PSDONE => NLW_MMCME2_BASE_48_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
SPI_MOSI_O_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_2_n_0,
      I1 => SPI_MOSI_O_OBUF_inst_i_3_n_0,
      I2 => SPI_MOSI_O_OBUF_inst_i_4_n_0,
      I3 => \^tx_req_reg\,
      I4 => clk_locked,
      O => SPI_MOSI_O_OBUF
    );
SPI_MOSI_O_OBUF_inst_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[3]_i_4_n_0\,
      I1 => \nxt_data_reg[3]_i_3_n_0\,
      I2 => CLK100MHZ_0,
      I3 => \^tx_req_reg\,
      I4 => clk_locked,
      O => \^spi_mosi_o_2\
    );
SPI_MOSI_O_OBUF_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088888880"
    )
        port map (
      I0 => clk_locked,
      I1 => \^tx_req_reg\,
      I2 => CLK100MHZ_0,
      I3 => \nxt_data_reg[3]_i_3_n_0\,
      I4 => \nxt_data_reg[3]_i_4_n_0\,
      I5 => SPI_MOSI_O_OBUF_inst_i_9_n_0,
      O => \SpiTx/spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/bitcnt\(4)
    );
SPI_MOSI_O_OBUF_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFFFFFFFFF"
    )
        port map (
      I0 => \^spi_mosi_o_0\,
      I1 => \^spi_mosi_o_1\,
      I2 => \nxt_data_reg[3]_i_4_n_0\,
      I3 => \nxt_data_reg[3]_i_3_n_0\,
      I4 => CLK100MHZ_0,
      I5 => CLK100MHZ,
      O => SPI_MOSI_O_OBUF_inst_i_12_n_0
    );
SPI_MOSI_O_OBUF_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFBFBFBFFF"
    )
        port map (
      I0 => \^spi_mosi_o\,
      I1 => clk_locked,
      I2 => \^tx_req_reg\,
      I3 => CLK100MHZ_0,
      I4 => \nxt_data_reg[3]_i_3_n_0\,
      I5 => \nxt_data_reg[3]_i_4_n_0\,
      O => SPI_MOSI_O_OBUF_inst_i_13_n_0
    );
SPI_MOSI_O_OBUF_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \^spi_mosi_o_0\,
      I1 => \nxt_data_reg[3]_i_4_n_0\,
      I2 => clk_locked,
      I3 => \^tx_req_reg\,
      I4 => \nxt_data_reg[3]_i_3_n_0\,
      I5 => CLK100MHZ_0,
      O => SPI_MOSI_O_OBUF_inst_i_14_n_0
    );
SPI_MOSI_O_OBUF_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088888880"
    )
        port map (
      I0 => clk_locked,
      I1 => \^tx_req_reg\,
      I2 => CLK100MHZ_0,
      I3 => \nxt_data_reg[3]_i_3_n_0\,
      I4 => \nxt_data_reg[3]_i_4_n_0\,
      I5 => \^spi_mosi_o_1\,
      O => SPI_MOSI_O_OBUF_inst_i_15_n_0
    );
SPI_MOSI_O_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010155"
    )
        port map (
      I0 => \^spi_mosi_o\,
      I1 => \^spi_mosi_o_0\,
      I2 => SPI_MOSI_O_OBUF_inst_i_7_n_0,
      I3 => \^spi_mosi_o_1\,
      I4 => SPI_MOSI_O_OBUF_inst_i_9_n_0,
      I5 => \^spi_mosi_o_2\,
      O => SPI_MOSI_O_OBUF_inst_i_2_n_0
    );
SPI_MOSI_O_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440444F4FFFFFFFF"
    )
        port map (
      I0 => \SpiTx/spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/bitcnt\(4),
      I1 => \^spi_mosi_o\,
      I2 => CLK100MHZ,
      I3 => \nxt_data_reg[3]_i_3_n_0\,
      I4 => SPI_MOSI_O_OBUF_inst_i_12_n_0,
      I5 => nxt_data(0),
      O => SPI_MOSI_O_OBUF_inst_i_3_n_0
    );
SPI_MOSI_O_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF13FFFFDF03CFFF"
    )
        port map (
      I0 => \^spi_mosi_o_1\,
      I1 => \^spi_mosi_o_2\,
      I2 => \^spi_mosi_o\,
      I3 => SPI_MOSI_O_OBUF_inst_i_7_n_0,
      I4 => \^spi_mosi_o_0\,
      I5 => SPI_MOSI_O_OBUF_inst_i_9_n_0,
      O => SPI_MOSI_O_OBUF_inst_i_4_n_0
    );
SPI_MOSI_O_OBUF_inst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_13_n_0,
      I1 => SPI_MOSI_O_OBUF_inst_i_12_n_0,
      O => \^spi_mosi_o\
    );
SPI_MOSI_O_OBUF_inst_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_14_n_0,
      I1 => CLK100MHZ,
      O => \^spi_mosi_o_0\
    );
SPI_MOSI_O_OBUF_inst_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \nxt_data_reg[3]_i_3_n_0\,
      I1 => \^tx_req_reg\,
      I2 => clk_locked,
      O => SPI_MOSI_O_OBUF_inst_i_7_n_0
    );
SPI_MOSI_O_OBUF_inst_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_15_n_0,
      I1 => SPI_MOSI_O_OBUF_inst_i_14_n_0,
      O => \^spi_mosi_o_1\
    );
SPI_MOSI_O_OBUF_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA4FFFFFFFFFFFF"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_9_n_0,
      I1 => \nxt_data_reg[3]_i_4_n_0\,
      I2 => CLK100MHZ_0,
      I3 => \nxt_data_reg[3]_i_3_n_0\,
      I4 => \^tx_req_reg\,
      I5 => clk_locked,
      O => SPI_MOSI_O_OBUF_inst_i_9_n_0
    );
\nxt_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^tx_req_reg\,
      I1 => clk_locked,
      O => global_reset
    );
\nxt_data_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => SPI_MOSI_I_IBUF,
      I1 => \^tx_req_reg\,
      I2 => clk_locked,
      O => D(0)
    );
\nxt_data_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => CLK100MHZ_0,
      I1 => \nxt_data_reg[3]_i_3_n_0\,
      I2 => \^tx_req_reg\,
      I3 => clk_locked,
      I4 => \nxt_data_reg[3]_i_4_n_0\,
      O => \^spi_mosi_o_3\
    );
\nxt_data_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBF3F3F3F7"
    )
        port map (
      I0 => \^spi_mosi_o\,
      I1 => CLK100MHZ,
      I2 => \^spi_mosi_o_3\,
      I3 => \^spi_mosi_o_1\,
      I4 => \^spi_mosi_o_0\,
      I5 => \nxt_data_reg[3]_i_3_n_0\,
      O => \nxt_data_reg[3]_i_3_n_0\
    );
\nxt_data_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFFFFFFFFFF"
    )
        port map (
      I0 => SPI_MOSI_O_OBUF_inst_i_9_n_0,
      I1 => \nxt_data_reg[3]_i_4_n_0\,
      I2 => \nxt_data_reg[3]_i_3_n_0\,
      I3 => CLK100MHZ_0,
      I4 => \^tx_req_reg\,
      I5 => clk_locked,
      O => \nxt_data_reg[3]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \clocking__parameterized1\ is
  port (
    \r_out_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_locked : out STD_LOGIC;
    UNISIM_RAM0 : out STD_LOGIC;
    O_buff_clk5xpixel : out STD_LOGIC;
    mmcm_lock : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \clocking__parameterized1\ : entity is "clocking";
end \clocking__parameterized1\;

architecture STRUCTURE of \clocking__parameterized1\ is
  signal BUFG_clk_n_0 : STD_LOGIC;
  signal BUFG_pclock_n_0 : STD_LOGIC;
  signal clk_feedback : STD_LOGIC;
  signal \^clk_locked\ : STD_LOGIC;
  signal clock_pixel_unbuffered : STD_LOGIC;
  signal clock_x5pixel_unbuffered : STD_LOGIC;
  signal clock_x5pixelinv_unbuffered : STD_LOGIC;
  signal \nxt_data_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[30]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[30]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_data_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal pixel_clk_x5_inv : STD_LOGIC;
  signal \^r_out_reg[1]\ : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_PLL_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of BUFG_clk : label is "PRIMITIVE";
  attribute box_type of BUFG_pclock : label is "PRIMITIVE";
  attribute box_type of BUFG_pclockx5 : label is "PRIMITIVE";
  attribute box_type of BUFG_pclockx5_180 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of PLL_BASE_inst : label is "PLL_BASE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of PLL_BASE_inst : label is "CLKIN:CLKIN1";
  attribute box_type of PLL_BASE_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nxt_data_reg[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \nxt_data_reg[10]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \nxt_data_reg[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \nxt_data_reg[12]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \nxt_data_reg[13]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_data_reg[15]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \nxt_data_reg[16]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \nxt_data_reg[17]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \nxt_data_reg[18]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \nxt_data_reg[19]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \nxt_data_reg[20]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \nxt_data_reg[21]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_data_reg[22]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \nxt_data_reg[23]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \nxt_data_reg[30]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \nxt_data_reg[31]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \nxt_data_reg[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \nxt_data_reg[6]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \nxt_data_reg[7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \nxt_data_reg[8]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \nxt_data_reg[9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of sclk_active_reg_i_1 : label is "soft_lutpair87";
begin
  clk_locked <= \^clk_locked\;
  \r_out_reg[1]\ <= \^r_out_reg[1]\;
BUFG_clk: unisim.vcomponents.BUFG
     port map (
      I => O_buff_clkpixel,
      O => BUFG_clk_n_0
    );
BUFG_pclock: unisim.vcomponents.BUFG
     port map (
      I => clock_pixel_unbuffered,
      O => BUFG_pclock_n_0
    );
BUFG_pclockx5: unisim.vcomponents.BUFG
     port map (
      I => clock_x5pixel_unbuffered,
      O => O_buff_clk5xpixel
    );
BUFG_pclockx5_180: unisim.vcomponents.BUFG
     port map (
      I => clock_x5pixelinv_unbuffered,
      O => pixel_clk_x5_inv
    );
PLL_BASE_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 1.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 2,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 180.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.100000,
      REF_JITTER2 => 0.100000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clk_feedback,
      CLKFBOUT => clk_feedback,
      CLKFBOUTB => NLW_PLL_BASE_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_PLL_BASE_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => BUFG_clk_n_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_PLL_BASE_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clock_pixel_unbuffered,
      CLKOUT0B => NLW_PLL_BASE_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clock_x5pixel_unbuffered,
      CLKOUT1B => NLW_PLL_BASE_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clock_x5pixelinv_unbuffered,
      CLKOUT2B => NLW_PLL_BASE_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_PLL_BASE_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_PLL_BASE_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_PLL_BASE_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_PLL_BASE_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_PLL_BASE_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_PLL_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_PLL_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => \^clk_locked\,
      PSCLK => '0',
      PSDONE => NLW_PLL_BASE_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
\nxt_data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22220222"
    )
        port map (
      I0 => \nxt_data_reg[16]_i_2_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => mmcm_lock,
      I3 => \^clk_locked\,
      I4 => \nxt_data_reg[31]_i_3_n_0\,
      O => E(0)
    );
\nxt_data_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[18]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(10)
    );
\nxt_data_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[19]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(11)
    );
\nxt_data_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[20]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(12)
    );
\nxt_data_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[21]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(13)
    );
\nxt_data_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[22]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(14)
    );
\nxt_data_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(15)
    );
\nxt_data_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[16]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(16)
    );
\nxt_data_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A8880000FFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \nxt_data_reg[30]_i_5_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[30]_i_2_n_0\,
      I4 => \nxt_data_reg[30]_i_4_n_0\,
      I5 => \^r_out_reg[1]\,
      O => \nxt_data_reg[16]_i_2_n_0\
    );
\nxt_data_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[17]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(17)
    );
\nxt_data_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C0008000C000"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \nxt_data_reg[30]_i_4_n_0\,
      I2 => \nxt_data_reg[30]_i_2_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \^r_out_reg[1]\,
      I5 => \nxt_data_reg[30]_i_5_n_0\,
      O => \nxt_data_reg[17]_i_2_n_0\
    );
\nxt_data_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[18]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(18)
    );
\nxt_data_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080808"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \^r_out_reg[1]\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[30]_i_2_n_0\,
      I4 => \nxt_data_reg[31]_i_5_n_0\,
      I5 => \nxt_data_reg[30]_i_5_n_0\,
      O => \nxt_data_reg[18]_i_2_n_0\
    );
\nxt_data_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[19]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(19)
    );
\nxt_data_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A00002A2A2A2A"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_4_n_0\,
      I1 => \nxt_data_reg[30]_i_2_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[30]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_3_n_0\,
      I5 => \^r_out_reg[1]\,
      O => \nxt_data_reg[19]_i_2_n_0\
    );
\nxt_data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[17]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(1)
    );
\nxt_data_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[20]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(20)
    );
\nxt_data_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000544400000000"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \nxt_data_reg[30]_i_5_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[30]_i_2_n_0\,
      I4 => \nxt_data_reg[30]_i_4_n_0\,
      I5 => \^r_out_reg[1]\,
      O => \nxt_data_reg[20]_i_2_n_0\
    );
\nxt_data_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[21]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(21)
    );
\nxt_data_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444000040000000"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \nxt_data_reg[30]_i_4_n_0\,
      I2 => \nxt_data_reg[30]_i_2_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \^r_out_reg[1]\,
      I5 => \nxt_data_reg[30]_i_5_n_0\,
      O => \nxt_data_reg[21]_i_2_n_0\
    );
\nxt_data_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[22]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(22)
    );
\nxt_data_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040404"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_3_n_0\,
      I1 => \^r_out_reg[1]\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[30]_i_2_n_0\,
      I4 => \nxt_data_reg[31]_i_5_n_0\,
      I5 => \nxt_data_reg[30]_i_5_n_0\,
      O => \nxt_data_reg[22]_i_2_n_0\
    );
\nxt_data_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(23)
    );
\nxt_data_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008880FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_5_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_4_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(24)
    );
\nxt_data_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808000FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_5_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(25)
    );
\nxt_data_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_5_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(26)
    );
\nxt_data_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_4_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[30]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_3_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(27)
    );
\nxt_data_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002220FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_5_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_4_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(28)
    );
\nxt_data_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202000FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_5_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(29)
    );
\nxt_data_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[18]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(2)
    );
\nxt_data_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_2_n_0\,
      I1 => \nxt_data_reg[30]_i_3_n_0\,
      I2 => \nxt_data_reg[30]_i_4_n_0\,
      I3 => \nxt_data_reg[31]_i_5_n_0\,
      I4 => \nxt_data_reg[30]_i_5_n_0\,
      I5 => \^r_out_reg[1]\,
      O => E(30)
    );
\nxt_data_reg[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \^clk_locked\,
      I2 => mmcm_lock,
      I3 => \nxt_data_reg[31]_i_4_n_0\,
      O => \nxt_data_reg[30]_i_2_n_0\
    );
\nxt_data_reg[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF444F333"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_5_n_0\,
      I1 => \^r_out_reg[1]\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[30]_i_2_n_0\,
      I4 => \nxt_data_reg[30]_i_4_n_0\,
      I5 => \nxt_data_reg[30]_i_3_n_0\,
      O => \nxt_data_reg[30]_i_3_n_0\
    );
\nxt_data_reg[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_out_reg[1]\,
      I1 => \nxt_data_reg[30]_i_6_n_0\,
      O => \nxt_data_reg[30]_i_4_n_0\
    );
\nxt_data_reg[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999333309993333"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_5_n_0\,
      I1 => \nxt_data_reg[30]_i_4_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[31]_i_4_n_0\,
      I4 => \^r_out_reg[1]\,
      I5 => \nxt_data_reg[31]_i_3_n_0\,
      O => \nxt_data_reg[30]_i_5_n_0\
    );
\nxt_data_reg[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFFFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \^clk_locked\,
      I2 => mmcm_lock,
      I3 => \nxt_data_reg[31]_i_4_n_0\,
      I4 => \nxt_data_reg[31]_i_5_n_0\,
      I5 => \nxt_data_reg[30]_i_4_n_0\,
      O => \nxt_data_reg[30]_i_6_n_0\
    );
\nxt_data_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(31)
    );
\nxt_data_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77778777"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_5_n_0\,
      I2 => mmcm_lock,
      I3 => \^clk_locked\,
      I4 => \nxt_data_reg[31]_i_3_n_0\,
      O => \nxt_data_reg[31]_i_3_n_0\
    );
\nxt_data_reg[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_5_n_0\,
      I2 => mmcm_lock,
      I3 => \^clk_locked\,
      O => \nxt_data_reg[31]_i_4_n_0\
    );
\nxt_data_reg[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => mmcm_lock,
      I1 => \^clk_locked\,
      I2 => \nxt_data_reg[30]_i_3_n_0\,
      I3 => \nxt_data_reg[31]_i_6_n_0\,
      O => \nxt_data_reg[31]_i_5_n_0\
    );
\nxt_data_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777377700000000"
    )
        port map (
      I0 => \nxt_data_reg[30]_i_5_n_0\,
      I1 => \^r_out_reg[1]\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => \nxt_data_reg[31]_i_4_n_0\,
      I4 => \nxt_data_reg[31]_i_3_n_0\,
      I5 => \nxt_data_reg[30]_i_4_n_0\,
      O => \nxt_data_reg[31]_i_6_n_0\
    );
\nxt_data_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[19]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(3)
    );
\nxt_data_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[20]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(4)
    );
\nxt_data_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[21]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(5)
    );
\nxt_data_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[22]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(6)
    );
\nxt_data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_3_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => \nxt_data_reg[31]_i_5_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(7)
    );
\nxt_data_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[16]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(8)
    );
\nxt_data_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFFFF"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_4_n_0\,
      I1 => \nxt_data_reg[31]_i_3_n_0\,
      I2 => \nxt_data_reg[17]_i_2_n_0\,
      I3 => mmcm_lock,
      I4 => \^clk_locked\,
      O => E(9)
    );
nxt_wr_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \nxt_data_reg[31]_i_5_n_0\,
      I1 => \nxt_data_reg[31]_i_4_n_0\,
      I2 => mmcm_lock,
      I3 => \^clk_locked\,
      I4 => \nxt_data_reg[31]_i_3_n_0\,
      O => UNISIM_RAM0
    );
sclk_active_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^clk_locked\,
      I1 => mmcm_lock,
      O => \^r_out_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_serial is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \adr_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rx_state_reg[17]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    E : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \adr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rx_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    timestamp_enable_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RX_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \FSM_onehot_rx_state_reg[18]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_0\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_1\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_2\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_3\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_4\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_5\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_6\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_7\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_8\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_9\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_10\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_11\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_12\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_13\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_14\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_15\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_16\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_17\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_18\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_19\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_20\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_21\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_22\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[9]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_23\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_24\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_25\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_26\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_27\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_28\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_29\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_30\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_31\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[2]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[16]\ : in STD_LOGIC;
    timestamp_enable : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    CLK100MHZ_0 : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decode_serial;

architecture STRUCTURE of decode_serial is
  signal \FSM_onehot_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[14]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[15]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[15]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[17]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \adr[4]_i_2_n_0\ : STD_LOGIC;
  signal \adr[4]_i_3_n_0\ : STD_LOGIC;
  signal \adr[5]_i_2_n_0\ : STD_LOGIC;
  signal \adr[5]_i_3_n_0\ : STD_LOGIC;
  signal \adr[6]_i_2_n_0\ : STD_LOGIC;
  signal \adr[7]_i_3_n_0\ : STD_LOGIC;
  signal \adr[7]_i_4_n_0\ : STD_LOGIC;
  signal bitcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dec_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dec_strb : STD_LOGIC;
  signal nxt_bitcnt : STD_LOGIC;
  signal \nxt_bitcnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_data[7]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal strobe2 : STD_LOGIC;
  signal strobe2_i_1_n_0 : STD_LOGIC;
  signal strobe_i_1_n_0 : STD_LOGIC;
  signal subcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \subcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \subcnt[3]_i_5_n_0\ : STD_LOGIC;
  signal timestamp_enable_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[14]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \adr[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \adr[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \adr[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \adr[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adr[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adr[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \adr[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \adr[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adr[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \adr[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \adr[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data32[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data32[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data32[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data32[11]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data32[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data32[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data32[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data32[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data32[15]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data32[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data32[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data32[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data32[19]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data32[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data32[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data32[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data32[23]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data32[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data32[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data32[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data32[27]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data32[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data32[29]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data32[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data32[30]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data32[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data32[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data32[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data32[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data32[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data32[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data32[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data32[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data32[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \nxt_data[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of strobe2_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of strobe_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \subcnt[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \subcnt[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \subcnt[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of timestamp_enable_i_1 : label is "soft_lutpair2";
begin
\FSM_onehot_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[9]\,
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \FSM_onehot_rx_state[0]_i_3_n_0\,
      I3 => \out\(13),
      I4 => \out\(18),
      I5 => \FSM_onehot_rx_state[0]_i_4_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(0)
    );
\FSM_onehot_rx_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \out\(14),
      I1 => \out\(2),
      I2 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[1]_i_2_n_0\,
      I4 => \out\(0),
      O => \FSM_onehot_rx_state[0]_i_3_n_0\
    );
\FSM_onehot_rx_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \out\(1),
      I1 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I2 => dec_data(4),
      I3 => dec_strb,
      I4 => dec_data(0),
      I5 => dec_data(2),
      O => \FSM_onehot_rx_state[0]_i_4_n_0\
    );
\FSM_onehot_rx_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(9),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(10)
    );
\FSM_onehot_rx_state[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(10),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(11)
    );
\FSM_onehot_rx_state[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(11),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(12)
    );
\FSM_onehot_rx_state[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(12),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(13)
    );
\FSM_onehot_rx_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I1 => \out\(1),
      I2 => dec_strb,
      I3 => dec_data(4),
      I4 => dec_data(2),
      I5 => dec_data(0),
      O => \FSM_onehot_rx_state_reg[17]\(14)
    );
\FSM_onehot_rx_state[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(3),
      I2 => dec_data(7),
      I3 => dec_data(1),
      O => \FSM_onehot_rx_state[14]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(14),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(15)
    );
\FSM_onehot_rx_state[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      I1 => dec_data(7),
      I2 => dec_data(6),
      I3 => dec_strb,
      I4 => dec_data(0),
      I5 => dec_data(1),
      O => \FSM_onehot_rx_state[15]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(2),
      I2 => dec_data(5),
      I3 => dec_data(4),
      O => \FSM_onehot_rx_state[15]_i_3_n_0\
    );
\FSM_onehot_rx_state[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(15),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(16)
    );
\FSM_onehot_rx_state[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(16),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(17)
    );
\FSM_onehot_rx_state[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000FFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I4 => dec_strb,
      O => \FSM_onehot_rx_state[17]_i_2_n_0\
    );
\FSM_onehot_rx_state[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(5),
      I2 => dec_data(2),
      I3 => dec_data(3),
      I4 => \FSM_onehot_rx_state[17]_i_7_n_0\,
      I5 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_3_n_0\
    );
\FSM_onehot_rx_state[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010004"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(0),
      I2 => \adr[7]_i_4_n_0\,
      I3 => dec_data(4),
      I4 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_4_n_0\
    );
\FSM_onehot_rx_state[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFDFCFF"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(4),
      I2 => \adr[7]_i_4_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(0),
      O => \FSM_onehot_rx_state[17]_i_5_n_0\
    );
\FSM_onehot_rx_state[17]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => dec_data(5),
      I1 => dec_data(3),
      I2 => dec_data(4),
      I3 => dec_data(6),
      I4 => dec_data(7),
      O => \FSM_onehot_rx_state[17]_i_6_n_0\
    );
\FSM_onehot_rx_state[17]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(7),
      O => \FSM_onehot_rx_state[17]_i_7_n_0\
    );
\FSM_onehot_rx_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0E0FFFFEEEE"
    )
        port map (
      I0 => \out\(17),
      I1 => \FSM_onehot_rx_state_reg[18]_31\,
      I2 => \FSM_onehot_rx_state_reg[3]\,
      I3 => \FSM_onehot_rx_state_reg[2]\,
      I4 => dec_strb,
      I5 => \FSM_onehot_rx_state_reg[16]\,
      O => \FSM_onehot_rx_state_reg[0]\(0)
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_onehot_rx_state[1]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(1)
    );
\FSM_onehot_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(3),
      I2 => dec_data(5),
      I3 => \FSM_onehot_rx_state[1]_i_3_n_0\,
      I4 => dec_data(4),
      I5 => \FSM_onehot_rx_state[1]_i_4_n_0\,
      O => \FSM_onehot_rx_state[1]_i_2_n_0\
    );
\FSM_onehot_rx_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(6),
      I2 => dec_strb,
      O => \FSM_onehot_rx_state[1]_i_3_n_0\
    );
\FSM_onehot_rx_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(0),
      O => \FSM_onehot_rx_state[1]_i_4_n_0\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I1 => \out\(1),
      I2 => dec_strb,
      I3 => dec_data(4),
      I4 => dec_data(2),
      I5 => dec_data(0),
      O => \FSM_onehot_rx_state_reg[17]\(2)
    );
\FSM_onehot_rx_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(2),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(3)
    );
\FSM_onehot_rx_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(3),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(4)
    );
\FSM_onehot_rx_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(4),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(5)
    );
\FSM_onehot_rx_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(5),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(6)
    );
\FSM_onehot_rx_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(6),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(7)
    );
\FSM_onehot_rx_state[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(7),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(8)
    );
\FSM_onehot_rx_state[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(8),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \FSM_onehot_rx_state_reg[17]\(9)
    );
\adr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(16),
      I2 => \adr[4]_i_2_n_0\,
      O => \adr_reg[7]\(0)
    );
\adr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(16),
      I2 => \adr[5]_i_2_n_0\,
      O => \adr_reg[7]\(1)
    );
\adr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(16),
      I2 => \adr[6]_i_2_n_0\,
      O => \adr_reg[7]\(2)
    );
\adr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(16),
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \adr_reg[7]_0\(0)
    );
\adr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(4),
      I2 => \out\(16),
      O => \adr_reg[7]\(3)
    );
\adr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \adr[4]_i_2_n_0\,
      O => \adr_reg[7]\(4)
    );
\adr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFAFB"
    )
        port map (
      I0 => \adr[7]_i_4_n_0\,
      I1 => dec_data(2),
      I2 => dec_data(0),
      I3 => dec_data(1),
      I4 => dec_data(4),
      I5 => \adr[4]_i_3_n_0\,
      O => \adr[4]_i_2_n_0\
    );
\adr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      I1 => dec_data(6),
      I2 => dec_data(7),
      I3 => dec_data(1),
      I4 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I5 => dec_data(0),
      O => \adr[4]_i_3_n_0\
    );
\adr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \adr[5]_i_2_n_0\,
      O => \adr_reg[7]\(5)
    );
\adr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545551"
    )
        port map (
      I0 => \adr[5]_i_3_n_0\,
      I1 => dec_data(0),
      I2 => \adr[7]_i_4_n_0\,
      I3 => dec_data(4),
      I4 => dec_data(1),
      O => \adr[5]_i_2_n_0\
    );
\adr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(6),
      I2 => dec_data(7),
      I3 => dec_data(1),
      I4 => dec_data(3),
      I5 => dec_data(5),
      O => \adr[5]_i_3_n_0\
    );
\adr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \adr[6]_i_2_n_0\,
      O => \adr_reg[7]\(6)
    );
\adr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFC0000FDFFFDFF"
    )
        port map (
      I0 => dec_data(0),
      I1 => \adr[7]_i_4_n_0\,
      I2 => dec_data(4),
      I3 => dec_data(1),
      I4 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I5 => dec_data(2),
      O => \adr[6]_i_2_n_0\
    );
\adr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \adr_reg[7]_0\(1)
    );
\adr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(3),
      I2 => \out\(15),
      O => \adr_reg[7]\(7)
    );
\adr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557F555555FD"
    )
        port map (
      I0 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I1 => dec_data(0),
      I2 => dec_data(2),
      I3 => \adr[7]_i_4_n_0\,
      I4 => dec_data(4),
      I5 => dec_data(1),
      O => \adr[7]_i_3_n_0\
    );
\adr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => dec_data(7),
      I1 => dec_data(3),
      I2 => dec_data(6),
      O => \adr[7]_i_4_n_0\
    );
\data32[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]\,
      O => D(0)
    );
\data32[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_25\,
      O => D(10)
    );
\data32[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(10),
      O => E(2)
    );
\data32[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_17\,
      O => D(11)
    );
\data32[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_2\,
      O => D(12)
    );
\data32[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_10\,
      O => D(13)
    );
\data32[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_26\,
      O => D(14)
    );
\data32[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(9),
      O => E(3)
    );
\data32[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_18\,
      O => D(15)
    );
\data32[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_3\,
      O => D(16)
    );
\data32[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_11\,
      O => D(17)
    );
\data32[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_27\,
      O => D(18)
    );
\data32[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(8),
      O => E(4)
    );
\data32[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_19\,
      O => D(19)
    );
\data32[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_7\,
      O => D(1)
    );
\data32[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_4\,
      O => D(20)
    );
\data32[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_12\,
      O => D(21)
    );
\data32[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_28\,
      O => D(22)
    );
\data32[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(7),
      O => E(5)
    );
\data32[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_20\,
      O => D(23)
    );
\data32[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_5\,
      O => D(24)
    );
\data32[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_13\,
      O => D(25)
    );
\data32[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_29\,
      O => D(26)
    );
\data32[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(6),
      O => E(6)
    );
\data32[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_21\,
      O => D(27)
    );
\data32[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_6\,
      O => D(28)
    );
\data32[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_14\,
      O => D(29)
    );
\data32[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_23\,
      O => D(2)
    );
\data32[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_30\,
      O => D(30)
    );
\data32[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(5),
      O => E(7)
    );
\data32[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_22\,
      O => D(31)
    );
\data32[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(12),
      O => E(0)
    );
\data32[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_15\,
      O => D(3)
    );
\data32[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_0\,
      O => D(4)
    );
\data32[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_8\,
      O => D(5)
    );
\data32[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_24\,
      O => D(6)
    );
\data32[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(11),
      O => E(1)
    );
\data32[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_16\,
      O => D(7)
    );
\data32[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_1\,
      O => D(8)
    );
\data32[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_9\,
      O => D(9)
    );
\nxt_bitcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcnt(0),
      O => \nxt_bitcnt[0]_i_1__0_n_0\
    );
\nxt_bitcnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      O => \nxt_bitcnt[1]_i_1_n_0\
    );
\nxt_bitcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(0),
      I2 => bitcnt(1),
      O => \nxt_bitcnt[2]_i_1__0_n_0\
    );
\nxt_bitcnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FFFFFFFFFFFF"
    )
        port map (
      I0 => subcnt(2),
      I1 => subcnt(0),
      I2 => subcnt(1),
      I3 => \subcnt[3]_i_5_n_0\,
      I4 => CLK100MHZ_0,
      I5 => clk_locked,
      O => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => subcnt(3),
      I1 => subcnt(1),
      I2 => subcnt(0),
      I3 => subcnt(2),
      O => nxt_bitcnt
    );
\nxt_bitcnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C8C"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      O => \nxt_bitcnt[3]_i_3_n_0\
    );
\nxt_bitcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[0]_i_1__0_n_0\,
      Q => bitcnt(0),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[1]_i_1_n_0\,
      Q => bitcnt(1),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[2]_i_1__0_n_0\,
      Q => bitcnt(2),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[3]_i_3_n_0\,
      Q => bitcnt(3),
      R => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => nxt_bitcnt,
      I1 => bitcnt(3),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => bitcnt(2),
      I5 => \nxt_data[7]_i_3_n_0\,
      O => p_0_in(0)
    );
\nxt_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => nxt_bitcnt,
      I1 => bitcnt(3),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => bitcnt(2),
      I5 => \nxt_data[7]_i_3_n_0\,
      O => p_0_in(1)
    );
\nxt_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => \nxt_data[7]_i_3_n_0\,
      I3 => bitcnt(1),
      I4 => bitcnt(0),
      I5 => nxt_bitcnt,
      O => p_0_in(2)
    );
\nxt_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => subcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \subcnt[3]_i_4_n_0\,
      O => p_0_in(3)
    );
\nxt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => nxt_bitcnt,
      I1 => \nxt_data[7]_i_3_n_0\,
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => bitcnt(3),
      O => p_0_in(4)
    );
\nxt_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => nxt_bitcnt,
      I1 => \nxt_data[7]_i_3_n_0\,
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => bitcnt(3),
      O => p_0_in(5)
    );
\nxt_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => subcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \subcnt[3]_i_4_n_0\,
      O => p_0_in(6)
    );
\nxt_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \nxt_data[7]_i_3_n_0\,
      I1 => bitcnt(1),
      I2 => bitcnt(0),
      I3 => bitcnt(2),
      I4 => bitcnt(3),
      O => p_0_in(7)
    );
\nxt_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => subcnt(3),
      I1 => subcnt(1),
      I2 => subcnt(0),
      I3 => subcnt(2),
      O => \nxt_data[7]_i_3_n_0\
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(0),
      D => RX_I(0),
      Q => dec_data(0),
      R => SR(0)
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(1),
      D => RX_I(0),
      Q => dec_data(1),
      R => SR(0)
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(2),
      D => RX_I(0),
      Q => dec_data(2),
      R => SR(0)
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(3),
      D => RX_I(0),
      Q => dec_data(3),
      R => SR(0)
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(4),
      D => RX_I(0),
      Q => dec_data(4),
      R => SR(0)
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(5),
      D => RX_I(0),
      Q => dec_data(5),
      R => SR(0)
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(6),
      D => RX_I(0),
      Q => dec_data(6),
      R => SR(0)
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_in(7),
      D => RX_I(0),
      Q => dec_data(7),
      R => SR(0)
    );
strobe2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(0),
      I2 => bitcnt(3),
      I3 => bitcnt(2),
      O => strobe2_i_1_n_0
    );
strobe2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => strobe2_i_1_n_0,
      Q => strobe2,
      R => '0'
    );
strobe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => strobe2,
      O => strobe_i_1_n_0
    );
strobe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => strobe_i_1_n_0,
      Q => dec_strb,
      R => '0'
    );
\subcnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => subcnt(0),
      I1 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[0]_i_1_n_0\
    );
\subcnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => subcnt(0),
      I1 => subcnt(1),
      I2 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[1]_i_1_n_0\
    );
\subcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => subcnt(1),
      I1 => subcnt(0),
      I2 => subcnt(2),
      I3 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[2]_i_1_n_0\
    );
\subcnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000000FFFFFFFF"
    )
        port map (
      I0 => bitcnt(2),
      I1 => \subcnt[3]_i_3_n_0\,
      I2 => subcnt(3),
      I3 => RX_I(0),
      I4 => \subcnt[3]_i_4_n_0\,
      I5 => CLK100MHZ,
      O => \subcnt[3]_i_1__0_n_0\
    );
\subcnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => subcnt(2),
      I1 => subcnt(0),
      I2 => subcnt(1),
      I3 => subcnt(3),
      I4 => \subcnt[3]_i_5_n_0\,
      O => \subcnt[3]_i_2_n_0\
    );
\subcnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(0),
      O => \subcnt[3]_i_3_n_0\
    );
\subcnt[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bitcnt(3),
      I1 => subcnt(1),
      I2 => subcnt(0),
      I3 => subcnt(2),
      O => \subcnt[3]_i_4_n_0\
    );
\subcnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => subcnt(3),
      I5 => RX_I(0),
      O => \subcnt[3]_i_5_n_0\
    );
\subcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[0]_i_1_n_0\,
      Q => subcnt(0),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[1]_i_1_n_0\,
      Q => subcnt(1),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[2]_i_1_n_0\,
      Q => subcnt(2),
      R => \subcnt[3]_i_1__0_n_0\
    );
\subcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subcnt[3]_i_2_n_0\,
      Q => subcnt(3),
      R => \subcnt[3]_i_1__0_n_0\
    );
timestamp_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70004"
    )
        port map (
      I0 => dec_data(5),
      I1 => timestamp_enable_i_2_n_0,
      I2 => dec_data(2),
      I3 => dec_data(0),
      I4 => timestamp_enable,
      O => timestamp_enable_reg
    );
timestamp_enable_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_strb,
      I2 => \out\(1),
      I3 => dec_data(1),
      I4 => \adr[7]_i_4_n_0\,
      O => timestamp_enable_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encode_serial is
  port (
    TX_O_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nxt_char_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    nxt_sendstring : out STD_LOGIC;
    enc_wr_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_locked : in STD_LOGIC;
    CLK100MHZ_0 : in STD_LOGIC;
    \nxt_char_cnt_reg[4]\ : in STD_LOGIC;
    enc_wr_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sendstring : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rx_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[2]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[16]\ : in STD_LOGIC;
    \nxt_enc_data_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end encode_serial;

architecture STRUCTURE of encode_serial is
  signal data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal enc_busy : STD_LOGIC;
  signal nxt_bitcnt : STD_LOGIC;
  signal \nxt_bitcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_bitcnt[3]_i_4_n_0\ : STD_LOGIC;
  signal nxt_bitcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^nxt_char_cnt_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal sel : STD_LOGIC;
  signal \subcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal subcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_done : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_2_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal tx_req_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nxt_bitcnt[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \nxt_char_cnt[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of tx_i_3 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of tx_req_i_1 : label is "soft_lutpair44";
begin
  \nxt_char_cnt_reg[0]\(0) <= \^nxt_char_cnt_reg[0]\(0);
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(0),
      Q => data(0),
      R => SR(0)
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(1),
      Q => data(1),
      R => SR(0)
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(2),
      Q => data(2),
      R => SR(0)
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(3),
      Q => data(3),
      R => SR(0)
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(4),
      Q => data(4),
      R => SR(0)
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(5),
      Q => data(5),
      R => SR(0)
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => enc_wr_reg_0(0),
      D => \nxt_enc_data_reg[6]\(6),
      Q => data(6),
      R => SR(0)
    );
enc_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^nxt_char_cnt_reg[0]\(0),
      I1 => CLK100MHZ_0,
      I2 => clk_locked,
      O => enc_wr_reg
    );
\nxt_bitcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[0]_i_1_n_0\
    );
\nxt_bitcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => nxt_bitcnt_reg(1),
      I1 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[1]_i_1__0_n_0\
    );
\nxt_bitcnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => nxt_bitcnt_reg(2),
      I1 => nxt_bitcnt_reg(0),
      I2 => nxt_bitcnt_reg(1),
      O => \p_0_in__0\(2)
    );
\nxt_bitcnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => enc_busy,
      I1 => CLK100MHZ_0,
      I2 => clk_locked,
      O => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      I3 => subcnt_reg(3),
      I4 => \nxt_bitcnt[3]_i_4_n_0\,
      O => nxt_bitcnt
    );
\nxt_bitcnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => nxt_bitcnt_reg(3),
      I1 => nxt_bitcnt_reg(2),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      O => \p_0_in__0\(3)
    );
\nxt_bitcnt[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => nxt_bitcnt_reg(3),
      I1 => nxt_bitcnt_reg(2),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      O => \nxt_bitcnt[3]_i_4_n_0\
    );
\nxt_bitcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[0]_i_1_n_0\,
      Q => nxt_bitcnt_reg(0),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \nxt_bitcnt[1]_i_1__0_n_0\,
      Q => nxt_bitcnt_reg(1),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \p_0_in__0\(2),
      Q => nxt_bitcnt_reg(2),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_bitcnt,
      D => \p_0_in__0\(3),
      Q => nxt_bitcnt_reg(3),
      R => \nxt_bitcnt[3]_i_1_n_0\
    );
\nxt_char_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \nxt_char_cnt_reg[4]\,
      I1 => enc_busy,
      I2 => enc_wr_reg_0(0),
      O => \^nxt_char_cnt_reg[0]\(0)
    );
\nxt_enc_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080888888888"
    )
        port map (
      I0 => CLK100MHZ,
      I1 => \^nxt_char_cnt_reg[0]\(0),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => E(0)
    );
sendstring_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200F2F2F2F2F2F2"
    )
        port map (
      I0 => sendstring,
      I1 => enc_busy,
      I2 => \out\(0),
      I3 => \FSM_onehot_rx_state_reg[3]\,
      I4 => \FSM_onehot_rx_state_reg[2]\,
      I5 => \FSM_onehot_rx_state_reg[16]\,
      O => nxt_sendstring
    );
\subcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => subcnt_reg(0),
      O => p_0_in(0)
    );
\subcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => subcnt_reg(1),
      I1 => subcnt_reg(0),
      O => p_0_in(1)
    );
\subcnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      O => p_0_in(2)
    );
\subcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clk_locked,
      I1 => CLK100MHZ_0,
      I2 => enc_busy,
      I3 => nxt_bitcnt,
      O => \subcnt[3]_i_1_n_0\
    );
\subcnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => subcnt_reg(2),
      I1 => subcnt_reg(0),
      I2 => subcnt_reg(1),
      I3 => subcnt_reg(3),
      O => sel
    );
\subcnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => subcnt_reg(3),
      I1 => subcnt_reg(1),
      I2 => subcnt_reg(0),
      I3 => subcnt_reg(2),
      O => p_0_in(3)
    );
\subcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(0),
      Q => subcnt_reg(0),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(1),
      Q => subcnt_reg(1),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(2),
      Q => subcnt_reg(2),
      R => \subcnt[3]_i_1_n_0\
    );
\subcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(3),
      Q => subcnt_reg(3),
      R => \subcnt[3]_i_1_n_0\
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00000000000000"
    )
        port map (
      I0 => tx_done,
      I1 => tx_done_i_2_n_0,
      I2 => \nxt_bitcnt[3]_i_4_n_0\,
      I3 => clk_locked,
      I4 => CLK100MHZ_0,
      I5 => enc_busy,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => subcnt_reg(3),
      I1 => subcnt_reg(1),
      I2 => subcnt_reg(0),
      I3 => subcnt_reg(2),
      O => tx_done_i_2_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done,
      R => '0'
    );
tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF382"
    )
        port map (
      I0 => tx_i_2_n_0,
      I1 => tx_i_3_n_0,
      I2 => nxt_bitcnt_reg(2),
      I3 => nxt_bitcnt_reg(3),
      I4 => \nxt_bitcnt[3]_i_1_n_0\,
      I5 => tx_i_4_n_0,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => data(0),
      I1 => data(1),
      I2 => nxt_bitcnt_reg(1),
      I3 => nxt_bitcnt_reg(0),
      I4 => data(2),
      I5 => data(3),
      O => tx_i_2_n_0
    );
tx_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_bitcnt_reg(1),
      I1 => nxt_bitcnt_reg(0),
      O => tx_i_3_n_0
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CC0000000000"
    )
        port map (
      I0 => data(6),
      I1 => data(5),
      I2 => data(4),
      I3 => nxt_bitcnt_reg(1),
      I4 => nxt_bitcnt_reg(0),
      I5 => nxt_bitcnt_reg(2),
      O => tx_i_4_n_0
    );
tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_i_1_n_0,
      Q => TX_O_OBUF,
      R => '0'
    );
tx_req_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => enc_wr_reg_0(0),
      I1 => tx_done,
      I2 => enc_busy,
      O => tx_req_i_1_n_0
    );
tx_req_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_req_i_1_n_0,
      Q => enc_busy,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_driver is
  port (
    \r_out_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLUE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \e_reg[8]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \queue_reg[15][vCounter][11]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \queue_reg[15][hCounter][7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_3\ : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    UNISIM_RAM0_6 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end image_driver;

architecture STRUCTURE of image_driver is
  signal \^blue_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_out1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_out1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_out1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_out1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_out1_carry__0_n_1\ : STD_LOGIC;
  signal \r_out1_carry__0_n_2\ : STD_LOGIC;
  signal \r_out1_carry__0_n_3\ : STD_LOGIC;
  signal r_out1_carry_n_0 : STD_LOGIC;
  signal r_out1_carry_n_1 : STD_LOGIC;
  signal r_out1_carry_n_2 : STD_LOGIC;
  signal r_out1_carry_n_3 : STD_LOGIC;
  signal \r_out2_carry__0_n_1\ : STD_LOGIC;
  signal \r_out2_carry__0_n_2\ : STD_LOGIC;
  signal \r_out2_carry__0_n_3\ : STD_LOGIC;
  signal r_out2_carry_n_0 : STD_LOGIC;
  signal r_out2_carry_n_1 : STD_LOGIC;
  signal r_out2_carry_n_2 : STD_LOGIC;
  signal r_out2_carry_n_3 : STD_LOGIC;
  signal \r_out3_carry__0_n_1\ : STD_LOGIC;
  signal \r_out3_carry__0_n_2\ : STD_LOGIC;
  signal \r_out3_carry__0_n_3\ : STD_LOGIC;
  signal r_out3_carry_n_0 : STD_LOGIC;
  signal r_out3_carry_n_1 : STD_LOGIC;
  signal r_out3_carry_n_2 : STD_LOGIC;
  signal r_out3_carry_n_3 : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_out3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal NLW_r_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_out1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_out2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_out2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_out3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_out3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_out3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_out3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  BLUE_O(0) <= \^blue_o\(0);
\e[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^blue_o\(0),
      I1 => p_1_in(0),
      O => \e_reg[8]\
    );
r_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_out1_carry_n_0,
      CO(2) => r_out1_carry_n_1,
      CO(1) => r_out1_carry_n_2,
      CO(0) => r_out1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \queue_reg[15][vCounter][7]_0\(3 downto 0),
      O(3 downto 0) => NLW_r_out1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][7]_1\(3 downto 0)
    );
\r_out1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_out1_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \r_out1_carry__0_n_1\,
      CO(1) => \r_out1_carry__0_n_2\,
      CO(0) => \r_out1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r_out1_carry__0_i_1_n_0\,
      DI(2) => \r_out1_carry__0_i_2_n_0\,
      DI(1 downto 0) => \queue_reg[15][vCounter][11]\(1 downto 0),
      O(3 downto 0) => \NLW_r_out1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_out1_carry__0_i_5_n_0\,
      S(2) => \r_out1_carry__0_i_6_n_0\,
      S(1 downto 0) => \queue_reg[15][vCounter][11]_0\(1 downto 0)
    );
\r_out1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNISIM_RAM0_6(1),
      I1 => UNISIM_RAM0_6(2),
      O => \r_out1_carry__0_i_1_n_0\
    );
\r_out1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => UNISIM_RAM0_7(0),
      I1 => UNISIM_RAM0_6(0),
      O => \r_out1_carry__0_i_2_n_0\
    );
\r_out1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UNISIM_RAM0_6(2),
      I1 => UNISIM_RAM0_6(1),
      O => \r_out1_carry__0_i_5_n_0\
    );
\r_out1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UNISIM_RAM0_6(0),
      I1 => UNISIM_RAM0_7(0),
      O => \r_out1_carry__0_i_6_n_0\
    );
r_out2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_out2_carry_n_0,
      CO(2) => r_out2_carry_n_1,
      CO(1) => r_out2_carry_n_2,
      CO(0) => r_out2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => UNISIM_RAM0_1(3 downto 0),
      O(3 downto 0) => NLW_r_out2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][7]\(3 downto 0)
    );
\r_out2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_out2_carry_n_0,
      CO(3) => \r_out_reg[1]_1\(0),
      CO(2) => \r_out2_carry__0_n_1\,
      CO(1) => \r_out2_carry__0_n_2\,
      CO(0) => \r_out2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => UNISIM_RAM0_2(1 downto 0),
      O(3 downto 0) => \NLW_r_out2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_3(3 downto 0)
    );
r_out3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_out3_carry_n_0,
      CO(2) => r_out3_carry_n_1,
      CO(1) => r_out3_carry_n_2,
      CO(0) => r_out3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_r_out3_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\r_out3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_out3_carry_n_0,
      CO(3) => \r_out_reg[1]_0\(0),
      CO(2) => \r_out3_carry__0_n_1\,
      CO(1) => \r_out3_carry__0_n_2\,
      CO(0) => \r_out3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => UNISIM_RAM0(3 downto 0),
      O(3 downto 0) => \NLW_r_out3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_0(3 downto 0)
    );
\r_out3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_out3_inferred__0/i__carry_n_0\,
      CO(2) => \r_out3_inferred__0/i__carry_n_1\,
      CO(1) => \r_out3_inferred__0/i__carry_n_2\,
      CO(0) => \r_out3_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \queue_reg[15][hCounter][7]\(3 downto 0),
      O(3 downto 0) => \NLW_r_out3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_4(3 downto 0)
    );
\r_out3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_out3_inferred__0/i__carry_n_0\,
      CO(3) => \r_out_reg[1]_2\(0),
      CO(2) => \r_out3_inferred__0/i__carry__0_n_1\,
      CO(1) => \r_out3_inferred__0/i__carry__0_n_2\,
      CO(0) => \r_out3_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \queue_reg[15][hCounter][11]\(1 downto 0),
      O(3 downto 0) => \NLW_r_out3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_5(3 downto 0)
    );
\r_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \r_out_reg[1]_3\,
      Q => \^blue_o\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_rx_pure_vhdl_dd is
  port (
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK100MHZ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end spi_rx_pure_vhdl_dd;

architecture STRUCTURE of spi_rx_pure_vhdl_dd is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of nxt_wr_reg : label is "LD";
begin
\nxt_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\nxt_data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(10),
      GE => '1',
      Q => Q(10)
    );
\nxt_data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(11),
      GE => '1',
      Q => Q(11)
    );
\nxt_data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(12),
      GE => '1',
      Q => Q(12)
    );
\nxt_data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(13),
      GE => '1',
      Q => Q(13)
    );
\nxt_data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(14),
      GE => '1',
      Q => Q(14)
    );
\nxt_data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(15),
      GE => '1',
      Q => Q(15)
    );
\nxt_data_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(16),
      GE => '1',
      Q => Q(16)
    );
\nxt_data_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(17),
      GE => '1',
      Q => Q(17)
    );
\nxt_data_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(18),
      GE => '1',
      Q => Q(18)
    );
\nxt_data_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(19),
      GE => '1',
      Q => Q(19)
    );
\nxt_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(1),
      GE => '1',
      Q => Q(1)
    );
\nxt_data_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(20),
      GE => '1',
      Q => Q(20)
    );
\nxt_data_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(21),
      GE => '1',
      Q => Q(21)
    );
\nxt_data_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(22),
      GE => '1',
      Q => Q(22)
    );
\nxt_data_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(23),
      GE => '1',
      Q => Q(23)
    );
\nxt_data_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(24),
      GE => '1',
      Q => Q(24)
    );
\nxt_data_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(25),
      GE => '1',
      Q => Q(25)
    );
\nxt_data_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(26),
      GE => '1',
      Q => Q(26)
    );
\nxt_data_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(27),
      GE => '1',
      Q => Q(27)
    );
\nxt_data_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(28),
      GE => '1',
      Q => Q(28)
    );
\nxt_data_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(29),
      GE => '1',
      Q => Q(29)
    );
\nxt_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(2),
      GE => '1',
      Q => Q(2)
    );
\nxt_data_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(30),
      GE => '1',
      Q => Q(30)
    );
\nxt_data_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(31),
      GE => '1',
      Q => Q(31)
    );
\nxt_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(3),
      GE => '1',
      Q => Q(3)
    );
\nxt_data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(4),
      GE => '1',
      Q => Q(4)
    );
\nxt_data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(5),
      GE => '1',
      Q => Q(5)
    );
\nxt_data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(6),
      GE => '1',
      Q => Q(6)
    );
\nxt_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(7),
      GE => '1',
      Q => Q(7)
    );
\nxt_data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(8),
      GE => '1',
      Q => Q(8)
    );
\nxt_data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(9),
      GE => '1',
      Q => Q(9)
    );
nxt_wr_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => CLK100MHZ,
      GE => '1',
      Q => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_tx_pure_vhdl_dd is
  port (
    nxt_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_MOSI_O : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    CLK100MHZ_0 : in STD_LOGIC;
    CLK100MHZ_1 : in STD_LOGIC;
    CLK100MHZ_2 : in STD_LOGIC;
    CLK100MHZ_3 : in STD_LOGIC;
    CLK100MHZ_4 : in STD_LOGIC;
    CLK_SPI_O : in STD_LOGIC
  );
end spi_tx_pure_vhdl_dd;

architecture STRUCTURE of spi_tx_pure_vhdl_dd is
  signal sclk_active : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \nxt_data_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of sclk_active_reg : label is "LD";
begin
SPI_SCLK_O_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sclk_active,
      I1 => CLK_SPI_O,
      O => SPI_SCLK_O_OBUF
    );
\nxt_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => CLK100MHZ_0,
      GE => '1',
      Q => nxt_data(0)
    );
\nxt_data_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CLK100MHZ_1,
      I1 => CLK100MHZ_2,
      I2 => CLK100MHZ_3,
      I3 => CLK100MHZ_4,
      O => SPI_MOSI_O
    );
sclk_active_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => CLK100MHZ,
      GE => '1',
      Q => sclk_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_gen is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][hSync]\ : out STD_LOGIC;
    \queue_reg[15][vSync]\ : out STD_LOGIC;
    \r_out_reg[1]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_out_reg[1]_0\ : out STD_LOGIC;
    \r_out_reg[1]_1\ : out STD_LOGIC;
    \r_out_reg[1]_2\ : out STD_LOGIC;
    \r_out_reg[1]_3\ : out STD_LOGIC;
    \r_out_reg[1]_4\ : out STD_LOGIC;
    \r_out_reg[1]_5\ : out STD_LOGIC;
    \r_out_reg[1]_6\ : out STD_LOGIC;
    \r_out_reg[1]_7\ : out STD_LOGIC;
    \r_out_reg[1]_8\ : out STD_LOGIC;
    \r_out_reg[1]_9\ : out STD_LOGIC;
    \r_out_reg[1]_10\ : out STD_LOGIC;
    \r_out_reg[1]_11\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_13\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_14\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_16\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_17\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_18\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_19\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_out_reg[1]_20\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]_21\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_buff_clkpixel : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 23 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    e12_out : in STD_LOGIC
  );
end vga_gen;

architecture STRUCTURE of vga_gen is
  signal eqOp : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp3_in : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp0_in : STD_LOGIC;
  signal ltOp1_in : STD_LOGIC;
  signal ltOp2_in : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \n[vCounter]\ : STD_LOGIC;
  signal \n[vSync]\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \queue[0][hCounter][0]_i_3_n_0\ : STD_LOGIC;
  signal \queue[0][hCounter][0]_i_4_n_0\ : STD_LOGIC;
  signal \queue[0][hCounter][0]_i_5_n_0\ : STD_LOGIC;
  signal \queue[0][vCounter][0]_i_3_n_0\ : STD_LOGIC;
  signal \queue[0][vCounter][0]_i_4_n_0\ : STD_LOGIC;
  signal \queue[0][vCounter][0]_i_5_n_0\ : STD_LOGIC;
  signal \queue_reg[0][hCounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \queue_reg[0][hCounter][0]_i_2_n_0\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_1\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_2\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_3\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_4\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_5\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_6\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][0]_i_2_n_7\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_0\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_1\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_2\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_3\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_4\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_5\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_6\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][4]_i_1_n_7\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_1\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_2\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_3\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_4\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_5\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_6\ : STD_LOGIC;
  signal \queue_reg[0][hCounter][8]_i_1_n_7\ : STD_LOGIC;
  signal \queue_reg[0][vCounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \queue_reg[0][vCounter][0]_i_2_n_0\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_1\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_2\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_3\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_4\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_5\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_6\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][0]_i_2_n_7\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_0\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_1\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_2\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_3\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_4\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_5\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_6\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][4]_i_1_n_7\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_1\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_2\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_3\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_4\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_5\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_6\ : STD_LOGIC;
  signal \queue_reg[0][vCounter][8]_i_1_n_7\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_10_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_11_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_12_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_13_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_1_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_2_n_3\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_3_n_1\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_3_n_2\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_3_n_3\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_4_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_5_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_6_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_7_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_8_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_i_9_n_0\ : STD_LOGIC;
  signal \queue_reg[14][blank]_srl15_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][0]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][10]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][11]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][1]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][2]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][3]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][4]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][5]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][6]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][7]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][8]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hCounter][9]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hSync]_srl15_i_1_n_0\ : STD_LOGIC;
  signal \queue_reg[14][hSync]_srl15_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][0]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][10]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][11]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][1]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][2]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][3]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][4]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][5]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][6]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][7]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][8]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vCounter][9]_srl14_n_0\ : STD_LOGIC;
  signal \queue_reg[14][vSync]_srl15_n_0\ : STD_LOGIC;
  signal \queue_reg[15][hCounter]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^queue_reg[15][hsync]\ : STD_LOGIC;
  signal \^r_out_reg[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^r_out_reg[1]_0\ : STD_LOGIC;
  signal \^r_out_reg[1]_1\ : STD_LOGIC;
  signal \^r_out_reg[1]_10\ : STD_LOGIC;
  signal \^r_out_reg[1]_11\ : STD_LOGIC;
  signal \^r_out_reg[1]_2\ : STD_LOGIC;
  signal \^r_out_reg[1]_3\ : STD_LOGIC;
  signal \^r_out_reg[1]_4\ : STD_LOGIC;
  signal \^r_out_reg[1]_5\ : STD_LOGIC;
  signal \^r_out_reg[1]_6\ : STD_LOGIC;
  signal \^r_out_reg[1]_7\ : STD_LOGIC;
  signal \^r_out_reg[1]_8\ : STD_LOGIC;
  signal \^r_out_reg[1]_9\ : STD_LOGIC;
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_queue_reg[0][hCounter][8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_queue_reg[0][vCounter][8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_queue_reg[14][blank]_srl15_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_queue_reg[14][blank]_srl15_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_queue_reg[14][blank]_srl15_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \e[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \e[2]_i_1\ : label is "soft_lutpair88";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \queue_reg[14][blank]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14] ";
  attribute srl_name : string;
  attribute srl_name of \queue_reg[14][blank]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][blank]_srl15 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][0]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][0]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][0]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][10]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][10]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][10]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][11]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][11]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][11]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][1]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][1]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][1]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][2]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][2]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][2]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][3]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][3]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][3]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][4]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][4]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][4]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][5]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][5]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][5]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][6]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][6]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][6]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][7]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][7]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][7]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][8]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][8]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][8]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hCounter][9]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter] ";
  attribute srl_name of \queue_reg[14][hCounter][9]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hCounter][9]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][hSync]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14] ";
  attribute srl_name of \queue_reg[14][hSync]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][hSync]_srl15 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][0]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][0]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][0]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][10]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][10]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][10]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][11]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][11]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][11]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][1]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][1]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][1]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][2]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][2]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][2]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][3]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][3]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][3]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][4]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][4]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][4]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][5]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][5]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][5]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][6]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][6]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][6]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][7]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][7]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][7]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][8]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][8]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][8]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vCounter][9]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter] ";
  attribute srl_name of \queue_reg[14][vCounter][9]_srl14\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vCounter][9]_srl14 ";
  attribute srl_bus_name of \queue_reg[14][vSync]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14] ";
  attribute srl_name of \queue_reg[14][vSync]_srl15\ : label is "\FPGA2_inst/hdmi_driver_inst/Inst_vga_gen/queue_reg[14][vSync]_srl15 ";
begin
  p_1_in(0) <= \^p_1_in\(0);
  \queue_reg[15][hSync]\ <= \^queue_reg[15][hsync]\;
  \r_out_reg[1]\(9 downto 0) <= \^r_out_reg[1]\(9 downto 0);
  \r_out_reg[1]_0\ <= \^r_out_reg[1]_0\;
  \r_out_reg[1]_1\ <= \^r_out_reg[1]_1\;
  \r_out_reg[1]_10\ <= \^r_out_reg[1]_10\;
  \r_out_reg[1]_11\ <= \^r_out_reg[1]_11\;
  \r_out_reg[1]_2\ <= \^r_out_reg[1]_2\;
  \r_out_reg[1]_3\ <= \^r_out_reg[1]_3\;
  \r_out_reg[1]_4\ <= \^r_out_reg[1]_4\;
  \r_out_reg[1]_5\ <= \^r_out_reg[1]_5\;
  \r_out_reg[1]_6\ <= \^r_out_reg[1]_6\;
  \r_out_reg[1]_7\ <= \^r_out_reg[1]_7\;
  \r_out_reg[1]_8\ <= \^r_out_reg[1]_8\;
  \r_out_reg[1]_9\ <= \^r_out_reg[1]_9\;
\e[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^queue_reg[15][hsync]\,
      I1 => \^p_1_in\(0),
      I2 => Q(0),
      I3 => e12_out,
      O => D(0)
    );
\e[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => \^queue_reg[15][hsync]\,
      I1 => \^p_1_in\(0),
      I2 => Q(0),
      I3 => e12_out,
      O => D(1)
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => \queue_reg[0][hCounter]\(7),
      DI(2) => geqOp_carry_i_1_n_0,
      DI(1) => geqOp_carry_i_2_n_0,
      DI(0) => geqOp_carry_i_3_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_4_n_0,
      S(2) => geqOp_carry_i_5_n_0,
      S(1) => geqOp_carry_i_6_n_0,
      S(0) => geqOp_carry_i_7_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3 downto 2) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp3_in,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \queue_reg[0][hCounter]\(11),
      DI(0) => \queue_reg[0][hCounter]\(9),
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \geqOp_carry__0_i_1_n_0\,
      S(0) => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \geqOp_carry__0_i_2_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(4),
      I1 => \queue_reg[0][hCounter]\(5),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(2),
      I1 => \queue_reg[0][hCounter]\(3),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(0),
      I1 => \queue_reg[0][hCounter]\(1),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(6),
      I1 => \queue_reg[0][hCounter]\(7),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(4),
      I1 => \queue_reg[0][hCounter]\(5),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(3),
      I1 => \queue_reg[0][hCounter]\(2),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(0),
      I1 => \queue_reg[0][hCounter]\(1),
      O => geqOp_carry_i_7_n_0
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \queue_reg[0][vCounter]\(5),
      DI(1) => \i__carry_i_1__1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__2_n_0\,
      S(0) => \i__carry_i_5__0_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__0_n_0\,
      DI(0) => \i__carry__0_i_2__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^r_out_reg[1]\(9),
      I1 => DOADO(23),
      I2 => \^r_out_reg[1]\(8),
      I3 => DOADO(22),
      O => \r_out_reg[1]_21\(1)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^r_out_reg[1]\(7),
      I1 => DOADO(21),
      I2 => \^r_out_reg[1]\(6),
      I3 => DOADO(20),
      O => \r_out_reg[1]_21\(0)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(8),
      I1 => \queue_reg[0][vCounter]\(9),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      I1 => \queue_reg[0][vCounter]\(8),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^r_out_reg[1]\(5),
      I1 => DOADO(19),
      I2 => \^r_out_reg[1]\(4),
      I3 => DOADO(18),
      O => \r_out_reg[1]_20\(3)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(2),
      I1 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^r_out_reg[1]\(3),
      I1 => DOADO(17),
      I2 => \^r_out_reg[1]\(2),
      I3 => DOADO(16),
      O => \r_out_reg[1]_20\(2)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(7),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^r_out_reg[1]\(1),
      I1 => DOADO(15),
      I2 => \^r_out_reg[1]\(0),
      I3 => DOADO(14),
      O => \r_out_reg[1]_20\(1)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(4),
      I1 => \queue_reg[0][hCounter]\(5),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \queue_reg[15][hCounter]\(1),
      I1 => DOADO(13),
      I2 => \queue_reg[15][hCounter]\(0),
      I3 => DOADO(12),
      O => \r_out_reg[1]_20\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(3),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(2),
      I1 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(0),
      I1 => \queue_reg[0][vCounter]\(1),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      I1 => \queue_reg[0][vCounter]\(8),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(7),
      I1 => \queue_reg[0][hCounter]\(6),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(4),
      I1 => \queue_reg[0][hCounter]\(5),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \queue_reg[15][hCounter]\(0),
      I1 => DOADO(12),
      I2 => DOADO(13),
      I3 => \queue_reg[15][hCounter]\(1),
      O => \r_out_reg[1]_12\(0)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(3),
      I1 => \queue_reg[0][vCounter]\(2),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(3),
      I1 => \queue_reg[0][hCounter]\(2),
      O => \i__carry_i_8__1_n_0\
    );
\ltOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__1/i__carry_n_0\,
      CO(2) => \ltOp_inferred__1/i__carry_n_1\,
      CO(1) => \ltOp_inferred__1/i__carry_n_2\,
      CO(0) => \ltOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\ltOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp2_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__1_n_0\
    );
\ltOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__2/i__carry_n_0\,
      CO(2) => \ltOp_inferred__2/i__carry_n_1\,
      CO(1) => \ltOp_inferred__2/i__carry_n_2\,
      CO(0) => \ltOp_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\ltOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp1_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__2_n_0\
    );
\queue[0][hCounter][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue[0][hCounter][0]_i_3_n_0\,
      I1 => \queue[0][hCounter][0]_i_4_n_0\,
      O => eqOp
    );
\queue[0][hCounter][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(11),
      I1 => \queue_reg[0][hCounter]\(7),
      I2 => \queue_reg[0][hCounter]\(8),
      I3 => \queue_reg[0][hCounter]\(4),
      I4 => \queue_reg[0][hCounter]\(9),
      I5 => \queue_reg[0][hCounter]\(10),
      O => \queue[0][hCounter][0]_i_3_n_0\
    );
\queue[0][hCounter][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(0),
      I1 => \queue_reg[0][hCounter]\(1),
      I2 => \queue_reg[0][hCounter]\(2),
      I3 => \queue_reg[0][hCounter]\(3),
      I4 => \queue_reg[0][hCounter]\(5),
      I5 => \queue_reg[0][hCounter]\(6),
      O => \queue[0][hCounter][0]_i_4_n_0\
    );
\queue[0][hCounter][0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(0),
      O => \queue[0][hCounter][0]_i_5_n_0\
    );
\queue[0][vCounter][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => eqOp,
      I1 => \queue[0][vCounter][0]_i_3_n_0\,
      I2 => \queue_reg[0][vCounter]\(10),
      I3 => \queue_reg[0][vCounter]\(11),
      I4 => \queue_reg[0][vCounter]\(8),
      I5 => \queue_reg[0][vCounter]\(4),
      O => \n[vCounter]\
    );
\queue[0][vCounter][0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(5),
      I1 => \queue_reg[0][vCounter]\(6),
      I2 => \queue_reg[0][vCounter]\(1),
      I3 => \queue_reg[0][vCounter]\(9),
      I4 => \queue[0][vCounter][0]_i_5_n_0\,
      O => \queue[0][vCounter][0]_i_3_n_0\
    );
\queue[0][vCounter][0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(0),
      O => \queue[0][vCounter][0]_i_4_n_0\
    );
\queue[0][vCounter][0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(2),
      I1 => \queue_reg[0][vCounter]\(3),
      I2 => \queue_reg[0][vCounter]\(0),
      I3 => \queue_reg[0][vCounter]\(7),
      O => \queue[0][vCounter][0]_i_5_n_0\
    );
\queue_reg[0][hCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][0]_i_2_n_7\,
      Q => \queue_reg[0][hCounter]\(0),
      R => eqOp
    );
\queue_reg[0][hCounter][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \queue_reg[0][hCounter][0]_i_2_n_0\,
      CO(2) => \queue_reg[0][hCounter][0]_i_2_n_1\,
      CO(1) => \queue_reg[0][hCounter][0]_i_2_n_2\,
      CO(0) => \queue_reg[0][hCounter][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \queue_reg[0][hCounter][0]_i_2_n_4\,
      O(2) => \queue_reg[0][hCounter][0]_i_2_n_5\,
      O(1) => \queue_reg[0][hCounter][0]_i_2_n_6\,
      O(0) => \queue_reg[0][hCounter][0]_i_2_n_7\,
      S(3 downto 1) => \queue_reg[0][hCounter]\(3 downto 1),
      S(0) => \queue[0][hCounter][0]_i_5_n_0\
    );
\queue_reg[0][hCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][8]_i_1_n_5\,
      Q => \queue_reg[0][hCounter]\(10),
      R => eqOp
    );
\queue_reg[0][hCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][8]_i_1_n_4\,
      Q => \queue_reg[0][hCounter]\(11),
      R => eqOp
    );
\queue_reg[0][hCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][0]_i_2_n_6\,
      Q => \queue_reg[0][hCounter]\(1),
      R => eqOp
    );
\queue_reg[0][hCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][0]_i_2_n_5\,
      Q => \queue_reg[0][hCounter]\(2),
      R => eqOp
    );
\queue_reg[0][hCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][0]_i_2_n_4\,
      Q => \queue_reg[0][hCounter]\(3),
      R => eqOp
    );
\queue_reg[0][hCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][4]_i_1_n_7\,
      Q => \queue_reg[0][hCounter]\(4),
      R => eqOp
    );
\queue_reg[0][hCounter][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \queue_reg[0][hCounter][0]_i_2_n_0\,
      CO(3) => \queue_reg[0][hCounter][4]_i_1_n_0\,
      CO(2) => \queue_reg[0][hCounter][4]_i_1_n_1\,
      CO(1) => \queue_reg[0][hCounter][4]_i_1_n_2\,
      CO(0) => \queue_reg[0][hCounter][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \queue_reg[0][hCounter][4]_i_1_n_4\,
      O(2) => \queue_reg[0][hCounter][4]_i_1_n_5\,
      O(1) => \queue_reg[0][hCounter][4]_i_1_n_6\,
      O(0) => \queue_reg[0][hCounter][4]_i_1_n_7\,
      S(3 downto 0) => \queue_reg[0][hCounter]\(7 downto 4)
    );
\queue_reg[0][hCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][4]_i_1_n_6\,
      Q => \queue_reg[0][hCounter]\(5),
      R => eqOp
    );
\queue_reg[0][hCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][4]_i_1_n_5\,
      Q => \queue_reg[0][hCounter]\(6),
      R => eqOp
    );
\queue_reg[0][hCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][4]_i_1_n_4\,
      Q => \queue_reg[0][hCounter]\(7),
      R => eqOp
    );
\queue_reg[0][hCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][8]_i_1_n_7\,
      Q => \queue_reg[0][hCounter]\(8),
      R => eqOp
    );
\queue_reg[0][hCounter][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \queue_reg[0][hCounter][4]_i_1_n_0\,
      CO(3) => \NLW_queue_reg[0][hCounter][8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \queue_reg[0][hCounter][8]_i_1_n_1\,
      CO(1) => \queue_reg[0][hCounter][8]_i_1_n_2\,
      CO(0) => \queue_reg[0][hCounter][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \queue_reg[0][hCounter][8]_i_1_n_4\,
      O(2) => \queue_reg[0][hCounter][8]_i_1_n_5\,
      O(1) => \queue_reg[0][hCounter][8]_i_1_n_6\,
      O(0) => \queue_reg[0][hCounter][8]_i_1_n_7\,
      S(3 downto 0) => \queue_reg[0][hCounter]\(11 downto 8)
    );
\queue_reg[0][hCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[0][hCounter][8]_i_1_n_6\,
      Q => \queue_reg[0][hCounter]\(9),
      R => eqOp
    );
\queue_reg[0][vCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][0]_i_2_n_7\,
      Q => \queue_reg[0][vCounter]\(0),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \queue_reg[0][vCounter][0]_i_2_n_0\,
      CO(2) => \queue_reg[0][vCounter][0]_i_2_n_1\,
      CO(1) => \queue_reg[0][vCounter][0]_i_2_n_2\,
      CO(0) => \queue_reg[0][vCounter][0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \queue_reg[0][vCounter][0]_i_2_n_4\,
      O(2) => \queue_reg[0][vCounter][0]_i_2_n_5\,
      O(1) => \queue_reg[0][vCounter][0]_i_2_n_6\,
      O(0) => \queue_reg[0][vCounter][0]_i_2_n_7\,
      S(3 downto 1) => \queue_reg[0][vCounter]\(3 downto 1),
      S(0) => \queue[0][vCounter][0]_i_4_n_0\
    );
\queue_reg[0][vCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][8]_i_1_n_5\,
      Q => \queue_reg[0][vCounter]\(10),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][8]_i_1_n_4\,
      Q => \queue_reg[0][vCounter]\(11),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][0]_i_2_n_6\,
      Q => \queue_reg[0][vCounter]\(1),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][0]_i_2_n_5\,
      Q => \queue_reg[0][vCounter]\(2),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][0]_i_2_n_4\,
      Q => \queue_reg[0][vCounter]\(3),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][4]_i_1_n_7\,
      Q => \queue_reg[0][vCounter]\(4),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \queue_reg[0][vCounter][0]_i_2_n_0\,
      CO(3) => \queue_reg[0][vCounter][4]_i_1_n_0\,
      CO(2) => \queue_reg[0][vCounter][4]_i_1_n_1\,
      CO(1) => \queue_reg[0][vCounter][4]_i_1_n_2\,
      CO(0) => \queue_reg[0][vCounter][4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \queue_reg[0][vCounter][4]_i_1_n_4\,
      O(2) => \queue_reg[0][vCounter][4]_i_1_n_5\,
      O(1) => \queue_reg[0][vCounter][4]_i_1_n_6\,
      O(0) => \queue_reg[0][vCounter][4]_i_1_n_7\,
      S(3 downto 0) => \queue_reg[0][vCounter]\(7 downto 4)
    );
\queue_reg[0][vCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][4]_i_1_n_6\,
      Q => \queue_reg[0][vCounter]\(5),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][4]_i_1_n_5\,
      Q => \queue_reg[0][vCounter]\(6),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][4]_i_1_n_4\,
      Q => \queue_reg[0][vCounter]\(7),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][8]_i_1_n_7\,
      Q => \queue_reg[0][vCounter]\(8),
      R => \n[vCounter]\
    );
\queue_reg[0][vCounter][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \queue_reg[0][vCounter][4]_i_1_n_0\,
      CO(3) => \NLW_queue_reg[0][vCounter][8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \queue_reg[0][vCounter][8]_i_1_n_1\,
      CO(1) => \queue_reg[0][vCounter][8]_i_1_n_2\,
      CO(0) => \queue_reg[0][vCounter][8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \queue_reg[0][vCounter][8]_i_1_n_4\,
      O(2) => \queue_reg[0][vCounter][8]_i_1_n_5\,
      O(1) => \queue_reg[0][vCounter][8]_i_1_n_6\,
      O(0) => \queue_reg[0][vCounter][8]_i_1_n_7\,
      S(3 downto 0) => \queue_reg[0][vCounter]\(11 downto 8)
    );
\queue_reg[0][vCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => eqOp,
      D => \queue_reg[0][vCounter][8]_i_1_n_6\,
      Q => \queue_reg[0][vCounter]\(9),
      R => \n[vCounter]\
    );
\queue_reg[14][blank]_srl15\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"7FFF"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[14][blank]_srl15_i_1_n_0\,
      Q => \queue_reg[14][blank]_srl15_n_0\
    );
\queue_reg[14][blank]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ltOp0_in,
      I1 => ltOp,
      O => \queue_reg[14][blank]_srl15_i_1_n_0\
    );
\queue_reg[14][blank]_srl15_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \queue_reg[14][blank]_srl15_i_10_n_0\
    );
\queue_reg[14][blank]_srl15_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \queue_reg[14][blank]_srl15_i_11_n_0\
    );
\queue_reg[14][blank]_srl15_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      I1 => \queue_reg[0][vCounter]\(8),
      O => \queue_reg[14][blank]_srl15_i_12_n_0\
    );
\queue_reg[14][blank]_srl15_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \queue_reg[14][blank]_srl15_i_13_n_0\
    );
\queue_reg[14][blank]_srl15_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \queue_reg[14][blank]_srl15_i_14_n_0\
    );
\queue_reg[14][blank]_srl15_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_queue_reg[14][blank]_srl15_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ltOp0_in,
      CO(0) => \queue_reg[14][blank]_srl15_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \queue_reg[14][blank]_srl15_i_4_n_0\,
      DI(0) => \queue_reg[14][blank]_srl15_i_5_n_0\,
      O(3 downto 0) => \NLW_queue_reg[14][blank]_srl15_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \queue_reg[14][blank]_srl15_i_6_n_0\,
      S(0) => \queue_reg[14][blank]_srl15_i_7_n_0\
    );
\queue_reg[14][blank]_srl15_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp,
      CO(2) => \queue_reg[14][blank]_srl15_i_3_n_1\,
      CO(1) => \queue_reg[14][blank]_srl15_i_3_n_2\,
      CO(0) => \queue_reg[14][blank]_srl15_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \queue_reg[14][blank]_srl15_i_8_n_0\,
      DI(1) => \queue_reg[14][blank]_srl15_i_9_n_0\,
      DI(0) => \queue_reg[14][blank]_srl15_i_10_n_0\,
      O(3 downto 0) => \NLW_queue_reg[14][blank]_srl15_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \queue_reg[14][blank]_srl15_i_11_n_0\,
      S(2) => \queue_reg[14][blank]_srl15_i_12_n_0\,
      S(1) => \queue_reg[14][blank]_srl15_i_13_n_0\,
      S(0) => \queue_reg[14][blank]_srl15_i_14_n_0\
    );
\queue_reg[14][blank]_srl15_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \queue_reg[14][blank]_srl15_i_4_n_0\
    );
\queue_reg[14][blank]_srl15_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \queue_reg[14][blank]_srl15_i_5_n_0\
    );
\queue_reg[14][blank]_srl15_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \queue_reg[14][blank]_srl15_i_6_n_0\
    );
\queue_reg[14][blank]_srl15_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \queue_reg[14][blank]_srl15_i_7_n_0\
    );
\queue_reg[14][blank]_srl15_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      O => \queue_reg[14][blank]_srl15_i_8_n_0\
    );
\queue_reg[14][blank]_srl15_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \queue_reg[14][blank]_srl15_i_9_n_0\
    );
\queue_reg[14][hCounter][0]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(0),
      Q => \queue_reg[14][hCounter][0]_srl14_n_0\
    );
\queue_reg[14][hCounter][10]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(10),
      Q => \queue_reg[14][hCounter][10]_srl14_n_0\
    );
\queue_reg[14][hCounter][11]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(11),
      Q => \queue_reg[14][hCounter][11]_srl14_n_0\
    );
\queue_reg[14][hCounter][1]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(1),
      Q => \queue_reg[14][hCounter][1]_srl14_n_0\
    );
\queue_reg[14][hCounter][2]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(2),
      Q => \queue_reg[14][hCounter][2]_srl14_n_0\
    );
\queue_reg[14][hCounter][3]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(3),
      Q => \queue_reg[14][hCounter][3]_srl14_n_0\
    );
\queue_reg[14][hCounter][4]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(4),
      Q => \queue_reg[14][hCounter][4]_srl14_n_0\
    );
\queue_reg[14][hCounter][5]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(5),
      Q => \queue_reg[14][hCounter][5]_srl14_n_0\
    );
\queue_reg[14][hCounter][6]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(6),
      Q => \queue_reg[14][hCounter][6]_srl14_n_0\
    );
\queue_reg[14][hCounter][7]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(7),
      Q => \queue_reg[14][hCounter][7]_srl14_n_0\
    );
\queue_reg[14][hCounter][8]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(8),
      Q => \queue_reg[14][hCounter][8]_srl14_n_0\
    );
\queue_reg[14][hCounter][9]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][hCounter]\(9),
      Q => \queue_reg[14][hCounter][9]_srl14_n_0\
    );
\queue_reg[14][hSync]_srl15\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[14][hSync]_srl15_i_1_n_0\,
      Q => \queue_reg[14][hSync]_srl15_n_0\
    );
\queue_reg[14][hSync]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => geqOp3_in,
      I1 => ltOp2_in,
      O => \queue_reg[14][hSync]_srl15_i_1_n_0\
    );
\queue_reg[14][vCounter][0]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(0),
      Q => \queue_reg[14][vCounter][0]_srl14_n_0\
    );
\queue_reg[14][vCounter][10]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(10),
      Q => \queue_reg[14][vCounter][10]_srl14_n_0\
    );
\queue_reg[14][vCounter][11]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(11),
      Q => \queue_reg[14][vCounter][11]_srl14_n_0\
    );
\queue_reg[14][vCounter][1]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(1),
      Q => \queue_reg[14][vCounter][1]_srl14_n_0\
    );
\queue_reg[14][vCounter][2]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(2),
      Q => \queue_reg[14][vCounter][2]_srl14_n_0\
    );
\queue_reg[14][vCounter][3]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(3),
      Q => \queue_reg[14][vCounter][3]_srl14_n_0\
    );
\queue_reg[14][vCounter][4]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(4),
      Q => \queue_reg[14][vCounter][4]_srl14_n_0\
    );
\queue_reg[14][vCounter][5]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(5),
      Q => \queue_reg[14][vCounter][5]_srl14_n_0\
    );
\queue_reg[14][vCounter][6]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(6),
      Q => \queue_reg[14][vCounter][6]_srl14_n_0\
    );
\queue_reg[14][vCounter][7]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(7),
      Q => \queue_reg[14][vCounter][7]_srl14_n_0\
    );
\queue_reg[14][vCounter][8]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(8),
      Q => \queue_reg[14][vCounter][8]_srl14_n_0\
    );
\queue_reg[14][vCounter][9]_srl14\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \queue_reg[0][vCounter]\(9),
      Q => \queue_reg[14][vCounter][9]_srl14_n_0\
    );
\queue_reg[14][vSync]_srl15\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => O_buff_clkpixel,
      D => \n[vSync]\,
      Q => \queue_reg[14][vSync]_srl15_n_0\
    );
\queue_reg[14][vSync]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => geqOp,
      I1 => ltOp1_in,
      O => \n[vSync]\
    );
\queue_reg[15][blank]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][blank]_srl15_n_0\,
      Q => \^p_1_in\(0),
      R => '0'
    );
\queue_reg[15][hCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][0]_srl14_n_0\,
      Q => \queue_reg[15][hCounter]\(0),
      R => '0'
    );
\queue_reg[15][hCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][10]_srl14_n_0\,
      Q => \^r_out_reg[1]\(8),
      R => '0'
    );
\queue_reg[15][hCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][11]_srl14_n_0\,
      Q => \^r_out_reg[1]\(9),
      R => '0'
    );
\queue_reg[15][hCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][1]_srl14_n_0\,
      Q => \queue_reg[15][hCounter]\(1),
      R => '0'
    );
\queue_reg[15][hCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][2]_srl14_n_0\,
      Q => \^r_out_reg[1]\(0),
      R => '0'
    );
\queue_reg[15][hCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][3]_srl14_n_0\,
      Q => \^r_out_reg[1]\(1),
      R => '0'
    );
\queue_reg[15][hCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][4]_srl14_n_0\,
      Q => \^r_out_reg[1]\(2),
      R => '0'
    );
\queue_reg[15][hCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][5]_srl14_n_0\,
      Q => \^r_out_reg[1]\(3),
      R => '0'
    );
\queue_reg[15][hCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][6]_srl14_n_0\,
      Q => \^r_out_reg[1]\(4),
      R => '0'
    );
\queue_reg[15][hCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][7]_srl14_n_0\,
      Q => \^r_out_reg[1]\(5),
      R => '0'
    );
\queue_reg[15][hCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][8]_srl14_n_0\,
      Q => \^r_out_reg[1]\(6),
      R => '0'
    );
\queue_reg[15][hCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hCounter][9]_srl14_n_0\,
      Q => \^r_out_reg[1]\(7),
      R => '0'
    );
\queue_reg[15][hSync]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][hSync]_srl15_n_0\,
      Q => \^queue_reg[15][hsync]\,
      R => '0'
    );
\queue_reg[15][vCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][0]_srl14_n_0\,
      Q => \^r_out_reg[1]_11\,
      R => '0'
    );
\queue_reg[15][vCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][10]_srl14_n_0\,
      Q => \^r_out_reg[1]_1\,
      R => '0'
    );
\queue_reg[15][vCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][11]_srl14_n_0\,
      Q => \^r_out_reg[1]_0\,
      R => '0'
    );
\queue_reg[15][vCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][1]_srl14_n_0\,
      Q => \^r_out_reg[1]_10\,
      R => '0'
    );
\queue_reg[15][vCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][2]_srl14_n_0\,
      Q => \^r_out_reg[1]_9\,
      R => '0'
    );
\queue_reg[15][vCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][3]_srl14_n_0\,
      Q => \^r_out_reg[1]_8\,
      R => '0'
    );
\queue_reg[15][vCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][4]_srl14_n_0\,
      Q => \^r_out_reg[1]_7\,
      R => '0'
    );
\queue_reg[15][vCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][5]_srl14_n_0\,
      Q => \^r_out_reg[1]_6\,
      R => '0'
    );
\queue_reg[15][vCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][6]_srl14_n_0\,
      Q => \^r_out_reg[1]_5\,
      R => '0'
    );
\queue_reg[15][vCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][7]_srl14_n_0\,
      Q => \^r_out_reg[1]_4\,
      R => '0'
    );
\queue_reg[15][vCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][8]_srl14_n_0\,
      Q => \^r_out_reg[1]_3\,
      R => '0'
    );
\queue_reg[15][vCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vCounter][9]_srl14_n_0\,
      Q => \^r_out_reg[1]_2\,
      R => '0'
    );
\queue_reg[15][vSync]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[14][vSync]_srl15_n_0\,
      Q => \queue_reg[15][vSync]\,
      R => '0'
    );
\r_out1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]_0\,
      I1 => UNISIM_RAM0_3(2),
      I2 => UNISIM_RAM0_3(1),
      I3 => \^r_out_reg[1]_1\,
      O => \r_out_reg[1]_19\(1)
    );
\r_out1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]_2\,
      I1 => UNISIM_RAM0_3(0),
      I2 => UNISIM_RAM0_2(3),
      I3 => \^r_out_reg[1]_3\,
      O => \r_out_reg[1]_19\(0)
    );
\r_out1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UNISIM_RAM0_3(2),
      I1 => \^r_out_reg[1]_0\,
      I2 => UNISIM_RAM0_3(1),
      I3 => \^r_out_reg[1]_1\,
      O => \r_out_reg[1]_18\(1)
    );
\r_out1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UNISIM_RAM0_3(0),
      I1 => \^r_out_reg[1]_2\,
      I2 => UNISIM_RAM0_2(3),
      I3 => \^r_out_reg[1]_3\,
      O => \r_out_reg[1]_18\(0)
    );
r_out1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]_4\,
      I1 => UNISIM_RAM0_2(2),
      I2 => UNISIM_RAM0_2(1),
      I3 => \^r_out_reg[1]_5\,
      O => \r_out_reg[1]_17\(3)
    );
r_out1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]_6\,
      I1 => UNISIM_RAM0_2(0),
      I2 => UNISIM_RAM0_1(3),
      I3 => \^r_out_reg[1]_7\,
      O => \r_out_reg[1]_17\(2)
    );
r_out1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]_8\,
      I1 => UNISIM_RAM0_1(2),
      I2 => UNISIM_RAM0_1(1),
      I3 => \^r_out_reg[1]_9\,
      O => \r_out_reg[1]_17\(1)
    );
r_out1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444D"
    )
        port map (
      I0 => \^r_out_reg[1]_10\,
      I1 => UNISIM_RAM0_1(0),
      I2 => \^r_out_reg[1]_11\,
      I3 => DOADO(0),
      O => \r_out_reg[1]_17\(0)
    );
r_out1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UNISIM_RAM0_2(2),
      I1 => \^r_out_reg[1]_4\,
      I2 => UNISIM_RAM0_2(1),
      I3 => \^r_out_reg[1]_5\,
      O => \r_out_reg[1]_15\(3)
    );
r_out1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UNISIM_RAM0_2(0),
      I1 => \^r_out_reg[1]_6\,
      I2 => UNISIM_RAM0_1(3),
      I3 => \^r_out_reg[1]_7\,
      O => \r_out_reg[1]_15\(2)
    );
r_out1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => UNISIM_RAM0_1(2),
      I1 => \^r_out_reg[1]_8\,
      I2 => UNISIM_RAM0_1(1),
      I3 => \^r_out_reg[1]_9\,
      O => \r_out_reg[1]_15\(1)
    );
r_out1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => DOADO(0),
      I1 => \^r_out_reg[1]_11\,
      I2 => UNISIM_RAM0_1(0),
      I3 => \^r_out_reg[1]_10\,
      O => \r_out_reg[1]_15\(0)
    );
\r_out2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_0\,
      I1 => DOADO(11),
      I2 => \^r_out_reg[1]_1\,
      I3 => DOADO(10),
      O => \r_out_reg[1]_16\(1)
    );
\r_out2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_2\,
      I1 => DOADO(9),
      I2 => \^r_out_reg[1]_3\,
      I3 => DOADO(8),
      O => \r_out_reg[1]_16\(0)
    );
r_out2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_4\,
      I1 => DOADO(7),
      I2 => \^r_out_reg[1]_5\,
      I3 => DOADO(6),
      O => \r_out_reg[1]_14\(3)
    );
r_out2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_6\,
      I1 => DOADO(5),
      I2 => \^r_out_reg[1]_7\,
      I3 => DOADO(4),
      O => \r_out_reg[1]_14\(2)
    );
r_out2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_8\,
      I1 => DOADO(3),
      I2 => \^r_out_reg[1]_9\,
      I3 => DOADO(2),
      O => \r_out_reg[1]_14\(1)
    );
r_out2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^r_out_reg[1]_10\,
      I1 => DOADO(1),
      I2 => DOADO(0),
      I3 => \^r_out_reg[1]_11\,
      O => \r_out_reg[1]_14\(0)
    );
\r_out3_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]\(9),
      I1 => UNISIM_RAM0_0(2),
      I2 => UNISIM_RAM0_0(1),
      I3 => \^r_out_reg[1]\(8),
      O => \r_out_reg[1]_13\(1)
    );
\r_out3_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]\(7),
      I1 => UNISIM_RAM0_0(0),
      I2 => O(3),
      I3 => \^r_out_reg[1]\(6),
      O => \r_out_reg[1]_13\(0)
    );
r_out3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]\(5),
      I1 => O(2),
      I2 => O(1),
      I3 => \^r_out_reg[1]\(4),
      O => DI(3)
    );
r_out3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]\(3),
      I1 => O(0),
      I2 => UNISIM_RAM0(3),
      I3 => \^r_out_reg[1]\(2),
      O => DI(2)
    );
r_out3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_out_reg[1]\(1),
      I1 => UNISIM_RAM0(2),
      I2 => UNISIM_RAM0(1),
      I3 => \^r_out_reg[1]\(0),
      O => DI(1)
    );
r_out3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444D"
    )
        port map (
      I0 => \queue_reg[15][hCounter]\(1),
      I1 => UNISIM_RAM0(0),
      I2 => DOADO(12),
      I3 => \queue_reg[15][hCounter]\(0),
      O => DI(0)
    );
r_out3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \queue_reg[15][hCounter]\(0),
      I1 => DOADO(12),
      I2 => UNISIM_RAM0(0),
      I3 => \queue_reg[15][hCounter]\(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity QLinkMaster is
  port (
    TX_O_OBUF : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    UNISIM_RAM0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    CLK100MHZ_0 : in STD_LOGIC;
    RX_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end QLinkMaster;

architecture STRUCTURE of QLinkMaster is
  signal DECODE_n_0 : STD_LOGIC;
  signal DECODE_n_1 : STD_LOGIC;
  signal DECODE_n_10 : STD_LOGIC;
  signal DECODE_n_11 : STD_LOGIC;
  signal DECODE_n_12 : STD_LOGIC;
  signal DECODE_n_13 : STD_LOGIC;
  signal DECODE_n_14 : STD_LOGIC;
  signal DECODE_n_15 : STD_LOGIC;
  signal DECODE_n_16 : STD_LOGIC;
  signal DECODE_n_17 : STD_LOGIC;
  signal DECODE_n_18 : STD_LOGIC;
  signal DECODE_n_19 : STD_LOGIC;
  signal DECODE_n_2 : STD_LOGIC;
  signal DECODE_n_20 : STD_LOGIC;
  signal DECODE_n_21 : STD_LOGIC;
  signal DECODE_n_22 : STD_LOGIC;
  signal DECODE_n_23 : STD_LOGIC;
  signal DECODE_n_24 : STD_LOGIC;
  signal DECODE_n_25 : STD_LOGIC;
  signal DECODE_n_26 : STD_LOGIC;
  signal DECODE_n_27 : STD_LOGIC;
  signal DECODE_n_28 : STD_LOGIC;
  signal DECODE_n_29 : STD_LOGIC;
  signal DECODE_n_3 : STD_LOGIC;
  signal DECODE_n_30 : STD_LOGIC;
  signal DECODE_n_31 : STD_LOGIC;
  signal DECODE_n_32 : STD_LOGIC;
  signal DECODE_n_33 : STD_LOGIC;
  signal DECODE_n_34 : STD_LOGIC;
  signal DECODE_n_35 : STD_LOGIC;
  signal DECODE_n_36 : STD_LOGIC;
  signal DECODE_n_37 : STD_LOGIC;
  signal DECODE_n_38 : STD_LOGIC;
  signal DECODE_n_39 : STD_LOGIC;
  signal DECODE_n_4 : STD_LOGIC;
  signal DECODE_n_40 : STD_LOGIC;
  signal DECODE_n_41 : STD_LOGIC;
  signal DECODE_n_42 : STD_LOGIC;
  signal DECODE_n_44 : STD_LOGIC;
  signal DECODE_n_45 : STD_LOGIC;
  signal DECODE_n_46 : STD_LOGIC;
  signal DECODE_n_47 : STD_LOGIC;
  signal DECODE_n_48 : STD_LOGIC;
  signal DECODE_n_49 : STD_LOGIC;
  signal DECODE_n_5 : STD_LOGIC;
  signal DECODE_n_50 : STD_LOGIC;
  signal DECODE_n_51 : STD_LOGIC;
  signal DECODE_n_52 : STD_LOGIC;
  signal DECODE_n_53 : STD_LOGIC;
  signal DECODE_n_54 : STD_LOGIC;
  signal DECODE_n_55 : STD_LOGIC;
  signal DECODE_n_56 : STD_LOGIC;
  signal DECODE_n_57 : STD_LOGIC;
  signal DECODE_n_58 : STD_LOGIC;
  signal DECODE_n_59 : STD_LOGIC;
  signal DECODE_n_6 : STD_LOGIC;
  signal DECODE_n_60 : STD_LOGIC;
  signal DECODE_n_61 : STD_LOGIC;
  signal DECODE_n_62 : STD_LOGIC;
  signal DECODE_n_63 : STD_LOGIC;
  signal DECODE_n_64 : STD_LOGIC;
  signal DECODE_n_65 : STD_LOGIC;
  signal DECODE_n_66 : STD_LOGIC;
  signal DECODE_n_67 : STD_LOGIC;
  signal DECODE_n_68 : STD_LOGIC;
  signal DECODE_n_69 : STD_LOGIC;
  signal DECODE_n_7 : STD_LOGIC;
  signal DECODE_n_8 : STD_LOGIC;
  signal DECODE_n_9 : STD_LOGIC;
  signal ENCODE_n_1 : STD_LOGIC;
  signal ENCODE_n_2 : STD_LOGIC;
  signal ENCODE_n_4 : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[10]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[10]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[12]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[12]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[14]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[14]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[15]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[15]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[16]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[16]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[8]\ : signal is "yes";
  signal \FSM_onehot_rx_state_reg_n_0_[9]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rx_state_reg_n_0_[9]\ : signal is "yes";
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^unisim_ram0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal adr_A : STD_LOGIC_VECTOR ( 7 to 7 );
  signal char_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data32[0]_i_2_n_0\ : STD_LOGIC;
  signal \data32[10]_i_2_n_0\ : STD_LOGIC;
  signal \data32[11]_i_3_n_0\ : STD_LOGIC;
  signal \data32[12]_i_2_n_0\ : STD_LOGIC;
  signal \data32[13]_i_2_n_0\ : STD_LOGIC;
  signal \data32[14]_i_2_n_0\ : STD_LOGIC;
  signal \data32[15]_i_3_n_0\ : STD_LOGIC;
  signal \data32[16]_i_2_n_0\ : STD_LOGIC;
  signal \data32[17]_i_2_n_0\ : STD_LOGIC;
  signal \data32[18]_i_2_n_0\ : STD_LOGIC;
  signal \data32[19]_i_3_n_0\ : STD_LOGIC;
  signal \data32[1]_i_2_n_0\ : STD_LOGIC;
  signal \data32[20]_i_2_n_0\ : STD_LOGIC;
  signal \data32[21]_i_2_n_0\ : STD_LOGIC;
  signal \data32[22]_i_2_n_0\ : STD_LOGIC;
  signal \data32[23]_i_3_n_0\ : STD_LOGIC;
  signal \data32[24]_i_2_n_0\ : STD_LOGIC;
  signal \data32[25]_i_2_n_0\ : STD_LOGIC;
  signal \data32[26]_i_2_n_0\ : STD_LOGIC;
  signal \data32[27]_i_3_n_0\ : STD_LOGIC;
  signal \data32[28]_i_2_n_0\ : STD_LOGIC;
  signal \data32[29]_i_2_n_0\ : STD_LOGIC;
  signal \data32[2]_i_2_n_0\ : STD_LOGIC;
  signal \data32[30]_i_2_n_0\ : STD_LOGIC;
  signal \data32[31]_i_3_n_0\ : STD_LOGIC;
  signal \data32[31]_i_4_n_0\ : STD_LOGIC;
  signal \data32[3]_i_3_n_0\ : STD_LOGIC;
  signal \data32[4]_i_2_n_0\ : STD_LOGIC;
  signal \data32[5]_i_2_n_0\ : STD_LOGIC;
  signal \data32[6]_i_2_n_0\ : STD_LOGIC;
  signal \data32[7]_i_3_n_0\ : STD_LOGIC;
  signal \data32[8]_i_2_n_0\ : STD_LOGIC;
  signal \data32[9]_i_2_n_0\ : STD_LOGIC;
  signal enc_wr : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal nxt_char_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \nxt_char_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal nxt_enc_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \nxt_enc_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_28_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_29_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_30_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_31_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_32_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_28_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[2]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_10_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_11_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_12_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_13_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_14_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_15_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_16_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_17_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_18_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_19_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_20_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_23_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_24_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_25_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_26_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_27_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_28_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \nxt_enc_data_reg_n_0_[6]\ : STD_LOGIC;
  signal nxt_rd : STD_LOGIC;
  attribute RTL_KEEP of nxt_rd : signal is "yes";
  signal nxt_sendstring : STD_LOGIC;
  signal nxt_timestamp : STD_LOGIC;
  attribute RTL_KEEP of nxt_timestamp : signal is "yes";
  signal nxt_timestamp_enable : STD_LOGIC;
  signal nxt_wr : STD_LOGIC;
  attribute RTL_KEEP of nxt_wr : signal is "yes";
  signal sendstring : STD_LOGIC;
  signal timestamp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal timestamp_enable : STD_LOGIC;
  signal \NLW_i_/i_/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[0]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_rx_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[10]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[10]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[11]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[11]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[12]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[12]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[13]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[13]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[14]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[14]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[15]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[15]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[16]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[16]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[17]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[17]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[18]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[18]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[1]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[2]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[3]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[4]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[5]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[6]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[7]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[8]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[8]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[9]\ : label is "write_data4:0000000001000000000,write_data3:0000000000100000000,write_data2:0000000000010000000,write_commit:0000010000000000000,read_addr0:0001000000000000000,read_colon:0000100000000000000,write_data7:0000001000000000000,write_data6:0000000100000000000,cmd:0000000000000000010,write_data1:0000000000001000000,hashtag:0000000000000000001,write_data0:0000000000000100000,write_colon:0000000000000000100,read_bus1:1000000000000000000,write_addr1:0000000000000010000,write_addr0:0000000000000001000,read_bus0:0100000000000000000,read_addr1:0010000000000000000,write_data5:0000000010000000000";
  attribute KEEP of \FSM_onehot_rx_state_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nxt_char_cnt[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_char_cnt[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_12\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_13\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_14\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_17\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_18\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_20\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_12\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_18\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_19\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_20\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_21\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_22\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_28\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_29\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_15\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_23\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_24\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_25\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_26\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_27\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_28\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_9\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_11\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_12\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_21\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_22\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_23\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_24\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_25\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_26\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_27\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_6\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_7\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_9\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \nxt_enc_data[4]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_12\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_15\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_18\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_19\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_20\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_21\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_22\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_23\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_24\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_28\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_5\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_7\ : label is "soft_lutpair72";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  UNISIM_RAM0(6 downto 0) <= \^unisim_ram0\(6 downto 0);
DECODE: entity work.decode_serial
     port map (
      CLK => CLK,
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => CLK100MHZ_0,
      D(31) => DECODE_n_0,
      D(30) => DECODE_n_1,
      D(29) => DECODE_n_2,
      D(28) => DECODE_n_3,
      D(27) => DECODE_n_4,
      D(26) => DECODE_n_5,
      D(25) => DECODE_n_6,
      D(24) => DECODE_n_7,
      D(23) => DECODE_n_8,
      D(22) => DECODE_n_9,
      D(21) => DECODE_n_10,
      D(20) => DECODE_n_11,
      D(19) => DECODE_n_12,
      D(18) => DECODE_n_13,
      D(17) => DECODE_n_14,
      D(16) => DECODE_n_15,
      D(15) => DECODE_n_16,
      D(14) => DECODE_n_17,
      D(13) => DECODE_n_18,
      D(12) => DECODE_n_19,
      D(11) => DECODE_n_20,
      D(10) => DECODE_n_21,
      D(9) => DECODE_n_22,
      D(8) => DECODE_n_23,
      D(7) => DECODE_n_24,
      D(6) => DECODE_n_25,
      D(5) => DECODE_n_26,
      D(4) => DECODE_n_27,
      D(3) => DECODE_n_28,
      D(2) => DECODE_n_29,
      D(1) => DECODE_n_30,
      D(0) => DECODE_n_31,
      E(7) => DECODE_n_58,
      E(6) => DECODE_n_59,
      E(5) => DECODE_n_60,
      E(4) => DECODE_n_61,
      E(3) => DECODE_n_62,
      E(2) => DECODE_n_63,
      E(1) => DECODE_n_64,
      E(0) => DECODE_n_65,
      \FSM_onehot_rx_state_reg[0]\(0) => DECODE_n_68,
      \FSM_onehot_rx_state_reg[16]\ => \FSM_onehot_rx_state[18]_i_5_n_0\,
      \FSM_onehot_rx_state_reg[17]\(17) => DECODE_n_40,
      \FSM_onehot_rx_state_reg[17]\(16) => DECODE_n_41,
      \FSM_onehot_rx_state_reg[17]\(15) => DECODE_n_42,
      \FSM_onehot_rx_state_reg[17]\(14) => nxt_timestamp_enable,
      \FSM_onehot_rx_state_reg[17]\(13) => DECODE_n_44,
      \FSM_onehot_rx_state_reg[17]\(12) => DECODE_n_45,
      \FSM_onehot_rx_state_reg[17]\(11) => DECODE_n_46,
      \FSM_onehot_rx_state_reg[17]\(10) => DECODE_n_47,
      \FSM_onehot_rx_state_reg[17]\(9) => DECODE_n_48,
      \FSM_onehot_rx_state_reg[17]\(8) => DECODE_n_49,
      \FSM_onehot_rx_state_reg[17]\(7) => DECODE_n_50,
      \FSM_onehot_rx_state_reg[17]\(6) => DECODE_n_51,
      \FSM_onehot_rx_state_reg[17]\(5) => DECODE_n_52,
      \FSM_onehot_rx_state_reg[17]\(4) => DECODE_n_53,
      \FSM_onehot_rx_state_reg[17]\(3) => DECODE_n_54,
      \FSM_onehot_rx_state_reg[17]\(2) => DECODE_n_55,
      \FSM_onehot_rx_state_reg[17]\(1) => DECODE_n_56,
      \FSM_onehot_rx_state_reg[17]\(0) => DECODE_n_57,
      \FSM_onehot_rx_state_reg[18]\ => \data32[0]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_0\ => \data32[4]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_1\ => \data32[8]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_10\ => \data32[13]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_11\ => \data32[17]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_12\ => \data32[21]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_13\ => \data32[25]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_14\ => \data32[29]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_15\ => \data32[3]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_16\ => \data32[7]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_17\ => \data32[11]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_18\ => \data32[15]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_19\ => \data32[19]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_2\ => \data32[12]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_20\ => \data32[23]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_21\ => \data32[27]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_22\ => \data32[31]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_23\ => \data32[2]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_24\ => \data32[6]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_25\ => \data32[10]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_26\ => \data32[14]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_27\ => \data32[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_28\ => \data32[22]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_29\ => \data32[26]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_3\ => \data32[16]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_30\ => \data32[30]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_31\ => \FSM_onehot_rx_state[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_4\ => \data32[20]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_5\ => \data32[24]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_6\ => \data32[28]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_7\ => \data32[1]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_8\ => \data32[5]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_9\ => \data32[9]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[2]\ => \FSM_onehot_rx_state[18]_i_4_n_0\,
      \FSM_onehot_rx_state_reg[3]\ => \FSM_onehot_rx_state[18]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[9]\ => \FSM_onehot_rx_state[0]_i_2_n_0\,
      RX_I(0) => RX_I(0),
      SR(0) => SR(0),
      \adr_reg[7]\(7) => DECODE_n_32,
      \adr_reg[7]\(6) => DECODE_n_33,
      \adr_reg[7]\(5) => DECODE_n_34,
      \adr_reg[7]\(4) => DECODE_n_35,
      \adr_reg[7]\(3) => DECODE_n_36,
      \adr_reg[7]\(2) => DECODE_n_37,
      \adr_reg[7]\(1) => DECODE_n_38,
      \adr_reg[7]\(0) => DECODE_n_39,
      \adr_reg[7]_0\(1) => DECODE_n_66,
      \adr_reg[7]_0\(0) => DECODE_n_67,
      clk_locked => clk_locked,
      \out\(18) => nxt_timestamp,
      \out\(17) => nxt_rd,
      \out\(16) => \FSM_onehot_rx_state_reg_n_0_[16]\,
      \out\(15) => \FSM_onehot_rx_state_reg_n_0_[15]\,
      \out\(14) => \FSM_onehot_rx_state_reg_n_0_[14]\,
      \out\(13) => nxt_wr,
      \out\(12) => \FSM_onehot_rx_state_reg_n_0_[12]\,
      \out\(11) => \FSM_onehot_rx_state_reg_n_0_[11]\,
      \out\(10) => \FSM_onehot_rx_state_reg_n_0_[10]\,
      \out\(9) => \FSM_onehot_rx_state_reg_n_0_[9]\,
      \out\(8) => \FSM_onehot_rx_state_reg_n_0_[8]\,
      \out\(7) => \FSM_onehot_rx_state_reg_n_0_[7]\,
      \out\(6) => \FSM_onehot_rx_state_reg_n_0_[6]\,
      \out\(5) => \FSM_onehot_rx_state_reg_n_0_[5]\,
      \out\(4) => \FSM_onehot_rx_state_reg_n_0_[4]\,
      \out\(3) => \FSM_onehot_rx_state_reg_n_0_[3]\,
      \out\(2) => \FSM_onehot_rx_state_reg_n_0_[2]\,
      \out\(1) => \FSM_onehot_rx_state_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_rx_state_reg_n_0_[0]\,
      timestamp_enable => timestamp_enable,
      timestamp_enable_reg => DECODE_n_69
    );
ENCODE: entity work.encode_serial
     port map (
      CLK => CLK,
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => CLK100MHZ_0,
      E(0) => ENCODE_n_1,
      \FSM_onehot_rx_state_reg[16]\ => \FSM_onehot_rx_state[18]_i_5_n_0\,
      \FSM_onehot_rx_state_reg[2]\ => \FSM_onehot_rx_state[18]_i_4_n_0\,
      \FSM_onehot_rx_state_reg[3]\ => \FSM_onehot_rx_state[18]_i_3_n_0\,
      Q(3 downto 0) => char_cnt(4 downto 1),
      SR(0) => SR(0),
      TX_O_OBUF => TX_O_OBUF,
      clk_locked => clk_locked,
      enc_wr_reg => ENCODE_n_4,
      enc_wr_reg_0(0) => enc_wr,
      \nxt_char_cnt_reg[0]\(0) => ENCODE_n_2,
      \nxt_char_cnt_reg[4]\ => \nxt_char_cnt[4]_i_3_n_0\,
      \nxt_enc_data_reg[6]\(6) => \nxt_enc_data_reg_n_0_[6]\,
      \nxt_enc_data_reg[6]\(5) => \nxt_enc_data_reg_n_0_[5]\,
      \nxt_enc_data_reg[6]\(4) => \nxt_enc_data_reg_n_0_[4]\,
      \nxt_enc_data_reg[6]\(3) => \nxt_enc_data_reg_n_0_[3]\,
      \nxt_enc_data_reg[6]\(2) => \nxt_enc_data_reg_n_0_[2]\,
      \nxt_enc_data_reg[6]\(1) => \nxt_enc_data_reg_n_0_[1]\,
      \nxt_enc_data_reg[6]\(0) => \nxt_enc_data_reg_n_0_[0]\,
      nxt_sendstring => nxt_sendstring,
      \out\(0) => nxt_timestamp,
      sendstring => sendstring
    );
\FSM_onehot_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_rx_state[18]_i_6_n_0\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_rx_state[0]_i_5_n_0\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      O => \FSM_onehot_rx_state[0]_i_2_n_0\
    );
\FSM_onehot_rx_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      O => \FSM_onehot_rx_state[0]_i_5_n_0\
    );
\FSM_onehot_rx_state[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => nxt_timestamp,
      I1 => nxt_wr,
      O => \FSM_onehot_rx_state[18]_i_2_n_0\
    );
\FSM_onehot_rx_state[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      I3 => nxt_wr,
      I4 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      O => \FSM_onehot_rx_state[18]_i_3_n_0\
    );
\FSM_onehot_rx_state[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[14]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      O => \FSM_onehot_rx_state[18]_i_4_n_0\
    );
\FSM_onehot_rx_state[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_rx_state[18]_i_6_n_0\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I2 => nxt_rd,
      I3 => nxt_timestamp,
      O => \FSM_onehot_rx_state[18]_i_5_n_0\
    );
\FSM_onehot_rx_state[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[12]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[11]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[5]\,
      O => \FSM_onehot_rx_state[18]_i_6_n_0\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_57,
      Q => \FSM_onehot_rx_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_rx_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_47,
      Q => \FSM_onehot_rx_state_reg_n_0_[10]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_46,
      Q => \FSM_onehot_rx_state_reg_n_0_[11]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_45,
      Q => \FSM_onehot_rx_state_reg_n_0_[12]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_44,
      Q => nxt_wr,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => nxt_timestamp_enable,
      Q => \FSM_onehot_rx_state_reg_n_0_[14]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_42,
      Q => \FSM_onehot_rx_state_reg_n_0_[15]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_41,
      Q => \FSM_onehot_rx_state_reg_n_0_[16]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_40,
      Q => nxt_rd,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => nxt_rd,
      Q => nxt_timestamp,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_56,
      Q => \FSM_onehot_rx_state_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_55,
      Q => \FSM_onehot_rx_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_54,
      Q => \FSM_onehot_rx_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_53,
      Q => \FSM_onehot_rx_state_reg_n_0_[4]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_52,
      Q => \FSM_onehot_rx_state_reg_n_0_[5]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_51,
      Q => \FSM_onehot_rx_state_reg_n_0_[6]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_50,
      Q => \FSM_onehot_rx_state_reg_n_0_[7]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_49,
      Q => \FSM_onehot_rx_state_reg_n_0_[8]\,
      R => SR(0)
    );
\FSM_onehot_rx_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_48,
      Q => \FSM_onehot_rx_state_reg_n_0_[9]\,
      R => SR(0)
    );
\adr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_39,
      Q => \^unisim_ram0\(0),
      R => SR(0)
    );
\adr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_38,
      Q => \^unisim_ram0\(1),
      R => SR(0)
    );
\adr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_37,
      Q => \^unisim_ram0\(2),
      R => SR(0)
    );
\adr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_36,
      Q => \^unisim_ram0\(3),
      R => SR(0)
    );
\adr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_35,
      Q => \^unisim_ram0\(4),
      R => SR(0)
    );
\adr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_34,
      Q => \^unisim_ram0\(5),
      R => SR(0)
    );
\adr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_33,
      Q => \^unisim_ram0\(6),
      R => SR(0)
    );
\adr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_32,
      Q => adr_A(7),
      R => SR(0)
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry_n_7\,
      Q => clk_cnt_reg(0),
      R => SR(0)
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__1_n_5\,
      Q => clk_cnt_reg(10),
      R => SR(0)
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__1_n_4\,
      Q => clk_cnt_reg(11),
      R => SR(0)
    );
\clk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__2_n_7\,
      Q => clk_cnt_reg(12),
      R => SR(0)
    );
\clk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__2_n_6\,
      Q => clk_cnt_reg(13),
      R => SR(0)
    );
\clk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__2_n_5\,
      Q => clk_cnt_reg(14),
      R => SR(0)
    );
\clk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__2_n_4\,
      Q => clk_cnt_reg(15),
      R => SR(0)
    );
\clk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__3_n_7\,
      Q => clk_cnt_reg(16),
      R => SR(0)
    );
\clk_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__3_n_6\,
      Q => clk_cnt_reg(17),
      R => SR(0)
    );
\clk_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__3_n_5\,
      Q => clk_cnt_reg(18),
      R => SR(0)
    );
\clk_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__3_n_4\,
      Q => clk_cnt_reg(19),
      R => SR(0)
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry_n_6\,
      Q => clk_cnt_reg(1),
      R => SR(0)
    );
\clk_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__4_n_7\,
      Q => clk_cnt_reg(20),
      R => SR(0)
    );
\clk_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__4_n_6\,
      Q => clk_cnt_reg(21),
      R => SR(0)
    );
\clk_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__4_n_5\,
      Q => clk_cnt_reg(22),
      R => SR(0)
    );
\clk_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__4_n_4\,
      Q => clk_cnt_reg(23),
      R => SR(0)
    );
\clk_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__5_n_7\,
      Q => clk_cnt_reg(24),
      R => SR(0)
    );
\clk_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__5_n_6\,
      Q => clk_cnt_reg(25),
      R => SR(0)
    );
\clk_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__5_n_5\,
      Q => clk_cnt_reg(26),
      R => SR(0)
    );
\clk_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__5_n_4\,
      Q => clk_cnt_reg(27),
      R => SR(0)
    );
\clk_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__6_n_7\,
      Q => clk_cnt_reg(28),
      R => SR(0)
    );
\clk_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__6_n_6\,
      Q => clk_cnt_reg(29),
      R => SR(0)
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry_n_5\,
      Q => clk_cnt_reg(2),
      R => SR(0)
    );
\clk_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__6_n_5\,
      Q => clk_cnt_reg(30),
      R => SR(0)
    );
\clk_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__6_n_4\,
      Q => clk_cnt_reg(31),
      R => SR(0)
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry_n_4\,
      Q => clk_cnt_reg(3),
      R => SR(0)
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__0_n_7\,
      Q => clk_cnt_reg(4),
      R => SR(0)
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__0_n_6\,
      Q => clk_cnt_reg(5),
      R => SR(0)
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__0_n_5\,
      Q => clk_cnt_reg(6),
      R => SR(0)
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__0_n_4\,
      Q => clk_cnt_reg(7),
      R => SR(0)
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__1_n_7\,
      Q => clk_cnt_reg(8),
      R => SR(0)
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_/i_/i__carry__1_n_6\,
      Q => clk_cnt_reg(9),
      R => SR(0)
    );
\data32[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(0),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(0),
      O => \data32[0]_i_2_n_0\
    );
\data32[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(10),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(10),
      O => \data32[10]_i_2_n_0\
    );
\data32[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(11),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(11),
      O => \data32[11]_i_3_n_0\
    );
\data32[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(12),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(12),
      O => \data32[12]_i_2_n_0\
    );
\data32[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(13),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(13),
      O => \data32[13]_i_2_n_0\
    );
\data32[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(14),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(14),
      O => \data32[14]_i_2_n_0\
    );
\data32[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(15),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(15),
      O => \data32[15]_i_3_n_0\
    );
\data32[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(16),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(16),
      O => \data32[16]_i_2_n_0\
    );
\data32[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(17),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(17),
      O => \data32[17]_i_2_n_0\
    );
\data32[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(18),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(18),
      O => \data32[18]_i_2_n_0\
    );
\data32[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(19),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(19),
      O => \data32[19]_i_3_n_0\
    );
\data32[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(1),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(1),
      O => \data32[1]_i_2_n_0\
    );
\data32[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(20),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(20),
      O => \data32[20]_i_2_n_0\
    );
\data32[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(21),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(21),
      O => \data32[21]_i_2_n_0\
    );
\data32[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(22),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(22),
      O => \data32[22]_i_2_n_0\
    );
\data32[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(23),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(23),
      O => \data32[23]_i_3_n_0\
    );
\data32[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(24),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(24),
      O => \data32[24]_i_2_n_0\
    );
\data32[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(25),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(25),
      O => \data32[25]_i_2_n_0\
    );
\data32[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(26),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(26),
      O => \data32[26]_i_2_n_0\
    );
\data32[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(27),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(27),
      O => \data32[27]_i_3_n_0\
    );
\data32[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(28),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(28),
      O => \data32[28]_i_2_n_0\
    );
\data32[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(29),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(29),
      O => \data32[29]_i_2_n_0\
    );
\data32[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(2),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(2),
      O => \data32[2]_i_2_n_0\
    );
\data32[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(30),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(30),
      O => \data32[30]_i_2_n_0\
    );
\data32[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8A80"
    )
        port map (
      I0 => nxt_timestamp,
      I1 => DOADO(31),
      I2 => adr_A(7),
      I3 => UNISIM_RAM0_0(31),
      I4 => \data32[31]_i_4_n_0\,
      O => \data32[31]_i_3_n_0\
    );
\data32[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[4]\,
      I1 => nxt_rd,
      I2 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I3 => nxt_wr,
      I4 => \FSM_onehot_rx_state[0]_i_5_n_0\,
      I5 => \FSM_onehot_rx_state[18]_i_4_n_0\,
      O => \data32[31]_i_4_n_0\
    );
\data32[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(3),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(3),
      O => \data32[3]_i_3_n_0\
    );
\data32[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(4),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(4),
      O => \data32[4]_i_2_n_0\
    );
\data32[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(5),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(5),
      O => \data32[5]_i_2_n_0\
    );
\data32[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(6),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(6),
      O => \data32[6]_i_2_n_0\
    );
\data32[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(7),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(7),
      O => \data32[7]_i_3_n_0\
    );
\data32[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(8),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(8),
      O => \data32[8]_i_2_n_0\
    );
\data32[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \data32[31]_i_4_n_0\,
      I1 => nxt_timestamp,
      I2 => DOADO(9),
      I3 => adr_A(7),
      I4 => UNISIM_RAM0_0(9),
      O => \data32[9]_i_2_n_0\
    );
\data32_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_31,
      Q => \^q\(0),
      R => SR(0)
    );
\data32_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_21,
      Q => \^q\(10),
      R => SR(0)
    );
\data32_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_20,
      Q => \^q\(11),
      R => SR(0)
    );
\data32_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_19,
      Q => \^q\(12),
      R => SR(0)
    );
\data32_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_18,
      Q => \^q\(13),
      R => SR(0)
    );
\data32_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_17,
      Q => \^q\(14),
      R => SR(0)
    );
\data32_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_16,
      Q => \^q\(15),
      R => SR(0)
    );
\data32_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_15,
      Q => \^q\(16),
      R => SR(0)
    );
\data32_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_14,
      Q => \^q\(17),
      R => SR(0)
    );
\data32_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_13,
      Q => \^q\(18),
      R => SR(0)
    );
\data32_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_12,
      Q => \^q\(19),
      R => SR(0)
    );
\data32_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_30,
      Q => \^q\(1),
      R => SR(0)
    );
\data32_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_11,
      Q => \^q\(20),
      R => SR(0)
    );
\data32_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_10,
      Q => \^q\(21),
      R => SR(0)
    );
\data32_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_9,
      Q => \^q\(22),
      R => SR(0)
    );
\data32_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_8,
      Q => \^q\(23),
      R => SR(0)
    );
\data32_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_7,
      Q => \^q\(24),
      R => SR(0)
    );
\data32_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_6,
      Q => \^q\(25),
      R => SR(0)
    );
\data32_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_5,
      Q => \^q\(26),
      R => SR(0)
    );
\data32_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_4,
      Q => \^q\(27),
      R => SR(0)
    );
\data32_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_3,
      Q => \^q\(28),
      R => SR(0)
    );
\data32_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_2,
      Q => \^q\(29),
      R => SR(0)
    );
\data32_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_29,
      Q => \^q\(2),
      R => SR(0)
    );
\data32_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_1,
      Q => \^q\(30),
      R => SR(0)
    );
\data32_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_0,
      Q => \^q\(31),
      R => SR(0)
    );
\data32_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_28,
      Q => \^q\(3),
      R => SR(0)
    );
\data32_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_27,
      Q => \^q\(4),
      R => SR(0)
    );
\data32_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_26,
      Q => \^q\(5),
      R => SR(0)
    );
\data32_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_25,
      Q => \^q\(6),
      R => SR(0)
    );
\data32_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_24,
      Q => \^q\(7),
      R => SR(0)
    );
\data32_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_23,
      Q => \^q\(8),
      R => SR(0)
    );
\data32_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_22,
      Q => \^q\(9),
      R => SR(0)
    );
enc_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => ENCODE_n_4,
      Q => enc_wr,
      R => '0'
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_/i_/i__carry_n_0\,
      CO(2) => \i_/i_/i__carry_n_1\,
      CO(1) => \i_/i_/i__carry_n_2\,
      CO(0) => \i_/i_/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3 downto 1) => clk_cnt_reg(3 downto 1),
      S(0) => \i__carry_i_1_n_0\
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CO(3) => \i_/i_/i__carry__0_n_0\,
      CO(2) => \i_/i_/i__carry__0_n_1\,
      CO(1) => \i_/i_/i__carry__0_n_2\,
      CO(0) => \i_/i_/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__0_n_4\,
      O(2) => \i_/i_/i__carry__0_n_5\,
      O(1) => \i_/i_/i__carry__0_n_6\,
      O(0) => \i_/i_/i__carry__0_n_7\,
      S(3 downto 0) => clk_cnt_reg(7 downto 4)
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CO(3) => \i_/i_/i__carry__1_n_0\,
      CO(2) => \i_/i_/i__carry__1_n_1\,
      CO(1) => \i_/i_/i__carry__1_n_2\,
      CO(0) => \i_/i_/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__1_n_4\,
      O(2) => \i_/i_/i__carry__1_n_5\,
      O(1) => \i_/i_/i__carry__1_n_6\,
      O(0) => \i_/i_/i__carry__1_n_7\,
      S(3 downto 0) => clk_cnt_reg(11 downto 8)
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CO(3) => \i_/i_/i__carry__2_n_0\,
      CO(2) => \i_/i_/i__carry__2_n_1\,
      CO(1) => \i_/i_/i__carry__2_n_2\,
      CO(0) => \i_/i_/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__2_n_4\,
      O(2) => \i_/i_/i__carry__2_n_5\,
      O(1) => \i_/i_/i__carry__2_n_6\,
      O(0) => \i_/i_/i__carry__2_n_7\,
      S(3 downto 0) => clk_cnt_reg(15 downto 12)
    );
\i_/i_/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__2_n_0\,
      CO(3) => \i_/i_/i__carry__3_n_0\,
      CO(2) => \i_/i_/i__carry__3_n_1\,
      CO(1) => \i_/i_/i__carry__3_n_2\,
      CO(0) => \i_/i_/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__3_n_4\,
      O(2) => \i_/i_/i__carry__3_n_5\,
      O(1) => \i_/i_/i__carry__3_n_6\,
      O(0) => \i_/i_/i__carry__3_n_7\,
      S(3 downto 0) => clk_cnt_reg(19 downto 16)
    );
\i_/i_/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__3_n_0\,
      CO(3) => \i_/i_/i__carry__4_n_0\,
      CO(2) => \i_/i_/i__carry__4_n_1\,
      CO(1) => \i_/i_/i__carry__4_n_2\,
      CO(0) => \i_/i_/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__4_n_4\,
      O(2) => \i_/i_/i__carry__4_n_5\,
      O(1) => \i_/i_/i__carry__4_n_6\,
      O(0) => \i_/i_/i__carry__4_n_7\,
      S(3 downto 0) => clk_cnt_reg(23 downto 20)
    );
\i_/i_/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__4_n_0\,
      CO(3) => \i_/i_/i__carry__5_n_0\,
      CO(2) => \i_/i_/i__carry__5_n_1\,
      CO(1) => \i_/i_/i__carry__5_n_2\,
      CO(0) => \i_/i_/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__5_n_4\,
      O(2) => \i_/i_/i__carry__5_n_5\,
      O(1) => \i_/i_/i__carry__5_n_6\,
      O(0) => \i_/i_/i__carry__5_n_7\,
      S(3 downto 0) => clk_cnt_reg(27 downto 24)
    );
\i_/i_/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__5_n_0\,
      CO(3) => \NLW_i_/i_/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__6_n_1\,
      CO(1) => \i_/i_/i__carry__6_n_2\,
      CO(0) => \i_/i_/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__6_n_4\,
      O(2) => \i_/i_/i__carry__6_n_5\,
      O(1) => \i_/i_/i__carry__6_n_6\,
      O(0) => \i_/i_/i__carry__6_n_7\,
      S(3 downto 0) => clk_cnt_reg(31 downto 28)
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt_reg(0),
      O => \i__carry_i_1_n_0\
    );
\nxt_char_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000555F55FF"
    )
        port map (
      I0 => char_cnt(4),
      I1 => timestamp_enable,
      I2 => char_cnt(2),
      I3 => char_cnt(3),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => nxt_char_cnt(0)
    );
\nxt_char_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00575700"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(3),
      I2 => char_cnt(2),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      O => nxt_char_cnt(1)
    );
\nxt_char_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"154017C0"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(0),
      I2 => char_cnt(1),
      I3 => char_cnt(2),
      I4 => char_cnt(3),
      O => nxt_char_cnt(2)
    );
\nxt_char_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0330330023003300"
    )
        port map (
      I0 => timestamp_enable,
      I1 => char_cnt(4),
      I2 => char_cnt(0),
      I3 => char_cnt(3),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => nxt_char_cnt(3)
    );
\nxt_char_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111558A000000"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(2),
      I2 => timestamp_enable,
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => char_cnt(4),
      O => nxt_char_cnt(4)
    );
\nxt_char_cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => char_cnt(4),
      I1 => sendstring,
      I2 => char_cnt(3),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => \nxt_char_cnt[4]_i_3_n_0\
    );
\nxt_char_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(0),
      Q => char_cnt(0),
      R => SR(0)
    );
\nxt_char_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(1),
      Q => char_cnt(1),
      R => SR(0)
    );
\nxt_char_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(2),
      Q => char_cnt(2),
      R => SR(0)
    );
\nxt_char_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(3),
      Q => char_cnt(3),
      R => SR(0)
    );
\nxt_char_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_2,
      D => nxt_char_cnt(4),
      Q => char_cnt(4),
      R => SR(0)
    );
\nxt_enc_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF04FF37"
    )
        port map (
      I0 => \nxt_enc_data_reg[0]_i_2_n_0\,
      I1 => char_cnt(3),
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[0]_i_3_n_0\,
      I4 => \nxt_enc_data[0]_i_4_n_0\,
      I5 => \nxt_enc_data[0]_i_5_n_0\,
      O => nxt_enc_data(0)
    );
\nxt_enc_data[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^q\(24),
      I1 => \nxt_enc_data[6]_i_22_n_0\,
      I2 => char_cnt(0),
      I3 => \^q\(28),
      I4 => \nxt_enc_data[6]_i_23_n_0\,
      O => \nxt_enc_data[0]_i_10_n_0\
    );
\nxt_enc_data[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FFFF1FE00000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(17),
      I2 => \^q\(19),
      I3 => \^q\(16),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[0]_i_20_n_0\,
      O => \nxt_enc_data[0]_i_11_n_0\
    );
\nxt_enc_data[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A80002AA"
    )
        port map (
      I0 => char_cnt(0),
      I1 => \^unisim_ram0\(6),
      I2 => \^unisim_ram0\(5),
      I3 => adr_A(7),
      I4 => \^unisim_ram0\(4),
      O => \nxt_enc_data[0]_i_12_n_0\
    );
\nxt_enc_data[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAABFF"
    )
        port map (
      I0 => char_cnt(0),
      I1 => \^unisim_ram0\(2),
      I2 => \^unisim_ram0\(1),
      I3 => \^unisim_ram0\(3),
      I4 => \^unisim_ram0\(0),
      O => \nxt_enc_data[0]_i_13_n_0\
    );
\nxt_enc_data[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(4),
      O => \nxt_enc_data[0]_i_14_n_0\
    );
\nxt_enc_data[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5541004100415541"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(16),
      I2 => \nxt_enc_data[6]_i_18_n_0\,
      I3 => char_cnt(0),
      I4 => timestamp(12),
      I5 => \nxt_enc_data[6]_i_17_n_0\,
      O => \nxt_enc_data[0]_i_15_n_0\
    );
\nxt_enc_data[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F6F6F0FFFFF0F"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_16_n_0\,
      I1 => timestamp(4),
      I2 => char_cnt(1),
      I3 => timestamp(8),
      I4 => \nxt_enc_data[6]_i_15_n_0\,
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_16_n_0\
    );
\nxt_enc_data[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(3),
      I1 => timestamp(2),
      I2 => timestamp(1),
      O => \nxt_enc_data[0]_i_17_n_0\
    );
\nxt_enc_data[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(2),
      I2 => char_cnt(4),
      O => \nxt_enc_data[0]_i_18_n_0\
    );
\nxt_enc_data[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(2),
      O => \nxt_enc_data[0]_i_19_n_0\
    );
\nxt_enc_data[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(21),
      I2 => \^q\(23),
      I3 => \^q\(20),
      O => \nxt_enc_data[0]_i_20_n_0\
    );
\nxt_enc_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABAAABABAB"
    )
        port map (
      I0 => char_cnt(4),
      I1 => \nxt_enc_data[0]_i_8_n_0\,
      I2 => \nxt_enc_data[0]_i_9_n_0\,
      I3 => \nxt_enc_data[6]_i_12_n_0\,
      I4 => \nxt_enc_data[6]_i_11_n_0\,
      I5 => timestamp(28),
      O => \nxt_enc_data[0]_i_3_n_0\
    );
\nxt_enc_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FEF2CEC23E320E0"
    )
        port map (
      I0 => \nxt_enc_data[0]_i_10_n_0\,
      I1 => char_cnt(1),
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[0]_i_11_n_0\,
      I4 => \nxt_enc_data[0]_i_12_n_0\,
      I5 => \nxt_enc_data[0]_i_13_n_0\,
      O => \nxt_enc_data[0]_i_4_n_0\
    );
\nxt_enc_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10101010FF1010"
    )
        port map (
      I0 => \nxt_enc_data[0]_i_14_n_0\,
      I1 => \nxt_enc_data[0]_i_15_n_0\,
      I2 => \nxt_enc_data[0]_i_16_n_0\,
      I3 => \nxt_enc_data[0]_i_17_n_0\,
      I4 => \nxt_enc_data[0]_i_18_n_0\,
      I5 => timestamp(0),
      O => \nxt_enc_data[0]_i_5_n_0\
    );
\nxt_enc_data[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^q\(8),
      I1 => \nxt_enc_data[6]_i_25_n_0\,
      I2 => char_cnt(0),
      I3 => \^q\(12),
      I4 => \nxt_enc_data[6]_i_26_n_0\,
      O => \nxt_enc_data[0]_i_6_n_0\
    );
\nxt_enc_data[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F90909F9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \nxt_enc_data[6]_i_28_n_0\,
      I2 => char_cnt(0),
      I3 => \^q\(0),
      I4 => \nxt_enc_data[6]_i_27_n_0\,
      O => \nxt_enc_data[0]_i_7_n_0\
    );
\nxt_enc_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008800880080808"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(20),
      I3 => timestamp(23),
      I4 => timestamp(22),
      I5 => timestamp(21),
      O => \nxt_enc_data[0]_i_8_n_0\
    );
\nxt_enc_data[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBBBBBAAAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[0]_i_19_n_0\,
      I1 => timestamp(24),
      I2 => timestamp(25),
      I3 => timestamp(26),
      I4 => timestamp(27),
      I5 => \nxt_enc_data[3]_i_11_n_0\,
      O => \nxt_enc_data[0]_i_9_n_0\
    );
\nxt_enc_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFAAEFAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_2_n_0\,
      I1 => \nxt_enc_data[1]_i_3_n_0\,
      I2 => \nxt_enc_data[1]_i_4_n_0\,
      I3 => \nxt_enc_data[6]_i_7_n_0\,
      I4 => \nxt_enc_data[1]_i_5_n_0\,
      I5 => \nxt_enc_data[1]_i_6_n_0\,
      O => nxt_enc_data(1)
    );
\nxt_enc_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF08"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_6_n_0\,
      I1 => \^q\(17),
      I2 => \nxt_enc_data[1]_i_21_n_0\,
      I3 => \nxt_enc_data[1]_i_22_n_0\,
      I4 => \nxt_enc_data[1]_i_23_n_0\,
      I5 => \nxt_enc_data[1]_i_24_n_0\,
      O => \nxt_enc_data[1]_i_10_n_0\
    );
\nxt_enc_data[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA200"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(23),
      I2 => \^q\(20),
      I3 => \nxt_enc_data[3]_i_11_n_0\,
      I4 => \nxt_enc_data[1]_i_25_n_0\,
      I5 => \nxt_enc_data[1]_i_26_n_0\,
      O => \nxt_enc_data[1]_i_11_n_0\
    );
\nxt_enc_data[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CF7FFFF"
    )
        port map (
      I0 => \^unisim_ram0\(2),
      I1 => \^unisim_ram0\(3),
      I2 => \^unisim_ram0\(0),
      I3 => \^unisim_ram0\(1),
      I4 => char_cnt(1),
      O => \nxt_enc_data[1]_i_12_n_0\
    );
\nxt_enc_data[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA8888A8"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(6),
      I3 => \nxt_enc_data[2]_i_12_n_0\,
      I4 => \^unisim_ram0\(5),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_13_n_0\
    );
\nxt_enc_data[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_14_n_0\
    );
\nxt_enc_data[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEFEEEEEEEEE"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_27_n_0\,
      I1 => \nxt_enc_data[1]_i_28_n_0\,
      I2 => \nxt_enc_data[3]_i_11_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(7),
      I5 => \^q\(5),
      O => \nxt_enc_data[1]_i_15_n_0\
    );
\nxt_enc_data[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044F000004400"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_16_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(14),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[1]_i_29_n_0\,
      O => \nxt_enc_data[1]_i_16_n_0\
    );
\nxt_enc_data[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_30_n_0\,
      I1 => \nxt_enc_data[1]_i_31_n_0\,
      I2 => char_cnt(3),
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[1]_i_32_n_0\,
      I5 => \nxt_enc_data[6]_i_5_n_0\,
      O => \nxt_enc_data[1]_i_17_n_0\
    );
\nxt_enc_data[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80008080"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => timestamp(5),
      I3 => timestamp(4),
      I4 => timestamp(7),
      O => \nxt_enc_data[1]_i_18_n_0\
    );
\nxt_enc_data[1]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => timestamp(8),
      I1 => timestamp(11),
      O => \nxt_enc_data[1]_i_19_n_0\
    );
\nxt_enc_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303000300000200"
    )
        port map (
      I0 => timestamp(2),
      I1 => char_cnt(0),
      I2 => \nxt_enc_data[6]_i_7_n_0\,
      I3 => timestamp(3),
      I4 => timestamp(0),
      I5 => timestamp(1),
      O => \nxt_enc_data[1]_i_2_n_0\
    );
\nxt_enc_data[1]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(12),
      I3 => timestamp(15),
      I4 => timestamp(13),
      O => \nxt_enc_data[1]_i_20_n_0\
    );
\nxt_enc_data[1]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(16),
      O => \nxt_enc_data[1]_i_21_n_0\
    );
\nxt_enc_data[1]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(24),
      I3 => \^q\(27),
      I4 => \^q\(25),
      O => \nxt_enc_data[1]_i_22_n_0\
    );
\nxt_enc_data[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(28),
      I2 => \^q\(29),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(30),
      O => \nxt_enc_data[1]_i_23_n_0\
    );
\nxt_enc_data[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(22),
      I3 => \^q\(20),
      I4 => \^q\(23),
      I5 => \^q\(21),
      O => \nxt_enc_data[1]_i_24_n_0\
    );
\nxt_enc_data[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(16),
      I2 => \^q\(17),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(18),
      O => \nxt_enc_data[1]_i_25_n_0\
    );
\nxt_enc_data[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^q\(26),
      I3 => \^q\(24),
      I4 => \^q\(27),
      I5 => \^q\(25),
      O => \nxt_enc_data[1]_i_26_n_0\
    );
\nxt_enc_data[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0002000C000C00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^q\(8),
      I5 => \^q\(11),
      O => \nxt_enc_data[1]_i_27_n_0\
    );
\nxt_enc_data[1]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(12),
      I3 => \^q\(15),
      I4 => \^q\(13),
      O => \nxt_enc_data[1]_i_28_n_0\
    );
\nxt_enc_data[1]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(15),
      I2 => \^q\(12),
      O => \nxt_enc_data[1]_i_29_n_0\
    );
\nxt_enc_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8A00"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_19_n_0\,
      I1 => timestamp(16),
      I2 => timestamp(19),
      I3 => timestamp(17),
      I4 => \nxt_enc_data[6]_i_5_n_0\,
      I5 => \nxt_enc_data[1]_i_7_n_0\,
      O => \nxt_enc_data[1]_i_3_n_0\
    );
\nxt_enc_data[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808800808088808"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(21),
      I3 => timestamp(23),
      I4 => timestamp(20),
      I5 => timestamp(22),
      O => \nxt_enc_data[1]_i_30_n_0\
    );
\nxt_enc_data[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0C04000C000C"
    )
        port map (
      I0 => timestamp(30),
      I1 => char_cnt(0),
      I2 => char_cnt(1),
      I3 => timestamp(29),
      I4 => timestamp(28),
      I5 => timestamp(31),
      O => \nxt_enc_data[1]_i_31_n_0\
    );
\nxt_enc_data[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDFFDFDFDDDFDFD"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(25),
      I3 => timestamp(24),
      I4 => timestamp(27),
      I5 => timestamp(26),
      O => \nxt_enc_data[1]_i_32_n_0\
    );
\nxt_enc_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAAAAAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_8_n_0\,
      I1 => timestamp(13),
      I2 => timestamp(15),
      I3 => timestamp(12),
      I4 => timestamp(14),
      I5 => \nxt_enc_data[6]_i_12_n_0\,
      O => \nxt_enc_data[1]_i_4_n_0\
    );
\nxt_enc_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFE00FE"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_9_n_0\,
      I1 => \nxt_enc_data[1]_i_10_n_0\,
      I2 => \nxt_enc_data[1]_i_11_n_0\,
      I3 => \nxt_enc_data[1]_i_12_n_0\,
      I4 => \nxt_enc_data[1]_i_13_n_0\,
      I5 => char_cnt(3),
      O => \nxt_enc_data[1]_i_5_n_0\
    );
\nxt_enc_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FD00"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_14_n_0\,
      I1 => \nxt_enc_data[1]_i_15_n_0\,
      I2 => \nxt_enc_data[1]_i_16_n_0\,
      I3 => char_cnt(3),
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[1]_i_17_n_0\,
      O => \nxt_enc_data[1]_i_6_n_0\
    );
\nxt_enc_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAAAEA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_18_n_0\,
      I1 => \nxt_enc_data[3]_i_11_n_0\,
      I2 => timestamp(10),
      I3 => \nxt_enc_data[1]_i_19_n_0\,
      I4 => timestamp(9),
      I5 => \nxt_enc_data[1]_i_20_n_0\,
      O => \nxt_enc_data[1]_i_7_n_0\
    );
\nxt_enc_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFFFFFF0FF"
    )
        port map (
      I0 => timestamp(6),
      I1 => \nxt_enc_data[2]_i_28_n_0\,
      I2 => \nxt_enc_data[2]_i_26_n_0\,
      I3 => timestamp(18),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_8_n_0\
    );
\nxt_enc_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B0FFFFFFFF"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(31),
      I2 => \^q\(29),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_9_n_0\
    );
\nxt_enc_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF88B8"
    )
        port map (
      I0 => \nxt_enc_data_reg[2]_i_2_n_0\,
      I1 => char_cnt(3),
      I2 => \nxt_enc_data[2]_i_3_n_0\,
      I3 => \nxt_enc_data[2]_i_4_n_0\,
      I4 => char_cnt(4),
      I5 => \nxt_enc_data[2]_i_5_n_0\,
      O => nxt_enc_data(2)
    );
\nxt_enc_data[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F00088880000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_23_n_0\,
      I1 => \^q\(22),
      I2 => \nxt_enc_data[2]_i_24_n_0\,
      I3 => \^q\(26),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[2]_i_10_n_0\
    );
\nxt_enc_data[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \^unisim_ram0\(3),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(0),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \^unisim_ram0\(2),
      O => \nxt_enc_data[2]_i_11_n_0\
    );
\nxt_enc_data[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^unisim_ram0\(4),
      I1 => adr_A(7),
      O => \nxt_enc_data[2]_i_12_n_0\
    );
\nxt_enc_data[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088880000F000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_25_n_0\,
      I1 => timestamp(14),
      I2 => \nxt_enc_data[2]_i_26_n_0\,
      I3 => timestamp(18),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[2]_i_13_n_0\
    );
\nxt_enc_data[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF77FFFFFF77FF"
    )
        port map (
      I0 => timestamp(10),
      I1 => \nxt_enc_data[2]_i_27_n_0\,
      I2 => timestamp(6),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[2]_i_28_n_0\,
      O => \nxt_enc_data[2]_i_14_n_0\
    );
\nxt_enc_data[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => timestamp(2),
      I1 => timestamp(1),
      I2 => timestamp(3),
      I3 => timestamp(0),
      O => \nxt_enc_data[2]_i_15_n_0\
    );
\nxt_enc_data[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(4),
      O => \nxt_enc_data[2]_i_16_n_0\
    );
\nxt_enc_data[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(2),
      O => \nxt_enc_data[2]_i_17_n_0\
    );
\nxt_enc_data[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FB00000000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(15),
      I2 => \^q\(13),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(14),
      O => \nxt_enc_data[2]_i_18_n_0\
    );
\nxt_enc_data[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FFFFFFFFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(11),
      I2 => \^q\(9),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(10),
      O => \nxt_enc_data[2]_i_19_n_0\
    );
\nxt_enc_data[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(25),
      I2 => timestamp(24),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => timestamp(26),
      O => \nxt_enc_data[2]_i_20_n_0\
    );
\nxt_enc_data[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(20),
      O => \nxt_enc_data[2]_i_21_n_0\
    );
\nxt_enc_data[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => timestamp(31),
      I1 => timestamp(29),
      I2 => timestamp(28),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => timestamp(30),
      O => \nxt_enc_data[2]_i_22_n_0\
    );
\nxt_enc_data[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(23),
      I2 => \^q\(20),
      O => \nxt_enc_data[2]_i_23_n_0\
    );
\nxt_enc_data[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(27),
      I2 => \^q\(24),
      O => \nxt_enc_data[2]_i_24_n_0\
    );
\nxt_enc_data[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(13),
      I1 => timestamp(15),
      I2 => timestamp(12),
      O => \nxt_enc_data[2]_i_25_n_0\
    );
\nxt_enc_data[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(17),
      I1 => timestamp(19),
      I2 => timestamp(16),
      O => \nxt_enc_data[2]_i_26_n_0\
    );
\nxt_enc_data[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(9),
      I1 => timestamp(11),
      I2 => timestamp(8),
      O => \nxt_enc_data[2]_i_27_n_0\
    );
\nxt_enc_data[2]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => timestamp(5),
      I1 => timestamp(4),
      I2 => timestamp(7),
      O => \nxt_enc_data[2]_i_28_n_0\
    );
\nxt_enc_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAFFFF"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_8_n_0\,
      I1 => \nxt_enc_data[2]_i_9_n_0\,
      I2 => \nxt_enc_data[3]_i_6_n_0\,
      I3 => \^q\(18),
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[2]_i_10_n_0\,
      O => \nxt_enc_data[2]_i_3_n_0\
    );
\nxt_enc_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111011101111111"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[2]_i_11_n_0\,
      I2 => \nxt_enc_data[6]_i_12_n_0\,
      I3 => \^unisim_ram0\(6),
      I4 => \nxt_enc_data[2]_i_12_n_0\,
      I5 => \^unisim_ram0\(5),
      O => \nxt_enc_data[2]_i_4_n_0\
    );
\nxt_enc_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F444400000000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_13_n_0\,
      I1 => \nxt_enc_data[2]_i_14_n_0\,
      I2 => \nxt_enc_data[2]_i_15_n_0\,
      I3 => char_cnt(0),
      I4 => char_cnt(2),
      I5 => char_cnt(4),
      O => \nxt_enc_data[2]_i_5_n_0\
    );
\nxt_enc_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF80FFFFFFFF"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_16_n_0\,
      I1 => \^q\(6),
      I2 => \nxt_enc_data[3]_i_11_n_0\,
      I3 => \nxt_enc_data[2]_i_17_n_0\,
      I4 => \nxt_enc_data[2]_i_18_n_0\,
      I5 => \nxt_enc_data[2]_i_19_n_0\,
      O => \nxt_enc_data[2]_i_6_n_0\
    );
\nxt_enc_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAEAAAA"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_20_n_0\,
      I1 => timestamp(22),
      I2 => \nxt_enc_data[2]_i_21_n_0\,
      I3 => timestamp(21),
      I4 => \nxt_enc_data[3]_i_6_n_0\,
      I5 => \nxt_enc_data[2]_i_22_n_0\,
      O => \nxt_enc_data[2]_i_7_n_0\
    );
\nxt_enc_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FD00000000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(28),
      I2 => \^q\(29),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(30),
      O => \nxt_enc_data[2]_i_8_n_0\
    );
\nxt_enc_data[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => \^q\(19),
      O => \nxt_enc_data[2]_i_9_n_0\
    );
\nxt_enc_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF2F20"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_2_n_0\,
      I1 => \nxt_enc_data[3]_i_3_n_0\,
      I2 => char_cnt(3),
      I3 => \nxt_enc_data_reg[3]_i_4_n_0\,
      I4 => char_cnt(4),
      I5 => \nxt_enc_data[3]_i_5_n_0\,
      O => nxt_enc_data(3)
    );
\nxt_enc_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF02FFFFFF"
    )
        port map (
      I0 => timestamp(31),
      I1 => timestamp(29),
      I2 => timestamp(30),
      I3 => char_cnt(2),
      I4 => char_cnt(0),
      I5 => char_cnt(1),
      O => \nxt_enc_data[3]_i_10_n_0\
    );
\nxt_enc_data[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      O => \nxt_enc_data[3]_i_11_n_0\
    );
\nxt_enc_data[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timestamp(25),
      I1 => timestamp(26),
      O => \nxt_enc_data[3]_i_12_n_0\
    );
\nxt_enc_data[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F0F800F800F800"
    )
        port map (
      I0 => adr_A(7),
      I1 => \nxt_enc_data[3]_i_21_n_0\,
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^unisim_ram0\(3),
      I5 => \nxt_enc_data[3]_i_22_n_0\,
      O => \nxt_enc_data[3]_i_13_n_0\
    );
\nxt_enc_data[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_23_n_0\,
      I1 => \nxt_enc_data[3]_i_24_n_0\,
      I2 => \nxt_enc_data[3]_i_25_n_0\,
      I3 => \nxt_enc_data[3]_i_6_n_0\,
      I4 => \^q\(19),
      I5 => \nxt_enc_data[3]_i_26_n_0\,
      O => \nxt_enc_data[3]_i_14_n_0\
    );
\nxt_enc_data[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080008080808"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[3]_i_15_n_0\
    );
\nxt_enc_data[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000080"
    )
        port map (
      I0 => timestamp(7),
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => timestamp(5),
      I4 => timestamp(6),
      I5 => \nxt_enc_data[3]_i_27_n_0\,
      O => \nxt_enc_data[3]_i_16_n_0\
    );
\nxt_enc_data[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDFDDDDDDDDD"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => timestamp(15),
      I3 => timestamp(14),
      I4 => timestamp(13),
      I5 => \nxt_enc_data[6]_i_12_n_0\,
      O => \nxt_enc_data[3]_i_17_n_0\
    );
\nxt_enc_data[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timestamp(17),
      I1 => timestamp(18),
      O => \nxt_enc_data[3]_i_18_n_0\
    );
\nxt_enc_data[3]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[3]_i_19_n_0\
    );
\nxt_enc_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0008"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_6_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \nxt_enc_data[3]_i_7_n_0\,
      I5 => \nxt_enc_data[3]_i_8_n_0\,
      O => \nxt_enc_data[3]_i_2_n_0\
    );
\nxt_enc_data[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^q\(11),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^q\(9),
      I5 => \^q\(10),
      O => \nxt_enc_data[3]_i_20_n_0\
    );
\nxt_enc_data[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^unisim_ram0\(5),
      I1 => \^unisim_ram0\(6),
      O => \nxt_enc_data[3]_i_21_n_0\
    );
\nxt_enc_data[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^unisim_ram0\(1),
      I1 => \^unisim_ram0\(2),
      O => \nxt_enc_data[3]_i_22_n_0\
    );
\nxt_enc_data[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(31),
      I3 => \^q\(29),
      I4 => \^q\(30),
      O => \nxt_enc_data[3]_i_23_n_0\
    );
\nxt_enc_data[3]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(27),
      I3 => \^q\(25),
      I4 => \^q\(26),
      O => \nxt_enc_data[3]_i_24_n_0\
    );
\nxt_enc_data[3]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(18),
      O => \nxt_enc_data[3]_i_25_n_0\
    );
\nxt_enc_data[3]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^q\(23),
      I3 => \^q\(21),
      I4 => \^q\(22),
      O => \nxt_enc_data[3]_i_26_n_0\
    );
\nxt_enc_data[3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => timestamp(10),
      I1 => timestamp(9),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => timestamp(11),
      O => \nxt_enc_data[3]_i_27_n_0\
    );
\nxt_enc_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D000D0D0D"
    )
        port map (
      I0 => timestamp(23),
      I1 => \nxt_enc_data[3]_i_9_n_0\,
      I2 => \nxt_enc_data[3]_i_10_n_0\,
      I3 => timestamp(27),
      I4 => \nxt_enc_data[3]_i_11_n_0\,
      I5 => \nxt_enc_data[3]_i_12_n_0\,
      O => \nxt_enc_data[3]_i_3_n_0\
    );
\nxt_enc_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABABABABAB"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_15_n_0\,
      I1 => \nxt_enc_data[3]_i_16_n_0\,
      I2 => \nxt_enc_data[3]_i_17_n_0\,
      I3 => \nxt_enc_data[3]_i_18_n_0\,
      I4 => timestamp(19),
      I5 => \nxt_enc_data[3]_i_19_n_0\,
      O => \nxt_enc_data[3]_i_5_n_0\
    );
\nxt_enc_data[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[3]_i_6_n_0\
    );
\nxt_enc_data[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \nxt_enc_data[3]_i_7_n_0\
    );
\nxt_enc_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000010"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(13),
      I2 => \^q\(15),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \nxt_enc_data[3]_i_20_n_0\,
      O => \nxt_enc_data[3]_i_8_n_0\
    );
\nxt_enc_data[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(22),
      I3 => timestamp(21),
      O => \nxt_enc_data[3]_i_9_n_0\
    );
\nxt_enc_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFEFFAAAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[5]_i_2_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => \nxt_enc_data[4]_i_2_n_0\,
      I3 => \nxt_enc_data[6]_i_5_n_0\,
      I4 => \nxt_enc_data[6]_i_6_n_0\,
      I5 => \nxt_enc_data[6]_i_7_n_0\,
      O => nxt_enc_data(4)
    );
\nxt_enc_data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[4]_i_3_n_0\,
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[6]_i_10_n_0\,
      O => \nxt_enc_data[4]_i_2_n_0\
    );
\nxt_enc_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555CCC0FFFF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_19_n_0\,
      I1 => adr_A(7),
      I2 => \^unisim_ram0\(5),
      I3 => \^unisim_ram0\(6),
      I4 => char_cnt(0),
      I5 => char_cnt(1),
      O => \nxt_enc_data[4]_i_3_n_0\
    );
\nxt_enc_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFFAAAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[5]_i_2_n_0\,
      I1 => \nxt_enc_data[6]_i_3_n_0\,
      I2 => \nxt_enc_data[6]_i_4_n_0\,
      I3 => \nxt_enc_data[6]_i_5_n_0\,
      I4 => \nxt_enc_data[6]_i_6_n_0\,
      I5 => \nxt_enc_data[6]_i_7_n_0\,
      O => nxt_enc_data(5)
    );
\nxt_enc_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000808080808"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[5]_i_2_n_0\
    );
\nxt_enc_data[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_20_n_0\,
      I1 => \nxt_enc_data[6]_i_21_n_0\,
      I2 => char_cnt(1),
      I3 => \nxt_enc_data[6]_i_22_n_0\,
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_23_n_0\,
      O => \nxt_enc_data[6]_i_10_n_0\
    );
\nxt_enc_data[6]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(30),
      I1 => timestamp(29),
      I2 => timestamp(31),
      O => \nxt_enc_data[6]_i_11_n_0\
    );
\nxt_enc_data[6]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[6]_i_12_n_0\
    );
\nxt_enc_data[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF00FF57FFFFFF"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(22),
      I2 => timestamp(21),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[6]_i_24_n_0\,
      O => \nxt_enc_data[6]_i_13_n_0\
    );
\nxt_enc_data[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_25_n_0\,
      I1 => \nxt_enc_data[6]_i_26_n_0\,
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[6]_i_27_n_0\,
      I5 => \nxt_enc_data[6]_i_28_n_0\,
      O => \nxt_enc_data[6]_i_14_n_0\
    );
\nxt_enc_data[6]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(10),
      I1 => timestamp(9),
      I2 => timestamp(11),
      O => \nxt_enc_data[6]_i_15_n_0\
    );
\nxt_enc_data[6]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(6),
      I1 => timestamp(5),
      I2 => timestamp(7),
      O => \nxt_enc_data[6]_i_16_n_0\
    );
\nxt_enc_data[6]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(14),
      I1 => timestamp(13),
      I2 => timestamp(15),
      O => \nxt_enc_data[6]_i_17_n_0\
    );
\nxt_enc_data[6]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(18),
      I1 => timestamp(17),
      I2 => timestamp(19),
      O => \nxt_enc_data[6]_i_18_n_0\
    );
\nxt_enc_data[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^unisim_ram0\(2),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(3),
      O => \nxt_enc_data[6]_i_19_n_0\
    );
\nxt_enc_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2F200000"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_3_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => \nxt_enc_data[6]_i_5_n_0\,
      I3 => \nxt_enc_data[6]_i_6_n_0\,
      I4 => \nxt_enc_data[6]_i_7_n_0\,
      I5 => \nxt_enc_data[6]_i_8_n_0\,
      O => nxt_enc_data(6)
    );
\nxt_enc_data[6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(18),
      I2 => \^q\(17),
      O => \nxt_enc_data[6]_i_20_n_0\
    );
\nxt_enc_data[6]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(21),
      I2 => \^q\(23),
      O => \nxt_enc_data[6]_i_21_n_0\
    );
\nxt_enc_data[6]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(25),
      I2 => \^q\(27),
      O => \nxt_enc_data[6]_i_22_n_0\
    );
\nxt_enc_data[6]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(29),
      I2 => \^q\(31),
      O => \nxt_enc_data[6]_i_23_n_0\
    );
\nxt_enc_data[6]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(26),
      I2 => timestamp(25),
      O => \nxt_enc_data[6]_i_24_n_0\
    );
\nxt_enc_data[6]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      I2 => \^q\(9),
      O => \nxt_enc_data[6]_i_25_n_0\
    );
\nxt_enc_data[6]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(13),
      I2 => \^q\(15),
      O => \nxt_enc_data[6]_i_26_n_0\
    );
\nxt_enc_data[6]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \nxt_enc_data[6]_i_27_n_0\
    );
\nxt_enc_data[6]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(7),
      O => \nxt_enc_data[6]_i_28_n_0\
    );
\nxt_enc_data[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[6]_i_9_n_0\,
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[6]_i_10_n_0\,
      O => \nxt_enc_data[6]_i_3_n_0\
    );
\nxt_enc_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0000000FF0000"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_11_n_0\,
      I1 => \nxt_enc_data[6]_i_12_n_0\,
      I2 => \nxt_enc_data[6]_i_13_n_0\,
      I3 => \nxt_enc_data[6]_i_14_n_0\,
      I4 => char_cnt(3),
      I5 => char_cnt(2),
      O => \nxt_enc_data[6]_i_4_n_0\
    );
\nxt_enc_data[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(0),
      I2 => char_cnt(4),
      O => \nxt_enc_data[6]_i_5_n_0\
    );
\nxt_enc_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_15_n_0\,
      I1 => \nxt_enc_data[6]_i_16_n_0\,
      I2 => \nxt_enc_data[6]_i_17_n_0\,
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[6]_i_18_n_0\,
      I5 => char_cnt(1),
      O => \nxt_enc_data[6]_i_6_n_0\
    );
\nxt_enc_data[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      O => \nxt_enc_data[6]_i_7_n_0\
    );
\nxt_enc_data[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080000000000"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[6]_i_8_n_0\
    );
\nxt_enc_data[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E0E000FF0000"
    )
        port map (
      I0 => \^unisim_ram0\(6),
      I1 => \^unisim_ram0\(5),
      I2 => adr_A(7),
      I3 => \nxt_enc_data[6]_i_19_n_0\,
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[6]_i_9_n_0\
    );
\nxt_enc_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(0),
      Q => \nxt_enc_data_reg_n_0_[0]\,
      R => '0'
    );
\nxt_enc_data_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[0]_i_6_n_0\,
      I1 => \nxt_enc_data[0]_i_7_n_0\,
      O => \nxt_enc_data_reg[0]_i_2_n_0\,
      S => char_cnt(1)
    );
\nxt_enc_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(1),
      Q => \nxt_enc_data_reg_n_0_[1]\,
      R => '0'
    );
\nxt_enc_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(2),
      Q => \nxt_enc_data_reg_n_0_[2]\,
      R => '0'
    );
\nxt_enc_data_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[2]_i_6_n_0\,
      I1 => \nxt_enc_data[2]_i_7_n_0\,
      O => \nxt_enc_data_reg[2]_i_2_n_0\,
      S => char_cnt(2)
    );
\nxt_enc_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(3),
      Q => \nxt_enc_data_reg_n_0_[3]\,
      R => '0'
    );
\nxt_enc_data_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[3]_i_13_n_0\,
      I1 => \nxt_enc_data[3]_i_14_n_0\,
      O => \nxt_enc_data_reg[3]_i_4_n_0\,
      S => char_cnt(2)
    );
\nxt_enc_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(4),
      Q => \nxt_enc_data_reg_n_0_[4]\,
      R => '0'
    );
\nxt_enc_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(5),
      Q => \nxt_enc_data_reg_n_0_[5]\,
      R => '0'
    );
\nxt_enc_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ENCODE_n_1,
      D => nxt_enc_data(6),
      Q => \nxt_enc_data_reg_n_0_[6]\,
      R => '0'
    );
sendstring_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => nxt_sendstring,
      Q => sendstring,
      R => SR(0)
    );
timestamp_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => DECODE_n_69,
      Q => timestamp_enable,
      R => SR(0)
    );
\timestamp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(0),
      Q => timestamp(0),
      R => SR(0)
    );
\timestamp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(10),
      Q => timestamp(10),
      R => SR(0)
    );
\timestamp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(11),
      Q => timestamp(11),
      R => SR(0)
    );
\timestamp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(12),
      Q => timestamp(12),
      R => SR(0)
    );
\timestamp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(13),
      Q => timestamp(13),
      R => SR(0)
    );
\timestamp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(14),
      Q => timestamp(14),
      R => SR(0)
    );
\timestamp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(15),
      Q => timestamp(15),
      R => SR(0)
    );
\timestamp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(16),
      Q => timestamp(16),
      R => SR(0)
    );
\timestamp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(17),
      Q => timestamp(17),
      R => SR(0)
    );
\timestamp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(18),
      Q => timestamp(18),
      R => SR(0)
    );
\timestamp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(19),
      Q => timestamp(19),
      R => SR(0)
    );
\timestamp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(1),
      Q => timestamp(1),
      R => SR(0)
    );
\timestamp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(20),
      Q => timestamp(20),
      R => SR(0)
    );
\timestamp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(21),
      Q => timestamp(21),
      R => SR(0)
    );
\timestamp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(22),
      Q => timestamp(22),
      R => SR(0)
    );
\timestamp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(23),
      Q => timestamp(23),
      R => SR(0)
    );
\timestamp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(24),
      Q => timestamp(24),
      R => SR(0)
    );
\timestamp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(25),
      Q => timestamp(25),
      R => SR(0)
    );
\timestamp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(26),
      Q => timestamp(26),
      R => SR(0)
    );
\timestamp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(27),
      Q => timestamp(27),
      R => SR(0)
    );
\timestamp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(28),
      Q => timestamp(28),
      R => SR(0)
    );
\timestamp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(29),
      Q => timestamp(29),
      R => SR(0)
    );
\timestamp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(2),
      Q => timestamp(2),
      R => SR(0)
    );
\timestamp_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(30),
      Q => timestamp(30),
      R => SR(0)
    );
\timestamp_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(31),
      Q => timestamp(31),
      R => SR(0)
    );
\timestamp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(3),
      Q => timestamp(3),
      R => SR(0)
    );
\timestamp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(4),
      Q => timestamp(4),
      R => SR(0)
    );
\timestamp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(5),
      Q => timestamp(5),
      R => SR(0)
    );
\timestamp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(6),
      Q => timestamp(6),
      R => SR(0)
    );
\timestamp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(7),
      Q => timestamp(7),
      R => SR(0)
    );
\timestamp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(8),
      Q => timestamp(8),
      R => SR(0)
    );
\timestamp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => nxt_timestamp,
      D => clk_cnt_reg(9),
      Q => timestamp(9),
      R => SR(0)
    );
wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => nxt_wr,
      Q => WEA(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_RX is
  port (
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK100MHZ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end SPI_RX;

architecture STRUCTURE of SPI_RX is
begin
\spi_rx_pure_vhdl_dd_gen.spi_rx_pure_vhdl_dd_inst\: entity work.spi_rx_pure_vhdl_dd
     port map (
      CLK100MHZ => CLK100MHZ,
      D(0) => D(0),
      E(31 downto 0) => E(31 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_TX is
  port (
    nxt_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_MOSI_O : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    CLK100MHZ_0 : in STD_LOGIC;
    CLK100MHZ_1 : in STD_LOGIC;
    CLK100MHZ_2 : in STD_LOGIC;
    CLK100MHZ_3 : in STD_LOGIC;
    CLK100MHZ_4 : in STD_LOGIC;
    CLK_SPI_O : in STD_LOGIC
  );
end SPI_TX;

architecture STRUCTURE of SPI_TX is
begin
\spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst\: entity work.spi_tx_pure_vhdl_dd
     port map (
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => CLK100MHZ_0,
      CLK100MHZ_1 => CLK100MHZ_1,
      CLK100MHZ_2 => CLK100MHZ_2,
      CLK100MHZ_3 => CLK100MHZ_3,
      CLK100MHZ_4 => CLK100MHZ_4,
      CLK_SPI_O => CLK_SPI_O,
      SPI_MOSI_O => SPI_MOSI_O,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      nxt_data(0) => nxt_data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocking_2 is
  port (
    \r_out_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_locked : out STD_LOGIC;
    UNISIM_RAM0 : out STD_LOGIC;
    O_buff_clkpixel : out STD_LOGIC;
    O_buff_clk5xpixel : out STD_LOGIC;
    mmcm_lock : in STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC
  );
end clocking_2;

architecture STRUCTURE of clocking_2 is
  signal \^o_buff_clkpixel\ : STD_LOGIC;
begin
  O_buff_clkpixel <= \^o_buff_clkpixel\;
clock_eng_1280_720A: entity work.clocking
     port map (
      I_unbuff_clk => I_unbuff_clk,
      O_buff_clkpixel => \^o_buff_clkpixel\
    );
clock_eng_1280_720B: entity work.\clocking__parameterized1\
     port map (
      E(31 downto 0) => E(31 downto 0),
      O_buff_clk5xpixel => O_buff_clk5xpixel,
      O_buff_clkpixel => \^o_buff_clkpixel\,
      UNISIM_RAM0 => UNISIM_RAM0,
      clk_locked => clk_locked,
      mmcm_lock => mmcm_lock,
      \r_out_reg[1]\ => \r_out_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dvid is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    e12_out : out STD_LOGIC;
    DATA_O : out STD_LOGIC;
    \hdmi_out_n[1]\ : out STD_LOGIC;
    \hdmi_out_n[0]\ : out STD_LOGIC;
    \hdmi_out_n[3]\ : out STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    \r_out_reg[1]\ : in STD_LOGIC;
    \r_out_reg[1]_0\ : in STD_LOGIC;
    CLK_I_X5 : in STD_LOGIC;
    RESET_I : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \queue_reg[15][vSync]\ : in STD_LOGIC;
    \queue_reg[15][hSync]\ : in STD_LOGIC
  );
end dvid;

architecture STRUCTURE of dvid is
  signal TDMS_encoder_blue_n_2 : STD_LOGIC;
  signal TDMS_encoder_blue_n_3 : STD_LOGIC;
  signal TDMS_encoder_blue_n_4 : STD_LOGIC;
  signal TDMS_encoder_blue_n_5 : STD_LOGIC;
  signal TDMS_encoder_green_n_0 : STD_LOGIC;
  signal TDMS_encoder_green_n_1 : STD_LOGIC;
  signal TDMS_encoder_green_n_2 : STD_LOGIC;
  signal TDMS_encoder_red_n_0 : STD_LOGIC;
  signal TDMS_encoder_red_n_1 : STD_LOGIC;
  signal TDMS_encoder_red_n_2 : STD_LOGIC;
  signal TDMS_encoder_red_n_3 : STD_LOGIC;
  signal latched_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_red : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
OSERDES_B: entity work.OSERDES_10BIT_WRAP
     port map (
      CLK_I_X5 => CLK_I_X5,
      O_buff_clkpixel => O_buff_clkpixel,
      Q(3 downto 2) => latched_blue(9 downto 8),
      Q(1) => latched_blue(2),
      Q(0) => latched_blue(0),
      RESET_I => RESET_I,
      \hdmi_out_n[0]\ => \hdmi_out_n[0]\
    );
OSERDES_CLK: entity work.OSERDES_10BIT_WRAP_1
     port map (
      CLK_I_X5 => CLK_I_X5,
      O_buff_clkpixel => O_buff_clkpixel,
      RESET_I => RESET_I,
      \hdmi_out_n[3]\ => \hdmi_out_n[3]\
    );
OSERDES_G: entity work.OSERDES_10BIT_WRAP_2
     port map (
      CLK_I_X5 => CLK_I_X5,
      DATA_I(3) => latched_green(9),
      DATA_I(2) => latched_red(8),
      DATA_I(1) => latched_green(0),
      DATA_I(0) => latched_green(2),
      O_buff_clkpixel => O_buff_clkpixel,
      RESET_I => RESET_I,
      \hdmi_out_n[1]\ => \hdmi_out_n[1]\
    );
OSERDES_R: entity work.OSERDES_10BIT_WRAP_3
     port map (
      CLK_I_X5 => CLK_I_X5,
      DATA_I(3 downto 2) => latched_red(9 downto 8),
      DATA_I(1) => latched_red(0),
      DATA_I(0) => latched_red(2),
      DATA_O => DATA_O,
      O_buff_clkpixel => O_buff_clkpixel,
      RESET_I => RESET_I
    );
TDMS_encoder_blue: entity work.TDMS_encoder
     port map (
      D(3) => TDMS_encoder_blue_n_2,
      D(2) => TDMS_encoder_blue_n_3,
      D(1) => TDMS_encoder_blue_n_4,
      D(0) => TDMS_encoder_blue_n_5,
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => Q(0),
      e12_out => e12_out,
      p_1_in(0) => p_1_in(0),
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][hSync]__0\(1 downto 0) => D(1 downto 0),
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\,
      \r_out_reg[1]\ => \r_out_reg[1]_0\
    );
TDMS_encoder_green: entity work.TDMS_encoder_4
     port map (
      D(2) => TDMS_encoder_green_n_0,
      D(1) => TDMS_encoder_green_n_1,
      D(0) => TDMS_encoder_green_n_2,
      O_buff_clkpixel => O_buff_clkpixel,
      p_1_in(0) => p_1_in(0),
      \r_out_reg[1]\ => \r_out_reg[1]_0\
    );
TDMS_encoder_red: entity work.TDMS_encoder_5
     port map (
      D(2) => TDMS_encoder_red_n_1,
      D(1) => TDMS_encoder_red_n_2,
      D(0) => TDMS_encoder_red_n_3,
      O_buff_clkpixel => O_buff_clkpixel,
      \latched_red_reg[8]\ => TDMS_encoder_red_n_0,
      p_1_in(0) => p_1_in(0),
      \r_out_reg[1]\ => \r_out_reg[1]\,
      \r_out_reg[1]_0\ => \r_out_reg[1]_0\
    );
\latched_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_blue_n_5,
      Q => latched_blue(0),
      R => '0'
    );
\latched_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_blue_n_4,
      Q => latched_blue(2),
      R => '0'
    );
\latched_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_blue_n_3,
      Q => latched_blue(8),
      R => '0'
    );
\latched_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_blue_n_2,
      Q => latched_blue(9),
      R => '0'
    );
\latched_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_green_n_2,
      Q => latched_green(0),
      R => '0'
    );
\latched_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_green_n_1,
      Q => latched_green(2),
      R => '0'
    );
\latched_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_green_n_0,
      Q => latched_green(9),
      R => '0'
    );
\latched_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_red_n_3,
      Q => latched_red(0),
      R => '0'
    );
\latched_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_red_n_2,
      Q => latched_red(2),
      R => '0'
    );
\latched_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_red_n_0,
      Q => latched_red(8),
      R => '0'
    );
\latched_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => TDMS_encoder_red_n_1,
      Q => latched_red(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA1 is
  port (
    TX_O_OBUF : out STD_LOGIC;
    clk_A : out STD_LOGIC;
    global_reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    mmcm_lock : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC;
    RX_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end FPGA1;

architecture STRUCTURE of FPGA1 is
  signal CLK_SPI_O : STD_LOGIC;
  signal DATA_A_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_B_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal SpiTx_n_1 : STD_LOGIC;
  signal WR_O : STD_LOGIC;
  signal \^clk_a\ : STD_LOGIC;
  signal clocking_1_inst_n_3 : STD_LOGIC;
  signal clocking_1_inst_n_4 : STD_LOGIC;
  signal clocking_1_inst_n_5 : STD_LOGIC;
  signal clocking_1_inst_n_6 : STD_LOGIC;
  signal clocking_1_inst_n_7 : STD_LOGIC;
  signal \^global_reset\ : STD_LOGIC;
  signal \^mmcm_lock\ : STD_LOGIC;
  signal \spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/nxt_data\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  clk_A <= \^clk_a\;
  global_reset <= \^global_reset\;
  mmcm_lock <= \^mmcm_lock\;
QLINK1: entity work.QLinkMaster
     port map (
      CLK => \^clk_a\,
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => \^mmcm_lock\,
      DOADO(31 downto 0) => DOADO(31 downto 0),
      Q(31 downto 0) => DATA_B_O(31 downto 0),
      RX_I(0) => RX_I(0),
      SR(0) => \^global_reset\,
      TX_O_OBUF => TX_O_OBUF,
      UNISIM_RAM0(6 downto 0) => \^q\(6 downto 0),
      UNISIM_RAM0_0(31 downto 0) => DATA_A_O(31 downto 0),
      WEA(0) => WR_O,
      clk_locked => clk_locked
    );
RAM_inst0: entity work.TD_RAM_36K_WRAP_6
     port map (
      CLK_SPI_O => CLK_SPI_O,
      Q(6 downto 0) => \^q\(6 downto 0),
      WEA(0) => WR_O,
      clk_A => \^clk_a\,
      \data32_reg[31]\(31 downto 0) => DATA_A_O(31 downto 0),
      \data32_reg[31]_0\(31 downto 0) => DATA_B_O(31 downto 0)
    );
SpiTx: entity work.SPI_TX
     port map (
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => clocking_1_inst_n_7,
      CLK100MHZ_1 => clocking_1_inst_n_3,
      CLK100MHZ_2 => clocking_1_inst_n_6,
      CLK100MHZ_3 => clocking_1_inst_n_5,
      CLK100MHZ_4 => clocking_1_inst_n_4,
      CLK_SPI_O => CLK_SPI_O,
      SPI_MOSI_O => SpiTx_n_1,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      nxt_data(0) => \spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/nxt_data\(3)
    );
clocking_1_inst: entity work.clocking_1
     port map (
      CLK100MHZ => CLK100MHZ,
      CLK100MHZ_0 => SpiTx_n_1,
      CLK_SPI_O => CLK_SPI_O,
      D(0) => D(0),
      I_unbuff_clk => I_unbuff_clk,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_MOSI_O => clocking_1_inst_n_3,
      SPI_MOSI_O_0 => clocking_1_inst_n_4,
      SPI_MOSI_O_1 => clocking_1_inst_n_5,
      SPI_MOSI_O_2 => clocking_1_inst_n_6,
      SPI_MOSI_O_3 => clocking_1_inst_n_7,
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      clk_A => \^clk_a\,
      clk_locked => clk_locked,
      global_reset => \^global_reset\,
      nxt_data(0) => \spi_tx_pure_vhdl_dd_gen.spi_tx_pure_vhdl_dd_inst/nxt_data\(3),
      tx_req_reg => \^mmcm_lock\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_driver is
  port (
    hdmi_out_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_out_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_out_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLUE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_out_reg[1]_2\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \queue_reg[15][vCounter]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O_buff_clkpixel : in STD_LOGIC;
    \r_out_reg[1]_3\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 23 downto 0 );
    UNISIM_RAM0_6 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_9 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_I_X5 : in STD_LOGIC;
    RESET_I : in STD_LOGIC
  );
end hdmi_driver;

architecture STRUCTURE of hdmi_driver is
  signal \^blue_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Inst_vga_gen_n_25 : STD_LOGIC;
  signal Inst_vga_gen_n_26 : STD_LOGIC;
  signal Inst_vga_gen_n_27 : STD_LOGIC;
  signal Inst_vga_gen_n_28 : STD_LOGIC;
  signal Inst_vga_gen_n_29 : STD_LOGIC;
  signal Inst_vga_gen_n_30 : STD_LOGIC;
  signal Inst_vga_gen_n_31 : STD_LOGIC;
  signal Inst_vga_gen_n_32 : STD_LOGIC;
  signal Inst_vga_gen_n_33 : STD_LOGIC;
  signal Inst_vga_gen_n_34 : STD_LOGIC;
  signal Inst_vga_gen_n_35 : STD_LOGIC;
  signal Inst_vga_gen_n_36 : STD_LOGIC;
  signal Inst_vga_gen_n_37 : STD_LOGIC;
  signal Inst_vga_gen_n_38 : STD_LOGIC;
  signal Inst_vga_gen_n_39 : STD_LOGIC;
  signal Inst_vga_gen_n_40 : STD_LOGIC;
  signal Inst_vga_gen_n_41 : STD_LOGIC;
  signal Inst_vga_gen_n_42 : STD_LOGIC;
  signal Inst_vga_gen_n_43 : STD_LOGIC;
  signal Inst_vga_gen_n_44 : STD_LOGIC;
  signal Inst_vga_gen_n_45 : STD_LOGIC;
  signal Inst_vga_gen_n_46 : STD_LOGIC;
  signal Inst_vga_gen_n_47 : STD_LOGIC;
  signal Inst_vga_gen_n_48 : STD_LOGIC;
  signal Inst_vga_gen_n_49 : STD_LOGIC;
  signal Inst_vga_gen_n_50 : STD_LOGIC;
  signal Inst_vga_gen_n_51 : STD_LOGIC;
  signal Inst_vga_gen_n_52 : STD_LOGIC;
  signal Inst_vga_gen_n_53 : STD_LOGIC;
  signal Inst_vga_gen_n_54 : STD_LOGIC;
  signal Inst_vga_gen_n_55 : STD_LOGIC;
  signal Inst_vga_gen_n_56 : STD_LOGIC;
  signal Inst_vga_gen_n_57 : STD_LOGIC;
  signal Inst_vga_gen_n_58 : STD_LOGIC;
  signal \TDMS_encoder_blue/e12_out\ : STD_LOGIC;
  signal \TDMS_encoder_blue/p_1_in\ : STD_LOGIC;
  signal blue_s : STD_LOGIC;
  signal clock_s : STD_LOGIC;
  signal green_s : STD_LOGIC;
  signal image_driver_inst_n_5 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \queue_reg[15][hSync]\ : STD_LOGIC;
  signal \queue_reg[15][vSync]\ : STD_LOGIC;
  signal red_s : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_blue : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_blue : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of OBUFDS_blue : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clock : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock : label is "OBUFDS";
  attribute box_type of OBUFDS_clock : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_green : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_green : label is "OBUFDS";
  attribute box_type of OBUFDS_green : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_red : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_red : label is "OBUFDS";
  attribute box_type of OBUFDS_red : label is "PRIMITIVE";
begin
  BLUE_O(0) <= \^blue_o\(0);
Inst_vga_gen: entity work.vga_gen
     port map (
      D(1) => Inst_vga_gen_n_57,
      D(0) => Inst_vga_gen_n_58,
      DI(3) => Inst_vga_gen_n_25,
      DI(2) => Inst_vga_gen_n_26,
      DI(1) => Inst_vga_gen_n_27,
      DI(0) => Inst_vga_gen_n_28,
      DOADO(23 downto 0) => DOADO(23 downto 0),
      O(3 downto 0) => O(3 downto 0),
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => \TDMS_encoder_blue/p_1_in\,
      S(0) => Inst_vga_gen_n_29,
      UNISIM_RAM0(3 downto 0) => UNISIM_RAM0_5(3 downto 0),
      UNISIM_RAM0_0(2 downto 0) => UNISIM_RAM0_6(2 downto 0),
      UNISIM_RAM0_1(3 downto 0) => UNISIM_RAM0_7(3 downto 0),
      UNISIM_RAM0_2(3 downto 0) => UNISIM_RAM0_8(3 downto 0),
      UNISIM_RAM0_3(2 downto 0) => UNISIM_RAM0_10(2 downto 0),
      e12_out => \TDMS_encoder_blue/e12_out\,
      p_1_in(0) => p_1_in(2),
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\,
      \r_out_reg[1]\(9 downto 0) => \r_out_reg[1]_2\(9 downto 0),
      \r_out_reg[1]_0\ => \queue_reg[15][vCounter]\(11),
      \r_out_reg[1]_1\ => \queue_reg[15][vCounter]\(10),
      \r_out_reg[1]_10\ => \queue_reg[15][vCounter]\(1),
      \r_out_reg[1]_11\ => \queue_reg[15][vCounter]\(0),
      \r_out_reg[1]_12\(0) => Inst_vga_gen_n_30,
      \r_out_reg[1]_13\(1) => Inst_vga_gen_n_31,
      \r_out_reg[1]_13\(0) => Inst_vga_gen_n_32,
      \r_out_reg[1]_14\(3) => Inst_vga_gen_n_33,
      \r_out_reg[1]_14\(2) => Inst_vga_gen_n_34,
      \r_out_reg[1]_14\(1) => Inst_vga_gen_n_35,
      \r_out_reg[1]_14\(0) => Inst_vga_gen_n_36,
      \r_out_reg[1]_15\(3) => Inst_vga_gen_n_37,
      \r_out_reg[1]_15\(2) => Inst_vga_gen_n_38,
      \r_out_reg[1]_15\(1) => Inst_vga_gen_n_39,
      \r_out_reg[1]_15\(0) => Inst_vga_gen_n_40,
      \r_out_reg[1]_16\(1) => Inst_vga_gen_n_41,
      \r_out_reg[1]_16\(0) => Inst_vga_gen_n_42,
      \r_out_reg[1]_17\(3) => Inst_vga_gen_n_43,
      \r_out_reg[1]_17\(2) => Inst_vga_gen_n_44,
      \r_out_reg[1]_17\(1) => Inst_vga_gen_n_45,
      \r_out_reg[1]_17\(0) => Inst_vga_gen_n_46,
      \r_out_reg[1]_18\(1) => Inst_vga_gen_n_47,
      \r_out_reg[1]_18\(0) => Inst_vga_gen_n_48,
      \r_out_reg[1]_19\(1) => Inst_vga_gen_n_49,
      \r_out_reg[1]_19\(0) => Inst_vga_gen_n_50,
      \r_out_reg[1]_2\ => \queue_reg[15][vCounter]\(9),
      \r_out_reg[1]_20\(3) => Inst_vga_gen_n_51,
      \r_out_reg[1]_20\(2) => Inst_vga_gen_n_52,
      \r_out_reg[1]_20\(1) => Inst_vga_gen_n_53,
      \r_out_reg[1]_20\(0) => Inst_vga_gen_n_54,
      \r_out_reg[1]_21\(1) => Inst_vga_gen_n_55,
      \r_out_reg[1]_21\(0) => Inst_vga_gen_n_56,
      \r_out_reg[1]_3\ => \queue_reg[15][vCounter]\(8),
      \r_out_reg[1]_4\ => \queue_reg[15][vCounter]\(7),
      \r_out_reg[1]_5\ => \queue_reg[15][vCounter]\(6),
      \r_out_reg[1]_6\ => \queue_reg[15][vCounter]\(5),
      \r_out_reg[1]_7\ => \queue_reg[15][vCounter]\(4),
      \r_out_reg[1]_8\ => \queue_reg[15][vCounter]\(3),
      \r_out_reg[1]_9\ => \queue_reg[15][vCounter]\(2)
    );
OBUFDS_blue: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => blue_s,
      O => hdmi_out_p(0),
      OB => hdmi_out_n(0)
    );
OBUFDS_clock: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clock_s,
      O => hdmi_out_p(3),
      OB => hdmi_out_n(3)
    );
OBUFDS_green: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => green_s,
      O => hdmi_out_p(1),
      OB => hdmi_out_n(1)
    );
OBUFDS_red: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => red_s,
      O => hdmi_out_p(2),
      OB => hdmi_out_n(2)
    );
dvid_1: entity work.dvid
     port map (
      CLK_I_X5 => CLK_I_X5,
      D(1) => Inst_vga_gen_n_57,
      D(0) => Inst_vga_gen_n_58,
      DATA_O => red_s,
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => \TDMS_encoder_blue/p_1_in\,
      RESET_I => RESET_I,
      e12_out => \TDMS_encoder_blue/e12_out\,
      \hdmi_out_n[0]\ => blue_s,
      \hdmi_out_n[1]\ => green_s,
      \hdmi_out_n[3]\ => clock_s,
      p_1_in(0) => p_1_in(2),
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\,
      \r_out_reg[1]\ => image_driver_inst_n_5,
      \r_out_reg[1]_0\ => \^blue_o\(0)
    );
image_driver_inst: entity work.image_driver
     port map (
      BLUE_O(0) => \^blue_o\(0),
      CO(0) => CO(0),
      DI(3) => Inst_vga_gen_n_25,
      DI(2) => Inst_vga_gen_n_26,
      DI(1) => Inst_vga_gen_n_27,
      DI(0) => Inst_vga_gen_n_28,
      O_buff_clkpixel => O_buff_clkpixel,
      S(3 downto 1) => S(2 downto 0),
      S(0) => Inst_vga_gen_n_29,
      UNISIM_RAM0(3 downto 2) => DI(1 downto 0),
      UNISIM_RAM0(1) => Inst_vga_gen_n_31,
      UNISIM_RAM0(0) => Inst_vga_gen_n_32,
      UNISIM_RAM0_0(3 downto 0) => UNISIM_RAM0(3 downto 0),
      UNISIM_RAM0_1(3 downto 0) => UNISIM_RAM0_0(3 downto 0),
      UNISIM_RAM0_2(1 downto 0) => UNISIM_RAM0_1(1 downto 0),
      UNISIM_RAM0_3(3 downto 2) => UNISIM_RAM0_2(1 downto 0),
      UNISIM_RAM0_3(1) => Inst_vga_gen_n_41,
      UNISIM_RAM0_3(0) => Inst_vga_gen_n_42,
      UNISIM_RAM0_4(3 downto 1) => UNISIM_RAM0_3(2 downto 0),
      UNISIM_RAM0_4(0) => Inst_vga_gen_n_30,
      UNISIM_RAM0_5(3 downto 0) => UNISIM_RAM0_4(3 downto 0),
      UNISIM_RAM0_6(2 downto 0) => UNISIM_RAM0_9(2 downto 0),
      UNISIM_RAM0_7(0) => UNISIM_RAM0_10(3),
      \e_reg[8]\ => image_driver_inst_n_5,
      p_1_in(0) => p_1_in(2),
      \queue_reg[15][hCounter][11]\(1) => Inst_vga_gen_n_55,
      \queue_reg[15][hCounter][11]\(0) => Inst_vga_gen_n_56,
      \queue_reg[15][hCounter][7]\(3) => Inst_vga_gen_n_51,
      \queue_reg[15][hCounter][7]\(2) => Inst_vga_gen_n_52,
      \queue_reg[15][hCounter][7]\(1) => Inst_vga_gen_n_53,
      \queue_reg[15][hCounter][7]\(0) => Inst_vga_gen_n_54,
      \queue_reg[15][vCounter][11]\(1) => Inst_vga_gen_n_49,
      \queue_reg[15][vCounter][11]\(0) => Inst_vga_gen_n_50,
      \queue_reg[15][vCounter][11]_0\(1) => Inst_vga_gen_n_47,
      \queue_reg[15][vCounter][11]_0\(0) => Inst_vga_gen_n_48,
      \queue_reg[15][vCounter][7]\(3) => Inst_vga_gen_n_33,
      \queue_reg[15][vCounter][7]\(2) => Inst_vga_gen_n_34,
      \queue_reg[15][vCounter][7]\(1) => Inst_vga_gen_n_35,
      \queue_reg[15][vCounter][7]\(0) => Inst_vga_gen_n_36,
      \queue_reg[15][vCounter][7]_0\(3) => Inst_vga_gen_n_43,
      \queue_reg[15][vCounter][7]_0\(2) => Inst_vga_gen_n_44,
      \queue_reg[15][vCounter][7]_0\(1) => Inst_vga_gen_n_45,
      \queue_reg[15][vCounter][7]_0\(0) => Inst_vga_gen_n_46,
      \queue_reg[15][vCounter][7]_1\(3) => Inst_vga_gen_n_37,
      \queue_reg[15][vCounter][7]_1\(2) => Inst_vga_gen_n_38,
      \queue_reg[15][vCounter][7]_1\(1) => Inst_vga_gen_n_39,
      \queue_reg[15][vCounter][7]_1\(0) => Inst_vga_gen_n_40,
      \r_out_reg[1]_0\(0) => \r_out_reg[1]\(0),
      \r_out_reg[1]_1\(0) => \r_out_reg[1]_0\(0),
      \r_out_reg[1]_2\(0) => \r_out_reg[1]_1\(0),
      \r_out_reg[1]_3\ => \r_out_reg[1]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA2 is
  port (
    hdmi_out_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_out_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_out_reg[1]\ : out STD_LOGIC;
    clk_locked : out STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    mmcm_lock : in STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC;
    RESET_I : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FPGA2;

architecture STRUCTURE of FPGA2 is
  signal BLUE_O : STD_LOGIC_VECTOR ( 1 to 1 );
  signal DATA_A_O : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RAM_inst1_n_24 : STD_LOGIC;
  signal RAM_inst1_n_25 : STD_LOGIC;
  signal RAM_inst1_n_26 : STD_LOGIC;
  signal RAM_inst1_n_27 : STD_LOGIC;
  signal RAM_inst1_n_28 : STD_LOGIC;
  signal RAM_inst1_n_29 : STD_LOGIC;
  signal RAM_inst1_n_30 : STD_LOGIC;
  signal RAM_inst1_n_31 : STD_LOGIC;
  signal RAM_inst1_n_32 : STD_LOGIC;
  signal RAM_inst1_n_33 : STD_LOGIC;
  signal RAM_inst1_n_34 : STD_LOGIC;
  signal RAM_inst1_n_35 : STD_LOGIC;
  signal RAM_inst1_n_36 : STD_LOGIC;
  signal RAM_inst1_n_37 : STD_LOGIC;
  signal RAM_inst1_n_38 : STD_LOGIC;
  signal RAM_inst1_n_39 : STD_LOGIC;
  signal RAM_inst1_n_40 : STD_LOGIC;
  signal RAM_inst1_n_41 : STD_LOGIC;
  signal RAM_inst1_n_42 : STD_LOGIC;
  signal RAM_inst1_n_43 : STD_LOGIC;
  signal RAM_inst1_n_44 : STD_LOGIC;
  signal RAM_inst1_n_45 : STD_LOGIC;
  signal RAM_inst1_n_46 : STD_LOGIC;
  signal RAM_inst1_n_47 : STD_LOGIC;
  signal RAM_inst1_n_48 : STD_LOGIC;
  signal RAM_inst1_n_49 : STD_LOGIC;
  signal RAM_inst1_n_50 : STD_LOGIC;
  signal RAM_inst1_n_51 : STD_LOGIC;
  signal RAM_inst1_n_52 : STD_LOGIC;
  signal RAM_inst1_n_53 : STD_LOGIC;
  signal RAM_inst1_n_54 : STD_LOGIC;
  signal RAM_inst1_n_55 : STD_LOGIC;
  signal RAM_inst1_n_56 : STD_LOGIC;
  signal RAM_inst1_n_57 : STD_LOGIC;
  signal RAM_inst1_n_58 : STD_LOGIC;
  signal RAM_inst1_n_59 : STD_LOGIC;
  signal RAM_inst1_n_60 : STD_LOGIC;
  signal RAM_inst1_n_61 : STD_LOGIC;
  signal RAM_inst1_n_62 : STD_LOGIC;
  signal RAM_inst1_n_63 : STD_LOGIC;
  signal RAM_inst1_n_64 : STD_LOGIC;
  signal RAM_inst1_n_65 : STD_LOGIC;
  signal RAM_inst1_n_66 : STD_LOGIC;
  signal RAM_inst1_n_67 : STD_LOGIC;
  signal RAM_inst1_n_68 : STD_LOGIC;
  signal RAM_inst1_n_69 : STD_LOGIC;
  signal RAM_inst1_n_70 : STD_LOGIC;
  signal RAM_inst1_n_71 : STD_LOGIC;
  signal RAM_inst1_n_72 : STD_LOGIC;
  signal RAM_inst1_n_73 : STD_LOGIC;
  signal RAM_inst1_n_74 : STD_LOGIC;
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clocking_2_inst_n_1 : STD_LOGIC;
  signal clocking_2_inst_n_10 : STD_LOGIC;
  signal clocking_2_inst_n_11 : STD_LOGIC;
  signal clocking_2_inst_n_12 : STD_LOGIC;
  signal clocking_2_inst_n_13 : STD_LOGIC;
  signal clocking_2_inst_n_14 : STD_LOGIC;
  signal clocking_2_inst_n_15 : STD_LOGIC;
  signal clocking_2_inst_n_16 : STD_LOGIC;
  signal clocking_2_inst_n_17 : STD_LOGIC;
  signal clocking_2_inst_n_18 : STD_LOGIC;
  signal clocking_2_inst_n_19 : STD_LOGIC;
  signal clocking_2_inst_n_2 : STD_LOGIC;
  signal clocking_2_inst_n_20 : STD_LOGIC;
  signal clocking_2_inst_n_21 : STD_LOGIC;
  signal clocking_2_inst_n_22 : STD_LOGIC;
  signal clocking_2_inst_n_23 : STD_LOGIC;
  signal clocking_2_inst_n_24 : STD_LOGIC;
  signal clocking_2_inst_n_25 : STD_LOGIC;
  signal clocking_2_inst_n_26 : STD_LOGIC;
  signal clocking_2_inst_n_27 : STD_LOGIC;
  signal clocking_2_inst_n_28 : STD_LOGIC;
  signal clocking_2_inst_n_29 : STD_LOGIC;
  signal clocking_2_inst_n_3 : STD_LOGIC;
  signal clocking_2_inst_n_30 : STD_LOGIC;
  signal clocking_2_inst_n_31 : STD_LOGIC;
  signal clocking_2_inst_n_32 : STD_LOGIC;
  signal clocking_2_inst_n_34 : STD_LOGIC;
  signal clocking_2_inst_n_4 : STD_LOGIC;
  signal clocking_2_inst_n_5 : STD_LOGIC;
  signal clocking_2_inst_n_6 : STD_LOGIC;
  signal clocking_2_inst_n_7 : STD_LOGIC;
  signal clocking_2_inst_n_8 : STD_LOGIC;
  signal clocking_2_inst_n_9 : STD_LOGIC;
  signal hdmi_driver_inst_n_10 : STD_LOGIC;
  signal hdmi_driver_inst_n_11 : STD_LOGIC;
  signal hdmi_driver_inst_n_8 : STD_LOGIC;
  signal hdmi_driver_inst_n_9 : STD_LOGIC;
  signal pixel_clk : STD_LOGIC;
  signal pixel_clk_x5 : STD_LOGIC;
  signal \queue_reg[15][hCounter]\ : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \queue_reg[15][vCounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^r_out_reg[1]\ : STD_LOGIC;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  WEBWE(0) <= \^webwe\(0);
  \r_out_reg[1]\ <= \^r_out_reg[1]\;
RAM_inst1: entity work.TD_RAM_36K_WRAP_0
     port map (
      BLUE_O(0) => BLUE_O(1),
      CLK100MHZ => \^r_out_reg[1]\,
      CO(0) => hdmi_driver_inst_n_10,
      DI(1) => RAM_inst1_n_36,
      DI(0) => RAM_inst1_n_37,
      DOADO(23 downto 12) => DATA_A_O(27 downto 16),
      DOADO(11 downto 0) => DATA_A_O(11 downto 0),
      O(3) => RAM_inst1_n_28,
      O(2) => RAM_inst1_n_29,
      O(1) => RAM_inst1_n_30,
      O(0) => RAM_inst1_n_31,
      O_buff_clkpixel => pixel_clk,
      Q(31 downto 0) => \^q\(31 downto 0),
      S(2) => RAM_inst1_n_25,
      S(1) => RAM_inst1_n_26,
      S(0) => RAM_inst1_n_27,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      UNISIM_RAM0_0(0) => hdmi_driver_inst_n_9,
      WEBWE(0) => \^webwe\(0),
      \queue_reg[15][hCounter]\(9 downto 0) => \queue_reg[15][hCounter]\(11 downto 2),
      \queue_reg[15][hCounter][11]\(0) => hdmi_driver_inst_n_11,
      \queue_reg[15][hCounter][11]_0\(0) => hdmi_driver_inst_n_8,
      \queue_reg[15][vCounter]\(11 downto 0) => \queue_reg[15][vCounter]\(11 downto 0),
      \r_out_reg[1]\ => RAM_inst1_n_24,
      \r_out_reg[1]_0\(3) => RAM_inst1_n_32,
      \r_out_reg[1]_0\(2) => RAM_inst1_n_33,
      \r_out_reg[1]_0\(1) => RAM_inst1_n_34,
      \r_out_reg[1]_0\(0) => RAM_inst1_n_35,
      \r_out_reg[1]_1\(3) => RAM_inst1_n_38,
      \r_out_reg[1]_1\(2) => RAM_inst1_n_39,
      \r_out_reg[1]_1\(1) => RAM_inst1_n_40,
      \r_out_reg[1]_1\(0) => RAM_inst1_n_41,
      \r_out_reg[1]_10\(3) => RAM_inst1_n_68,
      \r_out_reg[1]_10\(2) => RAM_inst1_n_69,
      \r_out_reg[1]_10\(1) => RAM_inst1_n_70,
      \r_out_reg[1]_10\(0) => RAM_inst1_n_71,
      \r_out_reg[1]_11\(2) => RAM_inst1_n_72,
      \r_out_reg[1]_11\(1) => RAM_inst1_n_73,
      \r_out_reg[1]_11\(0) => RAM_inst1_n_74,
      \r_out_reg[1]_2\(2) => RAM_inst1_n_42,
      \r_out_reg[1]_2\(1) => RAM_inst1_n_43,
      \r_out_reg[1]_2\(0) => RAM_inst1_n_44,
      \r_out_reg[1]_3\(3) => RAM_inst1_n_45,
      \r_out_reg[1]_3\(2) => RAM_inst1_n_46,
      \r_out_reg[1]_3\(1) => RAM_inst1_n_47,
      \r_out_reg[1]_3\(0) => RAM_inst1_n_48,
      \r_out_reg[1]_4\(1) => RAM_inst1_n_49,
      \r_out_reg[1]_4\(0) => RAM_inst1_n_50,
      \r_out_reg[1]_5\(1) => RAM_inst1_n_51,
      \r_out_reg[1]_5\(0) => RAM_inst1_n_52,
      \r_out_reg[1]_6\(2) => RAM_inst1_n_53,
      \r_out_reg[1]_6\(1) => RAM_inst1_n_54,
      \r_out_reg[1]_6\(0) => RAM_inst1_n_55,
      \r_out_reg[1]_7\(3) => RAM_inst1_n_56,
      \r_out_reg[1]_7\(2) => RAM_inst1_n_57,
      \r_out_reg[1]_7\(1) => RAM_inst1_n_58,
      \r_out_reg[1]_7\(0) => RAM_inst1_n_59,
      \r_out_reg[1]_8\(3) => RAM_inst1_n_60,
      \r_out_reg[1]_8\(2) => RAM_inst1_n_61,
      \r_out_reg[1]_8\(1) => RAM_inst1_n_62,
      \r_out_reg[1]_8\(0) => RAM_inst1_n_63,
      \r_out_reg[1]_9\(3) => RAM_inst1_n_64,
      \r_out_reg[1]_9\(2) => RAM_inst1_n_65,
      \r_out_reg[1]_9\(1) => RAM_inst1_n_66,
      \r_out_reg[1]_9\(0) => RAM_inst1_n_67
    );
SpiRx: entity work.SPI_RX
     port map (
      CLK100MHZ => clocking_2_inst_n_34,
      D(0) => D(0),
      E(31) => clocking_2_inst_n_1,
      E(30) => clocking_2_inst_n_2,
      E(29) => clocking_2_inst_n_3,
      E(28) => clocking_2_inst_n_4,
      E(27) => clocking_2_inst_n_5,
      E(26) => clocking_2_inst_n_6,
      E(25) => clocking_2_inst_n_7,
      E(24) => clocking_2_inst_n_8,
      E(23) => clocking_2_inst_n_9,
      E(22) => clocking_2_inst_n_10,
      E(21) => clocking_2_inst_n_11,
      E(20) => clocking_2_inst_n_12,
      E(19) => clocking_2_inst_n_13,
      E(18) => clocking_2_inst_n_14,
      E(17) => clocking_2_inst_n_15,
      E(16) => clocking_2_inst_n_16,
      E(15) => clocking_2_inst_n_17,
      E(14) => clocking_2_inst_n_18,
      E(13) => clocking_2_inst_n_19,
      E(12) => clocking_2_inst_n_20,
      E(11) => clocking_2_inst_n_21,
      E(10) => clocking_2_inst_n_22,
      E(9) => clocking_2_inst_n_23,
      E(8) => clocking_2_inst_n_24,
      E(7) => clocking_2_inst_n_25,
      E(6) => clocking_2_inst_n_26,
      E(5) => clocking_2_inst_n_27,
      E(4) => clocking_2_inst_n_28,
      E(3) => clocking_2_inst_n_29,
      E(2) => clocking_2_inst_n_30,
      E(1) => clocking_2_inst_n_31,
      E(0) => clocking_2_inst_n_32,
      Q(31 downto 0) => \^q\(31 downto 0),
      WEBWE(0) => \^webwe\(0)
    );
clocking_2_inst: entity work.clocking_2
     port map (
      E(31) => clocking_2_inst_n_1,
      E(30) => clocking_2_inst_n_2,
      E(29) => clocking_2_inst_n_3,
      E(28) => clocking_2_inst_n_4,
      E(27) => clocking_2_inst_n_5,
      E(26) => clocking_2_inst_n_6,
      E(25) => clocking_2_inst_n_7,
      E(24) => clocking_2_inst_n_8,
      E(23) => clocking_2_inst_n_9,
      E(22) => clocking_2_inst_n_10,
      E(21) => clocking_2_inst_n_11,
      E(20) => clocking_2_inst_n_12,
      E(19) => clocking_2_inst_n_13,
      E(18) => clocking_2_inst_n_14,
      E(17) => clocking_2_inst_n_15,
      E(16) => clocking_2_inst_n_16,
      E(15) => clocking_2_inst_n_17,
      E(14) => clocking_2_inst_n_18,
      E(13) => clocking_2_inst_n_19,
      E(12) => clocking_2_inst_n_20,
      E(11) => clocking_2_inst_n_21,
      E(10) => clocking_2_inst_n_22,
      E(9) => clocking_2_inst_n_23,
      E(8) => clocking_2_inst_n_24,
      E(7) => clocking_2_inst_n_25,
      E(6) => clocking_2_inst_n_26,
      E(5) => clocking_2_inst_n_27,
      E(4) => clocking_2_inst_n_28,
      E(3) => clocking_2_inst_n_29,
      E(2) => clocking_2_inst_n_30,
      E(1) => clocking_2_inst_n_31,
      E(0) => clocking_2_inst_n_32,
      I_unbuff_clk => I_unbuff_clk,
      O_buff_clk5xpixel => pixel_clk_x5,
      O_buff_clkpixel => pixel_clk,
      UNISIM_RAM0 => clocking_2_inst_n_34,
      clk_locked => clk_locked,
      mmcm_lock => mmcm_lock,
      \r_out_reg[1]\ => \^r_out_reg[1]\
    );
hdmi_driver_inst: entity work.hdmi_driver
     port map (
      BLUE_O(0) => BLUE_O(1),
      CLK_I_X5 => pixel_clk_x5,
      CO(0) => hdmi_driver_inst_n_10,
      DI(1) => RAM_inst1_n_36,
      DI(0) => RAM_inst1_n_37,
      DOADO(23 downto 12) => DATA_A_O(27 downto 16),
      DOADO(11 downto 0) => DATA_A_O(11 downto 0),
      O(3) => RAM_inst1_n_28,
      O(2) => RAM_inst1_n_29,
      O(1) => RAM_inst1_n_30,
      O(0) => RAM_inst1_n_31,
      O_buff_clkpixel => pixel_clk,
      RESET_I => RESET_I,
      S(2) => RAM_inst1_n_25,
      S(1) => RAM_inst1_n_26,
      S(0) => RAM_inst1_n_27,
      UNISIM_RAM0(3) => RAM_inst1_n_38,
      UNISIM_RAM0(2) => RAM_inst1_n_39,
      UNISIM_RAM0(1) => RAM_inst1_n_40,
      UNISIM_RAM0(0) => RAM_inst1_n_41,
      UNISIM_RAM0_0(3) => RAM_inst1_n_45,
      UNISIM_RAM0_0(2) => RAM_inst1_n_46,
      UNISIM_RAM0_0(1) => RAM_inst1_n_47,
      UNISIM_RAM0_0(0) => RAM_inst1_n_48,
      UNISIM_RAM0_1(1) => RAM_inst1_n_49,
      UNISIM_RAM0_1(0) => RAM_inst1_n_50,
      UNISIM_RAM0_10(3) => RAM_inst1_n_68,
      UNISIM_RAM0_10(2) => RAM_inst1_n_69,
      UNISIM_RAM0_10(1) => RAM_inst1_n_70,
      UNISIM_RAM0_10(0) => RAM_inst1_n_71,
      UNISIM_RAM0_2(1) => RAM_inst1_n_51,
      UNISIM_RAM0_2(0) => RAM_inst1_n_52,
      UNISIM_RAM0_3(2) => RAM_inst1_n_53,
      UNISIM_RAM0_3(1) => RAM_inst1_n_54,
      UNISIM_RAM0_3(0) => RAM_inst1_n_55,
      UNISIM_RAM0_4(3) => RAM_inst1_n_56,
      UNISIM_RAM0_4(2) => RAM_inst1_n_57,
      UNISIM_RAM0_4(1) => RAM_inst1_n_58,
      UNISIM_RAM0_4(0) => RAM_inst1_n_59,
      UNISIM_RAM0_5(3) => RAM_inst1_n_32,
      UNISIM_RAM0_5(2) => RAM_inst1_n_33,
      UNISIM_RAM0_5(1) => RAM_inst1_n_34,
      UNISIM_RAM0_5(0) => RAM_inst1_n_35,
      UNISIM_RAM0_6(2) => RAM_inst1_n_42,
      UNISIM_RAM0_6(1) => RAM_inst1_n_43,
      UNISIM_RAM0_6(0) => RAM_inst1_n_44,
      UNISIM_RAM0_7(3) => RAM_inst1_n_60,
      UNISIM_RAM0_7(2) => RAM_inst1_n_61,
      UNISIM_RAM0_7(1) => RAM_inst1_n_62,
      UNISIM_RAM0_7(0) => RAM_inst1_n_63,
      UNISIM_RAM0_8(3) => RAM_inst1_n_64,
      UNISIM_RAM0_8(2) => RAM_inst1_n_65,
      UNISIM_RAM0_8(1) => RAM_inst1_n_66,
      UNISIM_RAM0_8(0) => RAM_inst1_n_67,
      UNISIM_RAM0_9(2) => RAM_inst1_n_72,
      UNISIM_RAM0_9(1) => RAM_inst1_n_73,
      UNISIM_RAM0_9(0) => RAM_inst1_n_74,
      hdmi_out_n(3 downto 0) => hdmi_out_n(3 downto 0),
      hdmi_out_p(3 downto 0) => hdmi_out_p(3 downto 0),
      \queue_reg[15][vCounter]\(11 downto 0) => \queue_reg[15][vCounter]\(11 downto 0),
      \r_out_reg[1]\(0) => hdmi_driver_inst_n_8,
      \r_out_reg[1]_0\(0) => hdmi_driver_inst_n_9,
      \r_out_reg[1]_1\(0) => hdmi_driver_inst_n_11,
      \r_out_reg[1]_2\(9 downto 0) => \queue_reg[15][hCounter]\(11 downto 2),
      \r_out_reg[1]_3\ => RAM_inst1_n_24
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    CLK100MHZ : in STD_LOGIC;
    TX_O : out STD_LOGIC;
    RX_I : in STD_LOGIC;
    SPI_MOSI_O : out STD_LOGIC;
    SPI_SCLK_O : out STD_LOGIC;
    SPI_MOSI_I : in STD_LOGIC;
    SPI_SCLK_I : in STD_LOGIC;
    hdmi_out_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_out_n : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal FPGA1_inst_n_11 : STD_LOGIC;
  signal FPGA2_inst_n_41 : STD_LOGIC;
  signal RX_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_O_OBUF : STD_LOGIC;
  signal SPI_SCLK_I_IBUF : STD_LOGIC;
  signal SPI_SCLK_O_OBUF : STD_LOGIC;
  signal TX_O_OBUF : STD_LOGIC;
  signal adr_A : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_A : STD_LOGIC;
  signal \clocking_1_inst/mmcm_lock\ : STD_LOGIC;
  signal \clocking_2_inst/clk_locked\ : STD_LOGIC;
  signal data_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal global_reset : STD_LOGIC;
  signal wr_B : STD_LOGIC;
begin
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
FPGA1_inst: entity work.FPGA1
     port map (
      CLK100MHZ => FPGA2_inst_n_41,
      D(0) => FPGA1_inst_n_11,
      DOADO(31 downto 0) => data_A(31 downto 0),
      I_unbuff_clk => CLK100MHZ_IBUF,
      Q(6 downto 0) => adr_A(6 downto 0),
      RX_I(0) => RX_I_IBUF,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      TX_O_OBUF => TX_O_OBUF,
      clk_A => clk_A,
      clk_locked => \clocking_2_inst/clk_locked\,
      global_reset => global_reset,
      mmcm_lock => \clocking_1_inst/mmcm_lock\
    );
FPGA2_inst: entity work.FPGA2
     port map (
      D(0) => FPGA1_inst_n_11,
      I_unbuff_clk => CLK100MHZ_IBUF,
      Q(31 downto 0) => data_B(31 downto 0),
      RESET_I => global_reset,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => wr_B,
      clk_locked => \clocking_2_inst/clk_locked\,
      hdmi_out_n(3 downto 0) => hdmi_out_n(3 downto 0),
      hdmi_out_p(3 downto 0) => hdmi_out_p(3 downto 0),
      mmcm_lock => \clocking_1_inst/mmcm_lock\,
      \r_out_reg[1]\ => FPGA2_inst_n_41
    );
RAM_spi_debug: entity work.TD_RAM_36K_WRAP
     port map (
      CLK100MHZ(31 downto 0) => data_B(31 downto 0),
      DOADO(31 downto 0) => data_A(31 downto 0),
      Q(6 downto 0) => adr_A(6 downto 0),
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => wr_B,
      clk_A => clk_A
    );
RX_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RX_I,
      O => RX_I_IBUF
    );
SPI_MOSI_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SPI_MOSI_I,
      O => SPI_MOSI_I_IBUF
    );
SPI_MOSI_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SPI_MOSI_O_OBUF,
      O => SPI_MOSI_O
    );
SPI_SCLK_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SPI_SCLK_I,
      O => SPI_SCLK_I_IBUF
    );
SPI_SCLK_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SPI_SCLK_O_OBUF,
      O => SPI_SCLK_O
    );
TX_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TX_O_OBUF,
      O => TX_O
    );
end STRUCTURE;
