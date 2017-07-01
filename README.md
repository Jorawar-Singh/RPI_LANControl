# RPI_LANControl

Toolbox: RPI_LANControl

Title: Raspberry Pi LAN Control

Summary: RealTime control of Raspberry Pi connected via LAN

Version: 1.0

Author: Jorawar Singh

Maintainer: Jorawar Singh <jjchandi.singh@gmail.com>

Category: Hardware

License: CeCILL, GPL-3.0

ScilabVersion: >= 5.3

Date: 1-07-2017

Description: RPI_LANControl is a tool to control the Raspberry Pi available on the local 
	     network, and the hardware connected to it, directly from the scilab console.

It requires:
  Linux  	- python, ssh
  Windows	- python, ssh via cygwin
  Raspberry Pi	- wiringpi python wrappper

RPI_LANControl requires ssh to initiate the communication and python for subsequent control.

One can bypass the need of ssh by manually running the python script, as sudo,(availbale in the etc folder of the root directory) on the Pi. Doing so requires that you DON'T run the raspi() function for connection but DO run the RPI_adress() function for working of the toolbox.
 
The basic implementation uses the python wrapper of wiringpi to run commands on the Pi.
The setup initiates a python server on the Pi at port 9077. All the consecutive commands sends an encoded string to the server which decodes and performs the tasks accordingly and returns the result to scilab.

install RPI_LANControl
 exec builder.sce
load toolbox in scilab
 exec loader.sce
 
IMPORTANT: After connecting to the Pi, either via raspi() or manually (after executing RPI_adress()),
           the first command should always be RPI_pinNumbering().

LIMITATIONS: As of now, many of the funcntions in the toolbox are untested, for the 
             unavailability of required hardware. Write back to the author with any
             peculiar outputs that you may recieve for the untested functions.
List of unverified functions: I2c, Serial, expansion chips/ICs, analog, gertboard, piGlow,
                              128x64 LCD, pwm, soft_pwm, tone, soft_tone
