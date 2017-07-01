// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_lcd128x64line(x0,y0,x1,y1,color)
// Function to plota line.
//
// Calling Sequence
//  RPI_lcd128x64line(x0,y0,x1,y1,color)
//
// Parameters
//  x0   : integer, initial x coordinate
//  y0   : integer, initial y coordinate
//  x1   : integer, final x coordinate
//  y1   : integer, final y coordinate
//  color: integer, color of the line
//
// Description
//  This function plots a line from (x0,y0) to (x1,y1).
//
// Examples
//  RPI_lcd128x64line(0,0,1,1,0)
// See also
//  RPI_lcd128x64setup, RPI_lcd128x64update, RPI_lcd128x64setOrigin, RPI_lcd128x64Orientation, RPI_lcd128x64orientCoord, RPI_lcd128x64ScreenSize, RPI_lcd128x64point, RPI_lcd128x64line, RPI_lcd128x64lineTo, RPI_lcd128x64rectangle, RPI_lcd128x64circle, RPI_lcd128x64ellipse, RPI_lcd128x64putchar, RPI_lcd128x64puts, RPI_lcd128x64clear, RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("Lli#5#"+string(x0)+"#"+string(y0)+"#"+string(x1)+"#"+string(y1)+"#"+string(color)+"#");
    out=RPI_send();
endfunction
