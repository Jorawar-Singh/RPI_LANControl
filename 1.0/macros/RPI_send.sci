// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Jorawar Singh
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function output=RPI_send()
// Function to facilitate the toolbox. Not for open use by the user.
//
// Calling Sequence
//  RPI_send()
//
// Description
//  This funtion is not for open use by the user, unless the user knows what he/she is doing. The function is used by the other functions of the toolbox. The function executes the 'commande.py' file written uing the RPI_commande function.
//
// Examples
//  RPI_send()
// See also
//  RPI_commande
//
// Authors
//  Jorawar Singh

    output=TCL_EvalStr("exec python "+RPI_MacrosPath+"commande.py");
endfunction
