#Seeeduino V4.2
-------
##Introduction

Seeeduino v4.2 is an Open Source, Arduino-compatible ATmega328 MCU development board. We think Seeeduino v4.2 is one of the best Arduino derivatives/compatibles available. Seeeduino v4.2 is feature rich, much more stable, easy-to-use and even good looking.

Seeeduino v4.2 is based the Arduino UNO bootloader, an ATmega16U2 as a UART-to-USB converter (basically work like an FTDI USB2UART chip). The board comes with an additional set of through-hole pads for all pins. These pads are aligned to 0.1" grid. This makes it easy to solder additional pin-headers to plug into breadboard or create your own attachment/shield with 0.1" dot-matrix general purpose PCBs.


You can program the board via a micro-USB cable. Also, you can power the board via a DC Jack input (7 to 15V DC) is acceptable. There is a switch to choose the system's supply voltage either 3.3V or 5V, which is very useful if you want to set the system to 3.3V to interact with low voltage sensors.

Finally, the three on-board Grove interfaces can make your board connect to Grove modules easily. Want to make something awesome, maybe just a Seeeduino v4.2 and some Groves is enough.

![](http://www.seeedstudio.com/wiki/images/7/7a/SeeeduinoV4.2_View.JPG)



##Features

- ATmega328 microcontroller
- Arduino UNO bootloader
- 14 Digital I/O Pins (6 PWM outputs)
- 6 Analog Inputs
- ISP Header
- Arduino UNO-R3 Shield Compatible
- Micro USB programming and power supply
- 3 on-board Grove connectors
- 3.3/5V system operation power switch
- Additional pads aligned to 0.1" grid


##Specification

| Item | 	Value  |
| ----------------|--------------------| 
| DC Jack Input       | 7-12V   |
|DC Output Current|
|5V Pin | With Micro USB	500mA Max |
|5V Pin | With DC Jack Power	2000mA Max|
|3V3 Pin|	500mA Max|
|DC Current per I/O Pin	|40mA|
|Other specifications|
|Flash Memory|	32 KB|
|RAM|	2 KB|
|EEPROM	|1 KB|
|Clock Speed	|16 MHz|
|Dimension	|68.6mm x 53.4mm|
|Weight	|26g|


#Hardware Overview
The images below shows an overview of Seeeduino v4.2 hardware features. The pin-out and alternate functions of various pins of Seeeduino v4.2 are shown in the pin-out diagram. This could be used as a quick reference.

![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/d/d1/SeeeduinoV4.2_Hw_overview.JPG/750px-SeeeduinoV4.2_Hw_overview.JPG)

- **LED-D13**
An LED is connected to D13 pin of the board. This can be used as an on-board LED indicator for programs/sketches.
- **USB Input**
USB Port is used to connect the board to your PC for programming and for powering up. Micro USB is the ubiquitous version of USB, found in most Android phones, and other devices. You probably have dozens of these cables laying around your house.
- **RX/TX Indicator**
The TX and RX LED indicators are connected to Txd and Rxd of USB-to-UART chip. They work automatically, they let you know when the board is sending or receiving data respectively.
- **System Power Switch**
Slide switch is used to change the logic level and operating voltage of the board to either 5V or 3.3V. Nowadays, many new and great sensors are being developed to work only with 3.3V, with other *duino boards you would need to place a logic level converter between the board and these sensor(s). With the Seeeduino V4.2 board all you have to do is slide the switch!
- **DC Input**
The DC power jack allows your Seeeduino board to be powered from a wall adapter so that you can supply more power to your project if needed. For example when using DC motors or other high power devices. The DC input can be 7V-15V.
- **Reset**
This button is conveniently placed on the side to allow you to reset the Seeeduino board even when a shield is placed on top. This is not the case in other -duino boards where the button is placed on top making it hard to access.
- **Power Pins & Analog Pins**
Just like the extra Digital header pads, these extra connections are something we have personally come to realize people need in their projects, especially the power connections if you want to power more than one sensor/device without the use of a breadboard.
- **Grove Connectors**
SeeedStudio has a variety of sensors/devices that can make use of this I2C or UART connection. In addition, we sell independent Grove connectors to help you make our own sensor connections. The I2C Grove connector is also connected to analog pin A4 and A5 for SDA and SCL respectively if you would like to use those pins instead. The UART Grove connector is connected to digital pins 0 and 1 for RX and TX respectively.
- **ICSP**
This is the ICSP connection for the ATmega328P, it is located in the standard ICSP/SPI position for Arduino Uno, Due, Mega, and Leonardo compatible hardware (e.g. shields) that may use this connector. The SPI pins in this port: MISO, SCK, and MOSI, are also connected to digital pins 12, 13, and 11 respectively just like those of the Arduino Uno.
- **USB 2 Uart**
Pinout of USB-2-Uart. These pads can be used to interact with other UART devices by putting the on-board ATmega328 in reset mode. This makes Seeeduino V4.2 to be used a USB2UART utility board.
- **Additional 0.1" Grid aligned header Pads**
Sometimes it is very convenient to connect a sensor/device to your board directly instead of going through a breadboard, or perhaps you want to solder the sensor directly to the board once you've completed your project, or maybe you want to monitor the output of the pins while they're been used by other devices. In any cases we have added these extra pads to help you along the way. These pads are aligned in 0.1" grid and can conveniently work with general purpose dot-matrix PCBs .

**Note**: Take gentle care in handling micro USB socket, or you might break the socket off.

##Getting Started
The general steps in using Seeeduino v4.2 are

1. Download Arduino IDE software (for your platform)
2. Install Drivers based on OS platform
3. Compile and run your first sketch

Let us see how to get started in detail based on OS platform.

##Getting Started on Windows

This part is based on the [Getting Started with Arduino on Windows](https://www.arduino.cc/en/Guide/Windows), click to view the original page.

###Get a Micro-USB cable
You need a Micro-USB cable first, the data cable of an Android Phone will do fine.
If you can't find one, you can buy one [here](http://www.seeedstudio.com/depot/Micro-USB-Cable-48cm-p-1475.html?cPath=98_100).

###Download the Arduino Software (IDE)
Get the latest version from the [download page](https://www.arduino.cc/en/Main/Software). When the download finishes, unzip the downloaded file.

###Connect the board
The Seeeduino V4.2 automatically draw power from either the USB connection to the computer or an external power supply.
Connect the Arduino board to your computer using the USB cable. The green power LED (labelled **PWR**) should go on.

###Install the drivers
####Installing drivers for the Seeeduino V4.2 with **Windows 7**, **Vista**, or **XP**
- Plug in your board and wait for Windows to begin its driver installation process. After a few moments, the process will fail, despite best efforts.
- Click on the Start Menu, and open up the Control Panel.
- While in the Control Panel, navigate to System and Security. Next, click on System. Once the System window is up, open the Device Manager.
- Look under Ports (COM & LPT). You should see an open port named "Seeeduino v4". If there is no COM & LPT section, look under "Other Devices" for "Unknown Device".
- Right click on the "Seeeduino v4" port and choose the "Update Driver Software" option.
- Next, choose the "Browse my computer for Driver software" option.
- Download Driver for Seeeuino V4.2, and unzip to your PC.
- Finally, navigate to and select the driver file named "SeeeduinoV4.inf"
- Windows will finish up the driver installation from there.
####Installing drivers for the Seeeduino V4.2 with Windows 8/8.1
Firstly, you should disable the digital signature verification of your system. Follow the steps listed below:
You should save these files which you are editing before installing driver in Window 8，because there will several power off/on during the operation.
- Press “Windows Key” +”R”
- Enter shutdown.exe /r /o /f /t 00
- Click the "OK" button.
- System will restart to a "Choose an option" screen
- Select "Troubleshoot" from "Choose an option" screen
- Select "Advanced options" from "Troubleshoot" screen
- Select "Windows Startup Settings" from "Advanced options" screen
- Click "Restart" button
- System will restart to "Advanced Boot Options" screen
- Select "Disable Driver Signature Enforcement"
- Once the system starts, you can install the Seeeduino driver.
- And the rest of the steps are same as Win7.

![enter image description here](http://www.seeedstudio.com/wiki/images/c/cb/Seeeduino_v4.2_driver_1.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/8/80/Seeeduino_v4.2_driver_2.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/8/89/Seeeduino_v4.2_driver_3.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/8/80/Seeeduino_v4.2_driver_4.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/8/83/Seeeduino_v4.2_driver_5.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/0/03/Seeeduino_v4.2_driver_6.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/6/6d/Seeeduino_v4.2_driver_7.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/0/00/Seeeduino_v4.2_driver_8.jpg)

###Launch the Arduino application
Double-click the Arduino application (arduino.exe) you have previously downloaded. (Note: if the Arduino Software loads in a different language, you can change it in the preferences dialog. See the [Arduino Software (IDE) page](https://www.arduino.cc/en/Guide/Environment#languages) for details.)

###Open the Blink example
Open the LED blink example sketch: **File > Examples >01.Basics > Blink**.

![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/b/b1/Seeeduino_v4.2_blink.jpg/600px-Seeeduino_v4.2_blink.jpg)

###Select your board
You'll need to select the entry in the **Tools > Board** menu that corresponds to your Arduino.
Selecting an **Arduino Uno**:

![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/9/99/Seeduino_4.2_choose_board.jpg/600px-Seeduino_4.2_choose_board.jpg)


###Select your serial port
Select the serial device of the Arduino board from the Tools | Serial Port menu. This is likely to be COM3 or higher (**COM1** and **COM2** are usually reserved for hardware serial ports). To find out, you can disconnect your Arduino board and re-open the menu; the entry that disappears should be the Arduino board. Reconnect the board and select that serial port.

###Upload the program
Now, simply click the "Upload" button in the environment. Wait a few seconds - you should see the RX and TX LED indicators on the board flashing. If the upload is successful, the message "Done uploading." will appear in the status bar.

![enter image description here](http://www.seeedstudio.com/wiki/images/b/b2/UploadButton1.png)

A few seconds after the upload finishes, you should see the pin 13 (L) LED on the board start to blink (in orange). If it does, congratulations! You've gotten Arduino up-and-running. If you have problems, please see the troubleshooting suggestions.

![enter image description here](http://www.seeedstudio.com/wiki/images/d/d5/Seeeduino_v4_2_L.jpg)

##Getting Started on Mac OS X

This part is base on the [Getting Started w/ Arduino on Mac OS X](https://www.arduino.cc/en/Guide/MacOSX), click to view the original page.
###Download the Arduino environment
Get the latest version from the [download page](https://www.arduino.cc/en/Main/Software). When the download is finished, double-click the *.zip file. This will expand the Arduino application.

###Install the Software
Copy the Arduino application into the Applications folder (or elsewhere on your computer).

###Connect the board
The Seeeduino V4.2 automatically draw power from either the USB connection to the computer or an external power supply. Connect the Arduino board to your computer using the USB cable. The green power LED (labelled PWR) should go on.

###Launch the Arduino application
Double-click the Arduino application.

**Note**: if the Arduino software loads in the wrong language, you can change it in the preferences dialog. See the [environment page](https://www.arduino.cc/en/Guide/Environment#languages) for details.

###Open the blink example
Open the LED blink example sketch: **File > Examples > 01.Basics > Blink**.

![enter image description here](http://www.seeedstudio.com/wiki/images/2/2d/Arduino1Blink.png)

###Select your board
You'll need to select the entry in the Tools > Board menu that corresponds to your Arduino.

![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/3/3f/ToolsMenu.png/600px-ToolsMenu.png)

###Select your Serial Port
Select the serial device of the Arduino board from the Tools > Serial Port menu. On the Mac, this should be something with /dev/tty.USBmodem (for the Uno or Mega 2560) or /dev/tty.USBserial (for older boards) in it.

![enter image description here](http://www.seeedstudio.com/wiki/images/f/f6/SelectingUno.png)

Selecting an Uno

###Upload the program
Now, simply click the "Upload" button in the environment. Wait a few seconds - you should see the RX and TX LED indicators on the board flashing. If the upload is successful, the message "Done uploading." will appear in the status bar.

![enter image description here](http://www.seeedstudio.com/wiki/images/b/b2/UploadButton1.png)

A few seconds after the upload finishes, you should see the pin 13 (L) LED on the board start to blink (in orange). If it does, congratulations! You've gotten Arduino up-and-running. If you have problems, please see the troubleshooting suggestions.

##Getting Started on Linux

For using on Linux, please go to [Installing Arduino on Linux](http://playground.arduino.cc/Learning/Linux)

##Resources/References

**Resources**
- [Schematic and PCB files Seeeduino V4.2 in EAGLE format](http://www.seeedstudio.com/wiki/images/8/8a/SeeeduinoV4.2.zip)
- [Schematic of Seeeduino V4.2 in PDF](http://www.seeedstudio.com/wiki/File:Seeeduino_v4.2_sch.pdf)
- [ATMEGA328P-MU Summary](http://www.atmel.com/Images/Atmel-8271-8-bit-AVR-Microcontroller-ATmega48A-48PA-88A-88PA-168A-168PA-328-328P_datasheet_Summary.pdf)
- [ATMEGA16U2 Summary](http://www.atmel.com/Images/7799S.pdf)
- [Other Version of Seeeduino](http://www.seeedstudio.com/wiki/Seeeduino)
- [Driver for Seeeduino V4.2](http://www.seeedstudio.com/wiki/images/f/fa/Driver_seeeduino_v4.2.zip)
**References**
- [Getting Started with Arduino](https://www.arduino.cc/en/Guide/HomePage)
- [Arduino Language Reference](https://www.arduino.cc/en/Reference/HomePage)
- [Download the Arduino Software(IDE)](https://www.arduino.cc/en/Main/Software)
- [Arduino FAQ](https://www.arduino.cc/en/Main/FAQ)
- [Arduino Introduction](https://www.arduino.cc/en/guide/introduction)
- [Wikipedia page for Arduino](https://en.wikipedia.org/wiki/Arduino)