// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_wpiToGpio(pin)
// Function to check the GPIO pin number corresponding to given wiringpi pin number.
//
// Calling Sequence
//  p=RPI_wpiToGpio(pin)
//
// Parameters
//  pin: The pin number to check in wiringpi numbering sequence.
//
// Description
//  This funtion return the GPIO pin number corresponding to the supplied wiringpi pin number.
//
// Examples
//  p=RPI_wpiToGpio(0)
// See also
//  RPI_physToGpio
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("wtG#1#"+string(pin)+"#");
    out=RPI_send()
endfunction
