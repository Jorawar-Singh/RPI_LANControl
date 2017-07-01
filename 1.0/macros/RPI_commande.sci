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

function RPI_commande(commande)
// Function to facilitate the toolbox. Not for open use by the user.
//
// Calling Sequence
//  RPI_commande(commande)
//
// Parameters
//  commande: The command to be sent to the server via the TCP/IP connection.
//
// Description
//  This funtion is not for open use by the user, unless the user knows what he/she is doing. The function is used by the other functions of the toolbox. The function writes a 'commande.py' file to be run using the RPI_send function. The commande is written using a pre-defined encoding scheme.
//
// Examples
//  RPI_commande("diR#1#0#")
// See also
//  RPI_send
//
// Authors
//  Jorawar Singh

    adr=mopen(RPI_MacrosPath+"adress.txt","r");
    adress=mgetl(adr);
    mclose(adr);
    fd_w=mopen(RPI_MacrosPath+"commande.py","w");
    mputl("# Copyright (C) 2017 - IIT Bombay - FOSSEE",fd_w);
    mputl("# This file must be used under the terms of the CeCILL.",fd_w);
    mputl("# This source file is licensed as described in the file COPYING, which",fd_w);
    mputl("# you should have received as part of this distribution.  The terms",fd_w);
    mputl("# are also available at",fd_w);
    mputl("# http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt",fd_w);
    mputl("# Author: Jorawar Singh",fd_w);
    mputl("# Organization: FOSSEE, IIT Bombay",fd_w);
    mputl("# Email: toolbox@scilab.in",fd_w);
    mputl("",fd_w);
    mputl("import socket",fd_w);
    mputl("s=socket.socket()",fd_w);
    mputl("s.connect(("""+adress+""",9077))",fd_w);
    mputl("s.send("""+commande+""")",fd_w);
    mputl("print s.recv(1024)",fd_w);
    mputl("s.close()",fd_w);
    mclose(fd_w);
endfunction
