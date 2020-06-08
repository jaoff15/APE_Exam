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

entity spi_tx_serdes_based is
    generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
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

begin


end Behavioral;
