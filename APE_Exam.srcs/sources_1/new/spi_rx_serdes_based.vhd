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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
    signal Q             : std_logic_vector(7 downto 0) := (others => '0');
--    signal counter       : integer range 0 to 3 := 0;
    signal clk, clk_div  : std_logic := '0';
   
    signal subpart       : integer range 0 to 3 := 0;
    signal data          : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal wr            : STD_LOGIC := '0';
begin

WR_O    <= wr;
DATA_O  <= data;

process(clk_div)
--variable nxt_counter  : integer range 0 to 3          := counter;
variable nxt_subpart  : integer range 0 to 3          := subpart;
variable nxt_data     : std_logic_vector(31 downto 0) := data;
variable nxt_wr       : std_logic                     := '0';
begin
  if rising_edge(clk_div) then

    if RESET_I = '1' then
        nxt_subpart := 0;
        nxt_data    := (others => '0');
        nxt_wr      := '0';
    else
        -- Read in SERDES data
--        if nxt_counter = 2 then
            
            if    subpart = 0 then
                nxt_data( 7 downto  0) := Q;
            elsif subpart = 1 then
                nxt_data(15 downto  8) := Q;
            elsif subpart = 2 then
                nxt_data(23 downto 16) := Q;
            else 
                nxt_data(31 downto 24) := Q;
            end if;
            
            
            if nxt_subpart < 3 then
                nxt_subpart := nxt_subpart + 1;
                nxt_wr      := '0';
            else
                nxt_wr      := '1';
                nxt_subpart := 0;
            end if; 
--        end if;
    end if;
    data    <= nxt_data;
    wr      <= nxt_wr;
    subpart <= nxt_subpart;
  end if;
end process;




BUFR_inst : BUFR
   generic map (
      BUFR_DIVIDE => "4",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE  => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O     => clk_div, -- 1-bit output: Clock output port
      CE    => '1',     -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR   => '0',     -- 1-bit input: Active high, asynchronous clear (Divided modes only)
      I     => SCLK_I   -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );

BUFIO_inst : BUFIO
   port map (
      O => clk,         -- 1-bit output: Clock output (connect to I/O clock loads).
      I => SCLK_I       -- 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );


   ISERDESE2_inst : ISERDESE2
   generic map (
      DATA_RATE         => "DDR",           -- DDR, SDR
      DATA_WIDTH        => 8,               -- Parallel data width (2-8,10,14)
      DYN_CLKDIV_INV_EN => "FALSE",         -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
      DYN_CLK_INV_EN    => "FALSE",         -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
      -- INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",       -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
      IOBDELAY    => "NONE",                -- NONE, BOTH, IBUF, IFD
      NUM_CE      => 1,                     -- Number of clock enables (1,2)
      OFB_USED    => "FALSE",               -- Select OFB path (FALSE, TRUE)
      SERDES_MODE => "MASTER",              -- MASTER, SLAVE
      -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
   )
   port map (
--      O => O,                       -- 1-bit output: Combinatorial output
      -- Q1 - Q8: 1-bit (each) output: Registered data outputs
      Q1 => Q(7),
      Q2 => Q(6),
      Q3 => Q(5),
      Q4 => Q(4),
      Q5 => Q(3),
      Q6 => Q(2),
      Q7 => Q(1),
      Q8 => Q(0),
      -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
--      SHIFTOUT1 => SHIFTOUT1,
--      SHIFTOUT2 => SHIFTOUT2,
      BITSLIP => '0',           -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                    -- CLKDIV when asserted (active High). Subsequently, the data seen on the
                                    -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
                                    -- position every time Bitslip is invoked (DDR operation is different from
                                    -- SDR).

      -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
      CE1       => '1',
      CE2       => '1',
      CLKDIVP   => '0',           -- 1-bit input: TBD
      -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
      CLK       => clk,                   -- 1-bit input: High-speed clock
      CLKB      => '0',                 -- 1-bit input: High-speed secondary clock
      CLKDIV    => clk_div,             -- 1-bit input: Divided clock
      OCLK      => '0',                 -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
      -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
      DYNCLKDIVSEL  => '0',             -- 1-bit input: Dynamic CLKDIV inversion
      DYNCLKSEL     => '0',             -- 1-bit input: Dynamic CLK/CLKB inversion
      -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
      D         => MOSI_I,              -- 1-bit input: Data input
      DDLY      => '0',                 -- 1-bit input: Serial data from IDELAYE2
      OFB       => '0',                   -- 1-bit input: Data feedback from OSERDESE2
      OCLKB     => '0',               -- 1-bit input: High speed negative edge output clock
      RST       => RESET_I,                   -- 1-bit input: Active high asynchronous reset
      -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
      SHIFTIN1  => '0',
      SHIFTIN2  => '0'
   );


end Behavioral;
