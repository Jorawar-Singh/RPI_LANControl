// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_boardRev()
// Function to print the board revision.
//
// Calling Sequence
//  rev=RPI_boardRev()
//
// Description
//  This function returns the board revision of the Raspberry Pi. Returns either 1 or 2.
//
// Examples
//  rev=RPI_boardRev()
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("bRv#0#");
    out=RPI_send();
endfunction
