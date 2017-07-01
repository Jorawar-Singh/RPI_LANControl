// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_lcdClear(fd)
// Function to clear the lcd screen
//
// Calling Sequence
//  RPI_lcdClear(fd)
//
// Parameters
//  fd: file-descriptor obtained using RPI_lcdInit function
//
// Description
//  This function clears the lcd screen.
//
// Examples
//  RPI_lcdClear(13)
// See also
//  RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdHome, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("lCl#1#"+string(fd)+"#");
    RPI_send();
endfunction
