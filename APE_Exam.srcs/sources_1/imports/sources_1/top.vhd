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
--    generic( 
--        SPI_MODE : SPI_MODE_TYP := ASYNC;
--        SPI_TYPE : SPI_TYPE_TYP := DDR
--        );
    Port ( 
        CLK100MHZ   : in STD_LOGIC;
        
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
        hdmi_out_p  : out STD_LOGIC_VECTOR(3 downto 0);
        hdmi_out_n  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end top;

architecture Behavioral of top is
    -- Simulated FPGA 1 
    component FPGA1 is
        generic( 
        SPI_TYPE : SPI_TYPE_TYP := DDR
        );
        Port ( 
            CLK_I       : in  STD_LOGIC;
            RESET_I     : in  STD_LOGIC;
            RESET_O     : out STD_LOGIC;
            
            -- UART
            TX_O        : out STD_LOGIC;
            RX_I        : in  STD_LOGIC;
            
            -- SPI TX
            SPI_MOSI_O  : out std_logic;
            SPI_SCLK_O  : out std_logic;
            
            -- SPI debug signals
            SYS_CLK_O     : out std_logic;
            ADR_O         : out std_logic_vector(7 downto 0);
            DATA_I        : in std_logic_vector(31 downto 0)
        );
    end component;
    
    -- Simulated FPGA 2
    component FPGA2 is
        generic( 
            SPI_TYPE : SPI_TYPE_TYP := DDR
            );
        Port ( 
            CLK_I       : in STD_LOGIC;
            RESET_I     : in  STD_LOGIC;
            RESET_O     : out STD_LOGIC;
            
            -- SPI Rx 
            SPI_MOSI_I  : in  std_logic;
            SPI_SCLK_I  : in  std_logic;
            
            -- HDMI
            hdmi_out_p  : out STD_LOGIC_VECTOR(3 downto 0);
            hdmi_out_n  : out STD_LOGIC_VECTOR(3 downto 0);
            
            -- SPI debug signals
            CLK_O       : out std_logic;
            ADR_O       : out std_logic_vector(7 downto 0);
            DATA_O      : out std_logic_vector(31 downto 0);
            WR          : out std_logic
            
     );
    end component;
    
    
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
    
    
    signal adr_A, adr_B : std_logic_vector(7 downto 0);
    signal data_A       : std_logic_vector(31 downto 0);
    signal data_B       : std_logic_vector(31 downto 0);
    signal wr_B         : std_logic;
    signal clk_A,clk_B  : std_logic;
    
    signal global_reset : std_logic := '1';
    signal reset_fpga1_o, reset_fpga2_o : std_logic := '1';
--    signal reset_fpga1_i, reset_fpga2_i : std_logic := '1';
    
    
begin
 
global_reset <= reset_fpga1_o or reset_fpga2_o;

 
FPGA1_inst : FPGA1 
generic map( SPI_TYPE => DDR)
port map( 
    CLK_I       => CLK100MHZ,
    RESET_I     => global_reset,
    RESET_O     => reset_fpga1_o,
    -- UART
    TX_O        => TX_O,
    RX_I        => RX_I,
       
    -- SPI TX
    SPI_MOSI_O  => SPI_MOSI_O,
    SPI_SCLK_O  => SPI_SCLK_O,
    
    
    -- SPI Debug signals
    SYS_CLK_O   => clk_A, 
    ADR_O       => adr_A,
    DATA_I      => data_A
);


-- RAM3 module instanciation
RAM_spi_debug : TD_RAM_36K_WRAP port map (
      -- FPGA 1 - Controlled by QLink
      CLK_A_I  => clk_A, 
      ADDR_A_I => adr_A,
      DATA_A_O => data_A,
      DATA_A_I => (others => '0'),      
      WE_A_I   => '0',

      -- FPGA 2 - Controlled by SPI RX
      CLK_B_I  => clk_B,
      ADDR_B_I => adr_B,
      DATA_B_I => data_B,
      WE_B_I   => wr_B
--      , 
--      DATA_B_O => open
);


FPGA2_inst: FPGA2 
generic map( SPI_TYPE => DDR)
port map(
    CLK_I       => CLK100MHZ,
    RESET_I     => global_reset,
    RESET_O     => reset_fpga2_o,
    
    -- SPI RX
    SPI_MOSI_I  => SPI_MOSI_I,
    SPI_SCLK_I  => SPI_SCLK_I,
    
    -- HDMI 
    hdmi_out_p  => hdmi_out_p,
    hdmi_out_n  => hdmi_out_n,
    
    
    -- SPI debug signals
    CLK_O   => clk_B,
    ADR_O   => adr_B,
    DATA_O  => data_B,
    WR      => wr_B
);


end Behavioral;

