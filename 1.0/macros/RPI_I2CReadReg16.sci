// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_I2CReadReg16(fd,reg)
// Function to read 16-bit valu from the register
//
// Calling Sequence
//  RPI_I2CReadReg16(fd,reg)
//
// Parameters
//  fd : file descriptor obtained from RPI_I2CSetup
//  reg: integer register to read data from
//
// Description
//  This function reads a 16-bit value from the device register indicated.
//
// Examples
//  RPI_I2CReadReg16(13,0x40)
// See also
//  RPI_i2cdetect, RPI_I2CRead, RPI_I2CReadReg8, RPI_I2CWrite, RPI_I2CWriteReg8, RPI_I2CWriteReg16, RPI_I2CSetupInterface, RPI_I2CSetup
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("CR3#2#"+string(fd)+"#"+string(reg)+"#");
    out=RPI_send();
endfunction
