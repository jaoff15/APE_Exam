--------------------------------------------------------------------------------
-- Engineer:      Mike Field <hamster@snap.net.nz>
-- Description:   Converts VGA signals into DVID bitstreams.
--
--                'clk' and 'clk_n' should be 5x clk_pixel.
--
--                'blank' should be asserted during the non-display 
--                portions of the frame
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity dvid is
    Port ( clk       : in  STD_LOGIC;
           clk_n     : in  STD_LOGIC;
           clk_pixel : in  STD_LOGIC;
           red_p     : in  STD_LOGIC_VECTOR (7 downto 0);
           green_p   : in  STD_LOGIC_VECTOR (7 downto 0);
           blue_p    : in  STD_LOGIC_VECTOR (7 downto 0);
           blank     : in  STD_LOGIC;
           hsync     : in  STD_LOGIC;
           vsync     : in  STD_LOGIC;          
           reset_i   : in std_logic;
           red_s     : out STD_LOGIC;
           green_s   : out STD_LOGIC;
           blue_s    : out STD_LOGIC;
           clock_s   : out STD_LOGIC);
end dvid;

architecture Behavioral of dvid is
   COMPONENT TDMS_encoder
   PORT(
      clk     : IN  std_logic;
      data    : IN  std_logic_vector(7 downto 0);
      c       : IN  std_logic_vector(1 downto 0);
      blank   : IN  std_logic;          
      encoded : OUT std_logic_vector(9 downto 0)
      );
   END COMPONENT;
   
-- The OSERDES Wrapper for 
   COMPONENT OSERDES_10BIT_WRAP is port (  
       CLK_I      : in  STD_LOGIC  := '0';
       CLK_I_X5   : in  STD_LOGIC  := '0';
       RESET_I    : in  STD_LOGIC  := '0';
       DATA_I     : in  std_logic_vector(9 downto 0) := (others => '0');
       DATA_O     : out STD_LOGIC  := '0'
   );
   end COMPONENT;

   signal encoded_red, encoded_green, encoded_blue : std_logic_vector(9 downto 0) := (others => '0');
   signal latched_red, latched_green, latched_blue : std_logic_vector(9 downto 0) := (others => '0');
   signal shift_red,   shift_green,   shift_blue   : std_logic_vector(9 downto 0) := (others => '0');
   
--   signal shift_clock   : std_logic_vector(9 downto 0) := "0000011111";
   signal shift_clock   : std_logic_vector(9 downto 0) := "1100000111";

   
   constant c_red       : std_logic_vector(1 downto 0)  := (others => '0');
   constant c_green     : std_logic_vector(1 downto 0)  := (others => '0');
   signal   c_blue      : std_logic_vector(1 downto 0)  := (others => '0');
   
   signal reset         : std_logic                     := '1';
   signal cnt           : std_logic_vector(7 downto 0)  := "00000100";
   
   signal shiftout1_red,    shiftout2_red   : std_logic := '0';
   signal shiftout1_green,  shiftout2_green : std_logic := '0';
   signal shiftout1_blue,   shiftout2_blue  : std_logic := '0';
   signal shiftout1_clk,    shiftout2_clk   : std_logic := '0';
   

begin   
   
   
   reset  <= reset_i;
   
   c_blue <= vsync & hsync;
   
   TDMS_encoder_red:   TDMS_encoder PORT MAP(clk => clk_pixel, data => red_p,   c => c_red,   blank => blank, encoded => encoded_red);
   TDMS_encoder_green: TDMS_encoder PORT MAP(clk => clk_pixel, data => green_p, c => c_green, blank => blank, encoded => encoded_green);
   TDMS_encoder_blue:  TDMS_encoder PORT MAP(clk => clk_pixel, data => blue_p,  c => c_blue,  blank => blank, encoded => encoded_blue);



   process(clk_pixel)
   begin
      if rising_edge(clk_pixel) then 
            latched_red   <= encoded_red;
            latched_green <= encoded_green;
            latched_blue  <= encoded_blue;
      end if;
   end process;
   
      -- RED
  OSERDES_R: OSERDES_10BIT_WRAP port map(
      CLK_I      => clk_pixel,
      CLK_I_X5   => clk,
      RESET_I    => reset_i,
      DATA_I     => latched_red,
      DATA_O     => red_s);
  
 -- GREEN 
  OSERDES_G: OSERDES_10BIT_WRAP port map(
      CLK_I      => clk_pixel,
      CLK_I_X5   => clk,
      RESET_I    => reset_i,
      DATA_I     => latched_green,
      DATA_O     => green_s);
  
  -- BLUE
  OSERDES_B: OSERDES_10BIT_WRAP port map(
      CLK_I      => clk_pixel,
      CLK_I_X5   => clk,
      RESET_I    => reset_i,
      DATA_I     => latched_blue,
      DATA_O     => blue_s);
  
  -- CLOCK
  OSERDES_CLK: OSERDES_10BIT_WRAP port map(
      CLK_I      => clk_pixel,
      CLK_I_X5   => clk,
      RESET_I    => reset_i,
      DATA_I     => shift_clock,
      DATA_O     => clock_s);
   
   

end Behavioral; 