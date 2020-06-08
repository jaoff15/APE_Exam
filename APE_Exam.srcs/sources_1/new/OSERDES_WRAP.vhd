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

library UNISIM;
use UNISIM.VComponents.all;

entity OSERDES_10BIT_WRAP is
    Port (  CLK_I      : in  STD_LOGIC  := '0';
            CLK_I_X5   : in  STD_LOGIC  := '0';
            RESET_I    : in  STD_LOGIC  := '0';
            DATA_I     : in  std_logic_vector(9 downto 0) := (others => '0');
            DATA_O     : out STD_LOGIC := '0'
    );
end OSERDES_10BIT_WRAP;

architecture Behavioral of OSERDES_10BIT_WRAP is
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
        OQ => DATA_O,               -- 1-bit output: Data path output
        CLK    => CLK_I_X5,              -- 1-bit input: High speed clock
        CLKDIV => CLK_I,            -- 1-bit input: Divided clock
        D1 => DATA_I(0),
        D2 => DATA_I(1),
        D3 => DATA_I(2),
        D4 => DATA_I(3),
        D5 => DATA_I(4),
        D6 => DATA_I(5),
        D7 => DATA_I(6), 
        D8 => DATA_I(7),
        OCE => '1',                 -- 1-bit input: Output data clock enable
        RST => RESET_I,             -- 1-bit input: Reset
        SHIFTIN1 => shiftout1, 
        SHIFTIN2 => shiftout2, 
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
       SERDES_MODE    => "SLAVE",  -- MASTER, SLAVE
       SRVAL_OQ       => '0',      -- OQ output value when SR is used (1'b0,1'b1)
       SRVAL_TQ       => '0',      -- TQ output value when SR is used (1'b0,1'b1)
       TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE)
       TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE)
       TRISTATE_WIDTH => 1         -- 3-state converter width (1,4)
    )
    port map (
        SHIFTOUT1   => shiftout1,
        SHIFTOUT2   => shiftout2,
        CLK         => CLK_I_X5,  -- 1-bit input: High speed clock
        CLKDIV      => CLK_I,     -- 1-bit input: Divided clock
        D1          => '0',
        D2          => '0',
        D3          => DATA_I(8),
        D4          => DATA_I(9),
        D5          => '0',
        D6          => '0',
        D7          => '0',
        D8          => '0',
        OCE         => '1',       -- 1-bit input: Output data clock enable
        RST         => RESET_I,   -- 1-bit input: Reset
        SHIFTIN1    => '0', 
        SHIFTIN2    => '0', 
        T1          => '0',
        T2          => '0',
        T3          => '0',
        T4          => '0',
        TBYTEIN     => '0',       -- 1-bit input: Byte group tristate
        TCE          => '0'       -- 1-bit input: 3-state clock enable
    );
end Behavioral;
