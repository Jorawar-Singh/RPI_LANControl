// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_padDrive(Group,value)
// Function to set the 'strength' of the pad drivers for a particular group of pins
//
// Calling Sequence
//  RPI_padDrive(Group,value)
//
// Parameters
//  Group: the group to act on, a number from 0 to 2
//  Value: the strength, from 0 to 7, to set for the group
//
// Description
//  This sets the “strength” of the pad drivers for a particular group of pins. There are 3 groups of pins and the drive strength is from 0 to 7. Do not use this unless you know what you are doing
//
// Examples
//  RPI_padDrive(0,5)
// See also
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pDr#2#"+string(Group)+"#"+string(value)+"#");
    RPI_send();
endfunction
