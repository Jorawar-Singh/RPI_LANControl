// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_unlock(key)
// Function to synchronize variable updates from the main program to any threads running in the program
//
// Calling Sequence
//  RPI_unlock(key)
//
// Parameters
//  key: a number from 0 to 3 representing a 'key'
//
// Description
//  This function allows synchronising variable updates from main program to any threads running in the program. When another process tries to lock the same key, it will be stalled until the first process has unlocked the same key.
//
//The function is necessary to ensure valid data retreiveal when exchanging data between the main program and a thread – otherwise it’s possible that the thread could wake-up halfway during data copy and change the data – so the data copied is incomplete, or invalid
//
// Examples
//  PI_THREAD(myThread)
//  {
//    .. thread code
// 	 RPI_lock(0)
//    .. thread code continues
//	 RPI_unlock(0)
//  }
// See also
//  RPI_lock,RPI_threadCreate
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("unl#1#"+string(key)+"#");
    RPI_send();
endfunction
