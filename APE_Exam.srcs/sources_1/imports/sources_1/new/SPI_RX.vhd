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


entity SPI_RX is
generic( 
        SPI_MODE : SPI_MODE_TYP := ASYNC;
        SPI_TYPE : SPI_TYPE_TYP := DDR
        );
Port ( RESET_I   : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_O    : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       WR_O      : out STD_LOGIC := '0';
       -- External Signals
       SCLK_I    : in  STD_LOGIC := '0';
       MOSI_I    : in std_logic  := '0'
       );
end SPI_RX;

architecture Behavioral of SPI_RX is


    -- Pure VHDL SD
    component spi_rx_pure_vhdl_sd is
        generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
        Port ( 
               RESET_I : in STD_LOGIC;
               
               -- Data signal
               DATA_O : out STD_LOGIC_VECTOR (31 downto 0);
               WR_O     : out std_logic := '0';
               
               -- SPI signals
               SCLK_I   : in STD_LOGIC := '0';
               MOSI_I   : in STD_LOGIC := '0'
               );
    end component;
    
    -- Pure VHDL DD
    component spi_rx_pure_vhdl_dd is
        generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
        Port ( 
               RESET_I : in STD_LOGIC;
               
               -- Data signal
               DATA_O : out STD_LOGIC_VECTOR (31 downto 0);
               WR_O     : out std_logic := '0';
               
               -- SPI signals
               SCLK_I   : in STD_LOGIC := '0';
               MOSI_I   : in STD_LOGIC := '0'
               );
    end component;
    
    -- DDR Based
    component spi_rx_ddr_based is
        generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
        Port ( 
               RESET_I  : in STD_LOGIC := '0';
               
               -- Data signal
               DATA_O   : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               WR_O     : out std_logic := '0';
               
               -- SPI signals
               SCLK_I   : in STD_LOGIC := '0';
               MOSI_I   : in STD_LOGIC := '0'
             );
    end component;
    
    -- SERDES Based
    component spi_rx_serdes_based is
        generic( SPI_MODE : SPI_MODE_TYP := ASYNC );
        Port ( 
               RESET_I  : in STD_LOGIC;
               
               -- Data signal
               DATA_O   : out STD_LOGIC_VECTOR (31 downto 0);
               WR_O     : out std_logic := '0';
               
               -- SPI signals
               SCLK_I   : in STD_LOGIC := '0';
               MOSI_I   : in STD_LOGIC := '0'
               );
    end component;
    


begin

-- Set RAM address
ADDR_O <= x"10";



-- Pure VHDL SD
spi_rx_pure_vhdl_sd_gen: if SPI_TYPE = VHDL_SD generate begin
    spi_rx_pure_vhdl_sd_inst: spi_rx_pure_vhdl_sd 
    generic map(SPI_MODE => SPI_MODE)
    port map(
        RESET_I => RESET_I,
        DATA_O  => DATA_O,
        WR_O    => WR_O,
        SCLK_I  => SCLK_I,
        MOSI_I  => MOSI_I 
    ); 
end generate;
     
     
   
-- Pure VHDL DD
spi_rx_pure_vhdl_dd_gen: if SPI_TYPE = VHDL_DD generate begin
    spi_rx_pure_vhdl_dd_inst: spi_rx_pure_vhdl_dd 
    generic map(SPI_MODE => SPI_MODE)
    port map(
        RESET_I => RESET_I,
        DATA_O  => DATA_O,
        WR_O    => WR_O,
        SCLK_I  => SCLK_I,
        MOSI_I  => MOSI_I  
    ); 
end generate;
  
  
-- DDR based
spi_rx_ddr_based_gen: if SPI_TYPE = DDR generate begin
    spi_rx_ddr_based_inst: spi_rx_ddr_based 
    generic map(SPI_MODE => SPI_MODE)
    port map(
        RESET_I => RESET_I,
        DATA_O  => DATA_O,
        WR_O    => WR_O,
        SCLK_I  => SCLK_I,
        MOSI_I  => MOSI_I  
    ); 
end generate;
  
  
  
-- SERDES based
spi_rx_serdes_based_gen: if SPI_TYPE = SERDES generate begin
    spi_rx_serdes_based_inst: spi_rx_serdes_based 
    generic map(SPI_MODE => SPI_MODE)
    port map(
        RESET_I => RESET_I,
        DATA_O  => DATA_O,
        WR_O    => WR_O,
        SCLK_I  => SCLK_I,
        MOSI_I  => MOSI_I
    ); 
end generate;
  
  
  

end Behavioral;
