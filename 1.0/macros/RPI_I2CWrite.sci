// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_I2CWrite(fd,data)
// Function to write to device
//
// Calling Sequence
//  RPI_I2CWrite(fd,data)
//
// Parameters
//  fd  : file descriptor obtained from RPI_I2CSetup
//  data: integer data to write to device
//
// Description
//  Function for simple device write. Some devices accept data this way without needing to access any internal registers.
//
// Examples
//  RPI_I2CWrite(13,100)
// See also
//  RPI_i2cdetect, RPI_I2CRead, RPI_I2CReadReg8, RPI_I2CReadReg16, RPI_I2CWriteReg8, RPI_I2CWriteReg16, RPI_I2CSetupInterface, RPI_I2CSetup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("CW1#2#"+string(fd)+"#"+string(data)+"#");
    RPI_send();
endfunction
