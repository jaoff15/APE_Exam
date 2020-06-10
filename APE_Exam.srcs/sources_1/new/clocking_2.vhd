----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity clocking_2 is
  Port ( 
        CLK_I              : in  std_logic; -- 100MHz
--        RESET_I            : in  std_logic;
        PIXEL_CLK_O        : out std_logic;
        PIXEL_CLK_X5_O     : out std_logic;
        PIXEL_CLK_X5_INV_O : out std_logic;
        SYS_RESET_O        : out std_logic 
	);
end clocking_2;

architecture Behavioral of clocking_2 is
    COMPONENT clocking
    generic (
        in_mul    : natural := 10;    
        pix_div   : natural := 30;
        pix5x_div : natural := 10
    );
    PORT ( 
        I_unbuff_clk         : in  STD_LOGIC;
        O_buff_clkpixel      : out STD_LOGIC;
        O_buff_clk5xpixel    : out STD_LOGIC;
        O_buff_clk5xpixelinv : out STD_LOGIC;
        clk_locked           : out std_logic 
    );
    END COMPONENT;
    
    
    
    -- Clock engine    
--    signal cEng_pixel_720       : std_logic;
--    signal cEng_5xpixel_720     : std_logic;    
--    signal cEng_5xpixel_inv_720 : std_logic;
    
    
    signal clk_locked           : std_logic;
    signal mmcm_clock_out       : std_logic;
    signal pixel_clk_x5_out     : std_logic;
    signal clk_feedback         : std_logic;
    
    
begin

--PIXEL_CLK_O        <= cEng_pixel_720;
--PIXEL_CLK_X5_O     <= cEng_5xpixel_720;
--PIXEL_CLK_X5_INV_O <= cEng_5xpixel_inv_720;
SYS_RESET_O        <= not clk_locked;

-- Gen 75Mhz pixel clock generation
-- Technically, 720p should be 74.25MHz. 75 generally works on monitors. YMMV.
--clock_eng_1280_720A: clocking
-- generic map (
--     in_mul     => 9,
--     pix_div    => 12,
--     pix5x_div  => 2
-- )
-- port map (
--     I_unbuff_clk         => CLK_I,
--     O_buff_clkpixel      => cEng_pixel_720,
--     O_buff_clk5xpixel    => open,
--     O_buff_clk5xpixelinv => open,
--     clk_locked           => open
-- );   
 
---- Gen 375Mhz 5xpixel and 5xpixel inverted clock generation
--clock_eng_1280_720B: clocking
--generic map (
--    in_mul      => 10,
--    pix_div     => 1,
--    pix5x_div   => 2
--)
--port map (
--    I_unbuff_clk         => cEng_pixel_720,
--    O_buff_clkpixel      => open,
--    O_buff_clk5xpixel    => cEng_5xpixel_720,
--    O_buff_clk5xpixelinv => cEng_5xpixel_inv_720,
--    clk_locked           => clk_locked
--);   
    
MMCME2_BASE_pixelx5_inst : MMCME2_BASE
  generic map (
    BANDWIDTH           => "OPTIMIZED",  
    CLKIN1_PERIOD       => 10.0,
    CLKFBOUT_MULT_F     => 37.125,
    CLKFBOUT_PHASE      => 0.0,
    
    CLKOUT0_DIVIDE_F    => 2.5,
    CLKOUT0_DUTY_CYCLE  => 0.5,
    CLKOUT0_PHASE       => 0.0,
    
    DIVCLK_DIVIDE       => 4,               -- Go for 100MHzx10/1 = 1GHz PLL freq
    STARTUP_WAIT        => FALSE            -- Delay DONE until PLL Locks,
   )
   port map (
    CLKOUT0             => mmcm_clock_out,  -- 1-bit output:
    CLKFBOUT            => clk_feedback,    -- provide feedback
    CLKIN1              => CLK_I,           -- 1-bit input: Input clock
    PWRDWN              => '0',             -- 1-bit input: Power-down
    RST                 => '0',             -- 1-bit input: Reset
    CLKFBIN             => clk_feedback,    -- 1-bit input: Feedback clock
    LOCKED              => clk_locked
   );
    

PIXEL_CLK_X5_O     <= pixel_clk_x5_out;
PIXEL_CLK_X5_INV_O <= not pixel_clk_x5_out;
    


 
 -- Generate pixel clock which is 5 times slower than the MMCM clock
 BUFR_pixel_clk_inst : BUFR
  generic map (
     BUFR_DIVIDE => "5",        -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
     SIM_DEVICE  => "7SERIES"   -- Must be set to "7SERIES" 
  )
  port map (
     O   => PIXEL_CLK_O,        -- 1-bit output: Clock output port
     CE  => '1',                -- 1-bit input: Active high, clock enable (Divided modes only)
     CLR => '0',                -- 1-bit input: Active high, asynchronous clear (Divided modes only)
     I   => pixel_clk_x5_out    -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
  );
  
  -- Make sure phase between the pixel clock and the 5 x pixel clock
  BUFR_pixel_clk_x5_inst : BUFR
   generic map (
      BUFR_DIVIDE => "BYPASS",    -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE  => "7SERIES"    -- Must be set to "7SERIES" 
   )
   port map (
      O   => pixel_clk_x5_out,    -- 1-bit output: Clock output port
      CE  => '1',                 -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR => '0',                 -- 1-bit input: Active high, asynchronous clear (Divided modes only)
      I   => mmcm_clock_out       -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );
  


end Behavioral;
