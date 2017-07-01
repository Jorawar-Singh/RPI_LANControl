// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_piGlowLeg(leg,intensity)
// Function to modify a full leg of LEDs on the piGlow 
//
// Calling Sequence
//  RPI_piGlowLeg(leg,intensity)
//
// Parameters
//  leg      : leg number
//  intensity: brightness from 0 (off) to 255 (full) 
//
// Description
//  This function modifies the brightness of all the LEDs in the single specified leg of piGlow.
//
// Examples
//  RPI_piGlowLeg(0,100)
// See also
//  RPI_piGlow1, RPI_piGlowRing, RPI_piGlowSetup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pGL#2#"+string(leg)+"#"+string(intensity)+"#");
    RPI_send()
endfunction
