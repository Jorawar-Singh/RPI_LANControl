# Copyright (C) 2017 - IIT Bombay - FOSSEE
# This file must be used under the terms of the CeCILL.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution.  The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
# Author: Jorawar Singh
# Organization: FOSSEE, IIT Bombay
# Email: toolbox@scilab.in

import socket
s=socket.socket()
s.connect(("10.42.0.144",9077))
s.send("pnM#2#0#0#")
print s.recv(1024)
s.close()
