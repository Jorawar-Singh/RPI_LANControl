// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_lcd128x64Orientation(mode)
// Function to set lcd orientation.
//
// Calling Sequence
//  RPI_lcd128x64Orientation(mode)
//
// Parameters
//  mode: Orientation Mode, integer from 0 to 3
//
// Description
//  This function sets the orientation of the lcd display.
//
//  mode can take values:
//  <itemizedlist>
//  <listitem>0 :Portrait</listitem>
//  <listitem>1 :Landscape</listitem>
//  <listitem>2 :Portrait, flipped</listitem>
//  <listitem>3 :Landscape, flipped</listitem>
//  </itemizedlist>
//
// Examples
//  RPI_lcd128x64Orientation(1)
// See also
//  RPI_lcd128x64setup, RPI_lcd128x64update, RPI_lcd128x64setOrigin, RPI_lcd128x64orientCoord, RPI_lcd128x64ScreenSize, RPI_lcd128x64point, RPI_lcd128x64line, RPI_lcd128x64lineTo, RPI_lcd128x64rectangle, RPI_lcd128x64circle, RPI_lcd128x64ellipse, RPI_lcd128x64putchar, RPI_lcd128x64puts, RPI_lcd128x64clear, RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdPuts, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("LOn#1#"+string(mode)+"#");
    out=RPI_send();
endfunction
