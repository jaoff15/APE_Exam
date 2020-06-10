
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Create small custom package
package ascii_lib is                                  		-- Stat package
    
   
    constant ASCII_HASHTAG   : std_logic_vector(7 downto 0) := x"23"; --"00100011"  - "#"
    constant ASCII_COLON     : std_logic_vector(7 downto 0) := x"3A"; --"00111010"; - ":"
    constant ASCII_CR        : std_logic_vector(7 downto 0) := x"0D"; --"00001101"; - "\r"
    constant ASCII_excl      : std_logic_vector(7 downto 0) := x"21"; --"00100001";- "!"
    constant ASCII_dot       : std_logic_vector(7 downto 0) := x"2E"; --"00101110"; - "."
    constant ASCII_question  : std_logic_vector(7 downto 0) := x"3F"; --"00111111"; - "?"
    constant ASCII_semicolon : std_logic_vector(7 downto 0) := x"3B"; --"00111011"; - ";"
    
    constant ASCII_0         : std_logic_vector(7 downto 0) := x"30"; --"00110000"; - "0"
    constant ASCII_1         : std_logic_vector(7 downto 0) := x"31"; --"00110001"; - "1"
    constant ASCII_2         : std_logic_vector(7 downto 0) := x"32"; --"00110010"; - "2"
    constant ASCII_3         : std_logic_vector(7 downto 0) := x"33"; --"00110011"; - "3"
    constant ASCII_4         : std_logic_vector(7 downto 0) := x"34"; --"00110100"; - "4"
    constant ASCII_5         : std_logic_vector(7 downto 0) := x"35"; --"00110101"; - "5"
    constant ASCII_6         : std_logic_vector(7 downto 0) := x"36"; --"00110110"; - "6"
    constant ASCII_7         : std_logic_vector(7 downto 0) := x"37"; --"00110111"; - "7"
    constant ASCII_8         : std_logic_vector(7 downto 0) := x"38"; --"00111000"; - "8"
    constant ASCII_9         : std_logic_vector(7 downto 0) := x"39"; --"00111001"; - "9"
    constant ASCII_A         : std_logic_vector(7 downto 0) := x"41"; --"01000001"; - "A"
    constant ASCII_B         : std_logic_vector(7 downto 0) := x"42"; --"01000010"; - "B"
    constant ASCII_C         : std_logic_vector(7 downto 0) := x"43"; --"01000011"; - "C"
    constant ASCII_D         : std_logic_vector(7 downto 0) := x"44"; --"01000100"; - "D"
    constant ASCII_E         : std_logic_vector(7 downto 0) := x"45"; --"01000101"; - "E"
    constant ASCII_F         : std_logic_vector(7 downto 0) := x"46"; --"01000110"; - "F"
    constant ASCII_aa        : std_logic_vector(7 downto 0) := x"61"; --"01100001"; - "a"
    constant ASCII_bb        : std_logic_vector(7 downto 0) := x"62"; --"01100010"; - "b" 
    constant ASCII_cc        : std_logic_vector(7 downto 0) := x"63"; --"01100011"; - "c" 
    constant ASCII_dd        : std_logic_vector(7 downto 0) := x"64"; --"01100100"; - "d"
    constant ASCII_ee        : std_logic_vector(7 downto 0) := x"65"; --"01100101"; - "e"
    constant ASCII_ff        : std_logic_vector(7 downto 0) := x"66"; --"01100110"; - "f"
    
    constant ASCII_W         : std_logic_vector(7 downto 0) := x"57"; --"01010111"; - "W"
    constant ASCII_R         : std_logic_vector(7 downto 0) := x"52"; --"01010010"; - "R"
    constant ASCII_ww        : std_logic_vector(7 downto 0) := x"77"; --"01110111"; - "w"
    constant ASCII_rr        : std_logic_vector(7 downto 0) := x"72"; --"01110010"; - "r"



end package ascii_lib;                                		-- End package


package body ascii_lib is     


end package body ascii_lib;
