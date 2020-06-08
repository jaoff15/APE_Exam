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
    component lfsr is
    Generic  ( N        : integer := 8);  -- Number of bits in counter
        Port ( CLK_I    : in  STD_LOGIC;
               RESET_I  : in  STD_LOGIC;
               SEED     : in  std_logic_vector(N-1 downto 0) := (others => '0'); -- Counter start value
               Q_O      : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
    
    COMPONENT RAM2 is
        Port ( CLK_I        : in  STD_LOGIC;
               RESET_I      : in  STD_LOGIC;
               ADR_I        : in  STD_LOGIC_VECTOR (15 downto 0);
               DATA_O       : out STD_LOGIC_VECTOR (7  downto 0));
    end COMPONENT;
    
    signal ram_out     : std_logic_vector(7 downto 0) := (others => '0');
    signal ram_adr     : STD_LOGIC_VECTOR (15 downto 0);
    
--    signal lfsr_out_r, lfsr_out_g, lfsr_out_b : STD_LOGIC_VECTOR (7 downto 0);
    
--    signal count: unsigned(31 downto 0) := X"00000000";
    
    signal q            : std_logic_vector(23 downto 0) := (others => '0');
    signal clock_enable : std_logic := '1';
    
    signal x_coord : std_logic_vector(15 downto 0) := (others => '0');
    signal y_coord : std_logic_vector(15 downto 0) := (others => '0');
    
    
begin

    x_coord <= POSITION_DATA_I(31 downto 16);
    y_coord <= POSITION_DATA_I(15 downto  0);
    

--    process(CLK_SLOW_I)
--    begin
--        if rising_edge(CLK_SLOW_I) then
--           count <= count + 1;
--        end if;
--    end process;
    
--    RED_O   <= std_logic_vector(signed( count(28 downto 21)) + signed( pixel_h(7 downto 0)));    
--    GREEN_O <= std_logic_vector(signed( count(28 downto 21)) + signed( pixel_v(7 downto 0)));
--    BLUE_O  <=  std_logic_vector(count(28 downto 21));
    
--    RED_O   <= lfsr_out_r(7 downto 0);
--    GREEN_O <= lfsr_out_g(7 downto 0);
--    BLUE_O  <= lfsr_out_b(7 downto 0);
    
--lfsr_r : lfsr 
--port map( CLK_I   => CLK_SLOW_I,
--          RESET_I => RESET_I,
--          SEED    => x"01",
--          Q_O     => lfsr_out_r);
--lfsr_g : lfsr 
--port map( CLK_I   => CLK_SLOW_I,
--          RESET_I => RESET_I,
--          SEED    => x"02",
--          Q_O     => lfsr_out_g);
--lfsr_b : lfsr 
--port map( CLK_I   => CLK_SLOW_I,
--          RESET_I => RESET_I,
--          SEED    => x"03",
--          Q_O     => lfsr_out_b); 

--process(CLK_SLOW_I)
--begin
--    if rising_edge( CLK_SLOW_I) then
--      if (RESET_I = '1') then
--         q <= (others => '0');
--      elsif clock_enable='1' then
--         q(23 downto 1) <= q(22 downto 0);
--         q(0) <= not(q(23) XOR q(22) XOR q(21) XOR q(16)); -- 24bit
--      end if;
--    end if;
--end process;




--ram_adr <=  std_logic_vector(unsigned(pixel_h(8 downto 1))) &  
--            not(not(pixel_v(8) & pixel_v(7)) & pixel_v(6) & pixel_v(5) &
--            pixel_v(4) & pixel_v(3) & pixel_v(2) & pixel_v(1));
----            pixel_v(8 downto 1);
 
--RAM2_inst: RAM2 port map(
--    CLK_I   => CLK_SLOW_I,
--    RESET_I => RESET_I,
--    ADR_I   => ram_adr,
--    DATA_O  => ram_out);




process(CLK_SLOW_I)
begin
    if rising_edge( CLK_SLOW_I ) then
        
--        if pixel_v(11 downto 9) = "000" and pixel_h(11 downto 9) = "000" then
--            RED_O   <= ram_out;
--            GREEN_O <= ram_out;
--            BLUE_O  <= ram_out;
        if  unsigned(x_coord) < unsigned(pixel_h) and unsigned(pixel_h) < (unsigned(x_coord)+100) and 
            unsigned(y_coord) < unsigned(pixel_v) and unsigned(pixel_v) < (unsigned(y_coord)+100) then
            
            RED_O   <= (others => '1');
            GREEN_O <= (others => '1');
            BLUE_O  <= (others => '1');
        else
            RED_O   <= (others => '0');
            GREEN_O <= (others => '0');
            BLUE_O  <= (others => '0');
        end if;
    end if;
end process;

--with ram_out select
--    RED_O <= q(7 downto 0) when x"0",
--             ram_out       when others;

--with ram_out select
--    GREEN_O <= q(15 downto 8) when x"0",
--               ram_out        when others;

--with ram_out select
--    BLUE_O <= q(23 downto 16) when x"0",
--              ram_out         when others;                  
         
--RED_O   <= ram_out;
--GREEN_O <= ram_out;
--BLUE_O  <= ram_out;

--RED_O   <= q(7 downto 0);
--GREEN_O <= q(15 downto 8);
--BLUE_O  <= q(23 downto 16);
    
end Behavioral;
