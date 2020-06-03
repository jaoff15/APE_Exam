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
   
   COMPONENT OSERDES_WRAP is
       Port (  CLK_FAST_I : in  STD_LOGIC  := '0';
               CLK_SLOW_I : in  STD_LOGIC  := '0';
               RESET_I    : in  STD_LOGIC  := '0';
               DATA_I     : in  std_logic_vector(9 downto 0) := (others => '0');
               DATA_O     : out STD_LOGIC := '0'
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
   
-- A process making sure a reset signal is held for a short while when the system is booted
--reset_process:process(blank)
--begin
--    if falling_edge(blank) then 
--        reset <= '0';
--    end if;
--end process;
   
   reset  <= reset_i;
   
   c_blue <= vsync & hsync;
   
   TDMS_encoder_red:   TDMS_encoder PORT MAP(clk => clk_pixel, data => red_p,   c => c_red,   blank => blank, encoded => encoded_red);
   TDMS_encoder_green: TDMS_encoder PORT MAP(clk => clk_pixel, data => green_p, c => c_green, blank => blank, encoded => encoded_green);
   TDMS_encoder_blue:  TDMS_encoder PORT MAP(clk => clk_pixel, data => blue_p,  c => c_blue,  blank => blank, encoded => encoded_blue);


   -- Old Version using ODDR2 and shift 4 x 2 x 5 shift registers. This version experiences negative slack.
--   ODDR2_red   : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
--      port map (Q => red_s,   D0 => shift_red(0),   D1 => shift_red(1),   C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');
   
--   ODDR2_green : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
--      port map (Q => green_s, D0 => shift_green(0), D1 => shift_green(1), C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

--   ODDR2_blue  : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
--      port map (Q => blue_s,  D0 => shift_blue(0),  D1 => shift_blue(1),  C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

--   ODDR2_clock : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
--      port map (Q => clock_s, D0 => shift_clock(0), D1 => shift_clock(1), C0 => clk, C1 => clk_n, CE => '1', R => '0', S => '0');

   process(clk_pixel)
   begin
      if rising_edge(clk_pixel) then 
            latched_red   <= encoded_red;
            latched_green <= encoded_green;
            latched_blue  <= encoded_blue;
      end if;
   end process;
   
      -- RED
  OSERDES_R: OSERDES_WRAP port map(
      CLK_FAST_I => clk,
      CLK_SLOW_I => clk_pixel,
      RESET_I    => reset,
      DATA_I     => latched_red,
      DATA_O     => red_s);
  
 -- GREEN 
  OSERDES_G: OSERDES_WRAP port map(
      CLK_FAST_I => clk,
      CLK_SLOW_I => clk_pixel,
      RESET_I    => reset,
      DATA_I     => latched_green,
      DATA_O     => green_s);
  
  -- BLUE
  OSERDES_B: OSERDES_WRAP port map(
      CLK_FAST_I => clk,
      CLK_SLOW_I => clk_pixel,
      RESET_I    => reset,
      DATA_I     => latched_blue,
      DATA_O     => blue_s);
  
  -- CLOCK
  OSERDES_CLK: OSERDES_WRAP port map(
      CLK_FAST_I => clk,
      CLK_SLOW_I => clk_pixel,
      RESET_I    => reset,
      DATA_I     => shift_clock,
      DATA_O     => clock_s);
   
   

--   process(clk)
--   begin
--      if rising_edge(clk) then 
--         if shift_clock = "0000011111" then
--            shift_red   <= latched_red;
--            shift_green <= latched_green;
--            shift_blue  <= latched_blue;
--         else
--            shift_red   <= "00" & shift_red  (9 downto 2);
--            shift_green <= "00" & shift_green(9 downto 2);
--            shift_blue  <= "00" & shift_blue (9 downto 2);
--         end if;
--         shift_clock <= shift_clock(1 downto 0) & shift_clock(9 downto 2);
--      end if;
--   end process;

  
  

-- 2 OSERDES2 components from the UNISIM library are used for each of the color channels and the clock
-- This is done instead of using shift registers to get rid of negative slack
-- A single OSERDES2 component can only serialize 8 bits but 10 bits are needed and therefore 2 components are chained together
-- Read more about it in UG471 (v.1.10 - May 8th 2018) p. 167
 
------------------------ RED COLOR CHANNEL
--    OSERDESE2_red_m : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "MASTER", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--        )
--        port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        OQ => red_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        --         SHIFTOUT1 => SHIFTOUT1,
--        --         SHIFTOUT2 => SHIFTOUT2,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,              -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,        -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => latched_red(0),
--        D2 => latched_red(1),
--        D3 => latched_red(2),
--        D4 => latched_red(3),
--        D5 => latched_red(4),
--        D6 => latched_red(5),
--        D7 => latched_red(6),
--        D8 => latched_red(7),
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => shiftout1_red, 
--        SHIFTIN2 => shiftout2_red, 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
--    OSERDESE2_red_s : OSERDESE2
--    generic map (
--       DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--       DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--       DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--       INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--       INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--       SERDES_MODE    => "SLAVE", -- MASTER, SLAVE
--       SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--       SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--       TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--       TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--       TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        -- OQ => red_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        SHIFTOUT1 => shiftout1_red,
--        SHIFTOUT2 => shiftout2_red,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                 -- 1-bit output: 3-state control
--        --TQ => TQ,                  -- 1-bit output: 3-state control
--        CLK    => clk,               -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,         -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => '0',
--        D2 => '0',
--        D3 => latched_red(8),
--        D4 => latched_red(9),
--        D5 => '0',
--        D6 => '0',
--        D7 => '0',
--        D8 => '0',
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => '0', 
--        SHIFTIN2 => '0', 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
      
    
    ------------------------ GREEN COLOR CHANNEL
--    OSERDESE2_green_m : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "MASTER", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        OQ => green_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        --         SHIFTOUT1 => SHIFTOUT1,
--        --         SHIFTOUT2 => SHIFTOUT2,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => latched_green(0),
--        D2 => latched_green(1),
--        D3 => latched_green(2),
--        D4 => latched_green(3),
--        D5 => latched_green(4),
--        D6 => latched_green(5),
--        D7 => latched_green(6),
--        D8 => latched_green(7),
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => shiftout1_green, 
--        SHIFTIN2 => shiftout2_green, 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
--    OSERDESE2_green_s : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "SLAVE", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        --OQ => red_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        SHIFTOUT1 => shiftout1_green,
--        SHIFTOUT2 => shiftout2_green,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => '0',
--        D2 => '0',
--        D3 => latched_green(8),
--        D4 => latched_green(9),
--        D5 => '0',
--        D6 => '0',
--        D7 => '0',
--        D8 => '0',
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => '0', 
--        SHIFTIN2 => '0', 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
--    ------------------------ BLUE COLOR CHANNEL
--    OSERDESE2_blue_m : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "MASTER", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        OQ => blue_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        --         SHIFTOUT1 => SHIFTOUT1,
--        --         SHIFTOUT2 => SHIFTOUT2,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => latched_blue(0),
--        D2 => latched_blue(1),
--        D3 => latched_blue(2),
--        D4 => latched_blue(3),
--        D5 => latched_blue(4),
--        D6 => latched_blue(5),
--        D7 => latched_blue(6),
--        D8 => latched_blue(7),
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => shiftout1_blue, 
--        SHIFTIN2 => shiftout2_blue, 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
--    OSERDESE2_blue_s : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "SLAVE", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        --OQ => red_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        SHIFTOUT1 => shiftout1_blue,
--        SHIFTOUT2 => shiftout2_blue,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => '0',
--        D2 => '0',
--        D3 => latched_blue(8),
--        D4 => latched_blue(9),
--        D5 => '0',
--        D6 => '0',
--        D7 => '0',
--        D8 => '0',
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => '0', 
--        SHIFTIN2 => '0', 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
    
--    ------------------------ CLOCK
--    OSERDESE2_clock_m : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "MASTER", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        OQ => clock_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        --         SHIFTOUT1 => SHIFTOUT1,
--        --         SHIFTOUT2 => SHIFTOUT2,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => shift_clock(0),
--        D2 => shift_clock(1),
--        D3 => shift_clock(2),
--        D4 => shift_clock(3),
--        D5 => shift_clock(4),
--        D6 => shift_clock(5),
--        D7 => shift_clock(6),
--        D8 => shift_clock(7),
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => shiftout1_clk, 
--        SHIFTIN2 => shiftout2_clk, 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
    
--    OSERDESE2_clock_s : OSERDESE2
--    generic map (
--        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
--        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
--        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
--        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
--        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
--        SERDES_MODE    => "SLAVE", -- MASTER, SLAVE
--        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
--        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
--        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
--        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
--        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
--    )
--    port map (
--        --OFB => OFB,               -- 1-bit output: Feedback path for data
--        --OQ => red_s,                -- 1-bit output: Data path output
--        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--        SHIFTOUT1 => shiftout1_clk,
--        SHIFTOUT2 => shiftout2_clk,
--        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
--        --TFB => TFB,                -- 1-bit output: 3-state control
--        --TQ => TQ,                 -- 1-bit output: 3-state control
--        CLK    => clk,        -- 1-bit input: High speed clock
--        CLKDIV => clk_pixel,              -- 1-bit input: Divided clock
--        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
--        D1 => '0',
--        D2 => '0',
--        D3 => shift_clock(8),
--        D4 => shift_clock(9),
--        D5 => '0',
--        D6 => '0',
--        D7 => '0',
--        D8 => '0',
--        OCE => '1',                 -- 1-bit input: Output data clock enable
--        RST => reset,               -- 1-bit input: Reset
--        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
--        SHIFTIN1 => '0', 
--        SHIFTIN2 => '0', 
--        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
--        T1 => '0',
--        T2 => '0',
--        T3 => '0',
--        T4 => '0',
--        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
--        TCE => '0'                  -- 1-bit input: 3-state clock enable
--    );
   
   

end Behavioral; 