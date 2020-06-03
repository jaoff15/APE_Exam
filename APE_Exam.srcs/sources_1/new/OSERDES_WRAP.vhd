----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2020 01:58:12 PM
-- Design Name: 
-- Module Name: OSERDES_WRAP - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity OSERDES_WRAP is
    Port (  CLK_FAST_I : in  STD_LOGIC  := '0';
            CLK_SLOW_I : in  STD_LOGIC  := '0';
            RESET_I    : in  STD_LOGIC  := '0';
            DATA_I     : in  std_logic_vector(9 downto 0) := (others => '0');
            DATA_O     : out STD_LOGIC := '0'
    );
end OSERDES_WRAP;

architecture Behavioral of OSERDES_WRAP is

    signal shiftout1, shiftout2 : std_logic := '0';
begin
OSERDESE2_m : OSERDESE2
    generic map (
        DATA_RATE_OQ   => "DDR",    -- DDR, SDR
        DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
        DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
        INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
        INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
        SERDES_MODE    => "MASTER", -- MASTER, SLAVE
        SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
        SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
        TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
        TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
        TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
        )
        port map (
        --OFB => OFB,               -- 1-bit output: Feedback path for data
        OQ => DATA_O,                -- 1-bit output: Data path output
        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
        --         SHIFTOUT1 => SHIFTOUT1,
        --         SHIFTOUT2 => SHIFTOUT2,
        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
        --TFB => TFB,                -- 1-bit output: 3-state control
        --TQ => TQ,                 -- 1-bit output: 3-state control
        CLK    => CLK_FAST_I,              -- 1-bit input: High speed clock
        CLKDIV => CLK_SLOW_I,        -- 1-bit input: Divided clock
        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
        D1 => DATA_I(0),
        D2 => DATA_I(1),
        D3 => DATA_I(2),
        D4 => DATA_I(3),
        D5 => DATA_I(4),
        D6 => DATA_I(5),
        D7 => DATA_I(6),
        D8 => DATA_I(7),
        OCE => '1',                 -- 1-bit input: Output data clock enable
        RST => RESET_I,               -- 1-bit input: Reset
        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
        SHIFTIN1 => shiftout1, 
        SHIFTIN2 => shiftout2, 
        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
        T1 => '0',
        T2 => '0',
        T3 => '0',
        T4 => '0',
        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
        TCE => '0'                  -- 1-bit input: 3-state clock enable
    );
    
    OSERDESE2_s : OSERDESE2
    generic map (
       DATA_RATE_OQ   => "DDR",    -- DDR, SDR
       DATA_RATE_TQ   => "DDR",    -- DDR, BUF, SDR
       DATA_WIDTH     => 10,       -- Parallel data width (2-8,10,14)
       INIT_OQ        => '0',      -- Initial value of OQ output (1'b0,1'b1)
       INIT_TQ        => '0',      -- Initial value of TQ output (1'b0,1'b1)
       SERDES_MODE    => "SLAVE", -- MASTER, SLAVE
       SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
       SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
       TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
       TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
       TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
    )
    port map (
        --OFB => OFB,               -- 1-bit output: Feedback path for data
        -- OQ => red_s,                -- 1-bit output: Data path output
        -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
        SHIFTOUT1 => shiftout1,
        SHIFTOUT2 => shiftout2,
        --         TBYTEOUT => TBYTEOUT, -- 1-bit output: Byte group tristate
        --TFB => TFB,                 -- 1-bit output: 3-state control
        --TQ => TQ,                  -- 1-bit output: 3-state control
        CLK    => CLK_FAST_I,               -- 1-bit input: High speed clock
        CLKDIV => CLK_SLOW_I,         -- 1-bit input: Divided clock
        -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
        D1 => '0',
        D2 => '0',
        D3 => DATA_I(8),
        D4 => DATA_I(9),
        D5 => '0',
        D6 => '0',
        D7 => '0',
        D8 => '0',
        OCE => '1',                 -- 1-bit input: Output data clock enable
        RST => RESET_I,               -- 1-bit input: Reset
        -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
        SHIFTIN1 => '0', 
        SHIFTIN2 => '0', 
        -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
        T1 => '0',
        T2 => '0',
        T3 => '0',
        T4 => '0',
        TBYTEIN => '0',             -- 1-bit input: Byte group tristate
        TCE => '0'                  -- 1-bit input: 3-state clock enable
    );

end Behavioral;
