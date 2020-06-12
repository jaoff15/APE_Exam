----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

-- Include SPI lib 
library work; use work.spi_lib.all;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;



entity SPI_TX is
generic(
        SPI_TYPE : SPI_TYPE_TYP := DDR
        );
Port ( CLK_I     : in  STD_LOGIC := '0';
       RESET_I   : in  STD_LOGIC := '0';
       
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_I    : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       
       -- SPI signals
       SCLK_O   : out STD_LOGIC := '0';
       MOSI_O   : out STD_LOGIC := '0'
       );
end SPI_TX;

architecture Behavioral of SPI_TX is
 
    
    -- Pure VHDL
    component spi_tx_pure_vhdl is
        generic (SPI_MODE : SPI_MODE_TYP := SYNC);
        Port ( CLK_I : in STD_LOGIC;
               RESET_I : in STD_LOGIC;
               
               -- Input data
               DATA_I : in STD_LOGIC_VECTOR (31 downto 0);
               
               -- SPI output
               SCLK_O   : out STD_LOGIC := '0';
               MOSI_O   : out STD_LOGIC := '0'
               );
    end component;
    
    -- DDR Based
    component spi_tx_ddr_based is
        Port ( CLK_I    : in STD_LOGIC := '0';
               RESET_I  : in STD_LOGIC := '0';
               
               -- Input data
               DATA_I   : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               
               -- SPI output
               SCLK_O   : out STD_LOGIC := '0';
               MOSI_O   : out STD_LOGIC := '0'
             );
    end component;
    
    -- SERDES Based
    component spi_tx_serdes_based is
        Port ( CLK_I : in STD_LOGIC;
               RESET_I : in STD_LOGIC;
               
               -- Input data
               DATA_I : in STD_LOGIC_VECTOR (31 downto 0);
               
               -- SPI output
               SCLK_O   : out STD_LOGIC := '0';
               MOSI_O   : out STD_LOGIC := '0'
               );
    end component;
    
begin


-- Set RAM address
ADDR_O  <= x"10";



   
 
-- Pure VHDL
spi_tx_pure_vhdl_gen: if SPI_TYPE = VHDL generate begin
    spi_tx_pure_vhdl_inst: spi_tx_pure_vhdl
    generic map (SPI_MODE => SYNC)
    port map(
        CLK_I   => CLK_I,
        RESET_I => RESET_I,
        DATA_I  => DATA_I,
        SCLK_O  => SCLK_O,
        MOSI_O  => MOSI_O 
    ); 
end generate;


-- DDR based
spi_tx_ddr_based_gen: if SPI_TYPE = DDR generate begin
    spi_tx_ddr_based_inst: spi_tx_ddr_based 
    port map(
        CLK_I   => CLK_I,
        RESET_I => RESET_I,
        DATA_I  => DATA_I,
        SCLK_O  => SCLK_O,
        MOSI_O  => MOSI_O 
    ); 
end generate;



-- SERDES based
spi_tx_serdes_based_gen: if SPI_TYPE = SERDES generate begin
    spi_tx_serdes_based_inst: spi_tx_serdes_based 
    port map(
        CLK_I   => CLK_I,
        RESET_I => RESET_I,
        DATA_I  => DATA_I,
        SCLK_O  => SCLK_O,
        MOSI_O  => MOSI_O 
    ); 
end generate;






end Behavioral;


