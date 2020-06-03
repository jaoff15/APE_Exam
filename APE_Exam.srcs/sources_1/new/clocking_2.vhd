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
--library UNISIM;
--use UNISIM.VComponents.all;

entity clocking_2 is
  Port ( 
        CLK_I              : in  std_logic; -- 100MHz
        RESET_I            : in  std_logic;
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
    signal cEng_pixel_720       : std_logic;
    signal cEng_5xpixel_720     : std_logic;    
    signal cEng_5xpixel_inv_720 : std_logic;
    signal clk_locked           : std_logic;
    
    
    
begin
    -- Gen 75Mhz pixel clock generation
    -- Technically, 720p should be 74.25MHz. 75 generally works on monitors. YMMV.
    clock_eng_1280_720A: clocking
     generic map (
         in_mul     => 9,
         pix_div    => 12,
         pix5x_div  => 2
     )
     port map (
         I_unbuff_clk         => CLK_I,
         O_buff_clkpixel      => cEng_pixel_720,
         O_buff_clk5xpixel    => open,
         O_buff_clk5xpixelinv => open,
         clk_locked           => open
     );   
     
    -- Gen 375Mhz 5xpixel and 5xpixel inverted clock generation
    clock_eng_1280_720B: clocking
    generic map (
        in_mul      => 10,
        pix_div     => 1,
        pix5x_div   => 2
    )
    port map (
        I_unbuff_clk         => cEng_pixel_720,
        O_buff_clkpixel      => open,
        O_buff_clk5xpixel    => cEng_5xpixel_720,
        O_buff_clk5xpixelinv => cEng_5xpixel_inv_720,
        clk_locked           => clk_locked
    );   
    
SYS_RESET_O <= not clk_locked;

end Behavioral;
