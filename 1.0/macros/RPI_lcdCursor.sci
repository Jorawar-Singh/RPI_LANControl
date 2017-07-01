// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_lcdCursor(fd,state)
// Function to turn cursor on/off
//
// Calling Sequence
//  RPI_lcdCursor(fd,state)
//
// Parameters
//  fd   : file-descriptor obtained using RPI_lcdInit function  
//  state: 0 (for off) or 1 (for on)
//
// Description
//  This function sets the visibility of cursor.
//
// Examples
//  RPI_lcdCursor(13,1)
// See also
//  RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdDisplay, RPI_lcdHome, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("lCu#2#"+string(fd)+"#"+string(state)+"#");
    RPI_send();
endfunction
