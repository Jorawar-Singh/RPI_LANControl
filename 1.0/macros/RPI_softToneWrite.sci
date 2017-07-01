// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_softToneWrite(pin,freq)
// Function to update tone frquency on the soft tone pin
//
// Calling Sequence
//  RPI_softToneWrite(pin,freq)
//
// Parameters
//  pin : soft tone pin
//  freq: frequency value to write
//
// Description
//  This function updates the tone frequency value on the given pin. The tone will be played until you set the frequency to 0.
//
// Examples
//  RPI_softToneWrite(1,200)
// See also
//  RPI_softPwmStop, RPI_softPwmWrite, RPI_softToneCreate, RPI_softToneStop, RPI_softPwmCreate
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sTW#2#"+string(pin)+"#"+string(freq)+"#");
    RPI_send();
endfunction
