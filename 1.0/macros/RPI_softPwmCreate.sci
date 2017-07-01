// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_softPwmCreate(pin,ival,pwmrange)
// Function to set up software pwm on a given pin
//
// Calling Sequence
//  RPI_softPwmCreate(pin,ival,pwmrange)
//
// Parameters
//  pin     : pin to start software pwm on. Numbering sequence to follow as initiated using RPI_pinNumbering function
//  ival    : inital value
//  pwmrange: range for the pwm
//
// Description
//  This function creates a software controlled PWM pin. Any GPIO pin can be used. Using 100 for the range, the value can be anything from 0 (off) to 100 (fully on) for the given pin.
//
//The return value is 0 for success. Otherwise the global error number variable should be checked to see what went wrong.
//
// Examples
//  RPI_softPwmCreate(1,25,250)
// See also
//  RPI_softPwmStop, RPI_softPwmWrite, RPI_softToneCreate, RPI_softToneStop, RPI_softToneWrite, RPI_pinNumbering
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sPC#3#"+string(pin)+"#"+string(ival)+"#"+string(pwmrange)+"#");
    out=RPI_send();
endfunction
