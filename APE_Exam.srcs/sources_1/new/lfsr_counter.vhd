----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lfsr_counter is
    Port ( CLK_I    : in STD_LOGIC;
           RESET_I  : in STD_LOGIC;
           COUNT_O  : out std_logic_vector(23 downto 0)
           );
end lfsr_counter;

architecture Behavioral of lfsr_counter is
    signal q : std_logic_vector(23 downto 0) := (others => '0');
begin

COUNT_O <= q;
process(CLK_I)
begin
    if rising_edge(CLK_I) then
      if (RESET_I = '1') then
         q <= (others => '0');
      else
         q(23 downto 1) <= q(22 downto 0);
         q(0) <= not(q(23) XOR q(22) XOR q(21) XOR q(16)); -- 24bit
      end if;
    end if;
end process;

end Behavioral;
