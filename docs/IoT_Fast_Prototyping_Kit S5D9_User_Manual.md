---
title: IoT Fast Prototyping Kit S5D9 User Manual
category: Tutorial
oldwikiname:  IoT Fast Prototyping Kit S5D9 User Manual
prodimagename:  
surveyurl: https://www.research.net/r/IoT_Fast_Prototyping_Kit_S5D9_User_Manual
---
![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/S5D9_MCU_Board.png)

The S5D9 IoT Fast Prototyping Kit features include the following interface options:

- RJ45 10/100Mbps Ethernet x1
- USB Full Speed x1
- PMOD x1
- Grove Connectors (UART, I2C, GPIO) x2
- Protected Digital Input x2
- Buffered Digital Output x2
- RS232 Transceiver x2
- JTAG Connector x1

The kit also includes the following on-board sensors:

- Bosch BMC 150 6-Axis sensor
- AMS ENS210 environmental sensor
- TE Connectivity MS5637-02BA03 barometric pressure sensor
- Knowles SPU0414HR5H-SB amplified SiSonic microphone


### S5D9 MCU Board

The S5D9 MCU Board is the heart of the IoT Fast Prototyping Kit. It enables the fast prototyping of applications that require wired Ethernet and USB connectivity along with PMOD and Grove expansion options.

The board includes 24V tolerant digital inputs with overvoltage protection suitable for use in noisy industrial environments. The board can also control two digital loads such as solenoids powered with 24V and drawing up to 1A current. The included MOSFET drivers have built-in overcurrent and over temperature protection that ensure robust operation.

The S5D9 board incorporates a Renesas Synergy Microcontroller with a 640K KB RAM and a 2 MB flash memory. In addition, the board has a 16 MB external flash memory connected through a QSPI interface.

The board can be powered using an industrial Molex connector, or through a USB device connector.

The board offers a variety of expansion options with one PMOD and 2 Grove connectors. The PMOD interface has designated jumper enabling the interface with either 3.3 V or 5 V powered modules.

The Grove connections consist of one UART interface and one I2C interface. The Grove connectors can power either 3.3V modules only.

The board also includes a JTAG interface for programming and debugging.

## S5D9 IoT Fast Prototyping Kit Specification

### Electrical Specifications

The S5D9 Fast Prototyping Kit specifications are listed in Table 2.1.

Table 2.1 Electrical Specifications

| Parameter                        | Value  |              |
|----------------------------------|--------|--------------|
|                                  | Min    | Max          |
| Required Logic Power Voltage     | 3.7V   | 5.5V         |
| Current Consumption              | TBD    | 300mA        |
| Digital Outputs Drive Capability |        | 1A           |
| Digital Inputs Voltage           |        | 5.1 V or 24V |
| Operating Temperature            | -40 °C | +75 °C       |
| PMOD Connector Power Voltage     | 3.3V   | 5V           |
| Grove Connectors Power Voltage   | 3.3V   |              |
| QSPI Flash Capacity              | 32 MB  |              |
| MCU Flash Capacity               | 2MB    |              |
| MCU RAM                          | 640KB  |              |
| MCU Clock                        | 120MHz |              |

### Connection Diagram

The IoT Fast Prototyping kit is intended to enable quick prototyping of various applications. Figure 2.1 shows the connection of components included in the kit for running the lab with the pre-installed firmware on the board or for designing new applications and downloading firmware over the JTAG interface.

Figure 2.1 Connection Diagram

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Connection%20Diagram.png)

## S5D9 MCU Board Description

### Block Diagram

The main functional blocks of the S5D9 board are presented in Figure 3.1.

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Block%20Diagram.png)

Figure 3.1 S5D9 board main functional blocks

The various modules are as follows:

- The Synergy MCU that is designated as the heart of the kit by the S5D9 block
- A power management module that includes 3V3 LDO voltage regulator required for the operation of the microcontroller.
- SPI Flash – the S5D9 flash memory is expanded with external 32 MB memory module connected over a high-speed QSPI interface. The external flash can be used for storage of graphics and other digital assets, or for execution of code in place (XIP).
- User-defined LEDs – the user-defined LEDs are useful in indicating the current state of the firmware. The 3 LEDs have different colors for easy identification.
- USB device interface – the S5D9 MCU includes one USB interface block operating in Full Speed. The USB device connector can be used to power the board.
- PMOD interface – the board includes one 12-pin PMOD interface that can be configured by jumpers to provide either 3.3V or 5V on their power pins. This feature expands the range of peripheral modules without the need for external level shifters or power supply.
- Grove interfaces – the Grove connectors are compatible with the Seeed Studio&#39;s line of peripheral modules that feature a very large selection of sensors and actuators. One of the Grove connectors can be configured to communicate over the UART and the other is dedicated for I2C interface.
- JTAG interface that is available on a 10-pin connector, J20 compatible with Segger debugging probe. Alternatively, a 14-pin Tag-Connect interface probe can be used to program and debug the device.

### Components Layout

**Error! Reference source not found.** calls out the main components of the S5D9 MCU board.
 ![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/S5D9_MCU_board_main_components.png)

**Figure 3.2  S5D9 MCU board main components**

The MCU at the heart of the board is a Renesas Synergy S5D9 device. It is based on the ARM Cortex-M4F core running at 120 MHz. The CPU features a floating point unit and vector interrupt control unit. The MCU adds high-performance, zero wait-state flash and rich peripheral set that makes it suitable for a broad range of applications.

The 32 MB QSPI flash memory is Micron N25Q256A13EF840E. It can be used to store digital assets needed by the GUI design or even an executable code.

## Power Supply

The IoT Fast Prototyping Kit requires a single 5V power supply source. It can be provided through the USB Device connector J9 or through the Molex MicroBlade series connector J8.

**Error! Reference source not found.** shows the pin information for the power connectors, and **Error! Reference source not found.** shows the pin information for the USB connector.

Table 4.1 USB Device Connector (J9)

| Pin #        | Function |
| --- | --- |
| 1 | +5VDC |
| 2        | Data - |
| 3 | Data + |
| 4 | USB ID |
| 5 | Ground |

Figure 4.1 LDO regulator used in the MCU board.

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/LDO%20regulators%20and%20boost%20converter%20in%20MCU%20board.png)

Figure 4.1 LDO regulators and boost converter in MCU board

## PMOD and Grove Connectors

The S5D9 MCU board offers one PMOD connector. It can interface with modules that require UART, I2C, or SPI interface. The function of the PMOD is dependent on the initialization and the pin-muxing of the MCU. The PMOD connector pin map is shown in Table 5.1.

Table 5.1 PMOD Connector

| Pin #        | PMOD D |
| --- | --- |
| 1 | SSLB0/CTS9 – P2\_5 |
| 2        | MOSI/TXD9 – P2\_3 |
| 3 | MISO/RXD9 – P2\_2 |
| 4 | RSPCK/SCK9 – P2\_4 |
| 5 | GND |
| 6 | J6 defined 3.3/5V |
| 7 | GPIO – P7\_8/IRQ11 |
| 8 | GPIO – P2\_6/SSLB1\_A |
| 9 | GPIO – P2\_7/SSLB2\_A |
| 10 |  GPIO – P8\_1 |
| 11 |  GND |
| 12 | VCC (3.3V or 5V) |

The PMOD connector has a selectable power voltage provided by the J6 header. The jumper position for each voltage option is described in Table 5.2.

**Table 5.2** **PMOD Voltage Selection (J6)**

| Pins | Selected Voltage |
| --- | --- |
| 1 - 2 | 3.3V |
| 2 - 3 | 5V |

The Grove connectors offer the following interfaces:

- UART interface (Grove A)
- I2C interface (Grove B)

The pin-mapping of the connectors is described in Table 5.3.

**Table 5.3**  **Grove Connectors**

| Pins | Grove AUART | Grove BI2C |
| --- | --- | --- |
| 1 | P4\_10/RXD0 | P1\_0/SCL1 |
| 2 | P4\_11/TXD0 | P1\_1/SDA1 |
| 3 | 3.3V | 3.3V |
| 4 | GND | GND |

Figure 5.1 and Figure 5.2 show schematics for the PMOD and Grove connectors, respectively.

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/PMOD%20schematic.png)

Figure 5.1 PMOD schematic

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Grove_connector_schematic.png)

Figure 5.2 Grove connector schematic

## USB Interface

The S5D9 IoT Fast Prototyping kit provides USB device interface only. The wiring of the connector pins to the chip is shown in Table 6.1

Table 6.1 USB Micro B Type Receptacle - Device Mode (J9)

| Pin Number | Function | Device Port/ Pin Number |
| --- | --- | --- |
| 1 | Power 5V | USB VBUSIN |
| 2 | Data - | USB DM |
| 3 | Data + | USB DP |
| 4 | N.C. |
| 5 | GND | GND |

Figure 6.1 describes the USB interface implementation:

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/USB%20interface%20implementation.png)

Figure 6.1 USB interface implementation

## Digital Inputs and Outputs

### 24V Tolerant Digital Inputs and Outputs

The S5D9 board includes 24V tolerant interface to digital inputs and features 1A rated MOSFETs suitable to drive inductive loads such as solenoids. The schematic below shows circuits related to these interfaces.

Figure 7.1 Digital Inputs and Outputs

The table below shows the mapping between the digital inputs, outputs and the matching MCU pins used for interfacing to them.

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Digital%20Inputs%20and%20Outputs.png)

Table 7.1 24V Tolerant Digital Inputs and Outputs Mapping

| Molex MicroBlade **Connector J7** | Pin Type | MCU Port |
| --- | --- | --- |
| 0 | Power +5V |   |
| 1 | Ground |   |
| 2 | Red |   |
| 3 | Input – INP1 | P1\_11 |
| 4 | Ground |   |
| 5 | Input – INP2 | P4\_9 |
| 6 | Ground |   |
| 7 | Power +24V |   |
| 8 | Output – OUT1 | P0\_8 |
| 9 | Power +24V |   |
| 10 | Output – OUT2 | P0\_9 |
| 11 | Power +24V |   |
| 12 | Ground |   |

The PMOD and Grove connectors also provide interface to the MCU ports that can be configured as digital inputs or outputs. They are 5V tolerant, so no level shifters are required when interfacing to 5V powered peripherals.

### On-Board LEDs

The S5D9 board provides 3 on-board LEDs for user-defined functions. They are connected to general purpose output pins through a single resistor. The output active state is 1. When set, it turns the LED on. Table 7.2 describes the mapping between the LEDs and the ports that drive them.

Table 7.2 User Defined LED Mapping

| LED# | Color | Designator | Device Port/Pin |
| --- | --- | --- | --- |
| 0 | Green | LED1 | P1\_2 |
| 1 | Yellow | LED2 | P1\_3 |
| 2 | Red | LED3 | P1\_13 |

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Mapping%20between%20LEDs%2C%20ports.png)

Figure 7.2 Mapping between LEDs, ports

## Dual RS232 Interface

The S5D9 board provides dual RS232 interface transceiver. The serial interfaces are available on connector J8. The pin mapping of the connector to the MCU ports is described in the table below:

Table 8.1 Dual RS232 Interface

| Molex MicroBlade **Connector J7** | Pin Type | MCU Port |
| --- | --- | --- |
| 1 | Power +5V |   |
| 2 | Ground |   |
| 3 | TX1 | P3\_2/TXD2 |
| 4 | RX1 | P3\_1/RXD2 |
| 5 | Ground |   |
| 6 | TX2 | P6\_13/TXD7 |
| 7 | RX2 | P6\_14/RXD7 |
| 8 | Ground |   |

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/Dual%20RS232%20Ports.png)

Figure 8.1 Dual RS232 Ports

## JTAG Probe Interface

The JTAG probe interface is provided on the connector J2. The connector part number is Samtec FTSH-105-01-L-DV-007-K.

Table 9.1 JTAG Probe Interface - Connector J2

| Pin# | Direction | Description | Pin# | Direction | Description |
| --- | --- | --- | --- | --- | --- |
| 1 |   | Power 3V3 | 2 | Input | TMS |
| 3 |   | GND | 4 | Input | TCK |
| 5 |   | GND | 6 | Output | TDO |
| 7 |   | N.C | 8 | Input | TDI |
| 9 |   | GND | 10 | Input | RESET |

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/JTAG%20probe%20interface%20connections.png)

Figure 9.1 JTAG probe interface connections

Alternatively, the JTAG interface is available on the connector J1 – designed to be used with Tag Connect 14-pin probe. The probe part number is Tag Connect XXXXXXX.

![](https://github.com/SeeedDocument/IoT_Fast_Prototyping_Kit_S5D9_User_Manual/raw/master/img/JTAG%20probe%20interface%20connections.png)

Table 9.2 JTAG Probe Interface - Connector J1

| Pin# | Type | Description | Pin# | Type | Description |
| --- | --- | --- | --- | --- | --- |
| 1 | Input | TCK | 14 | Power | Ground |
| 2 | Power | Ground | 13 | Input | RESET |
| 3 | N.C. |   | 12 | Power | Ground |
| 4 | N.C. |   | 11 | Input | TDI |
| 5 | Output | TDO | 10 | N.C. |   |
| 6 | N.C. |   | 9 | Input | TMS |
| 7 | N.C. |   | 8 | Power | +3V3 |

Figure 9.2 JTAG probe interface connections

**Revision** History

| Rev. | Date | Description |
| --- | --- | --- |
| 1.00 | March 3, 2017 | Initial version |
