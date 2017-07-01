// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_digitalRead(pin)
// Function to read the digital voltage at the given pin
//
// Calling Sequence
//  v=RPI_digitalRead(pin)
//
// Parameters
//  pin: The pin number to read the voltage from. Numbering sequence to be followed as initiated using RPI_pinNumbering function.
//
// Description
//  This funtion reads the digital voltage at the given pin. Returns a 0 (for low) and 1 (for high). 
//  Note: pin should be set for input mode using RPI_pinMode. The function will also return 0/1 corresponding to what the voltage is set for an output pin.
//
// Examples
//  v=RPI_digitalRead(0)
// See also
//  RPI_analogWrite, RPI_analogRead, RPI_digitalWrite, RPI_pinNumbering, RPI_pinMode
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("diR#1#"+string(pin)+"#");
    out=RPI_send();
endfunction
