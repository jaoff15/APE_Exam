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

-- Include SPI lib 
library work; 
--use work.spi_lib.all;
use work.ascii_lib.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    component top is
--        generic( 
--            SPI_MODE : SPI_MODE_TYP := ASYNC;
--            SPI_TYPE : SPI_TYPE_TYP := DDR
--            );
        Port ( 
            CLK100MHZ : in STD_LOGIC;
            
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
            hdmi_out_p : out STD_LOGIC_VECTOR(3 downto 0);
            hdmi_out_n : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
    
    -- Clock
    signal clk          : std_logic := '0';
    
    -- UART signals
    signal uart_tx         : std_logic := '0';
    signal uart_rx         : std_logic := '0';
    
    -- SPI signals
    signal spi_mosi     : std_logic := '0';
    signal spi_sclk     : std_logic := '0';
    
    -- HDMI signals
    signal hdmi_out_p   : STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
    signal hdmi_out_n   : STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
    
 
    
begin

clk <= not clk after 5 ns;


test_tx : process
  variable D : std_logic_vector(7 downto 0) := "00000000";
  variable x :integer   := 0;
  variable done: boolean := false;
begin
    
   -- tx_start <= '0';
    wait for 10us;
  --  tx_start <= '1';
    uart_rx <= '1';
    loop
        case x is
            when 0      => D := ASCII_HASHTAG;
            when 1      => D := ASCII_w;
            when 2      => D := ASCII_COLON;
            when 3      => D := ASCII_1;
            when 4      => D := ASCII_0;
            when 5      => D := ASCII_1;
            when 6      => D := ASCII_2;
            when 7      => D := ASCII_3;
            when 8      => D := ASCII_4;
            when 9      => D := ASCII_5;
            when 10     => D := ASCII_6;
            when 11     => D := ASCII_7;
            when 12     => D := ASCII_8;
            when 13     => D := ASCII_dot;
            when 14     => D := ASCII_dot;
            when 15     => D := ASCII_HASHTAG;
            when 16     => D := ASCII_rr;
            when 17     => D := ASCII_COLON;
            when 18     => D := ASCII_9;
            when 19     => D := ASCII_0;
            when others => D := (others => '0');
                        done := true;
        end case;

        
        if done = false then
            wait for 1us;
            uart_rx<='0';         -- Start bit
            
            for i in 0 to 7 loop
                wait for 1us;  
                uart_rx<=D(i);
            END LOOP;
            
            wait for 1us;
        end if;
        uart_rx<='1';             -- stop bit
            
        
        wait for 1us;
        x:=x+1;
         
    end loop;
end process;



top_inst: top 
--generic map( SPI_MODE => ASYNC,
--             SPI_TYPE => DDR )
port map(
    -- Clock
    CLK100MHZ   => clk,
    
    ----------- FPGA 1
    -- UART
    TX_O        => uart_tx,
    RX_I        => uart_rx,    
    -- SPI Out
    SPI_MOSI_O  => spi_mosi,
    SPI_SCLK_O  => spi_sclk,
    
    ----------- FPGA 2
    -- SPI In
    SPI_MOSI_I  => spi_mosi,
    SPI_SCLK_I  => spi_sclk,
    
    -- HDMI
    hdmi_out_p  => hdmi_out_p,
    hdmi_out_n  => hdmi_out_n
);

end Behavioral;
