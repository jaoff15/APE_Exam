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
Generic   (CLK_I_PERIOD : real 
           range 2.0 to 64.0 := 40.0); -- Period of input clock in ns
    Port ( RESET_I    : in  std_logic;
           CLK_I      : in  STD_LOGIC;
           CLK48_O    : out STD_LOGIC;
           RESET_O    : out STD_LOGIC);
end clocking_1;

architecture rtl of clocking_1 is
  signal clk_feedback : std_logic;
  
  signal mmcm_lock : std_logic;
  signal clk        : std_logic;
  signal buf_reset     : std_logic := '0'; -- registered reset
  
begin 
  
CLK48_O <= clk;
  
--- MMCM 
MMCME2_BASE_inst : MMCME2_BASE
  generic map (
    BANDWIDTH => "OPTIMIZED",  
    CLKFBOUT_MULT_F => CLK_I_PERIOD, -- 40, -- 25MHz*40 = 1.000 GHz
    CLKFBOUT_PHASE => 0.0,  -- no phase change
    CLKIN1_PERIOD => CLK_I_PERIOD,  -- Specify 40ns <-> 25MHz for check
    -- CLKOUT0..5_DIVIDE : Divide amount for each CLKOUT (1-128)
    CLKOUT0_DIVIDE_F =>62.5, -- 16 MHz  .... 20.8333,  -- 48MHz
--    CLKOUT1_DIVIDE =>10,  --    100MHz
    CLKOUT0_DUTY_CYCLE => 0.5,  -- 50% duty cycle
--    CLKOUT1_DUTY_CYCLE => 0.5,  -- 50% duty cycle
    CLKOUT0_PHASE => 0.0,      -- 0 degree phase
--    CLKOUT1_PHASE => 0.0,     -- 90 degree phase
    DIVCLK_DIVIDE => 1,        -- Go for 25MHzx40/1 = 1GHz PLL freq
    STARTUP_WAIT => FALSE    -- Delay DONE until PLL Locks,
   )
   port map (
    CLKOUT0 => clk,   -- 1-bit output:
--    CLKOUT1 => CLK_1,
    -- CLKOUT1 => clk25_90,   -- 1-bit output:
    CLKFBOUT => clk_feedback, -- provide feedback
    CLKIN1 => CLK_I,     -- 1-bit input: Input clock
    PWRDWN => '0',     -- 1-bit input: Power-down
    RST => RESET_I,           -- 1-bit input: Reset
    CLKFBIN => clk_feedback,    -- 1-bit input: Feedback clock
    LOCKED => mmcm_lock
   );
   

--- Generate reset signal    
process(clk,RESET_I)  -- recommended system reset design: 
   begin            -- https://forums.xilinx.com/t5/Adaptable-Advantage-Blog/Demystifying-Resets-Synchronous-Asynchronous-other-Design/ba-p/882252
     if RESET_I='1' then
       RESET_O <='1';
       buf_reset <='1';
     elsif clk'event and clk='1' then
       RESET_O <= buf_reset;
       buf_reset <=(not mmcm_lock) or RESET_I;
     end if ;
   end process;
end rtl;
