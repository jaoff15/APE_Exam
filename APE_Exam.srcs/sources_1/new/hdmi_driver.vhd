----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hdmi_driver is
   Port ( 
     --CLK100MHZ : in STD_LOGIC;
     --sw : in STD_LOGIC_VECTOR (3 downto 0);
     --led : out STD_LOGIC_VECTOR (3 downto 0);
     RESET_I            : in  std_logic;
     PIXEL_CLK_I        : in  std_logic;
     PIXEL_CLK_X5_I     : in  std_logic; 
     PIXEL_CLK_X5_INV_I : in  std_logic;
     POSITION_DATA_I    : in  std_logic_vector(31 downto 0);
     hdmi_out_p         : out STD_LOGIC_VECTOR(3 downto 0);
     hdmi_out_n         : out STD_LOGIC_VECTOR(3 downto 0)
 );
end hdmi_driver;

architecture Behavioral of hdmi_driver is


    COMPONENT vga_gen
    generic (
            hRez       : natural := 1280;    
            hStartSync : natural := 1280+72;
            hEndSync   : natural := 1280+72+80;
            hMaxCount  : natural := 1280+72+80+216;
            hsyncActive : std_logic := '0';
            
            vRez       : natural := 720;
            vStartSync : natural := 720+3;
            vEndSync   : natural := 720+3+5;
            vMaxCount  : natural := 720+3+5+22;
            vsyncActive : std_logic := '1';
            prefetch_idx:natural := 8
    );
    PORT(    
        pixel_clock  : in std_logic; 
        pixel_h      : out STD_LOGIC_VECTOR(11 downto 0);
        pixel_v      : out STD_LOGIC_VECTOR(11 downto 0);
        pixel_h_pref : out STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
        pixel_v_pref : out STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
        blank_pref   : OUT std_logic;
        blank        : OUT std_logic;
        hsync        : OUT std_logic;
        vsync        : OUT std_logic
    );
    END COMPONENT;

    COMPONENT dvid
    PORT(
        clk      : IN  std_logic;
        clk_n    : IN  std_logic;
        clk_pixel: IN  std_logic;
        red_p    : IN  std_logic_vector(7 downto 0);
        green_p  : IN  std_logic_vector(7 downto 0);
        blue_p   : IN  std_logic_vector(7 downto 0);
        blank    : IN  std_logic;
        hsync    : IN  std_logic;
        vsync    : IN  std_logic;          
        reset_i  : in  std_logic;
        red_s    : OUT std_logic;
        green_s  : OUT std_logic;
        blue_s   : OUT std_logic;
        clock_s  : OUT std_logic
    );
    END COMPONENT;
    
    COMPONENT image_driver is
        Port ( CLK_FAST_I       : in  STD_LOGIC;
               CLK_SLOW_I       : in  STD_LOGIC;
               RESET_I          : in  STD_LOGIC;
               PIXEL_H          : in  STD_LOGIC_VECTOR (11 downto 0);
               PIXEL_V          : in  STD_LOGIC_VECTOR (11 downto 0);
               POSITION_DATA_I  : in  std_logic_vector (31 downto 0);
               RED_O            : out STD_LOGIC_VECTOR (7 downto 0);
               GREEN_O          : out STD_LOGIC_VECTOR (7 downto 0);
               BLUE_O           : out STD_LOGIC_VECTOR (7 downto 0));
    end COMPONENT;
    
    
    

    -- Counter for LEDs
	signal count: unsigned(31 downto 0) := X"00000000";
	

    
    -- Vga timing
    signal pixel_h : STD_LOGIC_VECTOR(11 downto 0);
    signal pixel_v : STD_LOGIC_VECTOR(11 downto 0);
    signal blank   : std_logic;
    signal hsync   : std_logic;
    signal vsync   : std_logic;    
    
    -- Pixel colour data
    signal red_ram_p   : std_logic_vector(7 downto 0) := (others => '0');
    signal green_ram_p : std_logic_vector(7 downto 0) := (others => '0');
    signal blue_ram_p  : std_logic_vector(7 downto 0) := (others => '0');
    
    
    
    -- TMDS
    signal red_s   : std_logic;
    signal green_s : std_logic;
    signal blue_s  : std_logic;
    signal clock_s : std_logic;
begin

   
    -- increment the counter with the pixel clock 
--    process(cEng_pixel_720)
--    begin
--        if rising_edge(cEng_pixel_720) then
--            count <= count + 1;
--        end if;
--    end process;
             
--    -- assign LEDs to bits far enough up the counter as to see
--    -- them count.
--    led(0) <= count(24);
--    led(1) <= count(25);
--    led(2) <= count(26);
--    led(3) <= count(27);
 
    
              
    -- This generates controls and offsets required for a fixed resolution
    -- We don't need the _pref 'prefetch' signals here - they can be used in
    -- conjunction with e.g. my character generator to prefetch glyph rows.
    -- Default to 1280x720x60Hz. You can modify the below values, and clock,
    -- to output different resolutions. 
    Inst_vga_gen: vga_gen 
    generic map (
        hRez        => 1280,
        hStartSync  => 1280+72,
        hEndSync    => 1280+72+80,
        hMaxCount   => 1280+72+80+216,
        hsyncActive => '0',
        vRez        => 720,
        vStartSync  => 720+3,
        vEndSync    => 720+3+5,
        vMaxCount   => 720+3+5+22,
        vsyncActive => '1'
    )
--    generic map (   -- For HD 1920x1080 60 Hz  (Verified ANSS .. Use 140.6496Mhz pixel clock for 60Hz)
--        hRez        => 1920,                              -- Or  117.2080MHz for 50Hz
--        hStartSync  => 1920+32,                           -- Or   93.7664MHz for 40Hz
--        hEndSync    => 1920+32+40,                        -- Or   70.3248MHz for 30Hz
--        hMaxCount   => 1920+32+40+88,
--        hsyncActive => '0',
--        vRez        => 1080,
--        vStartSync  => 1080+4,
--        vEndSync    => 1080+4+5,
--        vMaxCount   => 1080+4+5+38,
--        vsyncActive => '1'
--    )
    PORT MAP( 
--        pixel_clock  => cEng_pixel_720,
        pixel_clock  => PIXEL_CLK_I,      
        pixel_h      => pixel_h,
        pixel_v      => pixel_v,
        pixel_h_pref => open,
        pixel_v_pref => open,     
        blank_pref   => open,
        blank        => blank,
        hsync        => hsync,
        vsync        => vsync
    );
    


--    sys_reset <= not clk_locked;

    -- TMDS signal generation
    -- This takes pixel colour values and synd data, generating the
    -- 10-bit coding.
    dvid_1: dvid PORT MAP(
--        clk        => cEng_5xpixel_720,
--        clk_n      => cEng_5xpixel_inv_720,
--        clk_pixel  => cEng_pixel_720,
        clk        => PIXEL_CLK_X5_I,
        clk_n      => PIXEL_CLK_X5_INV_I,
        clk_pixel  => PIXEL_CLK_I,
        red_p      => red_ram_p,
        green_p    => green_ram_p,
        blue_p     => blue_ram_p,
        blank      => blank,
        hsync      => hsync,
        vsync      => vsync,
        reset_i    => RESET_I,
        
        -- outputs to TMDS drivers
        red_s      => red_s,
        green_s    => green_s,
        blue_s     => blue_s,
        clock_s    => clock_s
    );
    
    -- Differential output buffers
    OBUFDS_blue  : OBUFDS port map ( O  => hdmi_out_p(0), OB => hdmi_out_n(0), I  => blue_s );
    OBUFDS_green : OBUFDS port map ( O  => hdmi_out_p(1), OB => hdmi_out_n(1), I  => green_s );
    OBUFDS_red   : OBUFDS port map ( O  => hdmi_out_p(2), OB => hdmi_out_n(2), I  => red_s );
    OBUFDS_clock : OBUFDS port map ( O  => hdmi_out_p(3), OB => hdmi_out_n(3), I  => clock_s );

    image_driver_inst: image_driver port map(
--      CLK_FAST_I => cEng_5xpixel_720,
--      CLK_SLOW_I => cEng_pixel_720,
      CLK_FAST_I => PIXEL_CLK_X5_I,
      CLK_SLOW_I => PIXEL_CLK_I, 
      POSITION_DATA_I => POSITION_DATA_I,
      RESET_I   => RESET_I,
      PIXEL_H   => pixel_h,
      PIXEL_V   => pixel_v,
      RED_O     => red_ram_p,
      GREEN_O   => green_ram_p,
      BLUE_O    => blue_ram_p
    );

end Behavioral;

