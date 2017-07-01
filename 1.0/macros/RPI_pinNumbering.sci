// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_pinNumbering(pinSetup)
// Function to initialize wiringpi with the number sequence to be followed.
//
// Calling Sequence
//  RPI_pinNumbering(pinSetup)
//
// Parameters
//  pinSetup: The pin number sequence to follow
//
// Description
//  This function must be called at the start of the program or the program will fail to work correctly. It tells the wiringpi which number sequence will be used to work on Raspberry Pi. Returns 0 if no errors encountered. Pin maps for the different pinSetups can be found at the link in bibliography.
//
//  pinSetup can take the following values:
//  <itemizedlist>
//  <listitem>'wiringpi' -> This initialises wiringPi and assumes that the calling program is going to be using the wiringPi pin numbering scheme. This is a simplified numbering scheme which provides a mapping from virtual pin numbers to the real underlying Broadcom GPIO pin numbers.</listitem>
//  <listitem>'GPIO'     -> Same as above, however it allows the calling programs to use the Broadcom GPIO pin numbers directly with no re-mapping.</listitem>
//  <listitem>'phys'     -> Identical to above, however it allows the calling programs to use the physical pin numbers on the P1 connector only.</listitem>
//  </itemizedlist>
//
// Examples
//  RPI_pinNumbering('wiringpi')
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    if (pinSetup=='wiringpi') then
        RPI_commande("pN0#0#");
        out=RPI_send();
    elseif (pinSetup=='GPIO') then
        RPI_commande("pN1#0#");
        out=RPI_send();
    elseif (pinSetup=='sys') then
        RPI_commande("pN2#0#");
        out=RPI_send();
    elseif (pinSetup=='phys') then
        RPI_commande("pN3#0#");
        out=RPI_send();
    else
        disp("pinSetup should be one of wiringpi/GPIO/sys/phys")
//    elseif (pinSetup=='piface') then
//        RPI_commande("pN4");
//        out=RPI_send();
    end
endfunction
