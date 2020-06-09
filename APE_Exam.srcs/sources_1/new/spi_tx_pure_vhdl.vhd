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

entity spi_tx_pure_vhdl is
    Port ( CLK_I    : in STD_LOGIC := '0';
           RESET_I  : in STD_LOGIC := '0';
           
           -- Data in
           DATA_I   : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           
           -- SPI signals 
           SCLK_O   : out STD_LOGIC := '0';
           MOSI_O   : out STD_LOGIC := '0'
           );
end spi_tx_pure_vhdl;

architecture Behavioral of spi_tx_pure_vhdl is

    signal bitcnt       : integer range 0 to 31 := 0;
    signal data         : std_logic_vector(31 downto 0) := (others => '0');
    
    signal sclk_active  : std_logic := '0';
     
    signal sclk         : std_logic := '0';
begin


SCLK_O  <= not CLK_I and sclk_active;


process(CLK_I)
  variable nxt_bitcnt   : integer range 0 to 31;
  variable nxt_tx       : std_logic;
  variable nxt_data     : std_logic_vector(31 downto 0) := data;
begin
  if rising_edge(CLK_I) then
    sclk_active <= sclk_active;
    if RESET_I = '1' then
      nxt_bitcnt  := 0;
      nxt_tx      := '1';
    else
      -- Handle bit counter
      if bitcnt < 31 then
        nxt_bitcnt := bitcnt + 1;
      else
        nxt_bitcnt := 0;
        -- Sample data from RAM
        nxt_data := DATA_I;
      end if;
      -- Transmit current bit
      nxt_tx      := data(bitcnt);
      sclk_active <= '1';
     end if;
   
   data     <= nxt_data;
   bitcnt   <= nxt_bitcnt;
   MOSI_O   <= nxt_tx;
  end if;
end process;



end Behavioral;
