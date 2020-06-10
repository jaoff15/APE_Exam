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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity spi_rx_ddr_based is
    Port ( 
           RESET_I  : in STD_LOGIC := '0';
           
           -- Data signal
           DATA_O   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_O     : out std_logic := '0';
           
           -- SPI signals
           SCLK_I   : in STD_LOGIC := '0';
           MOSI_I   : in STD_LOGIC := '0'
           );
end spi_rx_ddr_based;

architecture Behavioral of spi_rx_ddr_based is
--     When the IDDR is in SAME_EDGE_PIPELINED mode data is delays 2 clock cycles 
-- (0 = 0 clk cycles back, 30 = 1 clk cycle and 28 = 2 clock cycles)
-- And because the impementation inserts an additional 2 clock cycles 
-- the bitcounter is initialized to 26
    signal bitcnt        : integer range 0 to 31 := 28;

    signal data          : std_logic_vector(31 downto 0) := (others => '0');

   signal Q1, Q2         : std_logic := '0';
begin

DATA_O <= data;


DDRI_handler: process(SCLK_I)
variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
variable nxt_data   : std_logic_vector(31 downto 0)  := data;
variable nxt_wr     : std_logic := '0';
begin
     -- nxt_data := data;
    if rising_edge(SCLK_I) then
      nxt_wr     := '0';
      if RESET_I='1' then
        nxt_bitcnt  := 28;                  -- Should be reset back but maintain the offset 
        nxt_data    := (others => '0');
      else 
        if bitcnt < 30 then
            nxt_bitcnt := bitcnt + 2;
        else
            nxt_bitcnt := 0;
            nxt_wr     := '1';
        end if;
        nxt_data(bitcnt)    := Q1;
        nxt_data(bitcnt+1)  := Q2;
      end if;
      WR_O      <= nxt_wr;
      data      <= nxt_data;
      bitcnt    <= nxt_bitcnt;
    end if;
end process;

IDDR_MOSI : IDDR 
generic map (
  DDR_CLK_EDGE => "SAME_EDGE_PIPELINED", -- "OPPOSITE_EDGE", "SAME_EDGE" 
                                         -- or "SAME_EDGE_PIPELINED" 
  INIT_Q1 => '0',    -- Initial value of Q1: '0' or '1'
  INIT_Q2 => '0',    -- Initial value of Q2: '0' or '1'
  SRTYPE  => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
port map (
  Q1    => Q1,      -- 1-bit output for positive edge of clock 
  Q2    => Q2,      -- 1-bit output for negative edge of clock
  C     => SCLK_I,  -- 1-bit clock input
  CE    => '1',     -- 1-bit clock enable input
  D     => MOSI_I,  -- 1-bit DDR data input
  R     => '0',     -- 1-bit reset
  S     => '0'      -- 1-bit set
  );



end Behavioral;
