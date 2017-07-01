// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_waitForInterrupt(pin,timeOut)
// Function to set a pin to wait for interrupt.
//
// Calling Sequence
//  i=RPI_waitForInterrupt(pin,timeOut)
//
// Parameters
//  pin    : The pin to check for interrupt. Numbering sequence to be followed as initiated using RPI_pinNumbering function.
//  timeOut: The time (in milliseconds) for which to wait for interrupt. -1 to wait forever.
//
// Description
//  When called, it will wait for an interrupt event to happen on that pin and the program will be stalled. The return value is -1 if an error occurred (and errno will be set appropriately), 0 if it timed out, or 1 on a successful interrupt event.
//
//  Before using RPI_waitForInterrupt, first initialise the GPIO pin and at present the only way to do this is to use the gpio program, either in a script, or using the system() call from inside the program.
//  Eg: To wait for a falling-edge interrupt on GPIO pin 0, setup the hardware using (before running the program):
// 	gpio edge 0 falling
//
// Examples
//  i=RPI_waitForInterrupt(0,5000)
// See also
//  
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("Int#2#"+string(pin)+"#"+string(timeOut)+"#");
    out=RPI_send();
endfunction
