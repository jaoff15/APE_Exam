----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2020 10:28:35 AM
-- Design Name: 
-- Module Name: spi_tx_serdes_based - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity spi_rx_serdes_based is
    Port ( 
           RESET_I  : in STD_LOGIC;
           
           -- Data signals
           DATA_O   : out STD_LOGIC_VECTOR (31 downto 0);
           WR_O     : out std_logic := '0';
           
           -- SPI signals
           SCLK_I   : in STD_LOGIC := '0';
           MOSI_I   : in STD_LOGIC := '0'
           );
end spi_rx_serdes_based;

architecture Behavioral of spi_rx_serdes_based is

begin


end Behavioral;
