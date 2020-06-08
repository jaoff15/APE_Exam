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

entity spi_rx_pure_vhdl_dd is
    generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
    Port ( 
           RESET_I  : in STD_LOGIC;
           
           -- Data signal
           DATA_O   : out STD_LOGIC_VECTOR (31 downto 0);
           WR_O     : out std_logic := '0';
           
           -- SPI signals 
           SCLK_I   : in STD_LOGIC;
           MOSI_I   : in STD_LOGIC
           );
end spi_rx_pure_vhdl_dd;

architecture Behavioral of spi_rx_pure_vhdl_dd is

begin


end Behavioral;
