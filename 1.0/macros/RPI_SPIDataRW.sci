// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_SPIDataRW(channel,data,len)
// Function to perform simultaneous read-write on SPI
//
// Calling Sequence
//  RPI_SPIDataRW(channel,data,len)
//
// Parameters
//  channel: channel number, 0 or 1
//  data   : data to write as list of integers
//  len    : length of the data
//
// Description
//  This performs a simultaneous write/read transaction over the selected SPI bus. Data that was in your buffer is overwritten by data returned from the SPI bus.
//
// Examples
//  RPI_SPIDataRW(0,[13,58],2)
// See also
//  RPI_SPISetup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("SPD#3#"+string(channel)+"#"+string(data)+"#"+string(len)+"#");
    RPI_send();
endfunction
