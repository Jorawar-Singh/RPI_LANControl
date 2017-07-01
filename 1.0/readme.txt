	RPI_LANControl - Raspberry Pi's LAN Control
       =============================================

About
------
This toolbox enables the control of Raspberry Pi available on Local Network, and the devices connected to it, directly from the scilab console.

Dependencies
--------------
Scilab		>= 5.2 (http://www.scilab.org/)
wiringpi	: Python wrapper of wiringpi on Raspberry pi
Python		>= 2.7 (https://www.python.org)
mintty		: Windows only. Provided by cygwin (https://www.cygwin.com)


Important (after installation):
----------------------------------
There are two ways to start the communication with the Pi:
1. From scilab using raspi() function.
	1. Run raspi() function to start communication channel
	2. Run RPI_pinNumbering() function for proper functioning of toolbox

2. Manually running the server 'serverWP.py' (available in etc directory for the toolbox) on the Pi.
	1. Run RPI_adress() function. This is required for toolbox to work after manual setup.

Limitations
-------------
1. For now, only one Raspberry Pi can be controlled at a time
2. Not all functions of the toolbox have been tesetd due to unavailability of the hardware.
The list of untested functions relate to: 
	I2C, Serial, expansion chips/ICs, analog, gertboard, piGlow, 128x64 LCD, pwm, soft_pwm,
	tone, soft_tone

3. If you recieve an error "Connection refused", the server has stopped. Restart manually or using the raspi() function again.
Such crashes are generally caused when a hardware is used without initialising:
	example: using RPI_lcdHome without initiating the LCD using RPI_lcdInit

TODO
------
Test the untested functions.
Increase the number of functions.
Capability for multiple pi connections

Bugs
------
Bugs can be communicated to
Jorawar Singh<jjchandi.singh@gmail.com>
