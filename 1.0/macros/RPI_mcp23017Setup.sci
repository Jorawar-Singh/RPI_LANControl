// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_mcp23017Setup(pinBase,i2cAddress)
// Function for setting up 16-bit MCP23017 I2C GPIO expansion chip. 
//
// Calling Sequence
//  RPI_mcp23017Setup(pinBase,i2cAddress)
//
// Parameters
//  pinBase  : any number above 64. The consecutive 16 pins will be allocated alongwith.
//  i2cAdress: integer, the I2C address obtained using RPI_i2cdetect function
//
// Description
//  This function setups the extension module for the 16-bit MCP23017 I2C GPIO expansion chip.
//
// Examples
//  RPI_mcp23017Setup(73,100)
// See also
//  RPI_sr595Setup, RPI_pcf8574Setup, RPI_pcf8591Setup, RPI_mcp23008Setup, RPI_mcp23016Setup, RPI_mcp23s08Setup, RPI_mcp23s17Setup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("mp7#2#"+string(pinBase)+"#"+string(i2cAddress)+"#");
    RPI_send();
endfunction
