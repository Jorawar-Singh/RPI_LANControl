// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_piGlowRing(ring,intensity)
// Function to modify a full ring of LEDs on the piGlow  
//
// Calling Sequence
//  RPI_piGlowRing(ring,intensity)
//
// Parameters
//  ring     : ring number
//  intensity: brightness from 0 (off) to 255 (full)
//
// Description
//  This function modifies the brightness of all the LEDs in the single specified ring of piGlow.  
//
// Examples
//  RPI_piGlowRing(1,200)
// See also
//  RPI_piGlowLeg, RPI_piGlow1, RPI_piGlowSetup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("pGR#2#"+string(ring)+"#"+string(intensity)+"#");
    RPI_send()
endfunction
