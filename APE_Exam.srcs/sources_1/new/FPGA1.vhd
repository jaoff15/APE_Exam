
----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

-- Include SPI lib 
library work; use work.spi_lib.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Library UNISIM;                    -- For Xilinx primitives
use UNISIM.vcomponents.all;        --   allow all "components"
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FPGA1 is
    generic( 
        SPI_MODE : SPI_MODE_TYP := ASYNC;
        SPI_TYPE : SPI_TYPE_TYP := DDR
        );
    Port ( CLK_I        : in  STD_LOGIC;
           RESET_I     : in  STD_LOGIC;
           RESET_O     : out STD_LOGIC;
           
           -- UART
           TX_O         : out STD_LOGIC;
           RX_I         : in  STD_LOGIC;
           
           -- SPI TX
           SPI_MOSI_O   : out std_logic;
           SPI_SCLK_O   : out std_logic;
          
          
          -- SPI debug signals
          SYS_CLK_O     : out std_logic;
          ADR_O         : out std_logic_vector(7 downto 0);
          DATA_I        : in std_logic_vector(31 downto 0)
            );
end FPGA1;
 
architecture rtl of FPGA1 is

 ---------------------------- Simulated FPGA 1
  -- Clocking
    component clocking_1 is
--    Generic   (CLK_I_PERIOD : real 
--             range 2.0 to 64.0 := 40.0); -- Period of input clock in ns
      Port ( RESET_I    : in  std_logic;
             CLK_I      : in  STD_LOGIC;
             CLK48_O    : out STD_LOGIC;
             CLK_SPI_O  : out STD_LOGIC;
             RESET_O    : out STD_LOGIC);
    end component;

    
    
    
  -- Qlink
component QLinkMaster is
  Generic ( CLK_I_PERIOD : real range 2.0 to 64.0);
  Port    ( RESET_I      : in  STD_LOGIC;
            CLK_48_I        : in  STD_LOGIC;
            RX_I         : in  STD_LOGIC;
            TX_O         : out STD_LOGIC;
--            CLK48_O      : out STD_LOGIC;
            ADDR_B_O     : out STD_LOGIC_VECTOR(7 downto 0);
            DATA_B_O     : out STD_LOGIC_VECTOR(31 downto 0);
            DATA_B_I     : in  STD_LOGIC_VECTOR(31 downto 0);
            WR_O         : out STD_LOGIC;
            RD_O         : out STD_LOGIC;
--            RESET_O      : out STD_LOGIC;
            LED_O        : out STD_LOGIC );
end component;

  
  -- RAM0 (Interface between Qlink and SPI)
component TD_RAM_36K_WRAP is
      Port (
      CLK_A_I  : in  std_logic := '0';
      CLK_B_I  : in  std_logic := '0';
      ADDR_A_I : in  std_logic_vector(7 downto 0) := (others=>'0');
      ADDR_B_I : in  std_logic_vector(7 downto 0) := (others=>'0');
      DATA_A_I : in  std_logic_vector(31 downto 0) := (others=>'0');
      DATA_B_I : in  std_logic_vector(31 downto 0) := (others=>'0');
      WE_A_I   : in  std_logic                     := '0';
      WE_B_I   : in  std_logic                     := '0';
      DATA_A_O : out std_logic_vector(31 downto 0) := (others=>'0');
      DATA_B_O : out std_logic_vector(31 downto 0) := (others=>'0')
      );
  end component;


  -- SPI TX
component SPI_TX is
generic( 
        SPI_MODE : SPI_MODE_TYP := ASYNC;
        SPI_TYPE : SPI_TYPE_TYP := DDR
        );
Port ( CLK_I    : in  STD_LOGIC := '0';
       RESET_I  : in  STD_LOGIC := '0';
       -- Data bus signals
       ADDR_O   : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
       DATA_I   : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
       -- External Signals
       SCLK_O   : out STD_LOGIC := '0';
       MOSI_O   : out STD_LOGIC := '0'
       );
end component;

---------------------- SIGNALS -------------------------

    -- QLink signals
    signal sys_reset : std_logic := '0';
    signal clk48     : std_logic := '0';
    signal rd        : std_logic := '0';
    
    -- Port A
    -- QLink <-> RAM
    signal adr_A        : std_logic_vector(7 downto 0)  := (others => '0');
    signal wr_A         : std_logic := '0';
    signal data_A_O     : std_logic_vector(31 downto 0) := (others => '0');
    signal data_A_I     : std_logic_vector(31 downto 0) := (others => '0');
  
  
    -- Port B
    -- SPI <- RAM
    signal adr_B         : std_logic_vector(7 downto 0)  := (others => '0');
    signal wr_B          : std_logic := '0';
    signal data_B_I      : std_logic_vector(31 downto 0) := (others => '0');
    signal data_B_O      : std_logic_vector(31 downto 0) := (others => '0');
  
    -- SPI
    signal clk_spi       : std_logic := '0';

    signal ram_data : std_logic_vector(31 downto 0);

begin


-- QLink master instanciation
QLINK1: QLinkMaster
    generic map (CLK_I_PERIOD => 10.0) -- Instantiate the QLinkMaster for 100MHz input clock   
    port map (   
    RESET_I      => RESET_I,
--    RESET_O      => sys_reset,
    CLK_48_I     => clk48,
    RX_I         => RX_I,
    TX_O         => TX_O,
   -- CLK48_O      => clk48,
    ADDR_B_O     => adr_A,
    DATA_B_O     => data_A_I,
    DATA_B_I     => ram_data, 
    WR_O         => wr_A, 
    RD_O         => rd
);




SYS_CLK_O  <= clk48;
ADR_O      <= adr_A;     

-- Multiplex output data. 
-- 0x10 will be address 0x10 from RAM 1
-- 0x90 will be address 0x10 from RAM 3
with adr_A(7) select
    ram_data <= data_A_O when '0',
                DATA_I   when '1',
                x"eeeeeeee" when others;




-- RAM0 module instanciation
RAM_inst0 : TD_RAM_36K_WRAP port map (
      CLK_A_I  => clk48, 
      CLK_B_I  => clk_spi,
      ADDR_A_I => adr_A,
      ADDR_B_I => adr_B,
      DATA_A_I => data_A_I,
      DATA_B_I => data_B_I,
      WE_A_I   => wr_A,
      WE_B_I   => wr_B,
      DATA_A_O => data_A_O,
      DATA_B_O => data_B_O
);


-- SPI TX module instanciation
SpiTx:  SPI_TX 
generic map( SPI_MODE => SPI_MODE,
             SPI_TYPE => SPI_TYPE)
port map ( 
    CLK_I    => clk_spi,
    RESET_I  => RESET_I,
    -- RAM
    ADDR_O   => adr_B,
    DATA_I   => data_B_O,
    -- SPI
    SCLK_O   => SPI_SCLK_O,
    MOSI_O   => SPI_MOSI_O
);

-- Clocking module instanciation
clocking_1_inst: clocking_1
--    generic map (CLK_I_PERIOD => 10.0)  -- Instantiate the module with information that CLK_I has period of ... (2-64ns)
    port map (
      RESET_I     => '0',
      CLK_I       => CLK_I,
      CLK48_O     => clk48, 
      CLK_SPI_O   => clk_spi,
      RESET_O     => RESET_O
    );
           

end rtl;
