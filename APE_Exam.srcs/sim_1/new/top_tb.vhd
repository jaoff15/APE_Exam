----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2020 11:52:37 AM
-- Design Name: 
-- Module Name: top_tb - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    component top is
        Port ( 
            CLK100MHZ : in STD_LOGIC;
            --sw : in STD_LOGIC_VECTOR (3 downto 0);
            led : out STD_LOGIC_VECTOR (3 downto 0);
            hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
            hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
    
    signal clk        : std_logic := '0';
    signal led        : std_logic_vector(3 downto 0):= (others=>'0');
    signal hdmi_out_p : STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
    signal hdmi_out_n : STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
    
begin

clk <= not clk after 5 ns;


top_inst: top 
port map(
    CLK100MHZ   => clk,
    led         => led,
    hdmi_out_p  => hdmi_out_p,
    hdmi_out_n  => hdmi_out_n
);

end Behavioral;
