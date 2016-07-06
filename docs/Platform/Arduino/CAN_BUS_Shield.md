#CAN-BUS Shield
----
##Introduction

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/Can_bus_shield_all.jpg?raw=true)

**CAN-BUS** is a common industrial bus because of its long travel distance, medium communication speed and high reliability. It is commonly found on modern machine tools and as an automotive diagnostic bus. 

This CAN-BUS Shield adopts MCP2515 CAN Bus controller with SPI interface and MCP2551 CAN transceiver to give your Arduino/Seeeduino CAN-BUS capibility. With an OBD-II converter cable added on and the OBD-II library imported, you are ready to build an onboard diagnostic device or data logger.


[![](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](http://www.seeedstudio.com/depot/CANBUS-Shield-V12-p-2256.html)

##Features

- Implements CAN V2.0B at up to **1 Mb/s**
- SPI Interface up to **10 MHz**
- Standard (**11 bit**) and extended (**29 bit**) data and remote frames
- Two receive buffers with prioritized message storage
- Industrial standard 9 pin sub-D connector
- LED indicators

##Hardware Overview

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/hardware_overview_1.png?raw=true)

1. **DB9 Interface** - to connect to OBDII Interface via a DBG-OBD Cable.
2. **V_OBD** - If get power from OBDII Interface(from DB9)
3. **Led Indicator**:
    - **PWR**: power
    - **TX**: blink when the data is sending
    - **RX**: blink when there's data coming
    - **INT**: data interrupt
4. **Terminal** - CAN_H and CAN_L
5. **Arduino UNO pin out**
6. **Serial Grove connector**
7. **I2C Grove connector**
8. **ICSP pins**
9. **IC** - MCP2551, a high-speed can transceiver ([datasheet](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/Mcp2551.pdf))
10. **IC** - MCP2515, stand-alone CAN controller wth SPI interface ([datasheet](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/MCP2515.pdf))


!!!warning
    When you use more than two CAN Bus Shield in one net, you should think about the impedance.
    You can just cut P1 in the PCB with a knife, or just remove R3 on the PCB.

###Pin map

![](https://raw.githubusercontent.com/SeeedDocument/CAN_BUS_Shield/master/image/PINMAP.png)

!!!note
    The pin FREE is available for the others usage. 

###CS pin

SPI_CS pin of V1.2 is fefault to **D9**. If you want to change it to **D10**. Take a look at the back of the PCBA, you will find a pad named CS. You can cut the wire that at the left of the pad with a box cutter, and the solder the right 2 pads. 

!!!warning
    Be careful when you are going to change CS pin, it's easy to hear yourself or the PCBA.

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/hardware_overview_pins_setting.png?raw=true)

###SPI pins

The SPI pins(SCK, MISO, MOSI) is default to the ICSP pins. But for some Boards, maybe the SPI pins is at D11~D13, if so you need to change something in the PCBA. Take a look that the back of the PCBA, there're there pads, MOSI, MISO and SCK, they are default to A. You can change them to B if needed.

!!!note
    For Arduino UNO, Arduino Mega, Arduino Leonardo and any others AVR based Arduino boards, default is working. 

!!!warning
    Be careful when you are going to change SPI pins, it's easy to hear yourself or the PCBA.


##Getting Started

// to be continue


##APIs

###1. Set the Baudrate

This function is used to initialize the baudrate of the CAN Bus system.

The available baudrates are listed as follws:

	#define CAN_5KBPS    1
	#define CAN_10KBPS   2
	#define CAN_20KBPS   3
	#define CAN_25KBPS   4 
	#define CAN_31K25BPS 5
	#define CAN_33KBPS   6
	#define CAN_40KBPS   7
	#define CAN_50KBPS   8
	#define CAN_80KBPS   9
	#define CAN_83K3BPS  10
	#define CAN_95KBPS   11
	#define CAN_100KBPS  12
	#define CAN_125KBPS  13
	#define CAN_200KBPS  14
	#define CAN_250KBPS  15
	#define CAN_500KBPS  16
	#define CAN_666kbps  17
	#define CAN_1000KBPS 18

###2. Set Receive Mask and Filter

There are **2** receive mask registers and **5** filter registers on the controller chip that guarantee you get data from the target device. They are useful especially in a large network consisting of numerous nodes.

We provide two functions for you to utilize these mask and filter registers. They are:

**Mask:**

	init_Mask(unsigned char num, unsigned char ext, unsigned char ulData);

**Filter:**

	init_Filt(unsigned char num, unsigned char ext, unsigned char ulData);


- **num** represents which register to use. You can fill 0 or 1 for mask and 0 to 5 for filter.
- **ext** represents the status of the frame. 0 means it's a mask or filter for a standard frame. 1 means it's for a extended frame.
- **ulData** represents the content of the mask of filter.

###3. Check Receive
The MCP2515 can operate in either a polled mode, where the software checks for a received frame, or using additional pins to signal that a frame has been received or transmit completed. 

Use the following function to poll for received frames.

    INT8U MCP_CAN::checkReceive(void);

The function will return 1 if a frame arrives, and 0 if nothing arrives.

###4. Get CAN ID
When some data arrive, you can use the following function to get the CAN ID of the "send" node.

    INT32U MCP_CAN::getCanId(void)

###5. Send Data

    CAN.sendMsgBuf(INT8U id, INT8U ext, INT8U len, data_buf);

It is a function to send data onto the bus. In which:

* **id** represents where the data come from.
* **ext** represents the status of the frame. '0' means standard frame. '1' means extended frame.
* **len** represents the length of this frame.
* **data_buf** is the content of this message.

For example, In the 'send' example, we have:

    unsigned char stmp[8] = {0, 1, 2, 3, 4, 5, 6, 7};
    CAN.sendMsgBuf(0x00, 0, 8, stmp); //send out the message 'stmp' to the bus and tell other devices this is a standard frame from 0x00.

###6. Receive Data

The following function is used to receive data on the 'receive' node:

    CAN.readMsgBuf(unsigned char len, unsigned char buf);
In conditions that masks and filters have been set. This function can only get frames that meet the requirements of masks and filters.

* **len** represents the data length.
* **buf** is where you store the data.

##Generate a New BaudRate

We had provided many frequently-used baud rate, as below:

	#define CAN_5KBPS    1
	#define CAN_10KBPS   2
	#define CAN_20KBPS   3
	#define CAN_25KBPS   4 
	#define CAN_31K25BPS 5
	#define CAN_33KBPS   6
	#define CAN_40KBPS   7
	#define CAN_50KBPS   8
	#define CAN_80KBPS   9
	#define CAN_83K3BPS  10
	#define CAN_95KBPS   11
	#define CAN_100KBPS  12
	#define CAN_125KBPS  13
	#define CAN_200KBPS  14
	#define CAN_250KBPS  15
	#define CAN_500KBPS  16
	#define CAN_666kbps  17
	#define CAN_1000KBPS 18

Yet you may still can't find the rate you want. Here we provide a software to help you to calculate the baud rate you need.

Click [here](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/CAN_Baudrate_CalcV1.3.zip) to download the software, it's in Chinese, but never mind, it's easy to use. 

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/CAN_BUS_Shield_SetBaud.jpg?raw=true)

!!!note
    This software support Windows system only. If you can't open it, please free to contact loovee@seeed.cc for help. 

Open the software, what you need to do is set the baud rate you want, and do some simple setting, then click **calculate**.

Then you will get some data, cfg1, cfg2 and cfg3.

You need to add some code to the library.

Open **mcp_can_dfs.h**, you need to add some code at about line 272:

	#define MCP_16MHz_xxxkBPS_CFG1 (cfg1)    // xxx is the baud rate you need
	#define MCP_16MHz_xxxkBPS_CFG2 (cfg2)
	#define MCP_16MHz_xxxkBPS_CFG3 (cfg2)

Then let's go to about line 390, add some code:

	#define CAN_xxxKBPS NUM       // xxx is the baudrate you need, and NUM is a number, you need to get a different from the other rates.
Open **mcp_can.cpp**, goto the function **mcp2515_configRate**(at about line 190), then add some code:

	case (CAN_xxxKBPS):
	    cfg1 = MCP_16MHz_xxxkBPS_CFG1;
	    cfg2 = MCP_16MHz_xxxkBPS_CFG2;
	    cfg3 = MCP_16MHz_xxxkBPS_CFG3;
	    break;
Then you can use the baud rate you need. And please give me a pull request at github when you use a new rate, so I can add it to the library to help the other guys.


##Projects

If you want to make some awesome projects with CAN-BUS shield, here's some projects for reference.

###Volkswagen CAN BUS Gaming

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/project1.JPG?raw=true)

Ever wanted to play a car/truck simulator with a real dashboard on your PC? Me too! I'm trying to control a VW Polo 6R dashboard via CAN Bus with an Arduino Uno and a Seeed CAN Bus Shield. Inspired by Silas Parker. Thanks to Sepp and Is0-Mick for their great support!

[![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/Wiki_makeitnow_logo.png?raw=true)](http://www.seeed.cc/project_detail.html?id=291)

###Hack your vehicle CAN-BUS

![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/project2.jpg?raw=true)

Modern Vehicles all come equipped with a CAN-BUS Controller Area Network, Instead of having a million wires running back and forth from various devices in your car to the battery, its making use of a more clever system.

All electronic functions are connected to the TIPM, (Totally integrated Power Module), such as solenoids/relays to lock the doors or mini motors to wind the windows ect ect.

From each node (IE Switch pod that controls your windows or electric door locks) it broadcasts a message across the CAN. When the TIPM detects a valid message it will react accordingly like, lock the doors , switch on lights and so on.


[![](https://github.com/SeeedDocument/CAN_BUS_Shield/blob/master/image/Wiki_makeitnow_logo.png?raw=true)](http://www.instructables.com/id/Hack-your-vehicle-CAN-BUS-with-Arduino-and-Seeed-C/)

##Resources

* **【PDF】**[CAN-BUS Shield V1.2 Schmatics](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/CAN-BUS_Shield_v1.2.pdf)
* **【Eagle】**[Schematic of CAN-BUS Shield V1.2](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/CAN-BUS_Shield_v1.2_sch_pcb.zip) 
* **【Library】**[Arduino Library for CAN-BUS Shield](https://github.com/Seeed-Studio/CAN_BUS_Shield)
* **【Datasheet】**[MCP2515 datasheet](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/MCP2515.pdf)
* **【Datasheet】**[MCP2551 datasheet](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/Mcp2551.pdf)
* **【Demo】**[An OBD Demo](https://github.com/Seeed-Studio/CANBUS_SHIELD_OBD_RECIPLE)
* 【**Tool】**[MCP2515 Baud Rate Tool](https://github.com/SeeedDocument/CAN_BUS_Shield/raw/master/resource/CAN_Baudrate_CalcV1.3.zip)

##Is this page helpful
<iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.surveymonkey.com/r/32WG3KT" frameborder="0"></iframe>