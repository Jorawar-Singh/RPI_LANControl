// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_lcdHome(fd)
// Function to send cursor back to the starting point (home)
//
// Calling Sequence
//  RPI_lcdHome(fd)
//
// Parameters
//  fd: file-descriptor obtained using RPI_lcdInit function  
//
// Description
//  This function sends the cursor to the top left (row=0,col=0) position on the lcd screen.
//
// Examples
//  RPI_lcdHome(13)
// See also
//  RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("lHo#1#"+string(fd)+"#");
    RPI_send();
endfunction
