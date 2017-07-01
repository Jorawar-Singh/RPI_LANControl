// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_priority(value)
// Function to set the priority for the program.
//
// Calling Sequence
//  RPI_priority(value)
//
// Parameters
//  value: The priority to set. Range 0 to 99, both inclusive. 
//
// Description
//  This function attempts to shift the program (or thread in a multi-threaded program) to a higher priority and enables a real-time scheduling. The priority parameter works relative to others – one can make first program priority 1 and second priority 2 and it will have the same effect as setting first to 10 and the second to 90 (as long as no other programs are running with elevated priorities).
//
//  The return value is 0 for success and -1 for error. If an error is returned, the program should then consult the errno global variable, as per the usual conventions.
//
// Examples
//  RPI_priority(50)
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    if [0<=value,value<100] then
	RPI_commande("pri#1#"+string(value)+"#");
	RPI_send();
    else
	disp("Priority should be between 0 and 99 (both inclusive)")
    end
endfunction
