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

entity spi_tx_pure_vhdl_dd is
    Port ( CLK_I : in STD_LOGIC;
           RESET_I : in STD_LOGIC;
           
           -- Data in
           DATA_I : in STD_LOGIC_VECTOR (31 downto 0);
           
           -- SPI signals 
           SCLK_O : out STD_LOGIC;
           MOSI_O : out STD_LOGIC
           );
end spi_tx_pure_vhdl_dd;

architecture Behavioral of spi_tx_pure_vhdl_dd is

begin


end Behavioral;
