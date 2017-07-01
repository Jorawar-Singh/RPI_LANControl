// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_softToneStop(pin)
// Function to stop the software tone on the pin 
//
// Calling Sequence
//  RPI_softToneStop(pin)
//
// Parameters
//  pin: soft tone pin to stop. Numbering sequence to follow as initiated using RPI_pinNumbering
//
// Description
//  This function stops the software tone on the specified pin.
//
// Examples
//  RPI_softToneStop(1)
// See also
//  RPI_softPwmStop, RPI_softPwmWrite, RPI_softToneCreate, RPI_softToneWrite, RPI_softPwmCreate, RPI_pinNumbering
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sTS#1#"+string(pin)+"#");
    RPI_send();
endfunction
