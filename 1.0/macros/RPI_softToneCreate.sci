// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_softToneCreate(pin)
// Function to create a software controlled tone pin
//
// Calling Sequence
//  RPI_softToneCreate(pin)
//
// Parameters
//  pin: pin to create software tone on. Numbering sequence to be followed as initiated using RPI_pinNumbering
//
// Description
//  This function creates a software controlled tone pin. Any GPIO pin can be used. Using 100 for the range, the value can be anything from 0 (off) to 100 (fully on) for the given pin.
//
//The return value is 0 for success. Otherwise the global error number variable should be checked to see what went wrong.
//
//
// Examples
//  RPI_softToneCreate(1)
// See also
//  RPI_softPwmStop, RPI_softPwmWrite, RPI_softToneStop, RPI_softToneWrite, RPI_softPwmCreate, RPI_pinNumbering
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sTC#1#"+string(pin)+"#");
    RPI_send();
endfunction
