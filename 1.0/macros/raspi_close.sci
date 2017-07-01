// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function raspi_close()
// Function to close an open Raspberry-Pi connection.
//
// Calling Sequence
//  raspi_close()
//
// Description
//  This function causes the pyhton server script running on Raspberry pi to close, irrespective of it being started natively on pi or by using raspi function.
//
// Examples
//  raspi_close()
// See also
//  raspi
//
// Authors
//  Jorawar Singh

    RPI_commande("cls#0#");
    RPI_send();
endfunction
