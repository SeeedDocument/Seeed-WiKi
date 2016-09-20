---
title: Seeeduino Lotus
category: Arduino
bzurl: https://www.seeedstudio.com/Seeeduino-Lotus-ATMega328-Board-with-Grove-Interface-p-1942.html
oldwikiname: Seeeduino_Lotus_v1.0
prodimagename: Seeeduino_Lotus_Cover.jpg
surveyurl: https://www.surveymonkey.com/r/Seeeduino_Lotus
sku: 102020001
---

![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/Seeeduino_Lotus_Cover.jpg?raw=true)

Seeeduino Lotus is an ATMEGA328 Microcontroller development board. It is a combination of Seeeduino and Base Shield. It uses an Atmel ATMEGA328P-MU and CH340. ATMEGA328P-MU is a high performance, low power AVR 8-Bit Microcontroller. CH340 is a USB bus converter chip that can realize a USB to serial interface. Seeeduino Lotus has 14 digital input/outputs (6 of which can output PWM) and 7 analog input/outputs, a micro USB connection, an ICSP header, 12 Grove connections, a reset button.
 

##Application Ideas

* DIY
* IoT and Smart Home
* Robot
* Learning
* Toy

Here is some funny project for your reference.

|Car Controlled by Track Ball|FM Receiver|HCHO Detector|
|-------|-------|-------|
|![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/example_1.png?raw=true)|![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/Fm%20demo.jpg?raw=true)|![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/example_3.png?raw=true)|
|[Make it Now](http://www.seeed.cc/A-Car-Controlled-by-Track-Ball-p-1132.html)|[Make it Now](http://wiki.seeedstudio.com/wiki/Seeeduino_Lotus_v1.0#Usage)|[Make it Now](http://www.seeed.cc/A-Handheld-Formaldehyde(HCHO)-Detector-p-380.html)|


##Feature 

* Fully compatible with Arduino UNO
* ATmega328 microcontroller
* 12 on-board Grove connectors
* 14 Digital I/O Pins (6 PWM outputs)
* 6 Analog Inputs
* ISP Header
* Arduino UNO-R3 Shield Compatible
* Micro USB programming and power supply
* 5V Operating Voltage


##Specification

|Item|Value|
|------------|-----------|
|Microcontroller|ATmega328P-MU|
|Operating Voltage|5V|
|Digital I/O Pins|14|
|PWM Channels|6|
|Analog Input Channels|7|
|DC Current per I/O Pin|40 mA|
|Flash Memory|32 KB|
|RAM|2 KB|
|EEPROM|1 KB|
|Clock Speed|16 MHz|


##Hardware Overview 

The images below show an overview of Seeeduino Lotus hardware features. The pin-out and alternate functions of various pins of Seeeduino Lotus are shown in the pin-out diagram. This could be used as a quick reference.

![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/seeeduino_lotus_hardware_overview.jpg?raw=true) 

 
- **LED-D13**
An LED is connected to D13 pin of the board. This can be used as an on-board LED indicator for programs/sketches.
- **USB Input**
USB Port is used to connect the board to your PC for programming and for powering up. Micro USB is the ubiquitous version of USB, found in most Android phones, and other devices. You probably have dozens of these cables laying around your house.
- **Reset**
This button is conveniently placed on the side to allow you to reset the Seeeduino board even when a shield is placed on top. This is not the case in other Arduino boards where the button is placed on top making it hard to access.
- **Power Pins & Analog Pins**
Just like the extra Digital header pads, these extra connections are something we have personally come to realize people need in their projects, especially the power connections if you want to power more than one sensor/device without the use of a breadboard.
- **Grove Connectors**
SeeedStudio has a variety of sensors/devices that can make use of this Analog, Digital,I2C and UART connection. In addition, we sell independent Grove connectors to help you make our own sensor connections.
- **ICSP**
This is the ICSP connection for the ATmega328P, it is located in the standard ICSP/SPI position for Arduino Uno, Due, Mega, and Leonardo compatible hardware (e.g. shields) that may use this connector. The SPI pins in this port: MISO, SCK, and MOSI, are also connected to digital pins 12, 13, and 11 respectively just like those of the Arduino Uno.
- **USB 2 Uart**
Pinout of USB-2-Uart. These pads can be used to interact with other UART devices by putting the on-board ATmega328 in reset mode. This makes Seeeduino Lotus to be used a USB2UART utility board.

!!!Warning
    Take gentle care in handling micro USB socket, or you might break the socket off.


 
##Install the Driver

First of all, you need to:

* **Get a Micro-USB cable**
    * You need a Micro-USB cable first; the data cable of an Android Phone will do fine.
If you can't find one, you can buy one [here](http://www.seeedstudio.com/depot/Micro-USB-Cable-48cm-p-1475.html?cPath=98_100).

* **Connect the board**
    * Connect the Arduino board to your computer using the USB cable. The green power LED (labelled **PWR**) should go on.


###For Windows

!!!Note
    This drive is available for Windows XP, Windows Vista, Windows 7, Windows 8/8.1 and Windows 10.
    
[![enter image description here](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/download_driver_for_seeeduino_lotus.png?raw=true)](https://github.com/Seeed-Studio/Signed_USB_Serial_Driver/archive/master.zip)

- Plug in your board and wait for Windows to begin its driver installation process. After a few moments, the process will fail, despite best efforts.
- Click on the Start Menu, and open up the Control Panel.
- While in the Control Panel, navigate to System and Security. Next, click on System. Once the System window is up, open the **Device Manager**.
- Look under Ports (COM & LPT). You should find an open port named "Seeeduino Lotus". If there is no COM & LPT section, look under "Other Devices" for "Unknown Device".
- Right click on the "Seeeduino Lotus" port and choose the "Update Driver Software" option.
- Next, choose the "Browse my computer for Driver software" option.
- Finally, navigate to and select the driver file named "Seeeduino Lotus.inf"
- Windows will finish up the driver installation from there.

###For Mac OSX

You don't need to install any drivers. 


##Getting Started

!!!Note
    This part is based on Arduino 1.6.9 under Windows 10.
    
First of all, you need to Install an Arduino Software.

[![](https://raw.githubusercontent.com/SeeedDocument/Seeeduino_Stalker_V3_1/master/img/Download_IDE.png)](https://www.arduino.cc/en/Main/Software)


###Launch the Arduino application
Double-click the Arduino application (arduino.exe) you have previously downloaded. 

!!!Note
    If the Arduino Software loads in a different language, you can change it in the preferences dialog. See the [Arduino Software (IDE) page](https://www.arduino.cc/en/Guide/Environment#languages) for details.


###Open the Blink example

Open the LED blink example sketch: **File > Examples >01.Basics > Blink**.

![enter image description here]()

###Add Seeeduino to your Arduino IDE

Click on **File > Preference**, and fill Additional Boards Manager URLs with below url:
    *https://raw.githubusercontent.com/Seeed-Studio/Seeeduino-Boards/master/package_seeeduino_index.json*

Click OK to finish the setting. Then Click on **Tools > Board > Boards Manager**, find **Seeeduino by Seeed Studio**, and Install it.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/img/add_board.png)

###Select your board
You'll need to select the entry in the **Tools > Board** menu that corresponds to your Arduino.
Selecting a **Seeeduino Lotus**.

![enter image description here](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/select_seeeduino_lotus.jpg?raw=true)

###Select your serial port
Select the serial device of the Arduino board from the Tools | Serial Port menu. This is likely to be COM3 or higher (**COM1** and **COM2** are usually reserved for hardware serial ports). To find out, you can disconnect your Arduino board and re-open the menu; the entry that disappears should be the Arduino board. Reconnect the board and select that serial port.

![enter image description here](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/img/select_com.jpg?raw=true)

!!!Note
    On the Mac, this should be something with **/dev/tty.USBmodem**.
    
###Upload the program
Now, simply click the "Upload" button in the environment. Wait a few seconds and if the upload is successful, the message "Done uploading." will appear in the status bar.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/img/upload_button.png)

A few seconds after the upload finishes, you should see the pin 13 (L) LED on the board start to blink (in orange). If it does, congratulations! You've gotten Arduino up-and-running. If you have problems, please see the troubleshooting suggestions.

##Getting Started on Linux

For using on Linux, please go to [Installing Arduino on Linux](http://playground.arduino.cc/Learning/Linux)

##Resources

* **Schematic**
    * [Seeeduino Lotus Eagle file](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/res/Seeeduino_Lotus_v1.0_Sch.zip)
    * [Seeeduino Lotus PDF file](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/res/Seeeduino_lotus_bootloader.zip)

* **Datasheet**
    * [ATmega328P](https://github.com/SeeedDocument/SeeeduinoV4/raw/master/res/ATmega328.pdf)
    * [ATmega16U2](https://github.com/SeeedDocument/SeeeduinoV4/raw/master/res/ATmega16u2.pdf)

* **Bootloader**    
    * [Seeeduino Lotus Bootloader](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/res/Seeeduino_Lotus_v1.0_pdf.pdf)

* **References**
    * [Getting Started with Arduino](https://www.arduino.cc/en/Guide/HomePage)
    * [Arduino Language Reference](https://www.arduino.cc/en/Reference/HomePage)
    * [Download the Arduino Software(IDE)](https://www.arduino.cc/en/Main/Software)
    * [Arduino FAQ](https://www.arduino.cc/en/Main/FAQ)
    * [Arduino Introduction](https://www.arduino.cc/en/guide/introduction)
    * [Wikipedia page for Arduino](https://en.wikipedia.org/wiki/Arduino)

##FAQ

####Q1. What's the different between Arduino UNO and Seeeduino Lotus

Seeeduino Lotus is fully compatible with Arduino UNO. And Seeeduino Lotus has 12 Grove connectors, which makes it convenient to create your demo with Seeed Studio Grove Modules. What's more, Seeeduino Lotus uses a micro USB to power and program. 

####Q2. I can't upload my sketch to Seeeduino Lotus

Please check,

* If the Power LED on
* If you choose the right Port and Board (Seeeduino Lotus)
* Close and reopen Arduino IDE and try again

####Q3. Where can I find technical support if I have some other issue. 

You can post a question to [Seeed Forum](http://www.seeed.cc/discover.html?t=Arduino) or send an email to **techsupport@seeed.cc**.

