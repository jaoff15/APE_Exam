

-- Create small custom package
package spi_lib is                                  		-- Stat package
    -- Determine which SPI implementation should be used:
    --  - VHDL:    Pure VHDL in signle data rate.
    --             VHDL is used both for serializing and I/O handling.
    --  - DDR:     Dual data rate using the DDR component from UNISIM. 
    --             DDR is usd for I/O handling and VHDL for serializing.
    --  - SERDES:  Dual data rate using the SERDES component from UNISIM.
    --             SERDES is used for both I/O handling and serializing.
    type SPI_TYPE_TYP is (VHDL, DDR, SERDES);
    
end package spi_lib;                                		-- End package

-- The package does not have any processes, but otherwise these would go here
package body spi_lib is                           
end package body spi_lib;
