----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2020 12:56:27 PM
-- Design Name: 
-- Module Name: spi_tx_pure_vhdl_dd - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_rx_pure_vhdl_dd is
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
