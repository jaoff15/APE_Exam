-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Jun  8 13:06:32 2020
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
    global_reset : in STD_LOGIC
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
      RST => global_reset,
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
      RST => global_reset,
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
    global_reset : in STD_LOGIC
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
      RST => global_reset,
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
      RST => global_reset,
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
    global_reset : in STD_LOGIC
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
      RST => global_reset,
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
      RST => global_reset,
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
    global_reset : in STD_LOGIC
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
      RST => global_reset,
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
      RST => global_reset,
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
    ones : in STD_LOGIC_VECTOR ( 0 to 0 );
    blank : in STD_LOGIC;
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
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \e[2]_i_2\ : label is "soft_lutpair83";
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
      I3 => ones(0),
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
      I4 => ones(0),
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
      I4 => ones(0),
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
      R => blank
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
      R => blank
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
      R => blank
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
      R => blank
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
      I1 => ones(0),
      I2 => blank,
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
      I3 => ones(0),
      I4 => \^e12_out\,
      I5 => blank,
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
    ones : in STD_LOGIC_VECTOR ( 0 to 0 );
    blank : in STD_LOGIC;
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
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1__0\ : label is "soft_lutpair84";
begin
\dc_bias[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1__0_n_0\
    );
\dc_bias[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D278"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => ones(0),
      O => \dc_bias[1]_i_1__0_n_0\
    );
\dc_bias[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33399333"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => ones(0),
      O => \dc_bias[2]_i_1__0_n_0\
    );
\dc_bias[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333B1333"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => ones(0),
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
      R => blank
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
      R => blank
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
      R => blank
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[3]_i_1__0_n_0\,
      Q => p_1_in,
      R => blank
    );
\e[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => ones(0),
      I1 => p_1_in,
      I2 => blank,
      O => \e[9]_i_1_n_0\
    );
\e_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in,
      Q => D(0),
      R => blank
    );
\e_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in,
      Q => D(1),
      S => blank
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
    \RED_O_reg[0]\ : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    ones : in STD_LOGIC_VECTOR ( 0 to 0 );
    blank : in STD_LOGIC
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
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_1\ : label is "soft_lutpair86";
begin
\dc_bias[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[0]_i_1_n_0\
    );
\dc_bias[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D278"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => ones(0),
      O => \dc_bias[1]_i_1_n_0\
    );
\dc_bias[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33399333"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => ones(0),
      O => \dc_bias[2]_i_1_n_0\
    );
\dc_bias[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333B1333"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => ones(0),
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
      R => blank
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
      R => blank
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
      R => blank
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \dc_bias[3]_i_1_n_0\,
      Q => p_1_in,
      R => blank
    );
\e[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => ones(0),
      I1 => p_1_in,
      I2 => blank,
      O => \e[9]_i_1_n_0\
    );
\e_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in,
      Q => D(0),
      R => blank
    );
\e_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => p_1_in,
      Q => D(1),
      S => blank
    );
\e_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \RED_O_reg[0]\,
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
    CLK : in STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DIBDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
      CLKARDCLK => CLK,
      CLKBWRCLK => SPI_SCLK_I_IBUF,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => DIBDI(31 downto 0),
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
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED_O_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \RED_O_reg[0]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_4\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \RED_O_reg[0]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O_buff_clkpixel : in STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    DIBDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TD_RAM_36K_WRAP_0 : entity is "TD_RAM_36K_WRAP";
end TD_RAM_36K_WRAP_0;

architecture STRUCTURE of TD_RAM_36K_WRAP_0 is
  signal DATA_A_O : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal \^doado\ : STD_LOGIC_VECTOR ( 23 downto 0 );
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
  signal \_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \_carry__1_i_5_n_4\ : STD_LOGIC;
  signal \_carry__2_i_5_n_2\ : STD_LOGIC;
  signal \_carry__2_i_5_n_3\ : STD_LOGIC;
  signal \_carry__2_i_5_n_5\ : STD_LOGIC;
  signal \_carry__2_i_5_n_6\ : STD_LOGIC;
  signal \_carry__2_i_5_n_7\ : STD_LOGIC;
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_i_5_n_1\ : STD_LOGIC;
  signal \_carry_i_5_n_2\ : STD_LOGIC;
  signal \_carry_i_5_n_3\ : STD_LOGIC;
  signal \_carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_2\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_3\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_4\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_2\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_3\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_5\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_6\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_7\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_1\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_2\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_3\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_UNISIM_RAM0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_UNISIM_RAM0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UNISIM_RAM0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW__carry__2_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__carry__2_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__2_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__2_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of UNISIM_RAM0 : label is "PRIMITIVE";
begin
  DOADO(23 downto 0) <= \^doado\(23 downto 0);
\RED_O2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(14),
      I1 => DATA_A_O(15),
      O => S(1)
    );
\RED_O2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(12),
      I1 => DATA_A_O(13),
      O => S(0)
    );
\RED_O3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(30),
      I1 => DATA_A_O(31),
      O => \RED_O_reg[0]\(1)
    );
\RED_O3_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DATA_A_O(28),
      I1 => DATA_A_O(29),
      O => \RED_O_reg[0]\(0)
    );
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
      ADDRARDADDR(15 downto 0) => B"0000000000000000",
      ADDRBWRADDR(15 downto 0) => B"0000001000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_UNISIM_RAM0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_UNISIM_RAM0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => O_buff_clkpixel,
      CLKBWRCLK => SPI_SCLK_I_IBUF,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => DIBDI(31 downto 0),
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
\_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_i_5_n_0\,
      CO(3) => \_carry__0_i_5_n_0\,
      CO(2) => \_carry__0_i_5_n_1\,
      CO(1) => \_carry__0_i_5_n_2\,
      CO(0) => \_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^doado\(18 downto 17),
      O(3 downto 0) => \RED_O_reg[0]_0\(3 downto 0),
      S(3 downto 2) => \^doado\(20 downto 19),
      S(1) => \_carry__0_i_6_n_0\,
      S(0) => \_carry__0_i_7_n_0\
    );
\_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(18),
      O => \_carry__0_i_6_n_0\
    );
\_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(17),
      O => \_carry__0_i_7_n_0\
    );
\_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_i_5_n_0\,
      CO(3) => \_carry__1_i_5_n_0\,
      CO(2) => \_carry__1_i_5_n_1\,
      CO(1) => \_carry__1_i_5_n_2\,
      CO(0) => \_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_carry__1_i_5_n_4\,
      O(2 downto 0) => \RED_O_reg[0]_1\(2 downto 0),
      S(3) => DATA_A_O(28),
      S(2 downto 0) => \^doado\(23 downto 21)
    );
\_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \_carry__2_i_5_n_5\,
      O => \RED_O_reg[0]_5\(3)
    );
\_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \_carry__2_i_5_n_6\,
      O => \RED_O_reg[0]_5\(2)
    );
\_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \_carry__2_i_5_n_7\,
      O => \RED_O_reg[0]_5\(1)
    );
\_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \_carry__1_i_5_n_4\,
      O => \RED_O_reg[0]_5\(0)
    );
\_carry__2_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW__carry__2_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_carry__2_i_5_n_2\,
      CO(0) => \_carry__2_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW__carry__2_i_5_O_UNCONNECTED\(3),
      O(2) => \_carry__2_i_5_n_5\,
      O(1) => \_carry__2_i_5_n_6\,
      O(0) => \_carry__2_i_5_n_7\,
      S(3) => '0',
      S(2 downto 0) => DATA_A_O(31 downto 29)
    );
\_carry_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_i_5_n_0\,
      CO(2) => \_carry_i_5_n_1\,
      CO(1) => \_carry_i_5_n_2\,
      CO(0) => \_carry_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^doado\(14),
      DI(0) => '0',
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 2) => \^doado\(16 downto 15),
      S(1) => \_carry_i_6_n_0\,
      S(0) => \^doado\(13)
    );
\_carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(14),
      O => \_carry_i_6_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_5__0_n_0\,
      CO(3) => \i__carry__0_i_5_n_0\,
      CO(2) => \i__carry__0_i_5_n_1\,
      CO(1) => \i__carry__0_i_5_n_2\,
      CO(0) => \i__carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^doado\(6 downto 5),
      O(3 downto 0) => \RED_O_reg[0]_3\(3 downto 0),
      S(3 downto 2) => \^doado\(8 downto 7),
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(6),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(5),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_5_n_0\,
      CO(3) => \i__carry__1_i_5_n_0\,
      CO(2) => \i__carry__1_i_5_n_1\,
      CO(1) => \i__carry__1_i_5_n_2\,
      CO(0) => \i__carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i__carry__1_i_5_n_4\,
      O(2 downto 0) => \RED_O_reg[0]_4\(2 downto 0),
      S(3) => DATA_A_O(12),
      S(2 downto 0) => \^doado\(11 downto 9)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i__carry__2_i_5_n_5\,
      O => \RED_O_reg[0]_6\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i__carry__2_i_5_n_6\,
      O => \RED_O_reg[0]_6\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i__carry__2_i_5_n_7\,
      O => \RED_O_reg[0]_6\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i__carry__1_i_5_n_4\,
      O => \RED_O_reg[0]_6\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_i__carry__2_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i__carry__2_i_5_n_2\,
      CO(0) => \i__carry__2_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i__carry__2_i_5_O_UNCONNECTED\(3),
      O(2) => \i__carry__2_i_5_n_5\,
      O(1) => \i__carry__2_i_5_n_6\,
      O(0) => \i__carry__2_i_5_n_7\,
      S(3) => '0',
      S(2 downto 0) => DATA_A_O(15 downto 13)
    );
\i__carry_i_5__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_5__0_n_0\,
      CO(2) => \i__carry_i_5__0_n_1\,
      CO(1) => \i__carry_i_5__0_n_2\,
      CO(0) => \i__carry_i_5__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^doado\(2),
      DI(0) => '0',
      O(3 downto 0) => \RED_O_reg[0]_2\(3 downto 0),
      S(3 downto 2) => \^doado\(4 downto 3),
      S(1) => \i__carry_i_6__0_n_0\,
      S(0) => \^doado\(1)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^doado\(2),
      O => \i__carry_i_6__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TD_RAM_36K_WRAP_6 is
  port (
    \data32_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \data32_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TD_RAM_36K_WRAP_6 : entity is "TD_RAM_36K_WRAP";
end TD_RAM_36K_WRAP_6;

architecture STRUCTURE of TD_RAM_36K_WRAP_6 is
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
      CLKARDCLK => CLK,
      CLKBWRCLK => CLK,
      DBITERR => NLW_UNISIM_RAM0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \data32_reg[31]_0\(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \data32_reg[31]\(31 downto 0),
      DOBDO(31 downto 0) => D(31 downto 0),
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
    CLK : out STD_LOGIC;
    D1_reg : out STD_LOGIC;
    global_reset : out STD_LOGIC;
    sclk : out STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    sclk_active : in STD_LOGIC
  );
end clocking_1;

architecture STRUCTURE of clocking_1 is
  signal \^clk\ : STD_LOGIC;
  signal CLKFBIN : STD_LOGIC;
  signal \^d1_reg\ : STD_LOGIC;
  signal buf_reset_48 : STD_LOGIC;
  signal buf_reset_48_i_1_n_0 : STD_LOGIC;
  signal mmcm_lock_48 : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_48_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
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
begin
  CLK <= \^clk\;
  D1_reg <= \^d1_reg\;
MMCME2_BASE_48_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 62.500000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
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
      CLKOUT0 => \^clk\,
      CLKOUT0B => NLW_MMCME2_BASE_48_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_MMCME2_BASE_48_inst_CLKOUT1_UNCONNECTED,
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
      LOCKED => mmcm_lock_48,
      PSCLK => '0',
      PSDONE => NLW_MMCME2_BASE_48_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
ODDR_MOSI_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^clk\,
      I1 => sclk_active,
      O => sclk
    );
buf_reset_48_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_48,
      O => buf_reset_48_i_1_n_0
    );
buf_reset_48_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => buf_reset_48_i_1_n_0,
      Q => buf_reset_48,
      R => '0'
    );
\nxt_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^d1_reg\,
      I1 => clk_locked,
      O => global_reset
    );
reset_48_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => buf_reset_48,
      Q => \^d1_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \clocking__parameterized1\ is
  port (
    \nxt_enc_data_reg[0]\ : out STD_LOGIC;
    clk_locked : out STD_LOGIC;
    O_buff_clk5xpixel : out STD_LOGIC;
    RESET_O : in STD_LOGIC;
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
  signal pixel_clk_x5_inv : STD_LOGIC;
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
  clk_locked <= \^clk_locked\;
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
\subcnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^clk_locked\,
      I1 => RESET_O,
      O => \nxt_enc_data_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_serial is
  port (
    \FSM_onehot_rx_state_reg[17]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \data32_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \adr_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data32_reg[31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rx_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    timestamp_enable_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rx_state_reg[10]\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
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
    \FSM_onehot_rx_state_reg[18]_23\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[15]\ : in STD_LOGIC;
    timestamp_enable : in STD_LOGIC;
    reset_48_reg : in STD_LOGIC;
    reset_48_reg_0 : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_24\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_25\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_26\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_27\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_28\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_29\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_30\ : in STD_LOGIC;
    \FSM_onehot_rx_state_reg[18]_31\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decode_serial;

architecture STRUCTURE of decode_serial is
  signal \FSM_onehot_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_6_n_0\ : STD_LOGIC;
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
  signal \FSM_onehot_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rx_state_reg[17]\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \adr[4]_i_2_n_0\ : STD_LOGIC;
  signal \adr[4]_i_3_n_0\ : STD_LOGIC;
  signal \adr[4]_i_4_n_0\ : STD_LOGIC;
  signal \adr[4]_i_5_n_0\ : STD_LOGIC;
  signal \adr[4]_i_6_n_0\ : STD_LOGIC;
  signal \adr[5]_i_2_n_0\ : STD_LOGIC;
  signal \adr[5]_i_3_n_0\ : STD_LOGIC;
  signal \adr[5]_i_4_n_0\ : STD_LOGIC;
  signal \adr[6]_i_2_n_0\ : STD_LOGIC;
  signal \adr[6]_i_3_n_0\ : STD_LOGIC;
  signal \adr[6]_i_4_n_0\ : STD_LOGIC;
  signal \adr[6]_i_5_n_0\ : STD_LOGIC;
  signal \adr[6]_i_6_n_0\ : STD_LOGIC;
  signal \adr[6]_i_7_n_0\ : STD_LOGIC;
  signal \adr[6]_i_8_n_0\ : STD_LOGIC;
  signal \adr[6]_i_9_n_0\ : STD_LOGIC;
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
  signal \subcnt[3]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[0]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[14]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[15]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[16]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[17]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adr[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adr[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \adr[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \adr[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \adr[3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adr[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \adr[4]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \adr[4]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adr[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \adr[5]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \adr[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adr[6]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adr[6]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adr[6]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adr[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adr[7]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \adr[7]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data32[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data32[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data32[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data32[11]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data32[12]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data32[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data32[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data32[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data32[15]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data32[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data32[17]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data32[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data32[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[19]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data32[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data32[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data32[22]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data32[23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[23]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data32[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data32[25]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data32[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data32[27]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data32[27]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data32[28]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data32[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data32[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data32[30]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data32[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data32[31]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data32[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data32[3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data32[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data32[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data32[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data32[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data32[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data32[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data32[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \nxt_data[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of strobe2_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of strobe_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \subcnt[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \subcnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \subcnt[3]_i_4\ : label is "soft_lutpair17";
begin
  \FSM_onehot_rx_state_reg[17]\(17 downto 0) <= \^fsm_onehot_rx_state_reg[17]\(17 downto 0);
\FSM_onehot_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFFFFFF4FF"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[10]\,
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \FSM_onehot_rx_state[0]_i_3_n_0\,
      I3 => \FSM_onehot_rx_state_reg[18]\,
      I4 => \out\(0),
      I5 => \FSM_onehot_rx_state[1]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(0)
    );
\FSM_onehot_rx_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \out\(14),
      I1 => \out\(2),
      I2 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      I3 => \FSM_onehot_rx_state[0]_i_6_n_0\,
      O => \FSM_onehot_rx_state[0]_i_3_n_0\
    );
\FSM_onehot_rx_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAA2AAAAAAAAA"
    )
        port map (
      I0 => \out\(1),
      I1 => dec_strb,
      I2 => dec_data(4),
      I3 => dec_data(0),
      I4 => dec_data(2),
      I5 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      O => \FSM_onehot_rx_state[0]_i_6_n_0\
    );
\FSM_onehot_rx_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(9),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(10)
    );
\FSM_onehot_rx_state[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(10),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(11)
    );
\FSM_onehot_rx_state[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(11),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(12)
    );
\FSM_onehot_rx_state[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(12),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(13)
    );
\FSM_onehot_rx_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I1 => dec_data(0),
      I2 => dec_data(2),
      I3 => \out\(1),
      I4 => dec_data(4),
      I5 => dec_strb,
      O => \^fsm_onehot_rx_state_reg[17]\(14)
    );
\FSM_onehot_rx_state[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(6),
      I2 => dec_data(1),
      I3 => dec_data(7),
      O => \FSM_onehot_rx_state[14]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(14),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(15)
    );
\FSM_onehot_rx_state[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(5),
      I2 => dec_data(3),
      I3 => \FSM_onehot_rx_state[15]_i_3_n_0\,
      O => \FSM_onehot_rx_state[15]_i_2_n_0\
    );
\FSM_onehot_rx_state[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => dec_strb,
      I1 => dec_data(4),
      I2 => dec_data(6),
      I3 => dec_data(7),
      I4 => dec_data(2),
      I5 => dec_data(0),
      O => \FSM_onehot_rx_state[15]_i_3_n_0\
    );
\FSM_onehot_rx_state[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(15),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(16)
    );
\FSM_onehot_rx_state[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(16),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(17)
    );
\FSM_onehot_rx_state[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555555555D5"
    )
        port map (
      I0 => dec_strb,
      I1 => \adr[6]_i_2_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_3_n_0\,
      I3 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I5 => \adr[6]_i_3_n_0\,
      O => \FSM_onehot_rx_state[17]_i_2_n_0\
    );
\FSM_onehot_rx_state[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(7),
      I2 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(3),
      I5 => dec_data(1),
      O => \FSM_onehot_rx_state[17]_i_3_n_0\
    );
\FSM_onehot_rx_state[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001040"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(0),
      I2 => \FSM_onehot_rx_state[17]_i_7_n_0\,
      I3 => dec_data(1),
      I4 => dec_data(4),
      I5 => dec_data(7),
      O => \FSM_onehot_rx_state[17]_i_4_n_0\
    );
\FSM_onehot_rx_state[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(7),
      I2 => dec_data(3),
      I3 => dec_data(4),
      I4 => dec_data(5),
      I5 => dec_data(2),
      O => \FSM_onehot_rx_state[17]_i_5_n_0\
    );
\FSM_onehot_rx_state[17]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(5),
      O => \FSM_onehot_rx_state[17]_i_6_n_0\
    );
\FSM_onehot_rx_state[17]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(3),
      O => \FSM_onehot_rx_state[17]_i_7_n_0\
    );
\FSM_onehot_rx_state[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[15]\,
      I1 => dec_strb,
      I2 => \out\(17),
      I3 => \out\(18),
      I4 => \out\(13),
      O => \FSM_onehot_rx_state_reg[0]\(0)
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_onehot_rx_state[1]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(1)
    );
\FSM_onehot_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \FSM_onehot_rx_state[1]_i_3_n_0\,
      I1 => dec_data(1),
      I2 => dec_data(4),
      I3 => dec_data(5),
      I4 => dec_strb,
      I5 => \FSM_onehot_rx_state[1]_i_4_n_0\,
      O => \FSM_onehot_rx_state[1]_i_2_n_0\
    );
\FSM_onehot_rx_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(7),
      I2 => dec_data(6),
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
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => dec_data(0),
      I1 => \out\(1),
      I2 => dec_data(1),
      I3 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(2)
    );
\FSM_onehot_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(7),
      I2 => dec_data(2),
      I3 => dec_data(6),
      I4 => dec_data(4),
      I5 => dec_strb,
      O => \FSM_onehot_rx_state[2]_i_2_n_0\
    );
\FSM_onehot_rx_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(2),
      I1 => \FSM_onehot_rx_state[15]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(3)
    );
\FSM_onehot_rx_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(3),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(4)
    );
\FSM_onehot_rx_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(4),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(5)
    );
\FSM_onehot_rx_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(5),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(6)
    );
\FSM_onehot_rx_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(6),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(7)
    );
\FSM_onehot_rx_state[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(7),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(8)
    );
\FSM_onehot_rx_state[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(8),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => \^fsm_onehot_rx_state_reg[17]\(9)
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
\adr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(4),
      I3 => \out\(16),
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
      O => E(0)
    );
\adr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(16),
      I2 => \adr[7]_i_3_n_0\,
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
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \adr[6]_i_9_n_0\,
      I1 => \adr[4]_i_3_n_0\,
      I2 => \adr[4]_i_4_n_0\,
      I3 => \adr[4]_i_5_n_0\,
      I4 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I5 => \adr[6]_i_3_n_0\,
      O => \adr[4]_i_2_n_0\
    );
\adr[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adr[6]_i_5_n_0\,
      I1 => dec_data(2),
      I2 => dec_data(0),
      O => \adr[4]_i_3_n_0\
    );
\adr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF10101010"
    )
        port map (
      I0 => dec_data(2),
      I1 => dec_data(4),
      I2 => \FSM_onehot_rx_state[14]_i_2_n_0\,
      I3 => \adr[7]_i_4_n_0\,
      I4 => \adr[4]_i_6_n_0\,
      I5 => dec_data(0),
      O => \adr[4]_i_4_n_0\
    );
\adr[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(2),
      I2 => \adr[6]_i_6_n_0\,
      O => \adr[4]_i_5_n_0\
    );
\adr[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => dec_data(1),
      I1 => dec_data(3),
      I2 => dec_data(2),
      O => \adr[4]_i_6_n_0\
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
      INIT => X"0002FFFF"
    )
        port map (
      I0 => \adr[5]_i_3_n_0\,
      I1 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      I2 => \FSM_onehot_rx_state[17]_i_5_n_0\,
      I3 => \adr[5]_i_4_n_0\,
      I4 => \adr[6]_i_7_n_0\,
      O => \adr[5]_i_2_n_0\
    );
\adr[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"37F7"
    )
        port map (
      I0 => \adr[6]_i_5_n_0\,
      I1 => dec_data(2),
      I2 => dec_data(0),
      I3 => \adr[6]_i_4_n_0\,
      O => \adr[5]_i_3_n_0\
    );
\adr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(7),
      I2 => \FSM_onehot_rx_state[17]_i_6_n_0\,
      I3 => dec_data(2),
      I4 => dec_data(1),
      I5 => dec_data(3),
      O => \adr[5]_i_4_n_0\
    );
\adr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(3),
      I3 => \out\(15),
      O => \adr_reg[7]\(6)
    );
\adr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"533F533F003F533F"
    )
        port map (
      I0 => \adr[6]_i_4_n_0\,
      I1 => \adr[6]_i_5_n_0\,
      I2 => dec_data(0),
      I3 => dec_data(2),
      I4 => dec_data(6),
      I5 => \adr[6]_i_6_n_0\,
      O => \adr[6]_i_2_n_0\
    );
\adr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D5D5D0C0C0C0C"
    )
        port map (
      I0 => \adr[6]_i_7_n_0\,
      I1 => \FSM_onehot_rx_state[1]_i_3_n_0\,
      I2 => \adr[6]_i_8_n_0\,
      I3 => \adr[6]_i_9_n_0\,
      I4 => dec_data(1),
      I5 => dec_data(2),
      O => \adr[6]_i_3_n_0\
    );
\adr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(6),
      I2 => dec_data(1),
      I3 => dec_data(4),
      I4 => dec_data(7),
      O => \adr[6]_i_4_n_0\
    );
\adr[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => dec_data(6),
      I1 => dec_data(1),
      I2 => dec_data(4),
      I3 => dec_data(7),
      I4 => dec_data(3),
      O => \adr[6]_i_5_n_0\
    );
\adr[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(0),
      I2 => dec_data(1),
      I3 => dec_data(3),
      I4 => dec_data(7),
      O => \adr[6]_i_6_n_0\
    );
\adr[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => dec_data(4),
      I1 => dec_data(5),
      I2 => dec_data(6),
      I3 => dec_data(7),
      I4 => dec_data(3),
      I5 => dec_data(1),
      O => \adr[6]_i_7_n_0\
    );
\adr[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => dec_data(5),
      I1 => dec_data(4),
      I2 => dec_data(0),
      I3 => dec_data(2),
      I4 => dec_data(1),
      O => \adr[6]_i_8_n_0\
    );
\adr[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => dec_data(3),
      I1 => dec_data(0),
      I2 => dec_data(6),
      I3 => dec_data(7),
      I4 => dec_data(4),
      I5 => dec_data(5),
      O => \adr[6]_i_9_n_0\
    );
\adr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      O => E(1)
    );
\adr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(15),
      I2 => \adr[7]_i_3_n_0\,
      O => \adr_reg[7]\(7)
    );
\adr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA8AA"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[7]_i_4_n_0\,
      I2 => dec_data(2),
      I3 => dec_data(3),
      I4 => dec_data(1),
      I5 => \FSM_onehot_rx_state[17]_i_4_n_0\,
      O => \adr[7]_i_3_n_0\
    );
\adr[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => dec_data(5),
      I1 => dec_data(4),
      I2 => dec_data(7),
      I3 => dec_data(6),
      O => \adr[7]_i_4_n_0\
    );
\data32[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_0\,
      O => \data32_reg[31]\(0)
    );
\data32[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(10),
      I3 => \FSM_onehot_rx_state_reg[18]_29\,
      O => \data32_reg[31]\(10)
    );
\data32[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(10),
      O => \data32_reg[31]_0\(2)
    );
\data32[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_18\,
      O => \data32_reg[31]\(11)
    );
\data32[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_3\,
      O => \data32_reg[31]\(12)
    );
\data32[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_11\,
      O => \data32_reg[31]\(13)
    );
\data32[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(9),
      I3 => \FSM_onehot_rx_state_reg[18]_28\,
      O => \data32_reg[31]\(14)
    );
\data32[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(9),
      O => \data32_reg[31]_0\(3)
    );
\data32[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(9),
      I2 => \FSM_onehot_rx_state_reg[18]_19\,
      O => \data32_reg[31]\(15)
    );
\data32[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_4\,
      O => \data32_reg[31]\(16)
    );
\data32[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_12\,
      O => \data32_reg[31]\(17)
    );
\data32[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(8),
      I3 => \FSM_onehot_rx_state_reg[18]_27\,
      O => \data32_reg[31]\(18)
    );
\data32[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(8),
      O => \data32_reg[31]_0\(4)
    );
\data32[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(8),
      I2 => \FSM_onehot_rx_state_reg[18]_20\,
      O => \data32_reg[31]\(19)
    );
\data32[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_8\,
      O => \data32_reg[31]\(1)
    );
\data32[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_5\,
      O => \data32_reg[31]\(20)
    );
\data32[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_13\,
      O => \data32_reg[31]\(21)
    );
\data32[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(7),
      I3 => \FSM_onehot_rx_state_reg[18]_26\,
      O => \data32_reg[31]\(22)
    );
\data32[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(7),
      O => \data32_reg[31]_0\(5)
    );
\data32[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(7),
      I2 => \FSM_onehot_rx_state_reg[18]_21\,
      O => \data32_reg[31]\(23)
    );
\data32[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_6\,
      O => \data32_reg[31]\(24)
    );
\data32[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_14\,
      O => \data32_reg[31]\(25)
    );
\data32[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(6),
      I3 => \FSM_onehot_rx_state_reg[18]_25\,
      O => \data32_reg[31]\(26)
    );
\data32[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(6),
      O => \data32_reg[31]_0\(6)
    );
\data32[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(6),
      I2 => \FSM_onehot_rx_state_reg[18]_22\,
      O => \data32_reg[31]\(27)
    );
\data32[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_7\,
      O => \data32_reg[31]\(28)
    );
\data32[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_15\,
      O => \data32_reg[31]\(29)
    );
\data32[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(12),
      I3 => \FSM_onehot_rx_state_reg[18]_31\,
      O => \data32_reg[31]\(2)
    );
\data32[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(5),
      I3 => \FSM_onehot_rx_state_reg[18]_24\,
      O => \data32_reg[31]\(30)
    );
\data32[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(5),
      O => \data32_reg[31]_0\(7)
    );
\data32[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(5),
      I2 => \FSM_onehot_rx_state_reg[18]_23\,
      O => \data32_reg[31]\(31)
    );
\data32[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(12),
      O => \data32_reg[31]_0\(0)
    );
\data32[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(12),
      I2 => \FSM_onehot_rx_state_reg[18]_16\,
      O => \data32_reg[31]\(3)
    );
\data32[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_1\,
      O => \data32_reg[31]\(4)
    );
\data32[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_9\,
      O => \data32_reg[31]\(5)
    );
\data32[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \adr[6]_i_2_n_0\,
      I1 => \adr[6]_i_3_n_0\,
      I2 => \out\(11),
      I3 => \FSM_onehot_rx_state_reg[18]_30\,
      O => \data32_reg[31]\(6)
    );
\data32[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \out\(18),
      I1 => \FSM_onehot_rx_state[17]_i_2_n_0\,
      I2 => \out\(11),
      O => \data32_reg[31]_0\(1)
    );
\data32[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[7]_i_3_n_0\,
      I1 => \out\(11),
      I2 => \FSM_onehot_rx_state_reg[18]_17\,
      O => \data32_reg[31]\(7)
    );
\data32[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[4]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_2\,
      O => \data32_reg[31]\(8)
    );
\data32[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \adr[5]_i_2_n_0\,
      I1 => \out\(10),
      I2 => \FSM_onehot_rx_state_reg[18]_10\,
      O => \data32_reg[31]\(9)
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
      INIT => X"FFFF7F00FFFFFFFF"
    )
        port map (
      I0 => subcnt(0),
      I1 => subcnt(1),
      I2 => subcnt(2),
      I3 => \subcnt[3]_i_6_n_0\,
      I4 => reset_48_reg_0,
      I5 => clk_locked,
      O => \nxt_bitcnt[3]_i_1__0_n_0\
    );
\nxt_bitcnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => subcnt(3),
      I1 => subcnt(2),
      I2 => subcnt(1),
      I3 => subcnt(0),
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
      INIT => X"0000000000000100"
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
      INIT => X"0000000000000010"
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
\nxt_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(1),
      I2 => bitcnt(0),
      I3 => bitcnt(2),
      I4 => \nxt_data[7]_i_3_n_0\,
      O => p_0_in(2)
    );
\nxt_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(0),
      I4 => \nxt_data[7]_i_3_n_0\,
      O => p_0_in(3)
    );
\nxt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => \nxt_data[7]_i_3_n_0\,
      I2 => bitcnt(3),
      I3 => nxt_bitcnt,
      I4 => bitcnt(0),
      I5 => bitcnt(1),
      O => p_0_in(4)
    );
\nxt_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => nxt_bitcnt,
      I1 => bitcnt(2),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => \nxt_data[7]_i_3_n_0\,
      I5 => bitcnt(3),
      O => p_0_in(5)
    );
\nxt_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \nxt_data[7]_i_3_n_0\,
      I1 => bitcnt(3),
      I2 => bitcnt(2),
      I3 => bitcnt(1),
      I4 => bitcnt(0),
      I5 => nxt_bitcnt,
      O => p_0_in(6)
    );
\nxt_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(0),
      I2 => bitcnt(1),
      I3 => bitcnt(2),
      I4 => \nxt_data[7]_i_3_n_0\,
      O => p_0_in(7)
    );
\nxt_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      D => D(0),
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
      I1 => \subcnt[3]_i_6_n_0\,
      O => \subcnt[0]_i_1_n_0\
    );
\subcnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => subcnt(0),
      I1 => subcnt(1),
      I2 => \subcnt[3]_i_6_n_0\,
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
      I3 => \subcnt[3]_i_6_n_0\,
      O => \subcnt[2]_i_1_n_0\
    );
\subcnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => \subcnt[3]_i_3_n_0\,
      I1 => subcnt(3),
      I2 => D(0),
      I3 => bitcnt(3),
      I4 => \subcnt[3]_i_4_n_0\,
      I5 => reset_48_reg,
      O => \subcnt[3]_i_1__0_n_0\
    );
\subcnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => subcnt(0),
      I1 => subcnt(1),
      I2 => subcnt(2),
      I3 => subcnt(3),
      I4 => \subcnt[3]_i_6_n_0\,
      O => \subcnt[3]_i_2_n_0\
    );
\subcnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bitcnt(0),
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      O => \subcnt[3]_i_3_n_0\
    );
\subcnt[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => subcnt(2),
      I1 => subcnt(0),
      I2 => subcnt(1),
      O => \subcnt[3]_i_4_n_0\
    );
\subcnt[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(3),
      I2 => bitcnt(0),
      I3 => bitcnt(1),
      I4 => subcnt(3),
      I5 => D(0),
      O => \subcnt[3]_i_6_n_0\
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
timestamp_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => dec_data(5),
      I1 => \^fsm_onehot_rx_state_reg[17]\(14),
      I2 => timestamp_enable,
      O => timestamp_enable_reg
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
    reset_48_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_locked : in STD_LOGIC;
    reset_48_reg_0 : in STD_LOGIC;
    \nxt_char_cnt_reg[2]\ : in STD_LOGIC;
    \nxt_char_cnt_reg[3]\ : in STD_LOGIC;
    sendstring : in STD_LOGIC;
    enc_wr_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rx_state_reg[15]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute SOFT_HLUTNM of \nxt_bitcnt[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \nxt_bitcnt[1]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \nxt_bitcnt[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_3__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \nxt_bitcnt[3]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \subcnt[1]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \subcnt[2]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \subcnt[3]_i_3__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of tx_i_3 : label is "soft_lutpair48";
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
      INIT => X"20"
    )
        port map (
      I0 => \^nxt_char_cnt_reg[0]\(0),
      I1 => reset_48_reg_0,
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
      INIT => X"DF"
    )
        port map (
      I0 => enc_busy,
      I1 => reset_48_reg_0,
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
\nxt_char_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF7"
    )
        port map (
      I0 => \nxt_char_cnt_reg[2]\,
      I1 => \nxt_char_cnt_reg[3]\,
      I2 => sendstring,
      I3 => Q(3),
      I4 => enc_busy,
      I5 => enc_wr_reg_0(0),
      O => \^nxt_char_cnt_reg[0]\(0)
    );
\nxt_enc_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080888888888"
    )
        port map (
      I0 => reset_48_reg,
      I1 => \^nxt_char_cnt_reg[0]\(0),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => E(0)
    );
sendstring_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg[15]\,
      I1 => sendstring,
      I2 => enc_busy,
      I3 => \out\(0),
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
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_locked,
      I1 => reset_48_reg_0,
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
      INIT => X"0000EA0000000000"
    )
        port map (
      I0 => tx_done,
      I1 => tx_done_i_2_n_0,
      I2 => \nxt_bitcnt[3]_i_4_n_0\,
      I3 => clk_locked,
      I4 => reset_48_reg_0,
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
    ones : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_O_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_O_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_O_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \e_reg[8]\ : out STD_LOGIC;
    \queue_reg[15][hCounter]_10_sp_1\ : in STD_LOGIC;
    O_buff_clkpixel : in STD_LOGIC;
    \queue_reg[15][hCounter]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \queue_reg[15][hCounter][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \queue_reg[15][vCounter][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][vCounter][11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \queue_reg[15][hCounter][10]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    blank : in STD_LOGIC
  );
end image_driver;

architecture STRUCTURE of image_driver is
  signal \RED_O2_carry__0_n_1\ : STD_LOGIC;
  signal \RED_O2_carry__0_n_2\ : STD_LOGIC;
  signal \RED_O2_carry__0_n_3\ : STD_LOGIC;
  signal RED_O2_carry_n_0 : STD_LOGIC;
  signal RED_O2_carry_n_1 : STD_LOGIC;
  signal RED_O2_carry_n_2 : STD_LOGIC;
  signal RED_O2_carry_n_3 : STD_LOGIC;
  signal \RED_O3_carry__0_n_1\ : STD_LOGIC;
  signal \RED_O3_carry__0_n_2\ : STD_LOGIC;
  signal \RED_O3_carry__0_n_3\ : STD_LOGIC;
  signal RED_O3_carry_n_0 : STD_LOGIC;
  signal RED_O3_carry_n_1 : STD_LOGIC;
  signal RED_O3_carry_n_2 : STD_LOGIC;
  signal RED_O3_carry_n_3 : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^ones\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \queue_reg[15][hCounter]_10_sn_1\ : STD_LOGIC;
  signal NLW_RED_O2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_RED_O2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RED_O3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_RED_O3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  ones(0) <= \^ones\(0);
  \queue_reg[15][hCounter]_10_sn_1\ <= \queue_reg[15][hCounter]_10_sp_1\;
RED_O2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RED_O2_carry_n_0,
      CO(2) => RED_O2_carry_n_1,
      CO(1) => RED_O2_carry_n_2,
      CO(0) => RED_O2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_RED_O2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][6]\(3 downto 0)
    );
\RED_O2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RED_O2_carry_n_0,
      CO(3) => \RED_O_reg[0]_1\(0),
      CO(2) => \RED_O2_carry__0_n_1\,
      CO(1) => \RED_O2_carry__0_n_2\,
      CO(0) => \RED_O2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \queue_reg[15][vCounter][10]\(1 downto 0),
      O(3 downto 0) => \NLW_RED_O2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
RED_O3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RED_O3_carry_n_0,
      CO(2) => RED_O3_carry_n_1,
      CO(1) => RED_O3_carry_n_2,
      CO(0) => RED_O3_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \queue_reg[15][hCounter][6]\(3 downto 0),
      O(3 downto 0) => NLW_RED_O3_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \queue_reg[15][hCounter][6]_0\(3 downto 0)
    );
\RED_O3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RED_O3_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \RED_O3_carry__0_n_1\,
      CO(1) => \RED_O3_carry__0_n_2\,
      CO(0) => \RED_O3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \queue_reg[15][hCounter][10]_0\(1 downto 0),
      O(3 downto 0) => \NLW_RED_O3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_1(3 downto 0)
    );
\RED_O_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => O_buff_clkpixel,
      CE => '1',
      D => \queue_reg[15][hCounter]_10_sn_1\,
      Q => \^ones\(0),
      R => '0'
    );
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \queue_reg[15][hCounter]\(3 downto 0),
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][hCounter][3]\(3 downto 0)
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \queue_reg[15][hCounter]\(7 downto 4),
      O(3 downto 0) => \NLW__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][hCounter][7]\(3 downto 0)
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \queue_reg[15][hCounter]\(11 downto 8),
      O(3 downto 0) => \NLW__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][hCounter][11]\(3 downto 0)
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \RED_O_reg[0]_0\(0),
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0(3 downto 0)
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \queue_reg[15][vCounter]\(3 downto 0),
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][3]\(3 downto 0)
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \queue_reg[15][vCounter]\(7 downto 4),
      O(3 downto 0) => \NLW__inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][7]\(3 downto 0)
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \queue_reg[15][vCounter]\(11 downto 8),
      O(3 downto 0) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \queue_reg[15][vCounter][11]\(3 downto 0)
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \RED_O_reg[0]_2\(0),
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => UNISIM_RAM0_0(3 downto 0)
    );
\e[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^ones\(0),
      I1 => blank,
      O => \e_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_rx_ddr_based is
  port (
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    DIBDI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC;
    global_reset : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    RESET_O : in STD_LOGIC
  );
end spi_rx_ddr_based;

architecture STRUCTURE of spi_rx_ddr_based is
  signal \^dibdi\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Q1 : STD_LOGIC;
  signal Q2 : STD_LOGIC;
  signal WR_O_i_1_n_0 : STD_LOGIC;
  signal bitcnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \bitcnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bitcnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \nxt_data[9]_i_1_n_0\ : STD_LOGIC;
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_MOSI : label is "TRUE";
  attribute box_type : string;
  attribute box_type of IDDR_MOSI : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcnt[3]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \bitcnt[4]_i_1__0\ : label is "soft_lutpair80";
begin
  DIBDI(31 downto 0) <= \^dibdi\(31 downto 0);
IDDR_MOSI: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => SPI_MOSI_I_IBUF,
      Q1 => Q1,
      Q2 => Q2,
      R => '0',
      S => '0'
    );
WR_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => bitcnt(2),
      I3 => bitcnt(1),
      I4 => RESET_O,
      I5 => clk_locked,
      O => WR_O_i_1_n_0
    );
WR_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => WR_O_i_1_n_0,
      Q => WEBWE(0),
      R => '0'
    );
\bitcnt[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcnt(1),
      O => \bitcnt[1]_i_1__0_n_0\
    );
\bitcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => clk_locked,
      I1 => RESET_O,
      I2 => bitcnt(2),
      I3 => bitcnt(1),
      O => \bitcnt[2]_i_1_n_0\
    );
\bitcnt[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      O => \bitcnt[3]_i_1__0_n_0\
    );
\bitcnt[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => bitcnt(2),
      I3 => bitcnt(1),
      O => \bitcnt[4]_i_1__0_n_0\
    );
\bitcnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \bitcnt[1]_i_1__0_n_0\,
      Q => bitcnt(1),
      S => global_reset
    );
\bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \bitcnt[2]_i_1_n_0\,
      Q => bitcnt(2),
      R => '0'
    );
\bitcnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \bitcnt[3]_i_1__0_n_0\,
      Q => bitcnt(3),
      S => global_reset
    );
\bitcnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \bitcnt[4]_i_1__0_n_0\,
      Q => bitcnt(4),
      S => global_reset
    );
\nxt_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(0),
      O => \nxt_data[0]_i_1_n_0\
    );
\nxt_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(10),
      O => \nxt_data[10]_i_1_n_0\
    );
\nxt_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(11),
      O => \nxt_data[11]_i_1_n_0\
    );
\nxt_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(12),
      O => \nxt_data[12]_i_1_n_0\
    );
\nxt_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(13),
      O => \nxt_data[13]_i_1_n_0\
    );
\nxt_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(14),
      O => \nxt_data[14]_i_1_n_0\
    );
\nxt_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00008000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(15),
      O => \nxt_data[15]_i_1_n_0\
    );
\nxt_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(16),
      O => \nxt_data[16]_i_1_n_0\
    );
\nxt_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(17),
      O => \nxt_data[17]_i_1_n_0\
    );
\nxt_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(18),
      O => \nxt_data[18]_i_1_n_0\
    );
\nxt_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(4),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(19),
      O => \nxt_data[19]_i_1_n_0\
    );
\nxt_data[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000010"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(1),
      O => \nxt_data[1]_i_1__0_n_0\
    );
\nxt_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(20),
      O => \nxt_data[20]_i_1_n_0\
    );
\nxt_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00004000"
    )
        port map (
      I0 => bitcnt(3),
      I1 => bitcnt(4),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(21),
      O => \nxt_data[21]_i_1_n_0\
    );
\nxt_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(22),
      O => \nxt_data[22]_i_1_n_0\
    );
\nxt_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00008000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(4),
      I4 => bitcnt(3),
      I5 => \^dibdi\(23),
      O => \nxt_data[23]_i_1_n_0\
    );
\nxt_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(24),
      O => \nxt_data[24]_i_1_n_0\
    );
\nxt_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10000000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(25),
      O => \nxt_data[25]_i_1_n_0\
    );
\nxt_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(26),
      O => \nxt_data[26]_i_1_n_0\
    );
\nxt_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF40000000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(27),
      O => \nxt_data[27]_i_1_n_0\
    );
\nxt_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(3),
      I2 => bitcnt(4),
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(28),
      O => \nxt_data[28]_i_1_n_0\
    );
\nxt_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF40000000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(29),
      O => \nxt_data[29]_i_1_n_0\
    );
\nxt_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(2),
      O => \nxt_data[2]_i_1_n_0\
    );
\nxt_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(30),
      O => \nxt_data[30]_i_1_n_0\
    );
\nxt_data[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(2),
      I2 => bitcnt(3),
      I3 => bitcnt(4),
      I4 => Q2,
      I5 => \^dibdi\(31),
      O => \nxt_data[31]_i_1__0_n_0\
    );
\nxt_data[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(1),
      I4 => bitcnt(2),
      I5 => \^dibdi\(3),
      O => \nxt_data[3]_i_1__0_n_0\
    );
\nxt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(2),
      I2 => bitcnt(1),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(4),
      O => \nxt_data[4]_i_1_n_0\
    );
\nxt_data[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(4),
      I1 => bitcnt(3),
      I2 => Q2,
      I3 => bitcnt(2),
      I4 => bitcnt(1),
      I5 => \^dibdi\(5),
      O => \nxt_data[5]_i_1__0_n_0\
    );
\nxt_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(6),
      O => \nxt_data[6]_i_1_n_0\
    );
\nxt_data[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000080"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(7),
      O => \nxt_data[7]_i_1__0_n_0\
    );
\nxt_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => Q1,
      I1 => bitcnt(1),
      I2 => bitcnt(2),
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(8),
      O => \nxt_data[8]_i_1_n_0\
    );
\nxt_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00001000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(1),
      I2 => Q2,
      I3 => bitcnt(3),
      I4 => bitcnt(4),
      I5 => \^dibdi\(9),
      O => \nxt_data[9]_i_1_n_0\
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[0]_i_1_n_0\,
      Q => \^dibdi\(0),
      R => global_reset
    );
\nxt_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[10]_i_1_n_0\,
      Q => \^dibdi\(10),
      R => global_reset
    );
\nxt_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[11]_i_1_n_0\,
      Q => \^dibdi\(11),
      R => global_reset
    );
\nxt_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[12]_i_1_n_0\,
      Q => \^dibdi\(12),
      R => global_reset
    );
\nxt_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[13]_i_1_n_0\,
      Q => \^dibdi\(13),
      R => global_reset
    );
\nxt_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[14]_i_1_n_0\,
      Q => \^dibdi\(14),
      R => global_reset
    );
\nxt_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[15]_i_1_n_0\,
      Q => \^dibdi\(15),
      R => global_reset
    );
\nxt_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[16]_i_1_n_0\,
      Q => \^dibdi\(16),
      R => global_reset
    );
\nxt_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[17]_i_1_n_0\,
      Q => \^dibdi\(17),
      R => global_reset
    );
\nxt_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[18]_i_1_n_0\,
      Q => \^dibdi\(18),
      R => global_reset
    );
\nxt_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[19]_i_1_n_0\,
      Q => \^dibdi\(19),
      R => global_reset
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[1]_i_1__0_n_0\,
      Q => \^dibdi\(1),
      R => global_reset
    );
\nxt_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[20]_i_1_n_0\,
      Q => \^dibdi\(20),
      R => global_reset
    );
\nxt_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[21]_i_1_n_0\,
      Q => \^dibdi\(21),
      R => global_reset
    );
\nxt_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[22]_i_1_n_0\,
      Q => \^dibdi\(22),
      R => global_reset
    );
\nxt_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[23]_i_1_n_0\,
      Q => \^dibdi\(23),
      R => global_reset
    );
\nxt_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[24]_i_1_n_0\,
      Q => \^dibdi\(24),
      R => global_reset
    );
\nxt_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[25]_i_1_n_0\,
      Q => \^dibdi\(25),
      R => global_reset
    );
\nxt_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[26]_i_1_n_0\,
      Q => \^dibdi\(26),
      R => global_reset
    );
\nxt_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[27]_i_1_n_0\,
      Q => \^dibdi\(27),
      R => global_reset
    );
\nxt_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[28]_i_1_n_0\,
      Q => \^dibdi\(28),
      R => global_reset
    );
\nxt_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[29]_i_1_n_0\,
      Q => \^dibdi\(29),
      R => global_reset
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[2]_i_1_n_0\,
      Q => \^dibdi\(2),
      R => global_reset
    );
\nxt_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[30]_i_1_n_0\,
      Q => \^dibdi\(30),
      R => global_reset
    );
\nxt_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[31]_i_1__0_n_0\,
      Q => \^dibdi\(31),
      R => global_reset
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[3]_i_1__0_n_0\,
      Q => \^dibdi\(3),
      R => global_reset
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[4]_i_1_n_0\,
      Q => \^dibdi\(4),
      R => global_reset
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[5]_i_1__0_n_0\,
      Q => \^dibdi\(5),
      R => global_reset
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[6]_i_1_n_0\,
      Q => \^dibdi\(6),
      R => global_reset
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[7]_i_1__0_n_0\,
      Q => \^dibdi\(7),
      R => global_reset
    );
\nxt_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[8]_i_1_n_0\,
      Q => \^dibdi\(8),
      R => global_reset
    );
\nxt_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_SCLK_I_IBUF,
      CE => '1',
      D => \nxt_data[9]_i_1_n_0\,
      Q => \^dibdi\(9),
      R => global_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_tx_ddr_based is
  port (
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    sclk_active : out STD_LOGIC;
    sclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    reset_48_reg : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end spi_tx_ddr_based;

architecture STRUCTURE of spi_tx_ddr_based is
  signal D1 : STD_LOGIC;
  signal D1_i_4_n_0 : STD_LOGIC;
  signal D1_i_5_n_0 : STD_LOGIC;
  signal D1_i_6_n_0 : STD_LOGIC;
  signal D1_i_7_n_0 : STD_LOGIC;
  signal D1_reg_i_1_n_0 : STD_LOGIC;
  signal D1_reg_i_2_n_0 : STD_LOGIC;
  signal D1_reg_i_3_n_0 : STD_LOGIC;
  signal D2 : STD_LOGIC;
  signal D2_i_4_n_0 : STD_LOGIC;
  signal D2_i_5_n_0 : STD_LOGIC;
  signal D2_i_6_n_0 : STD_LOGIC;
  signal D2_i_7_n_0 : STD_LOGIC;
  signal D2_reg_i_1_n_0 : STD_LOGIC;
  signal D2_reg_i_2_n_0 : STD_LOGIC;
  signal D2_reg_i_3_n_0 : STD_LOGIC;
  signal \bitcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \nxt_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^sclk_active\ : STD_LOGIC;
  signal sclk_active_i_1_n_0 : STD_LOGIC;
  signal NLW_ODDR_MOSI_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_MOSI_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_SCLK_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_SCLK_S_UNCONNECTED : STD_LOGIC;
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_MOSI : label is "TRUE";
  attribute box_type : string;
  attribute box_type of ODDR_MOSI : label is "PRIMITIVE";
  attribute \__SRVAL\ of ODDR_SCLK : label is "TRUE";
  attribute box_type of ODDR_SCLK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcnt[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bitcnt[2]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \bitcnt[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \bitcnt[4]_i_2\ : label is "soft_lutpair78";
begin
  sclk_active <= \^sclk_active\;
D1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(6),
      I1 => data(4),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(2),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(0),
      O => D1_i_4_n_0
    );
D1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(14),
      I1 => data(12),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(10),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(8),
      O => D1_i_5_n_0
    );
D1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(22),
      I1 => data(20),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(18),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(16),
      O => D1_i_6_n_0
    );
D1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(30),
      I1 => data(28),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(26),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(24),
      O => D1_i_7_n_0
    );
D1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D1_reg_i_1_n_0,
      Q => D1,
      R => SR(0)
    );
D1_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => D1_reg_i_2_n_0,
      I1 => D1_reg_i_3_n_0,
      O => D1_reg_i_1_n_0,
      S => \bitcnt_reg__0\(4)
    );
D1_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => D1_i_4_n_0,
      I1 => D1_i_5_n_0,
      O => D1_reg_i_2_n_0,
      S => \bitcnt_reg__0\(3)
    );
D1_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => D1_i_6_n_0,
      I1 => D1_i_7_n_0,
      O => D1_reg_i_3_n_0,
      S => \bitcnt_reg__0\(3)
    );
D2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(7),
      I1 => data(5),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(3),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(1),
      O => D2_i_4_n_0
    );
D2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(15),
      I1 => data(13),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(11),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(9),
      O => D2_i_5_n_0
    );
D2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(23),
      I1 => data(21),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(19),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(17),
      O => D2_i_6_n_0
    );
D2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(31),
      I1 => data(29),
      I2 => \bitcnt_reg__0\(2),
      I3 => data(27),
      I4 => \bitcnt_reg__0\(1),
      I5 => data(25),
      O => D2_i_7_n_0
    );
D2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D2_reg_i_1_n_0,
      Q => D2,
      R => SR(0)
    );
D2_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => D2_reg_i_2_n_0,
      I1 => D2_reg_i_3_n_0,
      O => D2_reg_i_1_n_0,
      S => \bitcnt_reg__0\(4)
    );
D2_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => D2_i_4_n_0,
      I1 => D2_i_5_n_0,
      O => D2_reg_i_2_n_0,
      S => \bitcnt_reg__0\(3)
    );
D2_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => D2_i_6_n_0,
      I1 => D2_i_7_n_0,
      O => D2_reg_i_3_n_0,
      S => \bitcnt_reg__0\(3)
    );
ODDR_MOSI: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => sclk,
      CE => '1',
      D1 => D1,
      D2 => D2,
      Q => SPI_MOSI_O_OBUF,
      R => NLW_ODDR_MOSI_R_UNCONNECTED,
      S => NLW_ODDR_MOSI_S_UNCONNECTED
    );
ODDR_SCLK: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => sclk,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => SPI_SCLK_O_OBUF,
      R => NLW_ODDR_SCLK_R_UNCONNECTED,
      S => NLW_ODDR_SCLK_S_UNCONNECTED
    );
\bitcnt[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bitcnt_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\bitcnt[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bitcnt_reg__0\(2),
      I1 => \bitcnt_reg__0\(1),
      O => \p_0_in__1\(2)
    );
\bitcnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bitcnt_reg__0\(3),
      I1 => \bitcnt_reg__0\(1),
      I2 => \bitcnt_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\bitcnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8000FFFFFFFF"
    )
        port map (
      I0 => \bitcnt_reg__0\(1),
      I1 => \bitcnt_reg__0\(2),
      I2 => \bitcnt_reg__0\(3),
      I3 => \bitcnt_reg__0\(4),
      I4 => reset_48_reg,
      I5 => clk_locked,
      O => \bitcnt[4]_i_1_n_0\
    );
\bitcnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bitcnt_reg__0\(4),
      I1 => \bitcnt_reg__0\(3),
      I2 => \bitcnt_reg__0\(2),
      I3 => \bitcnt_reg__0\(1),
      O => \p_0_in__1\(4)
    );
\bitcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => \bitcnt_reg__0\(1),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => \bitcnt_reg__0\(2),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => \bitcnt_reg__0\(3),
      R => \bitcnt[4]_i_1_n_0\
    );
\bitcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__1\(4),
      Q => \bitcnt_reg__0\(4),
      R => \bitcnt[4]_i_1_n_0\
    );
\nxt_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \bitcnt_reg__0\(1),
      I1 => \bitcnt_reg__0\(2),
      I2 => \bitcnt_reg__0\(3),
      I3 => \bitcnt_reg__0\(4),
      I4 => reset_48_reg,
      I5 => clk_locked,
      O => \nxt_data[31]_i_1_n_0\
    );
\nxt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(0),
      Q => data(0),
      R => '0'
    );
\nxt_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(10),
      Q => data(10),
      R => '0'
    );
\nxt_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(11),
      Q => data(11),
      R => '0'
    );
\nxt_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(12),
      Q => data(12),
      R => '0'
    );
\nxt_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(13),
      Q => data(13),
      R => '0'
    );
\nxt_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(14),
      Q => data(14),
      R => '0'
    );
\nxt_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(15),
      Q => data(15),
      R => '0'
    );
\nxt_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(16),
      Q => data(16),
      R => '0'
    );
\nxt_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(17),
      Q => data(17),
      R => '0'
    );
\nxt_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(18),
      Q => data(18),
      R => '0'
    );
\nxt_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(19),
      Q => data(19),
      R => '0'
    );
\nxt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(1),
      Q => data(1),
      R => '0'
    );
\nxt_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(20),
      Q => data(20),
      R => '0'
    );
\nxt_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(21),
      Q => data(21),
      R => '0'
    );
\nxt_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(22),
      Q => data(22),
      R => '0'
    );
\nxt_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(23),
      Q => data(23),
      R => '0'
    );
\nxt_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(24),
      Q => data(24),
      R => '0'
    );
\nxt_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(25),
      Q => data(25),
      R => '0'
    );
\nxt_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(26),
      Q => data(26),
      R => '0'
    );
\nxt_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(27),
      Q => data(27),
      R => '0'
    );
\nxt_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(28),
      Q => data(28),
      R => '0'
    );
\nxt_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(29),
      Q => data(29),
      R => '0'
    );
\nxt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(2),
      Q => data(2),
      R => '0'
    );
\nxt_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(30),
      Q => data(30),
      R => '0'
    );
\nxt_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(31),
      Q => data(31),
      R => '0'
    );
\nxt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(3),
      Q => data(3),
      R => '0'
    );
\nxt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(4),
      Q => data(4),
      R => '0'
    );
\nxt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(5),
      Q => data(5),
      R => '0'
    );
\nxt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(6),
      Q => data(6),
      R => '0'
    );
\nxt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(7),
      Q => data(7),
      R => '0'
    );
\nxt_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(8),
      Q => data(8),
      R => '0'
    );
\nxt_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \nxt_data[31]_i_1_n_0\,
      D => D(9),
      Q => data(9),
      R => '0'
    );
sclk_active_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^sclk_active\,
      I1 => reset_48_reg,
      I2 => clk_locked,
      O => sclk_active_i_1_n_0
    );
sclk_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sclk_active_i_1_n_0,
      Q => \^sclk_active\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_gen is
  port (
    blank : out STD_LOGIC;
    \queue_reg[15][hSync]\ : out STD_LOGIC;
    \queue_reg[15][vSync]\ : out STD_LOGIC;
    \queue_reg[15][hCounter]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \queue_reg[15][vCounter]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_5\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED_O_reg[0]_6\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED_O_reg[0]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \RED_O_reg[0]_9\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED_O_reg[0]_10\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED_O_reg[0]_11\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_buff_clkpixel : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 23 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][vCounter][11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][vCounter][10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \queue_reg[15][hCounter][11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    e12_out : in STD_LOGIC
  );
end vga_gen;

architecture STRUCTURE of vga_gen is
  signal \^blank\ : STD_LOGIC;
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
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
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
  signal \^queue_reg[15][hcounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^queue_reg[15][hsync]\ : STD_LOGIC;
  signal \^queue_reg[15][vcounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
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
  attribute SOFT_HLUTNM of \e[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \e[2]_i_1\ : label is "soft_lutpair81";
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
  blank <= \^blank\;
  \queue_reg[15][hCounter]\(11 downto 0) <= \^queue_reg[15][hcounter]\(11 downto 0);
  \queue_reg[15][hSync]\ <= \^queue_reg[15][hsync]\;
  \queue_reg[15][vCounter]\(11 downto 0) <= \^queue_reg[15][vcounter]\(11 downto 0);
\RED_O2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(10),
      I1 => DOADO(10),
      I2 => DOADO(11),
      I3 => \^queue_reg[15][vcounter]\(11),
      O => \RED_O_reg[0]_6\(1)
    );
\RED_O2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(8),
      I1 => DOADO(8),
      I2 => DOADO(9),
      I3 => \^queue_reg[15][vcounter]\(9),
      O => \RED_O_reg[0]_6\(0)
    );
\RED_O2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(10),
      I1 => DOADO(10),
      I2 => \^queue_reg[15][vcounter]\(11),
      I3 => DOADO(11),
      O => \RED_O_reg[0]_5\(1)
    );
\RED_O2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(8),
      I1 => DOADO(8),
      I2 => \^queue_reg[15][vcounter]\(9),
      I3 => DOADO(9),
      O => \RED_O_reg[0]_5\(0)
    );
RED_O2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(6),
      I1 => DOADO(6),
      I2 => DOADO(7),
      I3 => \^queue_reg[15][vcounter]\(7),
      O => DI(3)
    );
RED_O2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(4),
      I1 => DOADO(4),
      I2 => DOADO(5),
      I3 => \^queue_reg[15][vcounter]\(5),
      O => DI(2)
    );
RED_O2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(2),
      I1 => DOADO(2),
      I2 => DOADO(3),
      I3 => \^queue_reg[15][vcounter]\(3),
      O => DI(1)
    );
RED_O2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(0),
      I1 => DOADO(0),
      I2 => DOADO(1),
      I3 => \^queue_reg[15][vcounter]\(1),
      O => DI(0)
    );
RED_O2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(6),
      I1 => DOADO(6),
      I2 => \^queue_reg[15][vcounter]\(7),
      I3 => DOADO(7),
      O => \RED_O_reg[0]_4\(3)
    );
RED_O2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(4),
      I1 => DOADO(4),
      I2 => \^queue_reg[15][vcounter]\(5),
      I3 => DOADO(5),
      O => \RED_O_reg[0]_4\(2)
    );
RED_O2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(2),
      I1 => DOADO(2),
      I2 => \^queue_reg[15][vcounter]\(3),
      I3 => DOADO(3),
      O => \RED_O_reg[0]_4\(1)
    );
RED_O2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(0),
      I1 => DOADO(0),
      I2 => \^queue_reg[15][vcounter]\(1),
      I3 => DOADO(1),
      O => \RED_O_reg[0]_4\(0)
    );
\RED_O3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(10),
      I1 => DOADO(22),
      I2 => DOADO(23),
      I3 => \^queue_reg[15][hcounter]\(11),
      O => \RED_O_reg[0]_10\(1)
    );
\RED_O3_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(8),
      I1 => DOADO(20),
      I2 => DOADO(21),
      I3 => \^queue_reg[15][hcounter]\(9),
      O => \RED_O_reg[0]_10\(0)
    );
\RED_O3_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(10),
      I1 => DOADO(22),
      I2 => \^queue_reg[15][hcounter]\(11),
      I3 => DOADO(23),
      O => \RED_O_reg[0]_9\(1)
    );
\RED_O3_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(8),
      I1 => DOADO(20),
      I2 => \^queue_reg[15][hcounter]\(9),
      I3 => DOADO(21),
      O => \RED_O_reg[0]_9\(0)
    );
RED_O3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(6),
      I1 => DOADO(18),
      I2 => DOADO(19),
      I3 => \^queue_reg[15][hcounter]\(7),
      O => \RED_O_reg[0]_8\(3)
    );
RED_O3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(4),
      I1 => DOADO(16),
      I2 => DOADO(17),
      I3 => \^queue_reg[15][hcounter]\(5),
      O => \RED_O_reg[0]_8\(2)
    );
RED_O3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(2),
      I1 => DOADO(14),
      I2 => DOADO(15),
      I3 => \^queue_reg[15][hcounter]\(3),
      O => \RED_O_reg[0]_8\(1)
    );
RED_O3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(0),
      I1 => DOADO(12),
      I2 => DOADO(13),
      I3 => \^queue_reg[15][hcounter]\(1),
      O => \RED_O_reg[0]_8\(0)
    );
RED_O3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(6),
      I1 => DOADO(18),
      I2 => \^queue_reg[15][hcounter]\(7),
      I3 => DOADO(19),
      O => \RED_O_reg[0]_7\(3)
    );
RED_O3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(4),
      I1 => DOADO(16),
      I2 => \^queue_reg[15][hcounter]\(5),
      I3 => DOADO(17),
      O => \RED_O_reg[0]_7\(2)
    );
RED_O3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(2),
      I1 => DOADO(14),
      I2 => \^queue_reg[15][hcounter]\(3),
      I3 => DOADO(15),
      O => \RED_O_reg[0]_7\(1)
    );
RED_O3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(0),
      I1 => DOADO(12),
      I2 => \^queue_reg[15][hcounter]\(1),
      I3 => DOADO(13),
      O => \RED_O_reg[0]_7\(0)
    );
\RED_O[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => CO(0),
      I1 => \queue_reg[15][vCounter][11]_0\(0),
      I2 => \queue_reg[15][vCounter][10]_0\(0),
      I3 => \queue_reg[15][hCounter][11]_0\(0),
      O => \RED_O_reg[0]_11\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(7),
      I1 => UNISIM_RAM0(2),
      O => \RED_O_reg[0]_0\(3)
    );
\_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(6),
      I1 => UNISIM_RAM0(1),
      O => \RED_O_reg[0]_0\(2)
    );
\_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(5),
      I1 => UNISIM_RAM0(0),
      O => \RED_O_reg[0]_0\(1)
    );
\_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(4),
      I1 => O(3),
      O => \RED_O_reg[0]_0\(0)
    );
\_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(11),
      I1 => UNISIM_RAM0_0(2),
      O => \RED_O_reg[0]_1\(3)
    );
\_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(10),
      I1 => UNISIM_RAM0_0(1),
      O => \RED_O_reg[0]_1\(2)
    );
\_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(9),
      I1 => UNISIM_RAM0_0(0),
      O => \RED_O_reg[0]_1\(1)
    );
\_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(8),
      I1 => UNISIM_RAM0(3),
      O => \RED_O_reg[0]_1\(0)
    );
\_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(3),
      I1 => O(2),
      O => \RED_O_reg[0]\(3)
    );
\_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(2),
      I1 => O(1),
      O => \RED_O_reg[0]\(2)
    );
\_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(1),
      I1 => O(0),
      O => \RED_O_reg[0]\(1)
    );
\_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][hcounter]\(0),
      I1 => DOADO(12),
      O => \RED_O_reg[0]\(0)
    );
\e[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^queue_reg[15][hsync]\,
      I1 => \^blank\,
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
      I1 => \^blank\,
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
      DI(1) => \i__carry_i_1__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4__1_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(10),
      I1 => \queue_reg[0][hCounter]\(11),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(7),
      I1 => UNISIM_RAM0_2(2),
      O => \RED_O_reg[0]_2\(3)
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
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(8),
      I1 => \queue_reg[0][vCounter]\(9),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(6),
      I1 => UNISIM_RAM0_2(1),
      O => \RED_O_reg[0]_2\(2)
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
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(10),
      I1 => \queue_reg[0][vCounter]\(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(5),
      I1 => UNISIM_RAM0_2(0),
      O => \RED_O_reg[0]_2\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      I1 => \queue_reg[0][vCounter]\(8),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(4),
      I1 => UNISIM_RAM0_1(3),
      O => \RED_O_reg[0]_2\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(11),
      I1 => UNISIM_RAM0_3(2),
      O => \RED_O_reg[0]_3\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(10),
      I1 => UNISIM_RAM0_3(1),
      O => \RED_O_reg[0]_3\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(9),
      I1 => UNISIM_RAM0_3(0),
      O => \RED_O_reg[0]_3\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(8),
      I1 => UNISIM_RAM0_2(3),
      O => \RED_O_reg[0]_3\(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(2),
      I1 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(9),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(8),
      I1 => \queue_reg[0][hCounter]\(9),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(3),
      I1 => UNISIM_RAM0_1(2),
      O => S(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(2),
      I1 => UNISIM_RAM0_1(1),
      O => S(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(1),
      I1 => UNISIM_RAM0_1(0),
      O => S(1)
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
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(3),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(2),
      I1 => \queue_reg[0][vCounter]\(3),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^queue_reg[15][vcounter]\(0),
      I1 => DOADO(0),
      O => S(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(0),
      I1 => \queue_reg[0][vCounter]\(1),
      O => \i__carry_i_5_n_0\
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
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(6),
      I1 => \queue_reg[0][vCounter]\(7),
      O => \i__carry_i_6_n_0\
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
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(4),
      I1 => \queue_reg[0][hCounter]\(5),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(4),
      I1 => \queue_reg[0][vCounter]\(5),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][vCounter]\(3),
      I1 => \queue_reg[0][vCounter]\(2),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \queue_reg[0][hCounter]\(3),
      I1 => \queue_reg[0][hCounter]\(2),
      O => \i__carry_i_8__0_n_0\
    );
\ltOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__1/i__carry_n_0\,
      CO(2) => \ltOp_inferred__1/i__carry_n_1\,
      CO(1) => \ltOp_inferred__1/i__carry_n_2\,
      CO(0) => \ltOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\ltOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp2_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__0_n_0\,
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
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8_n_0\
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
      Q => \^blank\,
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
      Q => \^queue_reg[15][hcounter]\(0),
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
      Q => \^queue_reg[15][hcounter]\(10),
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
      Q => \^queue_reg[15][hcounter]\(11),
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
      Q => \^queue_reg[15][hcounter]\(1),
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
      Q => \^queue_reg[15][hcounter]\(2),
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
      Q => \^queue_reg[15][hcounter]\(3),
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
      Q => \^queue_reg[15][hcounter]\(4),
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
      Q => \^queue_reg[15][hcounter]\(5),
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
      Q => \^queue_reg[15][hcounter]\(6),
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
      Q => \^queue_reg[15][hcounter]\(7),
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
      Q => \^queue_reg[15][hcounter]\(8),
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
      Q => \^queue_reg[15][hcounter]\(9),
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
      Q => \^queue_reg[15][vcounter]\(0),
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
      Q => \^queue_reg[15][vcounter]\(10),
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
      Q => \^queue_reg[15][vcounter]\(11),
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
      Q => \^queue_reg[15][vcounter]\(1),
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
      Q => \^queue_reg[15][vcounter]\(2),
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
      Q => \^queue_reg[15][vcounter]\(3),
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
      Q => \^queue_reg[15][vcounter]\(4),
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
      Q => \^queue_reg[15][vcounter]\(5),
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
      Q => \^queue_reg[15][vcounter]\(6),
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
      Q => \^queue_reg[15][vcounter]\(7),
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
      Q => \^queue_reg[15][vcounter]\(8),
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
      Q => \^queue_reg[15][vcounter]\(9),
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
    reset_48_reg : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    reset_48_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal DECODE_n_43 : STD_LOGIC;
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
  signal \FSM_onehot_rx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[18]_i_5_n_0\ : STD_LOGIC;
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
  signal \nxt_char_cnt[4]_i_4_n_0\ : STD_LOGIC;
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
  signal \nxt_enc_data[0]_i_21_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_22_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[0]_i_3_n_0\ : STD_LOGIC;
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
  signal \nxt_enc_data[1]_i_33_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[1]_i_34_n_0\ : STD_LOGIC;
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
  signal \nxt_enc_data[2]_i_2_n_0\ : STD_LOGIC;
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
  signal \nxt_enc_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[3]_i_4_n_0\ : STD_LOGIC;
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
  signal \nxt_enc_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_7_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_8_n_0\ : STD_LOGIC;
  signal \nxt_enc_data[6]_i_9_n_0\ : STD_LOGIC;
  signal \nxt_enc_data_reg[0]_i_4_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \nxt_char_cnt[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_char_cnt[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \nxt_char_cnt[4]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_char_cnt[4]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_12\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_18\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_22\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[0]_i_9\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_17\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_18\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_24\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_28\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_29\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_32\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_33\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[1]_i_7\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_18\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_20\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_21\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_23\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \nxt_enc_data[2]_i_24\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_12\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_13\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_14\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_15\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_17\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_18\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_19\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_21\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_22\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_23\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_24\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_25\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[3]_i_6\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nxt_enc_data[4]_i_3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_10\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_11\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_12\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_13\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_16\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_17\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_18\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_19\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_20\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_21\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_22\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_23\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_24\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_25\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_26\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_6\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \nxt_enc_data[6]_i_9\ : label is "soft_lutpair58";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  UNISIM_RAM0(6 downto 0) <= \^unisim_ram0\(6 downto 0);
DECODE: entity work.decode_serial
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(1) => DECODE_n_58,
      E(0) => DECODE_n_59,
      \FSM_onehot_rx_state_reg[0]\(0) => DECODE_n_68,
      \FSM_onehot_rx_state_reg[10]\ => \FSM_onehot_rx_state[0]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[15]\ => \FSM_onehot_rx_state[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[17]\(17) => DECODE_n_0,
      \FSM_onehot_rx_state_reg[17]\(16) => DECODE_n_1,
      \FSM_onehot_rx_state_reg[17]\(15) => DECODE_n_2,
      \FSM_onehot_rx_state_reg[17]\(14) => nxt_timestamp_enable,
      \FSM_onehot_rx_state_reg[17]\(13) => DECODE_n_4,
      \FSM_onehot_rx_state_reg[17]\(12) => DECODE_n_5,
      \FSM_onehot_rx_state_reg[17]\(11) => DECODE_n_6,
      \FSM_onehot_rx_state_reg[17]\(10) => DECODE_n_7,
      \FSM_onehot_rx_state_reg[17]\(9) => DECODE_n_8,
      \FSM_onehot_rx_state_reg[17]\(8) => DECODE_n_9,
      \FSM_onehot_rx_state_reg[17]\(7) => DECODE_n_10,
      \FSM_onehot_rx_state_reg[17]\(6) => DECODE_n_11,
      \FSM_onehot_rx_state_reg[17]\(5) => DECODE_n_12,
      \FSM_onehot_rx_state_reg[17]\(4) => DECODE_n_13,
      \FSM_onehot_rx_state_reg[17]\(3) => DECODE_n_14,
      \FSM_onehot_rx_state_reg[17]\(2) => DECODE_n_15,
      \FSM_onehot_rx_state_reg[17]\(1) => DECODE_n_16,
      \FSM_onehot_rx_state_reg[17]\(0) => DECODE_n_17,
      \FSM_onehot_rx_state_reg[18]\ => \FSM_onehot_rx_state[0]_i_4_n_0\,
      \FSM_onehot_rx_state_reg[18]_0\ => \data32[0]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_1\ => \data32[4]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_10\ => \data32[9]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_11\ => \data32[13]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_12\ => \data32[17]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_13\ => \data32[21]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_14\ => \data32[25]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_15\ => \data32[29]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_16\ => \data32[3]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_17\ => \data32[7]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_18\ => \data32[11]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_19\ => \data32[15]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_2\ => \data32[8]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_20\ => \data32[19]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_21\ => \data32[23]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_22\ => \data32[27]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_23\ => \data32[31]_i_3_n_0\,
      \FSM_onehot_rx_state_reg[18]_24\ => \data32[30]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_25\ => \data32[26]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_26\ => \data32[22]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_27\ => \data32[18]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_28\ => \data32[14]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_29\ => \data32[10]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_3\ => \data32[12]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_30\ => \data32[6]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_31\ => \data32[2]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_4\ => \data32[16]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_5\ => \data32[20]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_6\ => \data32[24]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_7\ => \data32[28]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_8\ => \data32[1]_i_2_n_0\,
      \FSM_onehot_rx_state_reg[18]_9\ => \data32[5]_i_2_n_0\,
      SR(0) => SR(0),
      \adr_reg[7]\(7) => DECODE_n_50,
      \adr_reg[7]\(6) => DECODE_n_51,
      \adr_reg[7]\(5) => DECODE_n_52,
      \adr_reg[7]\(4) => DECODE_n_53,
      \adr_reg[7]\(3) => DECODE_n_54,
      \adr_reg[7]\(2) => DECODE_n_55,
      \adr_reg[7]\(1) => DECODE_n_56,
      \adr_reg[7]\(0) => DECODE_n_57,
      clk_locked => clk_locked,
      \data32_reg[31]\(31) => DECODE_n_18,
      \data32_reg[31]\(30) => DECODE_n_19,
      \data32_reg[31]\(29) => DECODE_n_20,
      \data32_reg[31]\(28) => DECODE_n_21,
      \data32_reg[31]\(27) => DECODE_n_22,
      \data32_reg[31]\(26) => DECODE_n_23,
      \data32_reg[31]\(25) => DECODE_n_24,
      \data32_reg[31]\(24) => DECODE_n_25,
      \data32_reg[31]\(23) => DECODE_n_26,
      \data32_reg[31]\(22) => DECODE_n_27,
      \data32_reg[31]\(21) => DECODE_n_28,
      \data32_reg[31]\(20) => DECODE_n_29,
      \data32_reg[31]\(19) => DECODE_n_30,
      \data32_reg[31]\(18) => DECODE_n_31,
      \data32_reg[31]\(17) => DECODE_n_32,
      \data32_reg[31]\(16) => DECODE_n_33,
      \data32_reg[31]\(15) => DECODE_n_34,
      \data32_reg[31]\(14) => DECODE_n_35,
      \data32_reg[31]\(13) => DECODE_n_36,
      \data32_reg[31]\(12) => DECODE_n_37,
      \data32_reg[31]\(11) => DECODE_n_38,
      \data32_reg[31]\(10) => DECODE_n_39,
      \data32_reg[31]\(9) => DECODE_n_40,
      \data32_reg[31]\(8) => DECODE_n_41,
      \data32_reg[31]\(7) => DECODE_n_42,
      \data32_reg[31]\(6) => DECODE_n_43,
      \data32_reg[31]\(5) => DECODE_n_44,
      \data32_reg[31]\(4) => DECODE_n_45,
      \data32_reg[31]\(3) => DECODE_n_46,
      \data32_reg[31]\(2) => DECODE_n_47,
      \data32_reg[31]\(1) => DECODE_n_48,
      \data32_reg[31]\(0) => DECODE_n_49,
      \data32_reg[31]_0\(7) => DECODE_n_60,
      \data32_reg[31]_0\(6) => DECODE_n_61,
      \data32_reg[31]_0\(5) => DECODE_n_62,
      \data32_reg[31]_0\(4) => DECODE_n_63,
      \data32_reg[31]_0\(3) => DECODE_n_64,
      \data32_reg[31]_0\(2) => DECODE_n_65,
      \data32_reg[31]_0\(1) => DECODE_n_66,
      \data32_reg[31]_0\(0) => DECODE_n_67,
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
      reset_48_reg => reset_48_reg,
      reset_48_reg_0 => reset_48_reg_0,
      timestamp_enable => timestamp_enable,
      timestamp_enable_reg => DECODE_n_69
    );
ENCODE: entity work.encode_serial
     port map (
      CLK => CLK,
      E(0) => ENCODE_n_1,
      \FSM_onehot_rx_state_reg[15]\ => \FSM_onehot_rx_state[18]_i_2_n_0\,
      Q(3 downto 0) => char_cnt(4 downto 1),
      SR(0) => SR(0),
      TX_O_OBUF => TX_O_OBUF,
      clk_locked => clk_locked,
      enc_wr_reg => ENCODE_n_4,
      enc_wr_reg_0(0) => enc_wr,
      \nxt_char_cnt_reg[0]\(0) => ENCODE_n_2,
      \nxt_char_cnt_reg[2]\ => \nxt_char_cnt[4]_i_3_n_0\,
      \nxt_char_cnt_reg[3]\ => \nxt_char_cnt[4]_i_4_n_0\,
      \nxt_enc_data_reg[6]\(6) => \nxt_enc_data_reg_n_0_[6]\,
      \nxt_enc_data_reg[6]\(5) => \nxt_enc_data_reg_n_0_[5]\,
      \nxt_enc_data_reg[6]\(4) => \nxt_enc_data_reg_n_0_[4]\,
      \nxt_enc_data_reg[6]\(3) => \nxt_enc_data_reg_n_0_[3]\,
      \nxt_enc_data_reg[6]\(2) => \nxt_enc_data_reg_n_0_[2]\,
      \nxt_enc_data_reg[6]\(1) => \nxt_enc_data_reg_n_0_[1]\,
      \nxt_enc_data_reg[6]\(0) => \nxt_enc_data_reg_n_0_[0]\,
      nxt_sendstring => nxt_sendstring,
      \out\(0) => nxt_timestamp,
      reset_48_reg => reset_48_reg,
      reset_48_reg_0 => reset_48_reg_0,
      sendstring => sendstring
    );
\FSM_onehot_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_rx_state[18]_i_4_n_0\,
      I1 => \FSM_onehot_rx_state[0]_i_5_n_0\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      O => \FSM_onehot_rx_state[0]_i_2_n_0\
    );
\FSM_onehot_rx_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nxt_timestamp,
      I1 => nxt_wr,
      O => \FSM_onehot_rx_state[0]_i_4_n_0\
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
\FSM_onehot_rx_state[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_rx_state[18]_i_3_n_0\,
      I4 => \FSM_onehot_rx_state[18]_i_4_n_0\,
      I5 => \FSM_onehot_rx_state[18]_i_5_n_0\,
      O => \FSM_onehot_rx_state[18]_i_2_n_0\
    );
\FSM_onehot_rx_state[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[9]\,
      I2 => nxt_timestamp,
      I3 => nxt_wr,
      I4 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I5 => nxt_rd,
      O => \FSM_onehot_rx_state[18]_i_3_n_0\
    );
\FSM_onehot_rx_state[18]_i_4\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_rx_state[18]_i_4_n_0\
    );
\FSM_onehot_rx_state[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_rx_state_reg_n_0_[14]\,
      I2 => \FSM_onehot_rx_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_rx_state_reg_n_0_[1]\,
      O => \FSM_onehot_rx_state[18]_i_5_n_0\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => DECODE_n_68,
      D => DECODE_n_17,
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
      D => DECODE_n_7,
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
      D => DECODE_n_6,
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
      D => DECODE_n_5,
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
      D => DECODE_n_4,
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
      D => DECODE_n_2,
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
      D => DECODE_n_1,
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
      D => DECODE_n_0,
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
      D => DECODE_n_16,
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
      D => DECODE_n_15,
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
      D => DECODE_n_14,
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
      D => DECODE_n_13,
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
      D => DECODE_n_12,
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
      D => DECODE_n_11,
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
      D => DECODE_n_10,
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
      D => DECODE_n_9,
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
      D => DECODE_n_8,
      Q => \FSM_onehot_rx_state_reg_n_0_[9]\,
      R => SR(0)
    );
\adr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_57,
      Q => \^unisim_ram0\(0),
      R => SR(0)
    );
\adr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_56,
      Q => \^unisim_ram0\(1),
      R => SR(0)
    );
\adr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_55,
      Q => \^unisim_ram0\(2),
      R => SR(0)
    );
\adr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_59,
      D => DECODE_n_54,
      Q => \^unisim_ram0\(3),
      R => SR(0)
    );
\adr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_53,
      Q => \^unisim_ram0\(4),
      R => SR(0)
    );
\adr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_52,
      Q => \^unisim_ram0\(5),
      R => SR(0)
    );
\adr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_51,
      Q => \^unisim_ram0\(6),
      R => SR(0)
    );
\adr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_58,
      D => DECODE_n_50,
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
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rx_state[18]_i_5_n_0\,
      I1 => \FSM_onehot_rx_state[0]_i_5_n_0\,
      I2 => nxt_wr,
      I3 => \FSM_onehot_rx_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[16]\,
      I5 => nxt_rd,
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
      CE => DECODE_n_67,
      D => DECODE_n_49,
      Q => \^q\(0),
      R => SR(0)
    );
\data32_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_39,
      Q => \^q\(10),
      R => SR(0)
    );
\data32_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_38,
      Q => \^q\(11),
      R => SR(0)
    );
\data32_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_37,
      Q => \^q\(12),
      R => SR(0)
    );
\data32_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_36,
      Q => \^q\(13),
      R => SR(0)
    );
\data32_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_35,
      Q => \^q\(14),
      R => SR(0)
    );
\data32_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_64,
      D => DECODE_n_34,
      Q => \^q\(15),
      R => SR(0)
    );
\data32_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_33,
      Q => \^q\(16),
      R => SR(0)
    );
\data32_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_32,
      Q => \^q\(17),
      R => SR(0)
    );
\data32_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_31,
      Q => \^q\(18),
      R => SR(0)
    );
\data32_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_63,
      D => DECODE_n_30,
      Q => \^q\(19),
      R => SR(0)
    );
\data32_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_48,
      Q => \^q\(1),
      R => SR(0)
    );
\data32_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_29,
      Q => \^q\(20),
      R => SR(0)
    );
\data32_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_28,
      Q => \^q\(21),
      R => SR(0)
    );
\data32_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_27,
      Q => \^q\(22),
      R => SR(0)
    );
\data32_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_62,
      D => DECODE_n_26,
      Q => \^q\(23),
      R => SR(0)
    );
\data32_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_25,
      Q => \^q\(24),
      R => SR(0)
    );
\data32_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_24,
      Q => \^q\(25),
      R => SR(0)
    );
\data32_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_23,
      Q => \^q\(26),
      R => SR(0)
    );
\data32_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_61,
      D => DECODE_n_22,
      Q => \^q\(27),
      R => SR(0)
    );
\data32_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_21,
      Q => \^q\(28),
      R => SR(0)
    );
\data32_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_20,
      Q => \^q\(29),
      R => SR(0)
    );
\data32_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_47,
      Q => \^q\(2),
      R => SR(0)
    );
\data32_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_19,
      Q => \^q\(30),
      R => SR(0)
    );
\data32_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_60,
      D => DECODE_n_18,
      Q => \^q\(31),
      R => SR(0)
    );
\data32_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_67,
      D => DECODE_n_46,
      Q => \^q\(3),
      R => SR(0)
    );
\data32_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_45,
      Q => \^q\(4),
      R => SR(0)
    );
\data32_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_44,
      Q => \^q\(5),
      R => SR(0)
    );
\data32_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_43,
      Q => \^q\(6),
      R => SR(0)
    );
\data32_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_66,
      D => DECODE_n_42,
      Q => \^q\(7),
      R => SR(0)
    );
\data32_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_41,
      Q => \^q\(8),
      R => SR(0)
    );
\data32_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => DECODE_n_65,
      D => DECODE_n_40,
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
      INIT => X"05577000"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(3),
      I2 => char_cnt(0),
      I3 => char_cnt(1),
      I4 => char_cnt(2),
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
\nxt_char_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(1),
      O => \nxt_char_cnt[4]_i_3_n_0\
    );
\nxt_char_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(0),
      O => \nxt_char_cnt[4]_i_4_n_0\
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
      INIT => X"00000000FFFFEEFE"
    )
        port map (
      I0 => char_cnt(4),
      I1 => \nxt_enc_data[0]_i_2_n_0\,
      I2 => \nxt_enc_data[0]_i_3_n_0\,
      I3 => \nxt_enc_data_reg[0]_i_4_n_0\,
      I4 => \nxt_enc_data[0]_i_5_n_0\,
      I5 => \nxt_enc_data[0]_i_6_n_0\,
      O => nxt_enc_data(0)
    );
\nxt_enc_data[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^q\(8),
      I1 => \nxt_enc_data[6]_i_24_n_0\,
      I2 => char_cnt(0),
      I3 => \^q\(12),
      I4 => \nxt_enc_data[6]_i_25_n_0\,
      O => \nxt_enc_data[0]_i_10_n_0\
    );
\nxt_enc_data[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F90909F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \nxt_enc_data[0]_i_18_n_0\,
      I2 => char_cnt(0),
      I3 => \^q\(4),
      I4 => \nxt_enc_data[6]_i_26_n_0\,
      O => \nxt_enc_data[0]_i_11_n_0\
    );
\nxt_enc_data[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000009F"
    )
        port map (
      I0 => \^unisim_ram0\(0),
      I1 => \nxt_enc_data[6]_i_12_n_0\,
      I2 => char_cnt(1),
      I3 => char_cnt(2),
      I4 => char_cnt(0),
      O => \nxt_enc_data[0]_i_12_n_0\
    );
\nxt_enc_data[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6000"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_21_n_0\,
      I1 => \^q\(24),
      I2 => \nxt_enc_data[3]_i_21_n_0\,
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[0]_i_19_n_0\,
      I5 => \nxt_enc_data[0]_i_20_n_0\,
      O => \nxt_enc_data[0]_i_13_n_0\
    );
\nxt_enc_data[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FFFF1FE00000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(17),
      I2 => \^q\(19),
      I3 => \^q\(16),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[0]_i_21_n_0\,
      O => \nxt_enc_data[0]_i_14_n_0\
    );
\nxt_enc_data[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBAAEBAAEBFFEB"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(16),
      I2 => \nxt_enc_data[6]_i_19_n_0\,
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[0]_i_22_n_0\,
      I5 => timestamp(12),
      O => \nxt_enc_data[0]_i_15_n_0\
    );
\nxt_enc_data[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F9FFF0F0FFF"
    )
        port map (
      I0 => timestamp(4),
      I1 => \nxt_enc_data[6]_i_11_n_0\,
      I2 => char_cnt(1),
      I3 => timestamp(8),
      I4 => \nxt_enc_data[6]_i_10_n_0\,
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_16_n_0\
    );
\nxt_enc_data[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020201010101010"
    )
        port map (
      I0 => timestamp(0),
      I1 => char_cnt(0),
      I2 => \nxt_enc_data[6]_i_3_n_0\,
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[0]_i_17_n_0\
    );
\nxt_enc_data[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => \nxt_enc_data[0]_i_18_n_0\
    );
\nxt_enc_data[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011144444"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^unisim_ram0\(4),
      I2 => \^unisim_ram0\(5),
      I3 => \^unisim_ram0\(6),
      I4 => adr_A(7),
      I5 => char_cnt(1),
      O => \nxt_enc_data[0]_i_19_n_0\
    );
\nxt_enc_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020222020222"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[0]_i_7_n_0\,
      I2 => \nxt_enc_data[0]_i_8_n_0\,
      I3 => timestamp(24),
      I4 => \nxt_enc_data[0]_i_9_n_0\,
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_2_n_0\
    );
\nxt_enc_data[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001FE0"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(29),
      I2 => \^q\(31),
      I3 => \^q\(28),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_20_n_0\
    );
\nxt_enc_data[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(21),
      I2 => \^q\(23),
      I3 => \^q\(20),
      O => \nxt_enc_data[0]_i_21_n_0\
    );
\nxt_enc_data[0]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(15),
      I1 => timestamp(14),
      I2 => timestamp(13),
      O => \nxt_enc_data[0]_i_22_n_0\
    );
\nxt_enc_data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(3),
      I1 => char_cnt(2),
      O => \nxt_enc_data[0]_i_3_n_0\
    );
\nxt_enc_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554545454545454"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[0]_i_12_n_0\,
      I2 => \nxt_enc_data[0]_i_13_n_0\,
      I3 => char_cnt(1),
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[0]_i_14_n_0\,
      O => \nxt_enc_data[0]_i_5_n_0\
    );
\nxt_enc_data[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => char_cnt(2),
      I1 => char_cnt(4),
      I2 => \nxt_enc_data[0]_i_15_n_0\,
      I3 => \nxt_enc_data[0]_i_16_n_0\,
      I4 => \nxt_enc_data[0]_i_17_n_0\,
      O => \nxt_enc_data[0]_i_6_n_0\
    );
\nxt_enc_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01F0000FFFFFFFF"
    )
        port map (
      I0 => timestamp(29),
      I1 => timestamp(30),
      I2 => timestamp(31),
      I3 => timestamp(28),
      I4 => \nxt_enc_data[3]_i_21_n_0\,
      I5 => char_cnt(2),
      O => \nxt_enc_data[0]_i_7_n_0\
    );
\nxt_enc_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82828222AAAAAAAA"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(20),
      I2 => timestamp(23),
      I3 => timestamp(21),
      I4 => timestamp(22),
      I5 => char_cnt(0),
      O => \nxt_enc_data[0]_i_8_n_0\
    );
\nxt_enc_data[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(26),
      I1 => timestamp(25),
      I2 => timestamp(27),
      O => \nxt_enc_data[0]_i_9_n_0\
    );
\nxt_enc_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBABABBBA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_2_n_0\,
      I1 => \nxt_enc_data[1]_i_3_n_0\,
      I2 => \nxt_enc_data[1]_i_4_n_0\,
      I3 => \nxt_enc_data[1]_i_5_n_0\,
      I4 => \nxt_enc_data[1]_i_6_n_0\,
      I5 => \nxt_enc_data[1]_i_7_n_0\,
      O => nxt_enc_data(1)
    );
\nxt_enc_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEEEEEEEEEFEEE"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_23_n_0\,
      I1 => \nxt_enc_data[1]_i_24_n_0\,
      I2 => \nxt_enc_data[3]_i_6_n_0\,
      I3 => timestamp(6),
      I4 => \nxt_enc_data[1]_i_25_n_0\,
      I5 => timestamp(5),
      O => \nxt_enc_data[1]_i_10_n_0\
    );
\nxt_enc_data[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEEEAEEAAAAAAAA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_26_n_0\,
      I1 => timestamp(25),
      I2 => timestamp(24),
      I3 => timestamp(27),
      I4 => timestamp(26),
      I5 => \nxt_enc_data[1]_i_17_n_0\,
      O => \nxt_enc_data[1]_i_11_n_0\
    );
\nxt_enc_data[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A8A0000FFFFFFFF"
    )
        port map (
      I0 => timestamp(21),
      I1 => timestamp(20),
      I2 => timestamp(23),
      I3 => timestamp(22),
      I4 => \nxt_enc_data[3]_i_6_n_0\,
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_12_n_0\
    );
\nxt_enc_data[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6575FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[1]_i_13_n_0\
    );
\nxt_enc_data[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEBAAEAAA"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[1]_i_27_n_0\,
      I2 => \^q\(13),
      I3 => \nxt_enc_data[1]_i_28_n_0\,
      I4 => \^q\(14),
      I5 => \nxt_enc_data[1]_i_29_n_0\,
      O => \nxt_enc_data[1]_i_14_n_0\
    );
\nxt_enc_data[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB400B000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(11),
      I2 => \^q\(9),
      I3 => \nxt_enc_data[3]_i_21_n_0\,
      I4 => \^q\(10),
      I5 => \nxt_enc_data[1]_i_30_n_0\,
      O => \nxt_enc_data[1]_i_15_n_0\
    );
\nxt_enc_data[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A200"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(27),
      I2 => \^q\(24),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \nxt_enc_data[1]_i_31_n_0\,
      O => \nxt_enc_data[1]_i_16_n_0\
    );
\nxt_enc_data[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      O => \nxt_enc_data[1]_i_17_n_0\
    );
\nxt_enc_data[1]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(23),
      I2 => \^q\(20),
      O => \nxt_enc_data[1]_i_18_n_0\
    );
\nxt_enc_data[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFCCCCCEC"
    )
        port map (
      I0 => \^q\(18),
      I1 => \nxt_enc_data[1]_i_32_n_0\,
      I2 => \nxt_enc_data[3]_i_6_n_0\,
      I3 => \nxt_enc_data[1]_i_33_n_0\,
      I4 => \^q\(17),
      I5 => \nxt_enc_data[1]_i_34_n_0\,
      O => \nxt_enc_data[1]_i_19_n_0\
    );
\nxt_enc_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C000C00000800"
    )
        port map (
      I0 => timestamp(2),
      I1 => \nxt_enc_data[6]_i_3_n_0\,
      I2 => char_cnt(0),
      I3 => timestamp(3),
      I4 => timestamp(0),
      I5 => timestamp(1),
      O => \nxt_enc_data[1]_i_2_n_0\
    );
\nxt_enc_data[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A2FFFFFFFF"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(31),
      I2 => \^q\(28),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_20_n_0\
    );
\nxt_enc_data[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC2C0000"
    )
        port map (
      I0 => \^unisim_ram0\(6),
      I1 => \^unisim_ram0\(5),
      I2 => adr_A(7),
      I3 => \^unisim_ram0\(4),
      I4 => char_cnt(0),
      I5 => char_cnt(1),
      O => \nxt_enc_data[1]_i_21_n_0\
    );
\nxt_enc_data[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003D33"
    )
        port map (
      I0 => \^unisim_ram0\(2),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(0),
      I3 => \^unisim_ram0\(3),
      I4 => char_cnt(0),
      I5 => char_cnt(2),
      O => \nxt_enc_data[1]_i_22_n_0\
    );
\nxt_enc_data[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(10),
      I3 => timestamp(8),
      I4 => timestamp(11),
      I5 => timestamp(9),
      O => \nxt_enc_data[1]_i_23_n_0\
    );
\nxt_enc_data[1]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => timestamp(8),
      I3 => timestamp(11),
      I4 => timestamp(9),
      O => \nxt_enc_data[1]_i_24_n_0\
    );
\nxt_enc_data[1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => timestamp(4),
      I1 => timestamp(7),
      O => \nxt_enc_data[1]_i_25_n_0\
    );
\nxt_enc_data[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5104555551005555"
    )
        port map (
      I0 => char_cnt(1),
      I1 => timestamp(31),
      I2 => timestamp(28),
      I3 => timestamp(29),
      I4 => char_cnt(0),
      I5 => timestamp(30),
      O => \nxt_enc_data[1]_i_26_n_0\
    );
\nxt_enc_data[1]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(15),
      O => \nxt_enc_data[1]_i_27_n_0\
    );
\nxt_enc_data[1]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[1]_i_28_n_0\
    );
\nxt_enc_data[1]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^q\(4),
      I3 => \^q\(7),
      I4 => \^q\(5),
      O => \nxt_enc_data[1]_i_29_n_0\
    );
\nxt_enc_data[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0B0A0"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[1]_i_8_n_0\,
      I2 => char_cnt(4),
      I3 => \nxt_enc_data[1]_i_9_n_0\,
      I4 => \nxt_enc_data[1]_i_10_n_0\,
      O => \nxt_enc_data[1]_i_3_n_0\
    );
\nxt_enc_data[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(7),
      I5 => \^q\(5),
      O => \nxt_enc_data[1]_i_30_n_0\
    );
\nxt_enc_data[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(31),
      I2 => \^q\(29),
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      I5 => \^q\(30),
      O => \nxt_enc_data[1]_i_31_n_0\
    );
\nxt_enc_data[1]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^q\(20),
      I3 => \^q\(23),
      I4 => \^q\(21),
      O => \nxt_enc_data[1]_i_32_n_0\
    );
\nxt_enc_data[1]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(19),
      O => \nxt_enc_data[1]_i_33_n_0\
    );
\nxt_enc_data[1]_i_34\: unisim.vcomponents.LUT6
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
      O => \nxt_enc_data[1]_i_34_n_0\
    );
\nxt_enc_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0E000E0"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_11_n_0\,
      I1 => \nxt_enc_data[1]_i_12_n_0\,
      I2 => char_cnt(3),
      I3 => \nxt_enc_data[1]_i_13_n_0\,
      I4 => \nxt_enc_data[1]_i_14_n_0\,
      I5 => \nxt_enc_data[1]_i_15_n_0\,
      O => \nxt_enc_data[1]_i_4_n_0\
    );
\nxt_enc_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAEA"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_16_n_0\,
      I1 => \nxt_enc_data[1]_i_17_n_0\,
      I2 => \^q\(22),
      I3 => \nxt_enc_data[1]_i_18_n_0\,
      I4 => \nxt_enc_data[1]_i_19_n_0\,
      I5 => \nxt_enc_data[1]_i_20_n_0\,
      O => \nxt_enc_data[1]_i_5_n_0\
    );
\nxt_enc_data[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBAAAB"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[1]_i_21_n_0\,
      I2 => char_cnt(1),
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[1]_i_22_n_0\,
      O => \nxt_enc_data[1]_i_6_n_0\
    );
\nxt_enc_data[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      I2 => char_cnt(0),
      O => \nxt_enc_data[1]_i_7_n_0\
    );
\nxt_enc_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444004400004000"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => timestamp(14),
      I3 => timestamp(15),
      I4 => timestamp(12),
      I5 => timestamp(13),
      O => \nxt_enc_data[1]_i_8_n_0\
    );
\nxt_enc_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFFFFFDFCFF"
    )
        port map (
      I0 => timestamp(18),
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => timestamp(17),
      I4 => timestamp(19),
      I5 => timestamp(16),
      O => \nxt_enc_data[1]_i_9_n_0\
    );
\nxt_enc_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_2_n_0\,
      I1 => char_cnt(3),
      I2 => \nxt_enc_data[2]_i_3_n_0\,
      I3 => char_cnt(4),
      I4 => \nxt_enc_data[2]_i_4_n_0\,
      O => nxt_enc_data(2)
    );
\nxt_enc_data[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F00088880000"
    )
        port map (
      I0 => \nxt_enc_data[1]_i_18_n_0\,
      I1 => \^q\(22),
      I2 => \nxt_enc_data[2]_i_20_n_0\,
      I3 => \^q\(26),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[2]_i_10_n_0\
    );
\nxt_enc_data[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22000000220000F0"
    )
        port map (
      I0 => \^q\(18),
      I1 => \nxt_enc_data[2]_i_21_n_0\,
      I2 => \^q\(30),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[2]_i_22_n_0\,
      O => \nxt_enc_data[2]_i_11_n_0\
    );
\nxt_enc_data[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020002020"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      I2 => \^unisim_ram0\(6),
      I3 => \^unisim_ram0\(4),
      I4 => adr_A(7),
      I5 => \^unisim_ram0\(5),
      O => \nxt_enc_data[2]_i_12_n_0\
    );
\nxt_enc_data[2]_i_13\: unisim.vcomponents.LUT6
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
      O => \nxt_enc_data[2]_i_13_n_0\
    );
\nxt_enc_data[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => timestamp(2),
      I1 => timestamp(1),
      I2 => timestamp(3),
      I3 => timestamp(0),
      O => \nxt_enc_data[2]_i_14_n_0\
    );
\nxt_enc_data[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000088880000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_23_n_0\,
      I1 => timestamp(10),
      I2 => \nxt_enc_data[2]_i_24_n_0\,
      I3 => timestamp(6),
      I4 => char_cnt(1),
      I5 => char_cnt(0),
      O => \nxt_enc_data[2]_i_15_n_0\
    );
\nxt_enc_data[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00880000008800F0"
    )
        port map (
      I0 => timestamp(14),
      I1 => \nxt_enc_data[2]_i_25_n_0\,
      I2 => timestamp(18),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[2]_i_26_n_0\,
      O => \nxt_enc_data[2]_i_16_n_0\
    );
\nxt_enc_data[2]_i_17\: unisim.vcomponents.LUT6
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
      O => \nxt_enc_data[2]_i_17_n_0\
    );
\nxt_enc_data[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(4),
      O => \nxt_enc_data[2]_i_18_n_0\
    );
\nxt_enc_data[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(11),
      I2 => \^q\(8),
      O => \nxt_enc_data[2]_i_19_n_0\
    );
\nxt_enc_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_5_n_0\,
      I1 => \nxt_enc_data[2]_i_6_n_0\,
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[2]_i_7_n_0\,
      I4 => \nxt_enc_data[2]_i_8_n_0\,
      I5 => \nxt_enc_data[2]_i_9_n_0\,
      O => \nxt_enc_data[2]_i_2_n_0\
    );
\nxt_enc_data[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(27),
      I2 => \^q\(24),
      O => \nxt_enc_data[2]_i_20_n_0\
    );
\nxt_enc_data[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(19),
      I2 => \^q\(16),
      O => \nxt_enc_data[2]_i_21_n_0\
    );
\nxt_enc_data[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(31),
      I2 => \^q\(28),
      O => \nxt_enc_data[2]_i_22_n_0\
    );
\nxt_enc_data[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(9),
      I1 => timestamp(11),
      I2 => timestamp(8),
      O => \nxt_enc_data[2]_i_23_n_0\
    );
\nxt_enc_data[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => timestamp(5),
      I1 => timestamp(7),
      I2 => timestamp(4),
      O => \nxt_enc_data[2]_i_24_n_0\
    );
\nxt_enc_data[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => timestamp(13),
      I1 => timestamp(12),
      I2 => timestamp(15),
      O => \nxt_enc_data[2]_i_25_n_0\
    );
\nxt_enc_data[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => timestamp(17),
      I1 => timestamp(19),
      I2 => timestamp(16),
      O => \nxt_enc_data[2]_i_26_n_0\
    );
\nxt_enc_data[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFFF0"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_10_n_0\,
      I1 => \nxt_enc_data[2]_i_11_n_0\,
      I2 => \nxt_enc_data[2]_i_12_n_0\,
      I3 => \nxt_enc_data[2]_i_13_n_0\,
      I4 => char_cnt(2),
      O => \nxt_enc_data[2]_i_3_n_0\
    );
\nxt_enc_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11110000000F0000"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_14_n_0\,
      I1 => char_cnt(0),
      I2 => \nxt_enc_data[2]_i_15_n_0\,
      I3 => \nxt_enc_data[2]_i_16_n_0\,
      I4 => char_cnt(4),
      I5 => char_cnt(2),
      O => \nxt_enc_data[2]_i_4_n_0\
    );
\nxt_enc_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(24),
      I2 => timestamp(25),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => timestamp(26),
      O => \nxt_enc_data[2]_i_5_n_0\
    );
\nxt_enc_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808888"
    )
        port map (
      I0 => timestamp(22),
      I1 => \nxt_enc_data[3]_i_6_n_0\,
      I2 => timestamp(21),
      I3 => timestamp(20),
      I4 => timestamp(23),
      I5 => \nxt_enc_data[2]_i_17_n_0\,
      O => \nxt_enc_data[2]_i_6_n_0\
    );
\nxt_enc_data[2]_i_7\: unisim.vcomponents.LUT6
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
      O => \nxt_enc_data[2]_i_7_n_0\
    );
\nxt_enc_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000880000F08800"
    )
        port map (
      I0 => \nxt_enc_data[2]_i_18_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(10),
      I3 => char_cnt(1),
      I4 => char_cnt(0),
      I5 => \nxt_enc_data[2]_i_19_n_0\,
      O => \nxt_enc_data[2]_i_8_n_0\
    );
\nxt_enc_data[2]_i_9\: unisim.vcomponents.LUT6
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
      O => \nxt_enc_data[2]_i_9_n_0\
    );
\nxt_enc_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40445155"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_2_n_0\,
      I1 => char_cnt(4),
      I2 => char_cnt(2),
      I3 => \nxt_enc_data[3]_i_3_n_0\,
      I4 => \nxt_enc_data[3]_i_4_n_0\,
      O => nxt_enc_data(3)
    );
\nxt_enc_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000007F"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_20_n_0\,
      I1 => \nxt_enc_data[3]_i_21_n_0\,
      I2 => \^q\(27),
      I3 => \nxt_enc_data[3]_i_22_n_0\,
      I4 => \nxt_enc_data[3]_i_23_n_0\,
      I5 => \nxt_enc_data[3]_i_24_n_0\,
      O => \nxt_enc_data[3]_i_10_n_0\
    );
\nxt_enc_data[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5551FFFF55510000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => \^unisim_ram0\(3),
      I2 => \^unisim_ram0\(1),
      I3 => \^unisim_ram0\(2),
      I4 => char_cnt(1),
      I5 => \nxt_enc_data[3]_i_25_n_0\,
      O => \nxt_enc_data[3]_i_11_n_0\
    );
\nxt_enc_data[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => timestamp(18),
      I1 => timestamp(17),
      I2 => char_cnt(0),
      I3 => char_cnt(1),
      I4 => timestamp(19),
      O => \nxt_enc_data[3]_i_12_n_0\
    );
\nxt_enc_data[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => timestamp(23),
      I1 => timestamp(22),
      I2 => timestamp(21),
      O => \nxt_enc_data[3]_i_13_n_0\
    );
\nxt_enc_data[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => timestamp(27),
      I1 => timestamp(26),
      I2 => timestamp(25),
      O => \nxt_enc_data[3]_i_14_n_0\
    );
\nxt_enc_data[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timestamp(29),
      I1 => timestamp(30),
      O => \nxt_enc_data[3]_i_15_n_0\
    );
\nxt_enc_data[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \nxt_enc_data[3]_i_16_n_0\
    );
\nxt_enc_data[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^q\(7),
      O => \nxt_enc_data[3]_i_17_n_0\
    );
\nxt_enc_data[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(13),
      I2 => char_cnt(0),
      I3 => char_cnt(1),
      I4 => \^q\(15),
      O => \nxt_enc_data[3]_i_18_n_0\
    );
\nxt_enc_data[3]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(11),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \nxt_enc_data[3]_i_19_n_0\
    );
\nxt_enc_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400040404040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(4),
      I2 => char_cnt(2),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[3]_i_2_n_0\
    );
\nxt_enc_data[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(26),
      O => \nxt_enc_data[3]_i_20_n_0\
    );
\nxt_enc_data[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(1),
      O => \nxt_enc_data[3]_i_21_n_0\
    );
\nxt_enc_data[3]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(31),
      I3 => \^q\(29),
      I4 => \^q\(30),
      O => \nxt_enc_data[3]_i_22_n_0\
    );
\nxt_enc_data[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(19),
      I3 => \^q\(17),
      I4 => \^q\(18),
      O => \nxt_enc_data[3]_i_23_n_0\
    );
\nxt_enc_data[3]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(21),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => \^q\(23),
      O => \nxt_enc_data[3]_i_24_n_0\
    );
\nxt_enc_data[3]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^unisim_ram0\(5),
      I1 => \^unisim_ram0\(6),
      I2 => adr_A(7),
      I3 => char_cnt(0),
      O => \nxt_enc_data[3]_i_25_n_0\
    );
\nxt_enc_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054555555"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_5_n_0\,
      I1 => timestamp(6),
      I2 => timestamp(5),
      I3 => \nxt_enc_data[3]_i_6_n_0\,
      I4 => timestamp(7),
      I5 => \nxt_enc_data[3]_i_7_n_0\,
      O => \nxt_enc_data[3]_i_3_n_0\
    );
\nxt_enc_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_8_n_0\,
      I1 => \nxt_enc_data[3]_i_9_n_0\,
      I2 => char_cnt(3),
      I3 => \nxt_enc_data[3]_i_10_n_0\,
      I4 => char_cnt(2),
      I5 => \nxt_enc_data[3]_i_11_n_0\,
      O => \nxt_enc_data[3]_i_4_n_0\
    );
\nxt_enc_data[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => timestamp(10),
      I1 => timestamp(9),
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => timestamp(11),
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
\nxt_enc_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => timestamp(15),
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => timestamp(13),
      I4 => timestamp(14),
      I5 => \nxt_enc_data[3]_i_12_n_0\,
      O => \nxt_enc_data[3]_i_7_n_0\
    );
\nxt_enc_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0AFC0AFC0"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_13_n_0\,
      I1 => \nxt_enc_data[3]_i_14_n_0\,
      I2 => char_cnt(1),
      I3 => char_cnt(0),
      I4 => timestamp(31),
      I5 => \nxt_enc_data[3]_i_15_n_0\,
      O => \nxt_enc_data[3]_i_8_n_0\
    );
\nxt_enc_data[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000007F"
    )
        port map (
      I0 => \nxt_enc_data[3]_i_6_n_0\,
      I1 => \nxt_enc_data[3]_i_16_n_0\,
      I2 => \^q\(3),
      I3 => \nxt_enc_data[3]_i_17_n_0\,
      I4 => \nxt_enc_data[3]_i_18_n_0\,
      I5 => \nxt_enc_data[3]_i_19_n_0\,
      O => \nxt_enc_data[3]_i_9_n_0\
    );
\nxt_enc_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFBFBBBB"
    )
        port map (
      I0 => \nxt_enc_data[5]_i_2_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => \nxt_enc_data[6]_i_6_n_0\,
      I3 => \nxt_enc_data[4]_i_2_n_0\,
      I4 => \nxt_enc_data[6]_i_7_n_0\,
      I5 => \nxt_enc_data[6]_i_3_n_0\,
      O => nxt_enc_data(4)
    );
\nxt_enc_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00088888"
    )
        port map (
      I0 => \nxt_enc_data[4]_i_3_n_0\,
      I1 => char_cnt(0),
      I2 => \^unisim_ram0\(5),
      I3 => \^unisim_ram0\(6),
      I4 => adr_A(7),
      I5 => char_cnt(1),
      O => \nxt_enc_data[4]_i_2_n_0\
    );
\nxt_enc_data[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550155"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \^unisim_ram0\(2),
      I2 => \^unisim_ram0\(1),
      I3 => \^unisim_ram0\(3),
      I4 => char_cnt(0),
      O => \nxt_enc_data[4]_i_3_n_0\
    );
\nxt_enc_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFFFBBBB"
    )
        port map (
      I0 => \nxt_enc_data[5]_i_2_n_0\,
      I1 => \nxt_enc_data[6]_i_4_n_0\,
      I2 => \nxt_enc_data[6]_i_5_n_0\,
      I3 => \nxt_enc_data[6]_i_6_n_0\,
      I4 => \nxt_enc_data[6]_i_7_n_0\,
      I5 => \nxt_enc_data[6]_i_3_n_0\,
      O => nxt_enc_data(5)
    );
\nxt_enc_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004040404040"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(4),
      I2 => char_cnt(2),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[5]_i_2_n_0\
    );
\nxt_enc_data[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(11),
      I1 => timestamp(10),
      I2 => timestamp(9),
      O => \nxt_enc_data[6]_i_10_n_0\
    );
\nxt_enc_data[6]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(7),
      I1 => timestamp(6),
      I2 => timestamp(5),
      O => \nxt_enc_data[6]_i_11_n_0\
    );
\nxt_enc_data[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^unisim_ram0\(2),
      I1 => \^unisim_ram0\(1),
      I2 => \^unisim_ram0\(3),
      O => \nxt_enc_data[6]_i_12_n_0\
    );
\nxt_enc_data[6]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => adr_A(7),
      I1 => \^unisim_ram0\(6),
      I2 => \^unisim_ram0\(5),
      O => \nxt_enc_data[6]_i_13_n_0\
    );
\nxt_enc_data[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E000E0FFE000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(17),
      I2 => \^q\(19),
      I3 => char_cnt(0),
      I4 => \^q\(23),
      I5 => \nxt_enc_data[6]_i_20_n_0\,
      O => \nxt_enc_data[6]_i_14_n_0\
    );
\nxt_enc_data[6]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88888"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_21_n_0\,
      I1 => char_cnt(0),
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => \^q\(31),
      O => \nxt_enc_data[6]_i_15_n_0\
    );
\nxt_enc_data[6]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBCB3B0B"
    )
        port map (
      I0 => \nxt_enc_data[0]_i_9_n_0\,
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => \nxt_enc_data[6]_i_22_n_0\,
      I4 => \nxt_enc_data[6]_i_23_n_0\,
      O => \nxt_enc_data[6]_i_16_n_0\
    );
\nxt_enc_data[6]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088888"
    )
        port map (
      I0 => char_cnt(1),
      I1 => char_cnt(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \nxt_enc_data[6]_i_17_n_0\
    );
\nxt_enc_data[6]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10131C1F"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_24_n_0\,
      I1 => char_cnt(1),
      I2 => char_cnt(0),
      I3 => \nxt_enc_data[6]_i_25_n_0\,
      I4 => \nxt_enc_data[6]_i_26_n_0\,
      O => \nxt_enc_data[6]_i_18_n_0\
    );
\nxt_enc_data[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => timestamp(19),
      I1 => timestamp(18),
      I2 => timestamp(17),
      O => \nxt_enc_data[6]_i_19_n_0\
    );
\nxt_enc_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40004444"
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
\nxt_enc_data[6]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      O => \nxt_enc_data[6]_i_20_n_0\
    );
\nxt_enc_data[6]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(25),
      O => \nxt_enc_data[6]_i_21_n_0\
    );
\nxt_enc_data[6]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(30),
      I1 => timestamp(29),
      I2 => timestamp(31),
      O => \nxt_enc_data[6]_i_22_n_0\
    );
\nxt_enc_data[6]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => timestamp(22),
      I1 => timestamp(21),
      I2 => timestamp(23),
      O => \nxt_enc_data[6]_i_23_n_0\
    );
\nxt_enc_data[6]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      I2 => \^q\(11),
      O => \nxt_enc_data[6]_i_24_n_0\
    );
\nxt_enc_data[6]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      I2 => \^q\(13),
      O => \nxt_enc_data[6]_i_25_n_0\
    );
\nxt_enc_data[6]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      O => \nxt_enc_data[6]_i_26_n_0\
    );
\nxt_enc_data[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => char_cnt(4),
      I1 => char_cnt(2),
      O => \nxt_enc_data[6]_i_3_n_0\
    );
\nxt_enc_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E2FFFFFFFF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_9_n_0\,
      I1 => char_cnt(1),
      I2 => \nxt_enc_data[6]_i_10_n_0\,
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[6]_i_11_n_0\,
      I5 => \nxt_enc_data[1]_i_7_n_0\,
      O => \nxt_enc_data[6]_i_4_n_0\
    );
\nxt_enc_data[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABBFAAA"
    )
        port map (
      I0 => char_cnt(2),
      I1 => \nxt_enc_data[6]_i_12_n_0\,
      I2 => \nxt_enc_data[6]_i_13_n_0\,
      I3 => char_cnt(0),
      I4 => char_cnt(1),
      O => \nxt_enc_data[6]_i_5_n_0\
    );
\nxt_enc_data[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45405555"
    )
        port map (
      I0 => char_cnt(3),
      I1 => \nxt_enc_data[6]_i_14_n_0\,
      I2 => char_cnt(1),
      I3 => \nxt_enc_data[6]_i_15_n_0\,
      I4 => char_cnt(2),
      O => \nxt_enc_data[6]_i_6_n_0\
    );
\nxt_enc_data[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFFFAFCF"
    )
        port map (
      I0 => \nxt_enc_data[6]_i_16_n_0\,
      I1 => \nxt_enc_data[6]_i_17_n_0\,
      I2 => char_cnt(3),
      I3 => char_cnt(2),
      I4 => \nxt_enc_data[6]_i_18_n_0\,
      I5 => \nxt_enc_data[1]_i_7_n_0\,
      O => \nxt_enc_data[6]_i_7_n_0\
    );
\nxt_enc_data[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000000000"
    )
        port map (
      I0 => char_cnt(0),
      I1 => char_cnt(4),
      I2 => char_cnt(2),
      I3 => timestamp(1),
      I4 => timestamp(2),
      I5 => timestamp(3),
      O => \nxt_enc_data[6]_i_8_n_0\
    );
\nxt_enc_data[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => timestamp(15),
      I1 => timestamp(14),
      I2 => timestamp(13),
      I3 => char_cnt(0),
      I4 => \nxt_enc_data[6]_i_19_n_0\,
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
\nxt_enc_data_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \nxt_enc_data[0]_i_10_n_0\,
      I1 => \nxt_enc_data[0]_i_11_n_0\,
      O => \nxt_enc_data_reg[0]_i_4_n_0\,
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
    DIBDI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC;
    global_reset : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    RESET_O : in STD_LOGIC
  );
end SPI_RX;

architecture STRUCTURE of SPI_RX is
begin
\spi_rx_ddr_based_gen.spi_rx_ddr_based_inst\: entity work.spi_rx_ddr_based
     port map (
      DIBDI(31 downto 0) => DIBDI(31 downto 0),
      RESET_O => RESET_O,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => WEBWE(0),
      clk_locked => clk_locked,
      global_reset => global_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_TX is
  port (
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    sclk_active : out STD_LOGIC;
    sclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    reset_48_reg : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end SPI_TX;

architecture STRUCTURE of SPI_TX is
begin
\spi_tx_ddr_based_gen.spi_tx_ddr_based_inst\: entity work.spi_tx_ddr_based
     port map (
      CLK => CLK,
      D(31 downto 0) => D(31 downto 0),
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      SR(0) => SR(0),
      clk_locked => clk_locked,
      reset_48_reg => reset_48_reg,
      sclk => sclk,
      sclk_active => sclk_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocking_2 is
  port (
    \nxt_enc_data_reg[0]\ : out STD_LOGIC;
    clk_locked : out STD_LOGIC;
    O_buff_clkpixel : out STD_LOGIC;
    O_buff_clk5xpixel : out STD_LOGIC;
    RESET_O : in STD_LOGIC;
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
      O_buff_clk5xpixel => O_buff_clk5xpixel,
      O_buff_clkpixel => \^o_buff_clkpixel\,
      RESET_O => RESET_O,
      clk_locked => clk_locked,
      \nxt_enc_data_reg[0]\ => \nxt_enc_data_reg[0]\
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
    \RED_O_reg[0]\ : in STD_LOGIC;
    ones : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_I_X5 : in STD_LOGIC;
    global_reset : in STD_LOGIC;
    blank : in STD_LOGIC;
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
      global_reset => global_reset,
      \hdmi_out_n[0]\ => \hdmi_out_n[0]\
    );
OSERDES_CLK: entity work.OSERDES_10BIT_WRAP_1
     port map (
      CLK_I_X5 => CLK_I_X5,
      O_buff_clkpixel => O_buff_clkpixel,
      global_reset => global_reset,
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
      global_reset => global_reset,
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
      global_reset => global_reset
    );
TDMS_encoder_blue: entity work.TDMS_encoder
     port map (
      D(3) => TDMS_encoder_blue_n_2,
      D(2) => TDMS_encoder_blue_n_3,
      D(1) => TDMS_encoder_blue_n_4,
      D(0) => TDMS_encoder_blue_n_5,
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => Q(0),
      blank => blank,
      e12_out => e12_out,
      ones(0) => ones(0),
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][hSync]__0\(1 downto 0) => D(1 downto 0),
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\
    );
TDMS_encoder_green: entity work.TDMS_encoder_4
     port map (
      D(2) => TDMS_encoder_green_n_0,
      D(1) => TDMS_encoder_green_n_1,
      D(0) => TDMS_encoder_green_n_2,
      O_buff_clkpixel => O_buff_clkpixel,
      blank => blank,
      ones(0) => ones(0)
    );
TDMS_encoder_red: entity work.TDMS_encoder_5
     port map (
      D(2) => TDMS_encoder_red_n_1,
      D(1) => TDMS_encoder_red_n_2,
      D(0) => TDMS_encoder_red_n_3,
      O_buff_clkpixel => O_buff_clkpixel,
      \RED_O_reg[0]\ => \RED_O_reg[0]\,
      blank => blank,
      \latched_red_reg[8]\ => TDMS_encoder_red_n_0,
      ones(0) => ones(0)
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
    CLK : out STD_LOGIC;
    global_reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SPI_MOSI_O_OBUF : out STD_LOGIC;
    SPI_SCLK_O_OBUF : out STD_LOGIC;
    RESET_O : out STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC;
    reset_48_reg : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end FPGA1;

architecture STRUCTURE of FPGA1 is
  signal \^clk\ : STD_LOGIC;
  signal DATA_A_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_B_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^reset_o\ : STD_LOGIC;
  signal WR_O : STD_LOGIC;
  signal \^data_b_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^global_reset\ : STD_LOGIC;
  signal \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk\ : STD_LOGIC;
  signal \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk_active\ : STD_LOGIC;
begin
  CLK <= \^clk\;
  Q(6 downto 0) <= \^q\(6 downto 0);
  RESET_O <= \^reset_o\;
  global_reset <= \^global_reset\;
QLINK1: entity work.QLinkMaster
     port map (
      CLK => \^clk\,
      D(0) => D(0),
      DOADO(31 downto 0) => DOADO(31 downto 0),
      Q(31 downto 0) => DATA_B_O(31 downto 0),
      SR(0) => \^global_reset\,
      TX_O_OBUF => TX_O_OBUF,
      UNISIM_RAM0(6 downto 0) => \^q\(6 downto 0),
      UNISIM_RAM0_0(31 downto 0) => DATA_A_O(31 downto 0),
      WEA(0) => WR_O,
      clk_locked => clk_locked,
      reset_48_reg => reset_48_reg,
      reset_48_reg_0 => \^reset_o\
    );
RAM_inst0: entity work.TD_RAM_36K_WRAP_6
     port map (
      CLK => \^clk\,
      D(31 downto 0) => \^data_b_o\(31 downto 0),
      Q(6 downto 0) => \^q\(6 downto 0),
      WEA(0) => WR_O,
      \data32_reg[31]\(31 downto 0) => DATA_A_O(31 downto 0),
      \data32_reg[31]_0\(31 downto 0) => DATA_B_O(31 downto 0)
    );
SpiTx: entity work.SPI_TX
     port map (
      CLK => \^clk\,
      D(31 downto 0) => \^data_b_o\(31 downto 0),
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      SR(0) => \^global_reset\,
      clk_locked => clk_locked,
      reset_48_reg => \^reset_o\,
      sclk => \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk\,
      sclk_active => \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk_active\
    );
clocking_1_inst: entity work.clocking_1
     port map (
      CLK => \^clk\,
      D1_reg => \^reset_o\,
      I_unbuff_clk => I_unbuff_clk,
      clk_locked => clk_locked,
      global_reset => \^global_reset\,
      sclk => \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk\,
      sclk_active => \spi_tx_ddr_based_gen.spi_tx_ddr_based_inst/sclk_active\
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
    O_buff_clkpixel : in STD_LOGIC;
    UNISIM_RAM0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNISIM_RAM0_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 23 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    UNISIM_RAM0_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    UNISIM_RAM0_6 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK_I_X5 : in STD_LOGIC;
    global_reset : in STD_LOGIC
  );
end hdmi_driver;

architecture STRUCTURE of hdmi_driver is
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
  signal Inst_vga_gen_n_59 : STD_LOGIC;
  signal Inst_vga_gen_n_60 : STD_LOGIC;
  signal Inst_vga_gen_n_61 : STD_LOGIC;
  signal Inst_vga_gen_n_62 : STD_LOGIC;
  signal Inst_vga_gen_n_63 : STD_LOGIC;
  signal Inst_vga_gen_n_64 : STD_LOGIC;
  signal Inst_vga_gen_n_65 : STD_LOGIC;
  signal Inst_vga_gen_n_66 : STD_LOGIC;
  signal Inst_vga_gen_n_67 : STD_LOGIC;
  signal Inst_vga_gen_n_68 : STD_LOGIC;
  signal Inst_vga_gen_n_69 : STD_LOGIC;
  signal Inst_vga_gen_n_70 : STD_LOGIC;
  signal Inst_vga_gen_n_71 : STD_LOGIC;
  signal Inst_vga_gen_n_72 : STD_LOGIC;
  signal Inst_vga_gen_n_73 : STD_LOGIC;
  signal Inst_vga_gen_n_74 : STD_LOGIC;
  signal Inst_vga_gen_n_75 : STD_LOGIC;
  signal Inst_vga_gen_n_76 : STD_LOGIC;
  signal Inst_vga_gen_n_77 : STD_LOGIC;
  signal \TDMS_encoder_blue/e12_out\ : STD_LOGIC;
  signal \TDMS_encoder_blue/ones\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \TDMS_encoder_blue/p_1_in\ : STD_LOGIC;
  signal blank : STD_LOGIC;
  signal blue_s : STD_LOGIC;
  signal clock_s : STD_LOGIC;
  signal green_s : STD_LOGIC;
  signal image_driver_inst_n_1 : STD_LOGIC;
  signal image_driver_inst_n_2 : STD_LOGIC;
  signal image_driver_inst_n_3 : STD_LOGIC;
  signal image_driver_inst_n_4 : STD_LOGIC;
  signal image_driver_inst_n_5 : STD_LOGIC;
  signal \queue_reg[15][hCounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \queue_reg[15][hSync]\ : STD_LOGIC;
  signal \queue_reg[15][vCounter]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \queue_reg[15][vSync]\ : STD_LOGIC;
  signal red_s : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_blue : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_blue : label is "OBUFDS";
  attribute XILINX_REPORT_XFORM : string;
  attribute XILINX_REPORT_XFORM of OBUFDS_blue : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of OBUFDS_blue : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clock : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock : label is "OBUFDS";
  attribute XILINX_REPORT_XFORM of OBUFDS_clock : label is "OBUFDS";
  attribute box_type of OBUFDS_clock : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_green : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_green : label is "OBUFDS";
  attribute XILINX_REPORT_XFORM of OBUFDS_green : label is "OBUFDS";
  attribute box_type of OBUFDS_green : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_red : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_red : label is "OBUFDS";
  attribute XILINX_REPORT_XFORM of OBUFDS_red : label is "OBUFDS";
  attribute box_type of OBUFDS_red : label is "PRIMITIVE";
begin
Inst_vga_gen: entity work.vga_gen
     port map (
      CO(0) => image_driver_inst_n_4,
      D(1) => Inst_vga_gen_n_76,
      D(0) => Inst_vga_gen_n_77,
      DI(3) => Inst_vga_gen_n_55,
      DI(2) => Inst_vga_gen_n_56,
      DI(1) => Inst_vga_gen_n_57,
      DI(0) => Inst_vga_gen_n_58,
      DOADO(23 downto 0) => DOADO(23 downto 0),
      O(3 downto 0) => O(3 downto 0),
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => \TDMS_encoder_blue/p_1_in\,
      \RED_O_reg[0]\(3) => Inst_vga_gen_n_31,
      \RED_O_reg[0]\(2) => Inst_vga_gen_n_32,
      \RED_O_reg[0]\(1) => Inst_vga_gen_n_33,
      \RED_O_reg[0]\(0) => Inst_vga_gen_n_34,
      \RED_O_reg[0]_0\(3) => Inst_vga_gen_n_35,
      \RED_O_reg[0]_0\(2) => Inst_vga_gen_n_36,
      \RED_O_reg[0]_0\(1) => Inst_vga_gen_n_37,
      \RED_O_reg[0]_0\(0) => Inst_vga_gen_n_38,
      \RED_O_reg[0]_1\(3) => Inst_vga_gen_n_39,
      \RED_O_reg[0]_1\(2) => Inst_vga_gen_n_40,
      \RED_O_reg[0]_1\(1) => Inst_vga_gen_n_41,
      \RED_O_reg[0]_1\(0) => Inst_vga_gen_n_42,
      \RED_O_reg[0]_10\(1) => Inst_vga_gen_n_73,
      \RED_O_reg[0]_10\(0) => Inst_vga_gen_n_74,
      \RED_O_reg[0]_11\ => Inst_vga_gen_n_75,
      \RED_O_reg[0]_2\(3) => Inst_vga_gen_n_43,
      \RED_O_reg[0]_2\(2) => Inst_vga_gen_n_44,
      \RED_O_reg[0]_2\(1) => Inst_vga_gen_n_45,
      \RED_O_reg[0]_2\(0) => Inst_vga_gen_n_46,
      \RED_O_reg[0]_3\(3) => Inst_vga_gen_n_47,
      \RED_O_reg[0]_3\(2) => Inst_vga_gen_n_48,
      \RED_O_reg[0]_3\(1) => Inst_vga_gen_n_49,
      \RED_O_reg[0]_3\(0) => Inst_vga_gen_n_50,
      \RED_O_reg[0]_4\(3) => Inst_vga_gen_n_51,
      \RED_O_reg[0]_4\(2) => Inst_vga_gen_n_52,
      \RED_O_reg[0]_4\(1) => Inst_vga_gen_n_53,
      \RED_O_reg[0]_4\(0) => Inst_vga_gen_n_54,
      \RED_O_reg[0]_5\(1) => Inst_vga_gen_n_59,
      \RED_O_reg[0]_5\(0) => Inst_vga_gen_n_60,
      \RED_O_reg[0]_6\(1) => Inst_vga_gen_n_61,
      \RED_O_reg[0]_6\(0) => Inst_vga_gen_n_62,
      \RED_O_reg[0]_7\(3) => Inst_vga_gen_n_63,
      \RED_O_reg[0]_7\(2) => Inst_vga_gen_n_64,
      \RED_O_reg[0]_7\(1) => Inst_vga_gen_n_65,
      \RED_O_reg[0]_7\(0) => Inst_vga_gen_n_66,
      \RED_O_reg[0]_8\(3) => Inst_vga_gen_n_67,
      \RED_O_reg[0]_8\(2) => Inst_vga_gen_n_68,
      \RED_O_reg[0]_8\(1) => Inst_vga_gen_n_69,
      \RED_O_reg[0]_8\(0) => Inst_vga_gen_n_70,
      \RED_O_reg[0]_9\(1) => Inst_vga_gen_n_71,
      \RED_O_reg[0]_9\(0) => Inst_vga_gen_n_72,
      S(3) => Inst_vga_gen_n_27,
      S(2) => Inst_vga_gen_n_28,
      S(1) => Inst_vga_gen_n_29,
      S(0) => Inst_vga_gen_n_30,
      UNISIM_RAM0(3 downto 0) => UNISIM_RAM0_2(3 downto 0),
      UNISIM_RAM0_0(2 downto 0) => UNISIM_RAM0_3(2 downto 0),
      UNISIM_RAM0_1(3 downto 0) => UNISIM_RAM0_4(3 downto 0),
      UNISIM_RAM0_2(3 downto 0) => UNISIM_RAM0_5(3 downto 0),
      UNISIM_RAM0_3(2 downto 0) => UNISIM_RAM0_6(2 downto 0),
      blank => blank,
      e12_out => \TDMS_encoder_blue/e12_out\,
      \queue_reg[15][hCounter]\(11 downto 0) => \queue_reg[15][hCounter]\(11 downto 0),
      \queue_reg[15][hCounter][11]_0\(0) => image_driver_inst_n_1,
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][vCounter]\(11 downto 0) => \queue_reg[15][vCounter]\(11 downto 0),
      \queue_reg[15][vCounter][10]_0\(0) => image_driver_inst_n_2,
      \queue_reg[15][vCounter][11]_0\(0) => image_driver_inst_n_3,
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\
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
      D(1) => Inst_vga_gen_n_76,
      D(0) => Inst_vga_gen_n_77,
      DATA_O => red_s,
      O_buff_clkpixel => O_buff_clkpixel,
      Q(0) => \TDMS_encoder_blue/p_1_in\,
      \RED_O_reg[0]\ => image_driver_inst_n_5,
      blank => blank,
      e12_out => \TDMS_encoder_blue/e12_out\,
      global_reset => global_reset,
      \hdmi_out_n[0]\ => blue_s,
      \hdmi_out_n[1]\ => green_s,
      \hdmi_out_n[3]\ => clock_s,
      ones(0) => \TDMS_encoder_blue/ones\(3),
      \queue_reg[15][hSync]\ => \queue_reg[15][hSync]\,
      \queue_reg[15][vSync]\ => \queue_reg[15][vSync]\
    );
image_driver_inst: entity work.image_driver
     port map (
      CO(0) => image_driver_inst_n_4,
      DI(3) => Inst_vga_gen_n_55,
      DI(2) => Inst_vga_gen_n_56,
      DI(1) => Inst_vga_gen_n_57,
      DI(0) => Inst_vga_gen_n_58,
      O_buff_clkpixel => O_buff_clkpixel,
      \RED_O_reg[0]_0\(0) => image_driver_inst_n_1,
      \RED_O_reg[0]_1\(0) => image_driver_inst_n_2,
      \RED_O_reg[0]_2\(0) => image_driver_inst_n_3,
      S(3 downto 2) => S(1 downto 0),
      S(1) => Inst_vga_gen_n_59,
      S(0) => Inst_vga_gen_n_60,
      UNISIM_RAM0(3 downto 0) => UNISIM_RAM0(3 downto 0),
      UNISIM_RAM0_0(3 downto 0) => UNISIM_RAM0_0(3 downto 0),
      UNISIM_RAM0_1(3 downto 2) => UNISIM_RAM0_1(1 downto 0),
      UNISIM_RAM0_1(1) => Inst_vga_gen_n_71,
      UNISIM_RAM0_1(0) => Inst_vga_gen_n_72,
      blank => blank,
      \e_reg[8]\ => image_driver_inst_n_5,
      ones(0) => \TDMS_encoder_blue/ones\(3),
      \queue_reg[15][hCounter]\(11 downto 0) => \queue_reg[15][hCounter]\(11 downto 0),
      \queue_reg[15][hCounter][10]_0\(1) => Inst_vga_gen_n_73,
      \queue_reg[15][hCounter][10]_0\(0) => Inst_vga_gen_n_74,
      \queue_reg[15][hCounter][11]\(3) => Inst_vga_gen_n_39,
      \queue_reg[15][hCounter][11]\(2) => Inst_vga_gen_n_40,
      \queue_reg[15][hCounter][11]\(1) => Inst_vga_gen_n_41,
      \queue_reg[15][hCounter][11]\(0) => Inst_vga_gen_n_42,
      \queue_reg[15][hCounter][3]\(3) => Inst_vga_gen_n_31,
      \queue_reg[15][hCounter][3]\(2) => Inst_vga_gen_n_32,
      \queue_reg[15][hCounter][3]\(1) => Inst_vga_gen_n_33,
      \queue_reg[15][hCounter][3]\(0) => Inst_vga_gen_n_34,
      \queue_reg[15][hCounter][6]\(3) => Inst_vga_gen_n_67,
      \queue_reg[15][hCounter][6]\(2) => Inst_vga_gen_n_68,
      \queue_reg[15][hCounter][6]\(1) => Inst_vga_gen_n_69,
      \queue_reg[15][hCounter][6]\(0) => Inst_vga_gen_n_70,
      \queue_reg[15][hCounter][6]_0\(3) => Inst_vga_gen_n_63,
      \queue_reg[15][hCounter][6]_0\(2) => Inst_vga_gen_n_64,
      \queue_reg[15][hCounter][6]_0\(1) => Inst_vga_gen_n_65,
      \queue_reg[15][hCounter][6]_0\(0) => Inst_vga_gen_n_66,
      \queue_reg[15][hCounter][7]\(3) => Inst_vga_gen_n_35,
      \queue_reg[15][hCounter][7]\(2) => Inst_vga_gen_n_36,
      \queue_reg[15][hCounter][7]\(1) => Inst_vga_gen_n_37,
      \queue_reg[15][hCounter][7]\(0) => Inst_vga_gen_n_38,
      \queue_reg[15][hCounter]_10_sp_1\ => Inst_vga_gen_n_75,
      \queue_reg[15][vCounter]\(11 downto 0) => \queue_reg[15][vCounter]\(11 downto 0),
      \queue_reg[15][vCounter][10]\(1) => Inst_vga_gen_n_61,
      \queue_reg[15][vCounter][10]\(0) => Inst_vga_gen_n_62,
      \queue_reg[15][vCounter][11]\(3) => Inst_vga_gen_n_47,
      \queue_reg[15][vCounter][11]\(2) => Inst_vga_gen_n_48,
      \queue_reg[15][vCounter][11]\(1) => Inst_vga_gen_n_49,
      \queue_reg[15][vCounter][11]\(0) => Inst_vga_gen_n_50,
      \queue_reg[15][vCounter][3]\(3) => Inst_vga_gen_n_27,
      \queue_reg[15][vCounter][3]\(2) => Inst_vga_gen_n_28,
      \queue_reg[15][vCounter][3]\(1) => Inst_vga_gen_n_29,
      \queue_reg[15][vCounter][3]\(0) => Inst_vga_gen_n_30,
      \queue_reg[15][vCounter][6]\(3) => Inst_vga_gen_n_51,
      \queue_reg[15][vCounter][6]\(2) => Inst_vga_gen_n_52,
      \queue_reg[15][vCounter][6]\(1) => Inst_vga_gen_n_53,
      \queue_reg[15][vCounter][6]\(0) => Inst_vga_gen_n_54,
      \queue_reg[15][vCounter][7]\(3) => Inst_vga_gen_n_43,
      \queue_reg[15][vCounter][7]\(2) => Inst_vga_gen_n_44,
      \queue_reg[15][vCounter][7]\(1) => Inst_vga_gen_n_45,
      \queue_reg[15][vCounter][7]\(0) => Inst_vga_gen_n_46
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
    DIBDI : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_locked : out STD_LOGIC;
    \nxt_enc_data_reg[0]\ : out STD_LOGIC;
    SPI_SCLK_I_IBUF : in STD_LOGIC;
    SPI_MOSI_I_IBUF : in STD_LOGIC;
    global_reset : in STD_LOGIC;
    RESET_O : in STD_LOGIC;
    I_unbuff_clk : in STD_LOGIC
  );
end FPGA2;

architecture STRUCTURE of FPGA2 is
  signal DATA_A_O : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^dibdi\ : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_locked\ : STD_LOGIC;
  signal pixel_clk : STD_LOGIC;
  signal pixel_clk_x5 : STD_LOGIC;
begin
  DIBDI(31 downto 0) <= \^dibdi\(31 downto 0);
  WEBWE(0) <= \^webwe\(0);
  clk_locked <= \^clk_locked\;
RAM_inst1: entity work.TD_RAM_36K_WRAP_0
     port map (
      DIBDI(31 downto 0) => \^dibdi\(31 downto 0),
      DOADO(23 downto 12) => DATA_A_O(27 downto 16),
      DOADO(11 downto 0) => DATA_A_O(11 downto 0),
      O(3) => RAM_inst1_n_28,
      O(2) => RAM_inst1_n_29,
      O(1) => RAM_inst1_n_30,
      O(0) => RAM_inst1_n_31,
      O_buff_clkpixel => pixel_clk,
      \RED_O_reg[0]\(1) => RAM_inst1_n_26,
      \RED_O_reg[0]\(0) => RAM_inst1_n_27,
      \RED_O_reg[0]_0\(3) => RAM_inst1_n_32,
      \RED_O_reg[0]_0\(2) => RAM_inst1_n_33,
      \RED_O_reg[0]_0\(1) => RAM_inst1_n_34,
      \RED_O_reg[0]_0\(0) => RAM_inst1_n_35,
      \RED_O_reg[0]_1\(2) => RAM_inst1_n_36,
      \RED_O_reg[0]_1\(1) => RAM_inst1_n_37,
      \RED_O_reg[0]_1\(0) => RAM_inst1_n_38,
      \RED_O_reg[0]_2\(3) => RAM_inst1_n_39,
      \RED_O_reg[0]_2\(2) => RAM_inst1_n_40,
      \RED_O_reg[0]_2\(1) => RAM_inst1_n_41,
      \RED_O_reg[0]_2\(0) => RAM_inst1_n_42,
      \RED_O_reg[0]_3\(3) => RAM_inst1_n_43,
      \RED_O_reg[0]_3\(2) => RAM_inst1_n_44,
      \RED_O_reg[0]_3\(1) => RAM_inst1_n_45,
      \RED_O_reg[0]_3\(0) => RAM_inst1_n_46,
      \RED_O_reg[0]_4\(2) => RAM_inst1_n_47,
      \RED_O_reg[0]_4\(1) => RAM_inst1_n_48,
      \RED_O_reg[0]_4\(0) => RAM_inst1_n_49,
      \RED_O_reg[0]_5\(3) => RAM_inst1_n_50,
      \RED_O_reg[0]_5\(2) => RAM_inst1_n_51,
      \RED_O_reg[0]_5\(1) => RAM_inst1_n_52,
      \RED_O_reg[0]_5\(0) => RAM_inst1_n_53,
      \RED_O_reg[0]_6\(3) => RAM_inst1_n_54,
      \RED_O_reg[0]_6\(2) => RAM_inst1_n_55,
      \RED_O_reg[0]_6\(1) => RAM_inst1_n_56,
      \RED_O_reg[0]_6\(0) => RAM_inst1_n_57,
      S(1) => RAM_inst1_n_24,
      S(0) => RAM_inst1_n_25,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => \^webwe\(0)
    );
SpiRx: entity work.SPI_RX
     port map (
      DIBDI(31 downto 0) => \^dibdi\(31 downto 0),
      RESET_O => RESET_O,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => \^webwe\(0),
      clk_locked => \^clk_locked\,
      global_reset => global_reset
    );
clocking_2_inst: entity work.clocking_2
     port map (
      I_unbuff_clk => I_unbuff_clk,
      O_buff_clk5xpixel => pixel_clk_x5,
      O_buff_clkpixel => pixel_clk,
      RESET_O => RESET_O,
      clk_locked => \^clk_locked\,
      \nxt_enc_data_reg[0]\ => \nxt_enc_data_reg[0]\
    );
hdmi_driver_inst: entity work.hdmi_driver
     port map (
      CLK_I_X5 => pixel_clk_x5,
      DOADO(23 downto 12) => DATA_A_O(27 downto 16),
      DOADO(11 downto 0) => DATA_A_O(11 downto 0),
      O(3) => RAM_inst1_n_28,
      O(2) => RAM_inst1_n_29,
      O(1) => RAM_inst1_n_30,
      O(0) => RAM_inst1_n_31,
      O_buff_clkpixel => pixel_clk,
      S(1) => RAM_inst1_n_24,
      S(0) => RAM_inst1_n_25,
      UNISIM_RAM0(3) => RAM_inst1_n_50,
      UNISIM_RAM0(2) => RAM_inst1_n_51,
      UNISIM_RAM0(1) => RAM_inst1_n_52,
      UNISIM_RAM0(0) => RAM_inst1_n_53,
      UNISIM_RAM0_0(3) => RAM_inst1_n_54,
      UNISIM_RAM0_0(2) => RAM_inst1_n_55,
      UNISIM_RAM0_0(1) => RAM_inst1_n_56,
      UNISIM_RAM0_0(0) => RAM_inst1_n_57,
      UNISIM_RAM0_1(1) => RAM_inst1_n_26,
      UNISIM_RAM0_1(0) => RAM_inst1_n_27,
      UNISIM_RAM0_2(3) => RAM_inst1_n_32,
      UNISIM_RAM0_2(2) => RAM_inst1_n_33,
      UNISIM_RAM0_2(1) => RAM_inst1_n_34,
      UNISIM_RAM0_2(0) => RAM_inst1_n_35,
      UNISIM_RAM0_3(2) => RAM_inst1_n_36,
      UNISIM_RAM0_3(1) => RAM_inst1_n_37,
      UNISIM_RAM0_3(0) => RAM_inst1_n_38,
      UNISIM_RAM0_4(3) => RAM_inst1_n_39,
      UNISIM_RAM0_4(2) => RAM_inst1_n_40,
      UNISIM_RAM0_4(1) => RAM_inst1_n_41,
      UNISIM_RAM0_4(0) => RAM_inst1_n_42,
      UNISIM_RAM0_5(3) => RAM_inst1_n_43,
      UNISIM_RAM0_5(2) => RAM_inst1_n_44,
      UNISIM_RAM0_5(1) => RAM_inst1_n_45,
      UNISIM_RAM0_5(0) => RAM_inst1_n_46,
      UNISIM_RAM0_6(2) => RAM_inst1_n_47,
      UNISIM_RAM0_6(1) => RAM_inst1_n_48,
      UNISIM_RAM0_6(0) => RAM_inst1_n_49,
      global_reset => global_reset,
      hdmi_out_n(3 downto 0) => hdmi_out_n(3 downto 0),
      hdmi_out_p(3 downto 0) => hdmi_out_p(3 downto 0)
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
  attribute SPI_MODE : string;
  attribute SPI_MODE of top : entity is "1'b1";
  attribute SPI_TYPE : string;
  attribute SPI_TYPE of top : entity is "2'b10";
end top;

architecture STRUCTURE of top is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal FPGA2_inst_n_42 : STD_LOGIC;
  signal RESET_O : STD_LOGIC;
  signal RX_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_I_IBUF : STD_LOGIC;
  signal SPI_MOSI_O_OBUF : STD_LOGIC;
  signal SPI_SCLK_I_IBUF : STD_LOGIC;
  signal SPI_SCLK_O_OBUF : STD_LOGIC;
  signal TX_O_OBUF : STD_LOGIC;
  signal adr_A : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_A : STD_LOGIC;
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
      CLK => clk_A,
      D(0) => RX_I_IBUF,
      DOADO(31 downto 0) => data_A(31 downto 0),
      I_unbuff_clk => CLK100MHZ_IBUF,
      Q(6 downto 0) => adr_A(6 downto 0),
      RESET_O => RESET_O,
      SPI_MOSI_O_OBUF => SPI_MOSI_O_OBUF,
      SPI_SCLK_O_OBUF => SPI_SCLK_O_OBUF,
      TX_O_OBUF => TX_O_OBUF,
      clk_locked => \clocking_2_inst/clk_locked\,
      global_reset => global_reset,
      reset_48_reg => FPGA2_inst_n_42
    );
FPGA2_inst: entity work.FPGA2
     port map (
      DIBDI(31 downto 0) => data_B(31 downto 0),
      I_unbuff_clk => CLK100MHZ_IBUF,
      RESET_O => RESET_O,
      SPI_MOSI_I_IBUF => SPI_MOSI_I_IBUF,
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => wr_B,
      clk_locked => \clocking_2_inst/clk_locked\,
      global_reset => global_reset,
      hdmi_out_n(3 downto 0) => hdmi_out_n(3 downto 0),
      hdmi_out_p(3 downto 0) => hdmi_out_p(3 downto 0),
      \nxt_enc_data_reg[0]\ => FPGA2_inst_n_42
    );
RAM_spi_debug: entity work.TD_RAM_36K_WRAP
     port map (
      CLK => clk_A,
      DIBDI(31 downto 0) => data_B(31 downto 0),
      DOADO(31 downto 0) => data_A(31 downto 0),
      Q(6 downto 0) => adr_A(6 downto 0),
      SPI_SCLK_I_IBUF => SPI_SCLK_I_IBUF,
      WEBWE(0) => wr_B
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
