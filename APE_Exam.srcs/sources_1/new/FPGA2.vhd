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

entity FPGA2 is
generic( SPI_MODE : SPI_MODE_TYP := DDR);
Port ( 
        CLK_I      : in STD_LOGIC;
        -- SPI RX 
        SPI_SCLK_I : in std_logic;
        SPI_MOSI_I : in std_logic;
        -- HDMI
        hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
        hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
    );
end FPGA2;

architecture Behavioral of FPGA2 is

    ---------------------------- Simulated FPGA 2
    -- Clocking
    component clocking_2 is
      Port ( 
            CLK_I              : in  std_logic; -- 100MHz
            RESET_I            : in  std_logic;
            PIXEL_CLK_O        : out std_logic;
            PIXEL_CLK_X5_O     : out std_logic;
            PIXEL_CLK_X5_INV_O : out std_logic;
            SYS_RESET_O        : out std_logic 
        );
    end component;
    
    
    -- RAM1 (Interface between HDMI and SPI RX)
    component RAM is
          Port (
          CLK_A_I  : in  std_logic := '0';
          CLK_B_I  : in  std_logic := '0';
          ADDR_A_I : in  std_logic_vector(15 downto 0) := (others=>'0');
          ADDR_B_I : in  std_logic_vector(15 downto 0) := (others=>'0');
          DATA_A_I : in  std_logic_vector(31 downto 0) := (others=>'0');
          DATA_B_I : in  std_logic_vector(31 downto 0) := (others=>'0');
          WE_A_I   : in  std_logic                     := '0';
          WE_B_I   : in  std_logic                     := '0';
          DATA_A_O : out std_logic_vector(31 downto 0) := (others=>'0');
          DATA_B_O : out std_logic_vector(31 downto 0) := (others=>'0')
          );
      end component;
  
    -- RAM2 (Contains image)
  
  
    -- HDMI driver
    component hdmi_driver is
           Port ( 
             RESET_I            : in  std_logic;
             PIXEL_CLK_I        : in  std_logic;
             PIXEL_CLK_X5_I     : in  std_logic; 
             PIXEL_CLK_X5_INV_I : in  std_logic;
             POSITION_DATA_I    : in  std_logic_vector(31 downto 0);
             hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
             hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
         );
    end component;
    
    
    -- SPI Rx
    component SPI_RX is
        generic( SPI_MODE : SPI_MODE_TYP := DDR);
        Port ( RESET_I   : in  STD_LOGIC := '0';
               -- Data bus signals
               ADDR_O    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
               DATA_O    : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               WR_O      : out STD_LOGIC := '0';
               -- External Signals
               SCLK_I    : in  STD_LOGIC := '0';
               MOSI_I    : in std_logic  := '0'
               );
     end component;
    
    ---------------------- SIGNALS -------------------------
    
    -- HDMI signals
    signal sys_reset        : std_logic;
    signal pixel_clk        : std_logic;
    signal pixel_clk_x5     : std_logic;
    signal pixel_clk_x5_inv : std_logic;
    
    
    -- RAM1 signals
    -- Port A
    -- HDMI <- RAM1
    signal adr_A        : std_logic_vector(7 downto 0)  := (others => '0');
    signal wr_A         : std_logic := '0';
    signal data_A_O     : std_logic_vector(31 downto 0) := (others => '0');
    signal data_A_I     : std_logic_vector(31 downto 0) := (others => '0');
  
  
    -- Port B
    -- RAM1 <- SPI
    signal adr_B         : std_logic_vector(7 downto 0)  := (others => '0');
    signal wr_B           : std_logic := '0';
    signal data_B_I       : std_logic_vector(31 downto 0) := (others => '0');
    signal data_B_O       : std_logic_vector(31 downto 0) := (others => '0');
begin

-- Clocking module instanciation
clocking_2_inst : clocking_2 port map(
    CLK_I               => CLK_I,
    RESET_I             => sys_reset,
    PIXEL_CLK_O         => pixel_clk,
    PIXEL_CLK_X5_O      => pixel_clk_x5, 
    PIXEL_CLK_X5_INV_O  => pixel_clk_x5_inv, 
    SYS_RESET_O         => sys_reset
);

-- HDMI driver module instanciation
hdmi_driver_inst: hdmi_driver port map(
    RESET_I             => sys_reset,
    PIXEL_CLK_I         => pixel_clk,
    PIXEL_CLK_X5_I      => pixel_clk_x5, 
    PIXEL_CLK_X5_INV_I  => pixel_clk_x5_inv,
    POSITION_DATA_I     => data_A_O,  
    hdmi_out_p          => hdmi_out_p,
    hdmi_out_n          => hdmi_out_n
);

-- SPI RX module instanciation
SpiRx:  SPI_RX  
generic map( SPI_MODE => SPI_MODE)
port map (
    RESET_I   => sys_reset,
    -- RAM
    ADDR_O    => adr_B,
    DATA_O    => data_B_I,
    WR_O      => wr_B,
    -- SPI
    SCLK_I    => SPI_SCLK_I,
    MOSI_I    => SPI_MOSI_I
);

-- RAM1 module instanciation
RAM_inst1 : RAM port map (
      CLK_A_I  => pixel_clk, 
      CLK_B_I  => SPI_SCLK_I,
      ADDR_A_I => adr_A,
      ADDR_B_I => adr_B,
      DATA_A_I => data_A_I,
      DATA_B_I => data_B_I,
      WE_A_I   => wr_A,
      WE_B_I   => wr_B,
      DATA_A_O => data_A_O,
      DATA_B_O => data_B_O
);

end Behavioral;
