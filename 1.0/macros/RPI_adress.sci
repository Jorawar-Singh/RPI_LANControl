// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

RPI_MacrosPath=get_absolute_file_path("RPI_adress.sci");
RPI_MacrosPath=part(RPI_MacrosPath,1:(length(RPI_MacrosPath)-7));
RPI_MacrosPath=RPI_MacrosPath+'src/python/';
function RPI_adress(adress)
    // Function for non-ssh connection to raspberry pi
    //
    // Calling Sequence
    //  RPI_adress(adress)
    //
    // Parameters
    //  address : Network address of the raspberry pi. Eg:10.42.0.82
    //
    // Description
    //  This program is required for the functioning of the remaining toolbox if the server is manually run by the user.
    //
    // Examples
    //  RPI_adress('10.42.0.82')
    // See also
    //  raspi,raspi_close
    //
    // Authors
    //  Jorawar Singh

    fd_w=mopen(RPI_MacrosPath+"adress.txt","w");
    mputl(adress,fd_w);
    mclose(fd_w);
endfunction
