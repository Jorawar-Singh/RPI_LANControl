//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010-2010 - DIGITEO - Bruno JOFRET
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
//

demopath = get_absolute_file_path("PiLAN.dem.gateway.sce");

subdemolist =["Initiate Connection to Raspberry Pi","raspi.dem.sce";
"Close Connection to Raspberry Pi","raspi_close.dem.sce";
"Alternate requirement (manual and non-ssh)","RPI_adress.dem.sce";
"pin Numbering Sequence","RPI_pinNumbering.dem.sce";
"pin Mode","RPI_pinMode.dem.sce";
"Alternate pin Modes","RPI_pinModeAlt.dem.sce";
"Get Alternate pin Mode","RPI_getAlt.dem.sce";
"Board Revision","RPI_boardRev.dem.sce";
"Digital Read","RPI_digitalRead.dem.sce";
"Digital Read 8 bits","RPI_digitalReadByte.dem.sce";
"Digital Write","RPI_digitalWrite.dem.sce";
"Digital Write 8 bits","RPI_digitalWriteByte.dem.sce";
"Millisecond Delay","RPI_delay.dem.sce";
"Microsecond Delay","RPI_delayMicro.dem.sce";
"Priority","RPI_priority.dem.sce";
"Internal Resistance pull Control","RPI_pullControl.dem.sce";
"Analog Read","RPI_analogRead.dem.sce";
"Analog Write","RPI_analogWrite.dem.sce";
"Runtime in microseconds","RPI_micros.dem.sce";
"Runtime in milliseconds","RPI_millis.dem.sce";
"Physical to BCM pin Mapping","RPI_physToGpio.dem.sce";
"WiringPi to BCM pin Mapping","RPI_wpiToGpio.dem.sce";
"LCD Clear","RPI_lcdClear.dem.sce";
"LCD Cursor Visibility","RPI_lcdCursor.dem.sce";
"LCD Cursor Blink","RPI_lcdCursorBlink.dem.sce";
"LCD Display","RPI_lcdDisplay.dem.sce";
"LCD Home","RPI_lcdHome.dem.sce";
"LCD Initialization","RPI_lcdInit.dem.sce";
"LCD Cursor Position","RPI_lcdPosition.dem.sce";
"LCD Print a string","RPI_lcdPrintf.dem.sce";
"LCD Print a character","RPI_lcdPutchar.dem.sce";
"LCD puts","RPI_lcdPuts.dem.sce";
"LCD send a command","RPI_lcdSendCommand.dem.sce";
"PWM Clock","RPI_pwmClock.dem.sce";
"PWM Mode","RPI_pwmMode.dem.sce";
"PWM Range","RPI_pwmRange.dem.sce";
"PWM Tone Write","RPI_pwmToneWrite.dem.sce";
"PWM Write","RPI_pwmWrite.dem.sce";
"software PWM Create","RPI_softPwmCreate.dem.sce";
"software PWM Stop","RPI_softPwmStop.dem.sce";
"software PWM Write","RPI_softPwmWrite.dem.sce";
"software Tone Create","RPI_softToneCreate.dem.sce";
"software Tone Stop","RPI_softToneStop.dem.sce";
"software Tone Write","RPI_softToneWrite.dem.sce";
"serial Close","RPI_serialClose.dem.sce";
"serial Available Data","RPI_serialDataAvail.dem.sce";
"serial Flush","RPI_serialFlush.dem.sce";
"serial get Character","RPI_serialGetchar.dem.sce";
"serial Open","RPI_serialOpen.dem.sce";
"serial Print","RPI_serialPrintf.dem.sce";
"serial Print a Character","RPI_serialPutchar.dem.sce";
"serial Puts","RPI_serialPuts.dem.sce";
"System i2cdetect","RPI_i2cdetect.dem.sce";
"I2C Read","RPI_I2CRead.dem.sce";
"I2C Read Register 16","RPI_I2CReadReg16.dem.sce";
"I2C Read Register 8","RPI_I2CReadReg8.dem.sce";
"I2C Setup","RPI_I2CSetup.dem.sce";
"I2C Setup Interface","RPI_I2CSetupInterface.dem.sce";
"I2C Write","RPI_I2CWrite.dem.sce";
"I2C Write Register 16","RPI_I2CWriteReg16.dem.sce";
"I2C Write Register 8","RPI_I2CWriteReg8.dem.sce";
"I2C based LED Controller","RPI_sn3218Setup.dem.sce";
"SPI Data Read/Write","RPI_SPIDataRW.dem.sce";
"SPI Setup","RPI_SPISetup.dem.sce";
//"RPI_commande","RPI_commande.dem.sce";
"Gertboard Analog Read","RPI_gertboardAnalogRead.dem.sce";
"Gertboard Analog Setup","RPI_gertboardAnalogSetup.dem.sce";
"Gertboard Analog Write","RPI_gertboardAnalogWrite.dem.sce";
"Gertboard SPI Setup","RPI_gertboardSPISetup.dem.sce";
"128x64LCD Orientation","RPI_lcd128x64Orientation.dem.sce";
"128x64LCD Circle","RPI_lcd128x64circle.dem.sce";
"128x64LCD Clear","RPI_lcd128x64clear.dem.sce";
"128x64LCD Ellipse","RPI_lcd128x64ellipse.dem.sce";
"128x64LCD Line","RPI_lcd128x64line.dem.sce";
"128x64LCD Line to","RPI_lcd128x64lineTo.dem.sce";
"128x64LCD Point","RPI_lcd128x64point.dem.sce";
"128x64LCD Puts","RPI_lcd128x64puts.dem.sce";
"128x64LCD Rectange","RPI_lcd128x64rectangle.dem.sce";
"128x64LCD set origin","RPI_lcd128x64setOrigin.dem.sce";
"128x64LCD Setup","RPI_lcd128x64setup.dem.sce";
"128x64LCD custom Character define","RPI_lcdCharDef.dem.sce";
"shift register","RPI_sr595Setup.dem.sce";
"8-bit I2C GPIO Expansion chip","RPI_mcp23008Setup.dem.sce";
"8-bit SPI GPIO Expansion chip","RPI_mcp23s08Setup.dem.sce";
"8-bit GPIO expander IC","RPI_pcf8574Setup.dem.sce";
"8-bit Analog expander IC","RPI_pcf8591Setup.dem.sce";
"16-bit I2C GPIO Expansion chip","RPI_mcp23016Setup.dem.sce";
"16-bit I2C GPIO Expansion chip","RPI_mcp23017Setup.dem.sce";
"16-bit SPI GPIO Expansion chip","RPI_mcp23s17Setup.dem.sce";
"PiGlow single LED","RPI_piGlow1.dem.sce";
"PiGlow Leg LEDs","RPI_piGlowLeg.dem.sce";
"PiGlow Ring LEDs","RPI_piGlowRing.dem.sce";
"PiGlow Setup","RPI_piGlowSetup.dem.sce";
//"shift In","RPI_shiftIn.dem.sce";
//"shift Out","RPI_shiftOut.dem.sce";
//"pad Drive","RPI_padDrive.dem.sce";
//"RPI_send","RPI_send.dem.sce";
//"Multithread lock","RPI_lock.dem.sce";
//"multithreading Unlock","RPI_unlock.dem.sce";
"wait for interrupt","RPI_waitForInterrupt.dem.sce"];
//"interrupt register to a function","RPI_wiringPiISR.dem.sce"];

subdemolist(:,2) = demopath + subdemolist(:,2);
