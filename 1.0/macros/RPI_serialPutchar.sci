// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_serialPutchar(fd,character)
// Function to send a single byte to the serial device
//
// Calling Sequence
//  RPI_serialPutchar(fd,character)
//
// Parameters
//  fd       : file-descriptor obtained from RPI_serialOpen function  
//  character: character to send to the serial device
//
// Description
//  This function sends the single byte to the serial device identified by the given file descriptor.
//
// Examples
//  RPI_serialPutchar(113,'s')
// See also
//  RPI_serialOpen, RPI_serialClose, RPI_serialFlush, RPI_serialPuts, RPI_serialPrintf, RPI_serialDataAvail, RPI_serialGetchar
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("sPc#2#"+string(fd)+"#"+string(character)+"#");
    out=RPI_send();
endfunction
