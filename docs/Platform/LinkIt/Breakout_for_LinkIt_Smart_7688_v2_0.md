#Breakout for LinkIt Smart 7688 v2.0
----
##Introduction

**Breakout for LinkIt Smart 7688 v2.0** is a Grove port integrated expansion board for LinkItTM Smart 7688 development board. This breakout board will save a lot of work and makes prototyping easier through simplified wiring. It will assist a beginner to get started fast. It supports serial buses like I2C, UART. It comes with USB, Ethernet, and 3.5mm Audio ports.

###Version Tracker

|Product reversion | Release date |Support status |Notes                  |
|------------------|--------------|---------------|-----------------------|
|Version 1.0       |November 2015 |Supported      |	None                  |
|Version 2.0       |April 2016	  |Supported      | Refer to New Features |
    

###New features:

* Support recording functionality
* For 3.5 mm phone connector (audio jack), it supports the protocol OMTP and CTIA. You can use either protocol by switching a switch. About how to switch protocol, we will describe it later.
Get One Now Banner.png

##Features

* Grove interface makes wiring easier and allows expansions with Grove modules.
* USB host
* Audio Output
* Ethernet port
* Cost-effective

##Application ideas

* IoT/Gateway Device.
* Robotics
* Smart multimedia devices
* Teaching and learning


##Specification

|Input voltage	| 5.0V(With USB Power port) |
|---------------|---------------------------|
|Operating voltage	| 3.3V |
|Debug port	|1(Quantity)|
|Ethernet port	|1(Quantity)|
|USB type-A	|1(Quantity)|
|Headset port|	1(Quantity)|

!!!note
	Debug pins, Ethernet pins and USB type-A host pins connect with MT7688, other pins connect with ATmega32U4.

##Hardware Overview

![](https://github.com/SeeedDocument/Breakout_for_LinkIt_Smart_7688_v2_0/blob/master/image/Breakout_for_LinkIt_Smart_7688_v2.0_hardware_connections_1200_s.jpg?raw=true)

###Grove interface

Connect rich [Grove](http://www.seeedstudio.com/wiki/Grove_System) interfaced functional modules. With this kind of ports, you never need jumper wire or soldering work, and you can make more powerful applications with those functional modules.

**To switch phone connector protocol between OMTP and CTIA**

![](https://github.com/SeeedDocument/Breakout_for_LinkIt_Smart_7688_v2_0/blob/master/image/Breakout_for_LinkIt_Smart_7688_v2.0_switch_procotol_1200_.jpg?raw=true)


In preceded figure, you can notice that there are six pins and two jumper caps on bottom-right corner. These pins are used to switch phone connector protocol. As you set tiny jumper(both) to left-four pin, protocol OMTP is used. As you set tiny jumper(both) to right-four pin (as preceded figure shows), protocol CTIA is used. As following figures show:
Breakout for LinkIt Smart 7688 v2.0 CTIA OMTP Switch Manner.JPG
Note that to use the recording functionality, you need to update on-board firmware to Breakout for LinkIt Smart 7688 firmware(above version v0.9.2).

![](https://github.com/SeeedDocument/Breakout_for_LinkIt_Smart_7688_v2_0/blob/master/image/Breakout_for_LinkIt_Smart_7688_v2.0_CTIA_OMTP_Switch_Manner.JPG?raw=true)

!!!note
	We recommend you use external storage device, because the Write/Read speed of on-board flash memory is limited.

###Parts list

|Parts name	                        |Quantity|
|-----------------------------------|--------|
|Breakout for LinkIt Smart 7688 v2.0|1PCS    |


##Get started

###Material required
- LinkIt Smart 7688 × 1
- USB cable (type A to micro type-B) × 2
- USB to Serial adapter × 1
- Jumper wires × 3
- Stereo (with 3.5 mm audio cable) × 1
- USB flash driver (with audio file of MP3 format inside) × 1

###Play music
1. Refer here to connect your LinkIt Smart 7688 to Internet.


!!!note
    You can plug jumper wires to MT7688 UART2 port instead soldering them to Pin 8, Pin 9 and Pin GND.

!!!note
    In rare cases, you might not connect to Internet successfully, reboot the embedded OS.

2. Open a console with USB to Serial adapter.
3. Connect all parts like follows:

![](https://github.com/SeeedDocument/Breakout_for_LinkIt_Smart_7688_v2_0/blob/master/image/Breakout_for_LinkIt_Smart_7688_demo_connection_1200.jpg?raw=true)

!!!note
    This is a figure of Breakout for LinkIt Smart 7688(v1.0).

4. Enter folder of USB by type **cd /Media/USB-A1** in console.
5. Play music with utility **Madplay**(installed on OpenWRT) by typing **madplay filename.mp3** into console.
6. Now you will hear the music.

##Resources

* [Schematic files](http://www.seeedstudio.com/wiki/images/4/41/Breakout_for_LinkIt_Smart_7688_v2.0_schematic_files.zip)
* [LinkIt smart 7688](http://www.seeedstudio.com/wiki/LinkIt_Smart_7688)
* [OpenWrt](http://wiki.openwrt.org/doc/howto/user.beginner)
* [Link to buy a LinkIt Smart 7688](http://www.seeedstudio.com/depot/LinkIt-Smart-7688-p-2573.html?cPath=122_142)