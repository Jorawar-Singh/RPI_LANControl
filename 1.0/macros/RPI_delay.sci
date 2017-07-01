// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_delay(time)
// Function to introduce delay in milliseconds
//
// Calling Sequence
//  RPI_delay(time)
//
// Parameters
//  time: Time in milliseconds for which to pause the program execution.
//
// Description
//  This causes program execution to pause for at least 'time' milliseconds. Due to the multi-tasking nature of Linux it could be longer. The maximum delay is an unsigned 32-bit integer or approximately 49 days.
//
// Examples
//  RPI_delay(1000)
// See also
//  RPI_delayMicro, RPI_micros, RPI_millis
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("deS#1#"+string(time)+"#");
    RPI_send();
endfunction
