---
title: Wio LTE - 4G, Cat.1
category: Wio_Tracker
bzurl: https://www.seeedstudio.com/Wio-LTE-4G%2C-Cat.1%2C-GNSS%2C-Espruino-Compatible-p-2957.html
prodimagename: wio_tracker_lte_1.jpg
surveyurl: https://www.research.net/r/Wio_LTE_4G_Cat_1_GNSS_Espruino_Compatible
sku: 102990837
---

![](https://github.com/SeeedDocument/Wio_Tracker_LTE/raw/master/img/wio_tracker_lte_1.jpg)


Wio Tracker (Wireless Input Output) is an open source gateway which enable faster IoT GPS solutions. It is Arduino and Grove compatible development boards that helps you track nearly any moving thing on the planet and then upload that data wirelessly. The Wio LTE is the LTE version of Wio Tracker, so now we’ve got 2 versions of Wio Tracker and the LTE (4G) version will make some differences.

There are three main updates comparing the Wio LTE to the 2G version. Firstly, from its name we know that the Wio LTE supports LTE (4G) communication which is much faster and popular than 2G. Secondly, the Wio LTE supports in total 4 different GNSS – GPS, Beidou, GLONSS and Galileo, the QZSS is also supported as bonus. With more GNSS support, positioning will be more accurate. Thirdly, the Wio LTE‘s MCU is upgraded to STM32, which is based on Cortex-M4, makes the Wio LTE 5 times faster than the 2G version. What’s more, the flash and RAM have also been raised to 1Mbytes and 192+4k bytes.

Apart from the three main updates, the LTE version is almost the same as the 2G version. **If your project is using the 2G version, it would be very easy to update to the LTE version because we have prepared transplantable and expansible AT command library.** The Arduino and Grove compatibility allows for quicker development through numerous libraries and a supportive community. The GPS library which will be available with the board is not just limited to Arduino – it can function just as well if you chose to develop in C/C++. With the onboard 6 Grove connections, developers can create any combination of our 180+ sensors and actuators to build project and solve any problem. Simplifying the prototyping and development phase is our goal.

The Wio LTE is well suited for outdoor projects where the device can connect to the GPS satellites and provide a real-time location of the item it is attached to. The LTE provides a wide bandwidth which allows much faster interaction between the user and device. If you are going to build  projects like a bicycle sharing service, tracking pets or livestock, locating a vehicle, or even keeping track of a child, the Wio LTE is the best solution.

!!!Warning
    Please always plug 3.7V Lipo battery in case USB power supply is not sufficient. 


## Features

* Low-cost, low-power LTE connectivity optimized for broad- band IoT applications
* Worldwide LTE and UMTS/HSPA+
* Embedded power management unit (PMU) featuring ultra-low deep-sleep current consumption
* GPS/BeiDou/GLONASS/Galileo and QZSS
* Transplantable and expansible AT Command Library for Wio Tracker
* Arduino IDE compatible
* 6 Grove Connectors
* Nano SIM and TF card 2 in 1 socket


## Specification

| Item|Function|Value|
|--------------|-------------------------------------|-------|
|Microcontroller |Processor|STM32F405RG, ARM 32-bit Cortex-M4, 168MHZ|
||Flash Memory|1MB|
||SRAM|192+4KB|
||Operating Voltage|3.3V|
||DC Current per I/O Pin|7 mA|
|LTE|LTE Cat.1|FDD LTE: B2/B4/B12 WCDMA: B2/B4/B5|
|||AT Command: 3GPP TS27.007 and enhanced AT Commands|
||Data|LTE-FDD Max 10Mbps(DL) Max 5Mbps (UL)|
|||Protocol: TCP/UDP/PPP/FTP/HTTP/SSL/NTP/PING/QMI|
||SMS|Peer to Peer Message, SMS broadcast, Text and PDU mode|
||Audio|Echo cancellation, Noise elimination|
|GNSS|System|GPS/BeiDou/GLONASS/Galileo/QZSS|
||Precision|<2.5 m CEP|
|Peripheral|Grove|2 x Grove Digital Port|
|||2 x Analog Port|
|||1 x UART|
|||1 x I2C|
||Antenna|2 x LTE Antenna|
|||1 x GPS Antenna|
||Others|USB: Power supply and upload program|
|||JST 1.0 connecter for battery|
|||3.5mm Audio Jack|
|||MCU Reset Button, EC21 Power Button|
|||1 x User RGB LED SK6812|
|||Nano SIM and TF card 2 in 1 socket|
|Size|Length|54.7mm|
||Width|48.2mm|
||Weight|||

## Power Consumption
|status|current|
|---|---|
|Normal boot(boot moment)| 700mA |
|After boot(IDLE mode)| 300mA|
|After the boot, the normal communication status (network transmission function)|600mA or so, the peak reaches 2A|
|Call and SMS(signal better)| 100-300mA |
|Deep sleep mode, turn off all functions, require external wake-up (wake only by Reset)|300uA|
|MCU Deep Sleep mode, wake-up pin connected to module, wake-up via module|over 300uA (requires testing)


## Application Ideas

* Pedometer
* Smart ski
* Smart two-wheeler
* Sharing bicycle
* Pet tracking machine
* Children location watch
* Smart watch
* Transportation location system
* Vehicle location system
* Property safety


!!!Tip
    Use Grove modules to expand your application

There are 6 Grove connects on board. If this is your first time to hear about Grove, please put had on [Grove System](http://wiki.seeed.cc/Grove_System/) for more details.
In brief, Groves is hundreds of sensor that in standard style, which is consist of sensors, actuators, displays as well as communication.

## Hardware Overview

![](https://github.com/SeeedDocument/Wio_Tracker_LTE/raw/master/img/wio_tracker_lte_v1._top.png)

![](https://github.com/SeeedDocument/Wio_Tracker_LTE/raw/master/img/wio_tracker_lte_v1_buttom.png)

!!!Tip
    If you want to use the on-board Grove connector, please use digitalWrite(12, HIGH) to open 3V3_B. Otherwise you can't provide power to Grove modules.
