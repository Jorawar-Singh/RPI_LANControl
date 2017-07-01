// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_serialDataAvail(fd)
// Function to get number of readable character from the serial device
//
// Calling Sequence
//  RPI_serialDataAvail(fd)
//
// Parameters
//  fd: file-descriptor obtained from RPI_serialOpen function  
//
// Description
//  Returns the number of characters available for reading, or -1 for any error condition, in which case error number will be set appropriately.
//
// Examples
//  RPI_serialDataAvail(13)
// See also
//  RPI_serialOpen, RPI_serialClose, RPI_serialFlush, RPI_serialPutchar, RPI_serialPuts, RPI_serialPrintf, RPI_serialGetchar
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sDA#1#"+string(fd)+"#");
    out=RPI_send();
endfunction
