// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_pcf8591Setup(pinBase,i2cAddress)
// Function for setting up 8-bit PCF8591 Analog IO expander IC
//
// Calling Sequence
//  RPI_pcf8591Setup(pinBase,i2cAddress)
//
// Parameters
//  pinBase   : any number above 64.The consecutive 4 pins will be allocated alongwith.
//  i2cAddress: I2C address obtained using RPI_i2cdetect function
//
// Description
//  This function sets up the extension module for the PCF8591 8-bit GPIO expander IC. Can be called multiple times for multiple PCF8591 using different pinBase for each.
//
//Specifying the number of pins is not necessary – the PCF8791 has 4 pins – the analog output uses base pin number 0 – the same as analog input 0.
//
// Examples
//  RPI_pcf8591Setup(67,64)
// See also
//  RPI_pcf8574Setup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pf9#2#"+string(pinBase)+"#"+string(i2cAddress)+"#");
    RPI_send();
endfunction
