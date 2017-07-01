// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_piGlowSetup(Empty)
// Function to initialize the piGlow board
//
// Calling Sequence
//  RPI_piGlowSetup(Empty)
//
// Parameters
//  Empty: integer, 0 or 1. If 1, then all the LEDs will be turned off to start with.
//
// Description
//  This initialises the PiGlow devLib software. The I2C kernel module needs to be pre-loaded. ThePiGlow board has an SN3218 I2C LED controller and 18 LEDs arranged in 3 “legs” of 6 LEDs. (or 6 “rings” of 3 LEDs).
//
// The LED colours in each leg match and are in the order Red (at the outside), Yellow, Orange, Green, Blue and White (in the center)
//
// Examples
//  RPI_piGlowSetup(TRUE)
// See also
//  RPI_piGlowLeg, RPI_piGlow1, RPI_piGlowRing
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pGS#1#"+string(Empty)+"#");
    RPI_send()
endfunction
