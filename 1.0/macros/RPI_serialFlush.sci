// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_serialFlush(fd)
// Function to discard all data to/from the serial device
//
// Calling Sequence
//  RPI_serialFlush(fd)
//
// Parameters
//  fd: file-descriptor obtained from RPI_serialOpen function  
//
// Description
//  This function discards all data received, or waiting to be send down the given device.
//
// Examples
//  RPI_serialFlush(13)
// See also
//  RPI_serialOpen, RPI_serialClose, RPI_serialPutchar, RPI_serialPuts, RPI_serialPrintf, RPI_serialDataAvail, RPI_serialGetchar
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sFl#1#"+string(fd)+"#");
    out=RPI_send();
endfunction
