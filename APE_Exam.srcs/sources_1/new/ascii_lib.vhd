
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Create small custom package
package ascii_lib is                                  		-- Stat package
    
   
    constant ASCII_HASHTAG   : std_logic_vector(7 downto 0) := "00100011"; -- 0x23 - #
    constant ASCII_COLON     : std_logic_vector(7 downto 0) := "00111010"; -- 0x3A - :
    constant ASCII_CR        : std_logic_vector(7 downto 0) := "00001101"; -- 0x0D - \r
    constant ASCII_excl      : std_logic_vector(7 downto 0) := "00100001"; -- 0x21 - !
    constant ASCII_dot       : std_logic_vector(7 downto 0) := "00101110"; -- 0x2E - .
    
    constant ASCII_0         : std_logic_vector(7 downto 0) := "00110000"; -- 0x30 - 0
    constant ASCII_1         : std_logic_vector(7 downto 0) := "00110001"; -- 0x31 - 1
    constant ASCII_2         : std_logic_vector(7 downto 0) := "00110010"; -- 0x32 - 2
    constant ASCII_3         : std_logic_vector(7 downto 0) := "00110011"; -- 0x33 - 3
    constant ASCII_4         : std_logic_vector(7 downto 0) := "00110100"; -- 0x34 - 4
    constant ASCII_5         : std_logic_vector(7 downto 0) := "00110101"; -- 0x35 - 5
    constant ASCII_6         : std_logic_vector(7 downto 0) := "00110110"; -- 0x36 - 6
    constant ASCII_7         : std_logic_vector(7 downto 0) := "00110111"; -- 0x37 - 7
    constant ASCII_8         : std_logic_vector(7 downto 0) := "00111000"; -- 0x38 - 8
    constant ASCII_9         : std_logic_vector(7 downto 0) := "00111001"; -- 0x39 - 9
    constant ASCII_A         : std_logic_vector(7 downto 0) := "01000001"; -- 0x41 - A
    constant ASCII_B         : std_logic_vector(7 downto 0) := "01000010"; -- 0x42 - B
    constant ASCII_C         : std_logic_vector(7 downto 0) := "01000011"; -- 0x43 - C
    constant ASCII_D         : std_logic_vector(7 downto 0) := "01000100"; -- 0x44 - D
    constant ASCII_E         : std_logic_vector(7 downto 0) := "01000101"; -- 0x45 - E
    constant ASCII_F         : std_logic_vector(7 downto 0) := "01000110"; -- 0x46 - F
    constant ASCII_aa        : std_logic_vector(7 downto 0) := "01100001"; -- 0x61 - a
    constant ASCII_bb        : std_logic_vector(7 downto 0) := "01100010"; -- 0x62 - b 
    constant ASCII_cc        : std_logic_vector(7 downto 0) := "01100011"; -- 0x63 - c 
    constant ASCII_dd        : std_logic_vector(7 downto 0) := "01100100"; -- 0x64 - d
    constant ASCII_ee        : std_logic_vector(7 downto 0) := "01100101"; -- 0x65 - e
    constant ASCII_ff        : std_logic_vector(7 downto 0) := "01100110"; -- 0x66 - f
    
    constant ASCII_W         : std_logic_vector(7 downto 0) := "01010111"; -- 0x57 - W
    constant ASCII_R         : std_logic_vector(7 downto 0) := "01010010"; -- 0x52 - R
    constant ASCII_ww        : std_logic_vector(7 downto 0) := "01110111"; -- 0x77 - w
    constant ASCII_rr        : std_logic_vector(7 downto 0) := "01110010"; -- 0x72 - r

    
end package ascii_lib;                                		-- End package


package body ascii_lib is                           
end package body ascii_lib;
