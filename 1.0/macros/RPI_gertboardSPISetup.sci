// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_gertboardSPISetup()
// Function to initialize SPI bus communication with gertboard
//
// Calling Sequence
//  RPI_gertboardSPIsetup()
//
// Description
//  This function must be called to initialize the SPI bus to communicate with the Gertboards ADC and DAC chips.
//
// Examples
//  RPI_gertboardSPISetup()
// See also
//  RPI_gertboardAnalogSetup, RPI_gertboardAnalogRead, RPI_gertboardAnalogWrite
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/
//  http://pi4j.com/apidocs/com/pi4j/wiringpi/Gertboard.html

    RPI_commande("gSS#0#");
    RPI_send();
endfunction

