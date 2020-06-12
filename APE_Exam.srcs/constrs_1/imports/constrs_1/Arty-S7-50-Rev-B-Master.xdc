## This file is a general .xdc for the Arty S7-50 Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports CLK100MHZ]

create_clock -period 10.000 [get_ports CLK100MHZ]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK100MHZ_IBUF]

# 50 MHz
#create_clock -period 20.000 [get_ports SPI_SCLK_I_IBUF]
# 100MHz
#create_clock -period 10.000 [get_ports SPI_SCLK_I_IBUF]
# 150 MHz
#create_clock -period 6.667 [get_ports SPI_SCLK_I_IBUF]
# 200MHz
#create_clock -period 5.000 [get_ports SPI_SCLK_I_IBUF]
# 250MHz
#create_clock -period 4.000 [get_ports SPI_SCLK_I_IBUF]
# 300 MHz
create_clock -period 3.333 [get_ports SPI_SCLK_I_IBUF]
# 350 MHz
#create_clock -period 2.857 [get_ports SPI_SCLK_I_IBUF]
# 400 MHz
#create_clock -period 2.500 [get_ports SPI_SCLK_I_IBUF]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets SPI_SCLK_I_IBUF]


## PMOD Header JA
set_property -dict {PACKAGE_PIN N14 IOSTANDARD TMDS_33} [get_ports {hdmi_out_p[1]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD TMDS_33} [get_ports {hdmi_out_n[1]}]
set_property -dict {PACKAGE_PIN K11 IOSTANDARD TMDS_33} [get_ports {hdmi_out_p[0]}]
set_property -dict {PACKAGE_PIN K12 IOSTANDARD TMDS_33} [get_ports {hdmi_out_n[0]}]
set_property -dict {PACKAGE_PIN J11 IOSTANDARD TMDS_33} [get_ports {hdmi_out_p[2]}]
set_property -dict {PACKAGE_PIN J12 IOSTANDARD TMDS_33} [get_ports {hdmi_out_n[2]}]
set_property -dict {PACKAGE_PIN M11 IOSTANDARD TMDS_33} [get_ports {hdmi_out_p[3]}]
set_property -dict {PACKAGE_PIN M12 IOSTANDARD TMDS_33} [get_ports {hdmi_out_n[3]}]

set_property PACKAGE_PIN A12 [get_ports RX_I]
set_property PACKAGE_PIN A5 [get_ports TX_O]
set_property IOSTANDARD LVCMOS33 [get_ports RX_I]
set_property IOSTANDARD LVCMOS33 [get_ports TX_O]


set_property PACKAGE_PIN B2 [get_ports SPI_MOSI_I]
set_property PACKAGE_PIN C1 [get_ports SPI_MOSI_O]

# DDR and VHDL SPI
set_property PACKAGE_PIN F4 [get_ports SPI_SCLK_I]
set_property PACKAGE_PIN F3 [get_ports SPI_SCLK_O] 
# SERDES SPI
#set_property PACKAGE_PIN D1 [get_ports SPI_SCLK_I]
#set_property PACKAGE_PIN D2 [get_ports SPI_SCLK_O]


set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI_I]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI_O]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_SCLK_I]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_SCLK_O]

set_property SLEW FAST [get_ports SPI_MOSI_O]
set_property SLEW FAST [get_ports SPI_SCLK_O]
set_property DRIVE 16 [get_ports SPI_MOSI_O]
set_property DRIVE 16 [get_ports SPI_SCLK_O]


