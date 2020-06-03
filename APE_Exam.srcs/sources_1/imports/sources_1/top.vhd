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

entity top is
    generic( SPI_MODE : SPI_MODE_TYP := SERDES);
    Port ( 
        CLK100MHZ : in STD_LOGIC;
        
        ----------- FPGA 1
        -- UART
        TX_O        : out STD_LOGIC;
        RX_I        : in  STD_LOGIC;
        
        -- SPI TX
        SPI_MOSI_O  : out std_logic;
        SPI_SCLK_O  : out std_logic;
        
        ----------- FPGA 2
        -- SPI RX
        SPI_MOSI_I  : in  std_logic;
        SPI_SCLK_I  : in  std_logic;
        
        -- HDMI
        hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
        hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
    );
end top;

architecture Behavioral of top is
    -- Simulated FPGA 1 
    component FPGA1 is
        generic( SPI_MODE : SPI_MODE_TYP := DDR);
        Port ( 
            CLK_I    : in  STD_LOGIC;
            
            -- UART
            TX_O        : out STD_LOGIC;
            RX_I        : in  STD_LOGIC;
            
            -- SPI TX
            SPI_MOSI_O  : out std_logic;
            SPI_SCLK_O  : out std_logic
        );
    end component;
    
    -- Simulated FPGA 2
    component FPGA2 is
        generic( SPI_MODE : SPI_MODE_TYP := DDR);
        Port ( 
            CLK_I : in STD_LOGIC;
            
            -- SPI Rx 
            SPI_MOSI_I  : in  std_logic;
            SPI_SCLK_I  : in  std_logic;
            
            -- HDMI
            hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
            hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
     );
    end component;
    
 
    
begin
 
FPGA1_inst : FPGA1 
generic map( SPI_MODE => SPI_MODE)
port map( 
    CLK_I => CLK100MHZ,
    
    -- UART
    TX_O => TX_O,
    RX_I => RX_I,
       
    -- SPI TX
    SPI_MOSI_O => SPI_MOSI_O,
    SPI_SCLK_O  => SPI_SCLK_O
);


FPGA2_inst: FPGA2 
generic map( SPI_MODE => SPI_MODE)
port map(
    CLK_I       => CLK100MHZ,
    
    -- SPI RX
    SPI_MOSI_I  => SPI_MOSI_I,
    SPI_SCLK_I  => SPI_SCLK_I,
    
    -- HDMI 
    hdmi_out_p  => hdmi_out_p,
    hdmi_out_n  => hdmi_out_n
);


end Behavioral;

