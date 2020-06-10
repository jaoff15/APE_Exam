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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_rx_pure_vhdl is
    Port ( 
           RESET_I  : in  STD_LOGIC := '0';
           
           -- Data signal
           DATA_O   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           WR_O     : out std_logic := '0';
           
           -- SPI signals 
           SCLK_I   : in  STD_LOGIC := '0';
           MOSI_I   : in  STD_LOGIC := '0'
           );
end spi_rx_pure_vhdl;

architecture Behavioral of spi_rx_pure_vhdl is

    signal bitcnt        : integer range 0 to 31 := 0;

    signal data          : std_logic_vector(31 downto 0) := (others => '0');

begin


DATA_O <= data;


process(SCLK_I)
variable nxt_bitcnt : integer range 0 to 31          := bitcnt;
variable nxt_data   : std_logic_vector(31 downto 0)  := data;
variable nxt_wr     : std_logic := '0';
begin
    if rising_edge(SCLK_I) then
      nxt_wr := '0';
      if RESET_I='1' then
        nxt_bitcnt  := 0; 
        nxt_data    := (others => '0');
      else 
        -- Handle bit counter
        if bitcnt < 31 then
            nxt_bitcnt := bitcnt + 1;
        else
            nxt_bitcnt := 0;
            nxt_wr := '1';
        end if;

        -- Read in bit
        nxt_data(bitcnt) := MOSI_I;

      end if;
      WR_O   <= nxt_wr;
      data   <= nxt_data;
      bitcnt <= nxt_bitcnt;
    end if;
end process;


end Behavioral;
