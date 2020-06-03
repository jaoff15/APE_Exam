

-- Create small custom package that allows the SPI modes to be used in the module 'generic'
package spi_lib is                                  		-- Stat package
    type SPI_MODE_TYP is (VHDL_SD, VHDL_DD, DDR, SERDES);   	-- Make type
end package spi_lib;                                		-- End package

-- The package does not have any processes, but otherwise these would go here
package body spi_lib is                           
end package body spi_lib;
