----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

-- Include SPI lib 
library work; use work.spi_lib.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity spi_tx_serdes_based is
    Port ( CLK_I : in STD_LOGIC;
           RESET_I : in STD_LOGIC;
           
           -- Data in
           DATA_I : in STD_LOGIC_VECTOR (31 downto 0);
           
           -- SPI signals
           SCLK_O   : out STD_LOGIC := '0';
           MOSI_O   : out STD_LOGIC := '0'
           );
end spi_tx_serdes_based;

architecture Behavioral of spi_tx_serdes_based is

    signal D             : std_logic_vector(7 downto 0) := (others => '0');
    signal counter       : integer range 0 to 3 := 0;
    signal clk_div       : std_logic := '0';
    signal subpart       : integer range 0 to 3 := 0;
    signal data_snapshot : std_logic_vector (31 downto 0) := (others => '0');
begin

process(CLK_I)
variable nxt_snapshot : std_logic_vector (31 downto 0) := data_snapshot;
variable nxt_counter  : integer range 0 to 3 := counter;
variable nxt_subpart  : integer range 0 to 3 := subpart;
begin
  if rising_edge(CLK_I) then
    
    if RESET_I = '1' then
        nxt_snapshot := (others => '0');
        nxt_counter  := 0;
        nxt_subpart  := 0;
    else
        -- Manage counter - used for clock division
        if nxt_counter < 3 then
            nxt_counter := nxt_counter + 1;
        else
            nxt_counter := 0;
        end if;
        
        -- Snapshot input data
        if subpart = 0 then
            nxt_snapshot := DATA_I;
        end if;
        
        -- Update the SERDES data 
        if nxt_counter = 2 then
        
            if    subpart = 0 then
                D <= nxt_snapshot(7 downto 0);            
            elsif subpart = 1 then
                D <= nxt_snapshot(15 downto 8);
            elsif subpart = 2 then
                D <= nxt_snapshot(23 downto 16);            
            else 
                D <= nxt_snapshot(31 downto 24);  
            end if;
    --        D <= nxt_snapshot((subpart+1)*8 downto subpart*8);
            
            -- Manage data part - used for serializing
            if nxt_subpart < 3 then
                nxt_subpart := nxt_subpart + 1;
            else
                nxt_subpart := 0;
            end if; 
        end if;
    end if;
    counter <= nxt_counter;
    subpart <= nxt_subpart;
  end if;
end process;

BUFR_inst : BUFR
   generic map (
      BUFR_DIVIDE => "4",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O     => clk_div,     -- 1-bit output: Clock output port
      CE    => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR   => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
      I     => CLK_I      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );


OSERDESE2_MOSI_inst : OSERDESE2
   generic map (
      DATA_RATE_OQ => "DDR",   -- DDR, SDR
      DATA_RATE_TQ => "DDR",   -- DDR, BUF, SDR
      DATA_WIDTH => 8,         -- Parallel data width (2-8,10,14)
      INIT_OQ => '0',          -- Initial value of OQ output (1'b0,1'b1)
      INIT_TQ => '0',          -- Initial value of TQ output (1'b0,1'b1)
      SERDES_MODE => "MASTER", -- MASTER, SLAVE
      SRVAL_OQ => '0',         -- OQ output value when SR is used (1'b0,1'b1)
      SRVAL_TQ => '0',         -- TQ output value when SR is used (1'b0,1'b1)
      TBYTE_CTL => "FALSE",    -- Enable tristate byte operation (FALSE, TRUE)
      TBYTE_SRC => "FALSE",    -- Tristate byte source (FALSE, TRUE)
      TRISTATE_WIDTH => 1      -- 3-state converter width (1,4)
   )
   port map (
--      OFB => OFB,             -- 1-bit output: Feedback path for data
      OQ => MOSI_O,               -- 1-bit output: Data path output
      -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--      SHIFTOUT1 => SHIFTOUT1,
--      SHIFTOUT2 => SHIFTOUT2,
--      TBYTEOUT => TBYTEOUT,   -- 1-bit output: Byte group tristate
--      TFB => TFB,             -- 1-bit output: 3-state control
--      TQ => TQ,               -- 1-bit output: 3-state control
      CLK    => CLK_I,             -- 1-bit input: High speed clock
      CLKDIV => clk_div,       -- 1-bit input: Divided clock
      -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      D1 => D(0),
      D2 => D(1),
      D3 => D(2),
      D4 => D(3),
      D5 => D(4),
      D6 => D(5),
      D7 => D(6),
      D8 => D(7),
      OCE => '1',             -- 1-bit input: Output data clock enable
      RST => RESET_I,             -- 1-bit input: Reset
      -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',     -- 1-bit input: Byte group tristate
      TCE => '0'              -- 1-bit input: 3-state clock enable
   );

OSERDESE2_SCLK_inst : OSERDESE2
   generic map (
      DATA_RATE_OQ => "DDR",   -- DDR, SDR
      DATA_RATE_TQ => "DDR",   -- DDR, BUF, SDR
      DATA_WIDTH => 8,         -- Parallel data width (2-8,10,14)
      INIT_OQ => '0',          -- Initial value of OQ output (1'b0,1'b1)
      INIT_TQ => '0',          -- Initial value of TQ output (1'b0,1'b1)
      SERDES_MODE => "MASTER", -- MASTER, SLAVE
      SRVAL_OQ => '0',         -- OQ output value when SR is used (1'b0,1'b1)
      SRVAL_TQ => '0',         -- TQ output value when SR is used (1'b0,1'b1)
      TBYTE_CTL => "FALSE",    -- Enable tristate byte operation (FALSE, TRUE)
      TBYTE_SRC => "FALSE",    -- Tristate byte source (FALSE, TRUE)
      TRISTATE_WIDTH => 1      -- 3-state converter width (1,4)
   )
   port map (
--      OFB => OFB,             -- 1-bit output: Feedback path for data
      OQ => SCLK_O,               -- 1-bit output: Data path output
      -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
--      SHIFTOUT1 => SHIFTOUT1,
--      SHIFTOUT2 => SHIFTOUT2,
--      TBYTEOUT => TBYTEOUT,   -- 1-bit output: Byte group tristate
--      TFB => TFB,             -- 1-bit output: 3-state control
--      TQ => TQ,               -- 1-bit output: 3-state control
      CLK    => CLK_I,             -- 1-bit input: High speed clock
      CLKDIV => clk_div,       -- 1-bit input: Divided clock
      -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      D1 => '1',
      D2 => '0',
      D3 => '1',
      D4 => '0',
      D5 => '1',
      D6 => '0',
      D7 => '1',
      D8 => '0',
      OCE => '1',             -- 1-bit input: Output data clock enable
      RST => RESET_I,             -- 1-bit input: Reset
      -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',     -- 1-bit input: Byte group tristate
      TCE => '0'              -- 1-bit input: 3-state clock enable
   );



end Behavioral;
