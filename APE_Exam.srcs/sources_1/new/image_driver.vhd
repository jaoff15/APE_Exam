----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Jacob Offersen
-- Project: Exam in Advanced Programmable Electronics
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 


entity image_driver is
    Port ( CLK_FAST_I       : in  STD_LOGIC;
           CLK_SLOW_I       : in  STD_LOGIC;
           RESET_I          : in  STD_LOGIC;
           PIXEL_H          : in  STD_LOGIC_VECTOR  (11 downto 0);
           PIXEL_V          : in  STD_LOGIC_VECTOR  (11 downto 0);
           POSITION_DATA_I  : in  std_logic_vector(31 downto 0);
           RED_O            : out STD_LOGIC_VECTOR (7 downto 0);
           GREEN_O          : out STD_LOGIC_VECTOR (7 downto 0);
           BLUE_O           : out STD_LOGIC_VECTOR (7 downto 0));
end image_driver;

architecture Behavioral of image_driver is

    
    component lfsr_counter is
        Port ( CLK_I    : in STD_LOGIC;
               RESET_I  : in STD_LOGIC;
               COUNT_O  : out std_logic_vector(23 downto 0)
               );
    end component;

    
    signal x_coord : std_logic_vector(15 downto 0) := (others => '0');
    signal y_coord : std_logic_vector(15 downto 0) := (others => '0');
    
    signal r_out, g_out, b_out : std_logic_vector(7 downto 0) := (others => '0');

    signal lfsr_out     : std_logic_vector(23 downto 0) := (others => '0');
    
begin

x_coord <= POSITION_DATA_I(31 downto 16);
y_coord <= POSITION_DATA_I(15 downto  0);



process(CLK_SLOW_I)
begin
    if rising_edge( CLK_SLOW_I ) then
        if RESET_I = '1' then
            r_out <= (others => '1');
            g_out <= (others => '1'); 
            b_out <= (others => '1');  
        elsif  unsigned(x_coord) <= (unsigned(pixel_h)) and (unsigned(pixel_h)) <= (unsigned(x_coord)+100) and 
               unsigned(y_coord) <= unsigned(pixel_v)   and unsigned(pixel_v)   <= (unsigned(y_coord)+100) then

            r_out <= lfsr_out(7  downto  0); 
            g_out <= lfsr_out(15 downto  8); 
            b_out <= lfsr_out(23 downto 16);
            
        else
            -- Print white
            r_out <= (others => '1'); 
            g_out <= (others => '1'); 
            b_out <= (others => '1');
        end if;
    end if;
end process;


RED_O   <= r_out;
GREEN_O <= g_out;
BLUE_O  <= b_out;


-- The LFSR instance 
lfsr_inst : lfsr_counter port map(
    CLK_I   => CLK_SLOW_I,
    RESET_I => RESET_I,
    COUNT_O => lfsr_out
);

    
end Behavioral;
