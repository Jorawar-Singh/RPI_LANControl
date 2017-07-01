// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_serialGetchar(fd)
// Function to get next character from serial device
//
// Calling Sequence
//  RPI_serialGetchar(fd)
//
// Parameters
//  fd: file-descriptor obtained from RPI_serialOpen function  
//
// Description
//  This function returns the next character available on the serial device. This call will block for up to 10 seconds if no data is available (when it will return -1).
//
// Examples
//  RPI_serialGetchar(13)
// See also
//  RPI_serialOpen, RPI_serialClose, RPI_serialFlush, RPI_serialPutchar, RPI_serialPuts, RPI_serialPrintf, RPI_serialDataAvail
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sGc#1#"+string(fd)+"#");
    out=RPI_send();
endfunction
