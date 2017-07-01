// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_mcp23s08Setup(pinBase,spiPort,devId)
// Function for setting up 8-bit MCP23s08 SPI GPIO expansion chip. 
//
// Calling Sequence
//  RPI_mcp23s08Setup(pinBase,spiPort,devId)
//
// Parameters
//  pinBase: any number above 64. The consecutive 8 pins will be allocated alongwith.
//  spiPort: 0 or 1 for one of the two SPI ports on the Raspberry Pi.
//  devId  : the ID of the MCP23s08 on the SPI port.
//
// Description
//  This function setups the extension module for the 8-bit MCP23s08 SPI GPIO expansion chip.
//
// Examples
//  RPI_mcp23s08Setup(67,1,0)
// See also
//  RPI_sr595Setup, RPI_pcf8574Setup, RPI_pcf8591Setup, RPI_mcp23008Setup, RPI_mcp23016Setup, RPI_mcp23017Setup, RPI_mcp23s17Setup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("ms8#3#"+string(pinBase)+"#"+string(spiPort)+"#"+string(devId)+"#");
    RPI_send();
endfunction
