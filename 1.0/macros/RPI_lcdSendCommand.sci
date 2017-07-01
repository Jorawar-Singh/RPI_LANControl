// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_lcdSendCommand(fd,command)
// Function to send command to lcd
//
// Calling Sequence
//  RPI_lcdSendCommand(fd,command)
//
// Parameters
//  fd     : file-descriptor obtained using RPI_lcdInit function  
//  command: A command, binary, to submit to the LCD.
//
// Description
//  This function sends any arbitrary command to the LCD.
//
// Examples
//  RPI_lcdSendCommand(13,00)
// See also
//  RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdHome, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("lSC#2#"+string(fd)+"#"+string(command)+"#");
    RPI_send();
endfunction
