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
--Generic   (CLK_I_PERIOD : real 
--           range 2.0 to 64.0 := 40.0); -- Period of input clock in ns
    Port ( RESET_I    : in  std_logic;
           CLK_I      : in  STD_LOGIC;
           CLK48_O    : out STD_LOGIC;
           CLK_SPI_O  : out STD_LOGIC;
           RESET_O    : out STD_LOGIC);
end clocking_1;

architecture rtl of clocking_1 is
  signal clk_feedback : std_logic;
  
  
  signal clk48, clk_spi                 : std_logic;
  signal mmcm_lock    : std_logic;
  signal buf_reset    : std_logic := '0'; -- registered reset
  
  signal reset : std_logic;
  
begin 
  
CLK48_O     <= clk48;
CLK_SPI_O   <= clk_spi;
  
RESET_O <= reset; -- or reset_spi;
--clk_spi <= clk48;
  
-- Create system clock
--- MMCM 
MMCME2_BASE_48_inst : MMCME2_BASE
  generic map (
    BANDWIDTH           => "OPTIMIZED",  
    CLKIN1_PERIOD       => 10.0,
    CLKFBOUT_MULT_F     => 10.25,
    CLKFBOUT_PHASE      => 0.0,
    
    -- SPI clock
    CLKOUT0_DIVIDE_F    => 10.25,
    CLKOUT0_DUTY_CYCLE  => 0.5,
    CLKOUT0_PHASE       => 0.0,
    
    -- sys_clock used by QLink
    CLKOUT1_DIVIDE      => 64,
    CLKOUT1_DUTY_CYCLE  => 0.5,
    CLKOUT1_PHASE       => 0.0,
    
    DIVCLK_DIVIDE       => 1,               -- Go for 100MHzx10/1 = 1GHz PLL freq
    STARTUP_WAIT        => FALSE            -- Delay DONE until PLL Locks,
   )
   port map (
    CLKOUT0             => clk_spi,             -- 1-bit output:
    CLKOUT1             => clk48,
    CLKFBOUT            => clk_feedback,    -- provide feedback
    CLKIN1              => CLK_I,           -- 1-bit input: Input clock
    PWRDWN              => '0',             -- 1-bit input: Power-down
    RST                 => RESET_I,         -- 1-bit input: Reset
    CLKFBIN             => clk_feedback,    -- 1-bit input: Feedback clock
    LOCKED              => mmcm_lock
   );
   
--- Generate reset signal    
--process(clk48)  -- recommended system reset design: 
--  begin            -- https://forums.xilinx.com/t5/Adaptable-Advantage-Blog/Demystifying-Resets-Synchronous-Asynchronous-other-Design/ba-p/882252
--    if RESET_I='1' then
--      reset <='1';
--      buf_reset <='1';
--    elsif rising_edge(clk48) then
--      reset <= buf_reset;
--      buf_reset <=(not mmcm_lock) or RESET_I;
--    end if ;
--  end process;   

reset <= (not mmcm_lock);

end rtl;
