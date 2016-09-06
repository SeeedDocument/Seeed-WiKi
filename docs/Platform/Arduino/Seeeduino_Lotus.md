#Seeeduino Lotus
------

##Introduction

![](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/images/Seeeduino_Lotus_Cover.jpg?raw=true)

Seeeduino Lotus is an ATMEGA328 Microcontroller development board. It is a combination of Seeeduino and Base Shield. It uses an Atmel ATMEGA328P-MU and CH340. ATMEGA328P-MU is a high performance, low power AVR 8-Bit Microcontroller. CH340 is a USB bus converter chip that can realize a USB to serial interface. Seeeduino Lotus has 14 digital input/outputs (6 of which can output PWM) and 7 analog input/outputs, a micro USB connection, an ICSP header, 12 Grove connections, a reset button.
 

##Application Ideas

 
##Feature 



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

 
 
 
 
##Install the Driver

First of all, you need to:

* **Get a Micro-USB cable**
    * You need a Micro-USB cable first; the data cable of an Android Phone will do fine.
If you can't find one, you can buy one [here](http://www.seeedstudio.com/depot/Micro-USB-Cable-48cm-p-1475.html?cPath=98_100).

* **Connect the board**
    * The Seeeduino Lotus automatically draw power from either the USB connection to the computer or an external power supply. Connect the Arduino board to your computer using the USB cable. The green power LED (labelled **PWR**) should go on.


###For Windows

!!!Note
    This drive is available for Windows XP, Windows Vista, Windows 7, Windows 8/8.1 and Windows 10.
    
[![enter image description here](https://github.com/SeeedDocument/Seeeduino_Lotus/blob/master/images/download_driver_for_seeeduino_lotus.png?raw=true)](https://github.com/Seeed-Studio/Signed_USB_Serial_Driver/archive/master.zip)

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

[![](https://raw.githubusercontent.com/SeeedDocument/Seeeduino_Stalker_V3_1/master/images/Download_IDE.png)](https://www.arduino.cc/en/Main/Software)


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

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/images/add_board.png)

###Select your board
You'll need to select the entry in the **Tools > Board** menu that corresponds to your Arduino.
Selecting a **Seeeduino V4**.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/images/select_board.png)

###Select your serial port
Select the serial device of the Arduino board from the Tools | Serial Port menu. This is likely to be COM3 or higher (**COM1** and **COM2** are usually reserved for hardware serial ports). To find out, you can disconnect your Arduino board and re-open the menu; the entry that disappears should be the Arduino board. Reconnect the board and select that serial port.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/images/select_port.png)

!!!Note
    On the Mac, this should be something with **/dev/tty.USBmodem**.
    
###Upload the program
Now, simply click the "Upload" button in the environment. Wait a few seconds - you should see the RX and TX LED indicators on the board flashing. If the upload is successful, the message "Done uploading." will appear in the status bar.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/images/upload_button.png)

A few seconds after the upload finishes, you should see the pin 13 (L) LED on the board start to blink (in orange). If it does, congratulations! You've gotten Arduino up-and-running. If you have problems, please see the troubleshooting suggestions.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/SeeeduinoV4/master/images/Seeeduino_v4_2_L.jpg)

##Getting Started on Linux

For using on Linux, please go to [Installing Arduino on Linux](http://playground.arduino.cc/Learning/Linux)








