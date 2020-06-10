----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;                    -- For Xilinx primitives
use UNISIM.vcomponents.all;        --   allow all "components"

entity clocking_1 is
    Port ( RESET_I    : in  std_logic;
           CLK_I      : in  STD_LOGIC;
           CLK16_O    : out STD_LOGIC;
           CLK_SPI_O  : out STD_LOGIC;
           RESET_O    : out STD_LOGIC);
end clocking_1;

architecture rtl of clocking_1 is
  signal clk_feedback1,clk_feedback2 : std_logic;
  
  
  signal clk16, clk_spi                 : std_logic;
  signal mmcm_lock1,mmcm_lock2    : std_logic;
  signal buf_reset    : std_logic := '0'; -- registered reset
  
begin 
  
  
BUFG_clk16_inst : BUFG
port map (
   O => CLK16_O, -- 1-bit output: Clock output
   I => clk16  -- 1-bit input: Clock input
);
BUFG_spi_inst : BUFG
port map (
   O => CLK_SPI_O, -- 1-bit output: Clock output
   I => clk_spi  -- 1-bit input: Clock input
);

--CLK16_O     <= clk16;
--CLK_SPI_O   <= clk_spi;
  
RESET_O <= not(mmcm_lock1) or not(mmcm_lock2); -- or reset_spi;

-- Create system clock
--- MMCM 
MMCME2_BASE_SPI_inst : MMCME2_BASE
  generic map (
    BANDWIDTH           => "OPTIMIZED",  
    CLKIN1_PERIOD       => 10.0,
    
    -- Important configuration data of clock
    CLKFBOUT_MULT_F     => 10.0,
    DIVCLK_DIVIDE       => 1,
    CLKOUT0_DIVIDE_F    => 10.0,
    
    -- Other data
    CLKFBOUT_PHASE      => 0.0,
    CLKOUT0_DUTY_CYCLE  => 0.5,
    CLKOUT0_PHASE       => 0.0,
    STARTUP_WAIT        => FALSE            -- Delay DONE until PLL Locks,
   )
   port map (
    CLKOUT0             => clk_spi,             -- 1-bit output:
    CLKFBOUT            => clk_feedback1,    -- provide feedback
    CLKIN1              => CLK_I,           -- 1-bit input: Input clock
    PWRDWN              => '0',             -- 1-bit input: Power-down
    RST                 => RESET_I,         -- 1-bit input: Reset
    CLKFBIN             => clk_feedback1,    -- 1-bit input: Feedback clock
    LOCKED              => mmcm_lock1
   );
   
   
MMCME2_BASE_16_inst : MMCME2_BASE
     generic map (
       BANDWIDTH           => "OPTIMIZED",  
       CLKIN1_PERIOD       => 10.0,
       CLKFBOUT_MULT_F     => 10.0,
       
       -- sys_clock used by QLink
       CLKOUT0_DIVIDE_F    => 62.5,
       CLKOUT0_DUTY_CYCLE  => 0.5,
       CLKOUT0_PHASE       => 0.0,
       
       DIVCLK_DIVIDE       => 1,               -- Go for 100MHzx10/1 = 1GHz PLL freq
       STARTUP_WAIT        => FALSE            -- Delay DONE until PLL Locks,
      )
      port map (
       CLKOUT0             => clk16,
       CLKFBOUT            => clk_feedback2,    -- provide feedback
       CLKIN1              => CLK_I,           -- 1-bit input: Input clock
       PWRDWN              => '0',             -- 1-bit input: Power-down
       RST                 => RESET_I,         -- 1-bit input: Reset
       CLKFBIN             => clk_feedback2,    -- 1-bit input: Feedback clock
       LOCKED              => mmcm_lock2
      );


end rtl;
