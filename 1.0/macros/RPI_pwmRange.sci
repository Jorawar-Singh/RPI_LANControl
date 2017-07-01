// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_pwmRange(value)
// Function to set the divisor for the PWM clock.
//
// Calling Sequence
//  RPI_pwmRange(value)
//
// Parameters
//  value: maximum of the range for the PWM generator.
//
// Description
//  This function sets the range register in the PWM generator. The default is 1024.
//
// Examples
//  RPI_pwmRange(512)
// See also
//  RPI_pwmMode, RPI_pwmClock, RPI_pwmToneWrite, RPI_pwmWrite
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pwR#1#"+string(value)+"#");
    RPI_send();
endfunction
