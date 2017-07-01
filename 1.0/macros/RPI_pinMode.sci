// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in


function RPI_pinMode(pin,Mode)
// Function to set the mode of the given pin.
//
// Calling Sequence
//  RPI_pinMode(pin,Mode)
//
// Parameters
//  pin : The pin number to act on. Numbering sequence to be followed as initiated using RPI_pinNumbering function.
//  Mode: The mode in which to set the pin.
//
// Description
//  This function configures the Raspberry Pi's given pin to work as the given mode (input/output/pwm/clock). Not all functions are available to all the pins.
//
//  Mode can take the following values-
//  <itemizedlist>
//  <listitem><para>'in'    -> sets the pin as input</para></listitem>
//  <listitem><para>'out'   -> sets the pin as output</para></listitem>
//  <listitem><para>'pwm'   -> sets the pin to PWM output. Only wiringPi pin 1 (BCM_GPIO pin 18) supports this function.</para></listitem>
//  <listitem><para>'clock' -> sets the pin to CLOCK output. Only wiringPi pin 7 (BCM_GPIO pin 4) supports this function.</para></listitem>
//  </itemizedlist>
//
// Examples
//  RPI_pinMode(0,'out')
// See also
//  RPI_pinNumbering
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    if Mode=='in' then
        RPI_commande("pnM#2#"+string(pin)+"#0#");
        RPI_send();
    elseif  Mode=='out' then
        RPI_commande("pnM#2#"+string(pin)+"#1#");
        RPI_send();
    elseif  Mode=='pwm' then
        RPI_commande("pnM#2#"+string(pin)+"#2#");
        RPI_send();
    elseif  Mode=='clock' then
        RPI_commande("pnM#2#"+string(pin)+"#3#");
        RPI_send();
    else
        disp("Mode should be one of ""in/out/pwm/clock/soft_pwm/soft_tone/pwm_tone"".");
    end
endfunction
