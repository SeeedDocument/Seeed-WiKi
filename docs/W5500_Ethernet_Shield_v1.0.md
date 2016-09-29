---
title: W5500 Ethernet Shield v1.0
category: Arduino
bzurl: https://www.seeedstudio.com/W5500-Ethernet-Shield-p-2433.html
oldwikiname: W5500_Ethernet_Shield_v1.0
prodimagename: W5500.jpg
bzprodimageurl: https://statics3.seeedstudio.com/upload/master/img/20160519080008-2ccc2b.JPG
surveyurl: https://www.research.net/r/W5500_Ethernet_Shield_v1_0
sku: 103030021
---

![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500.jpg)

The W5500 Ethernet Shield v1.0 can be used to provide your projects with internet connectivity. W5500 enables users to have the Internet connectivity in their applications just by using the single chip in which TCP/IP stack, 10 / 100 Ethernet MAC and PHY embedded. The shield also has two Grove connectors and a microSD card socket to support projects which require storing large amounts of data from Grove sensor. The RJ45 port (where the Ethernet cable is connected to) is low enough to allow you to stack more shields on top of this one if needed.

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](https://www.seeedstudio.com/W5500-Ethernet-Shield-p-2433.html)

Features
--------

-   Supports Hardwired TCP/IP Protocols : TCP, UDP, ICMP, IPv4, ARP, IGMP, PPPoE
-   Supports 8 independent sockets simultaneously
-   Supports Power down mode
-   Supports Wake on LAN over UDP
-   Supports High Speed Serial Peripheral Interface(SPI MODE 0, 3)
-   Internal 32Kbytes Memory for TX/RX Buffers
-   10BaseT/100BaseTX Ethernet PHY embedded
-   Supports Auto Negotiation (Full and half duplex, 10 and 100\* based )
-   Not supports IP Fragmentation
-   3.3V operation with 5V I/O signal tolerance
-   LED outputs (Full/Half duplex, Link, Speed, Active)
-   Micro-SD card socket
-   Grove connector for I2C and UART

Hardware Overview
-----------------

![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500_Interface.jpg)

**Hardware Configuration**

①：RJ45： Ethernet Port;

②：IC W5500： a hardwired TCP/IP Ethernet Controller;

③：Reset Button： Reset Ethernet shield ;

④：SD Card Socket： support Micro SD card in FAT16 or FAT32; maximum storage is 2GB.

⑤：I2C Interface

⑥：UART Interface

**Pins usage on Arduino**

D4： SD card chip select

D10： W5200 Chip Select

D11： SPI MOSI

D12： SPI MISO

D13： SPI SCK

<div class="admonition note">
<p class="admonition-title">Note</p>
Both W5500 and SD card communicate with Arduino via SPI bus. Pin 10 and pin 4 are chip select pins for W5500 and SD slot. They cannot be used as general I/O.
</div>

Usage
-----

We will show a example.This example can upload your sensor data to [Xively](https://xively.com/) and store it up to SD Card.

### Hardware

**Part List:**

- Seeeduino
- W5500 Ethernet Shield
- Grove - Temperature
- Micro SD Card

**Procedure:**

1. Mount W5500 Ethernet Shield v1.0 to your Arduino and connect Grove - Temperature to I2C Grove port.

2. Connect the shield to network with a standard Ethernet cable;

3. Connect Arduino to PC via USB cable;

![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500_Usage.jpg)

### Software

1. If you haven't an account,you should Register an account in [xively](https://xively.com/signup) and login.

2. Now,we can click Develop to add a device.
![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500_Add_device.jpg)

3. Download the library：[W5500 Ethernet Shield v1.0 Library](https://github.com/Wiznet/WIZ_Ethernet_Library).

4. Unzip and put it in the libraries file of Arduino IDE by the path: ..\arduino-1.0.1\libraries.

5. Restart the Arduino IDE.

6. Open the example "Ethernet_Temp_SD" via the path: File --> Examples --> Ethernet --> Ethernet_Temp_SD. you need to modify some parameters.
![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500_Data.jpg)

7. Upload the program to Arduino. If you do not know how to upload code, please click [here](/Download_Arduino_and_install_Arduino_driver).

### Results

Now, we will show result.

1. Put your SD card into the computer,you will see some temperature information.

2. Open Serial Monitor,you will see some temperature information.

3. What's more, we can see information from web.

![](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/img/W5500_Serial.jpg)

Isn't it very easy? You can begin your project.

Resources
---------

- [W5500 Ethernet Shield Library](https://github.com/Wiznet/WIZ_Ethernet_Library)
- [W5500 Ethernet Shield eagle files](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/res/W5500_Ethernet_Shield_v1.0.zip)
- [W5500 Ethernet Shield Datasheet.pdf](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/res/W5500_datasheet_v1.0.2.pdf)
- [W5500 Ethernet Shield Schematic.pdf](https://raw.githubusercontent.com/SeeedDocument/W5500_Ethernet_Shield_v1.0/master/res/W5500_Ethernet_Shield_v1.0.pdf)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/W5500_Ethernet_Shield_v1.0 -->
