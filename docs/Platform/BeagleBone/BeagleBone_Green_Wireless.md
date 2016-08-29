##Introduction
----

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/BBGW_cover.png?raw=true)

SeeedStudio BeagleBone Green Wireless (BBGW) is a joint effort by BeagleBoard.org and Seeed Studio. It is based on the open-source hardware design of [BeagleBone Black](http://beagleboard.org/black) and developed into this differentiated version. SeeedStudio BeagleBone Green Wireless has included a high-performance flexible WiFi/Bluetooth interface and two Grove connectors, making it easier to connect to the large family of Grove sensors. The on-board HDMI and Ethernet are removed to make room for these wireless features and Grove connectors.

[![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/get_one_now.png?raw=true)](http://www.seeedstudio.com/SeeedStudio-BeagleBone-Green-Wireless-p-2650.html)

##Features
----

* **Processor: AM335x 1GHz ARM® Cortex-A8**
	* 512MB DDR3 RAM
	* 4GB 8-bit eMMC on-board flash storage
	* 3D graphics accelerator
	* NEON floating-point accelerator
	* 2x PRU 32-bit microcontrollers

* **Connectivity**
	* USB client for power & communications
	* USB host with 4-port hub
	* WiFi 802.11 b/g/n 2.4GHz
	* Bluetooth 4.1 with BLE
	* 2x 46 pin headers
	* 2x Grove connectors (I2C and UART)

* **Software Compatibility**
	* Debian
	* Android
	* Ubuntu
	* Cloud9 IDE on Node.js w/ BoneScript library
	* plus much more

##Specification
----

|Item|Value|
|----|------|
|Processor|	AM335x 1GHz ARMR Cortex-A8|
|RAM|	512MB DDR3|
|on-board Flash Storage	|4GB eMMC|
|CPU Supports	|NEON floating-point & 3D graphics accelerator|
|Micro USB	Supports |powering & communications|
|USB |USB2.0 Host	*4|
|Grove Connectors	|2 (One I2C and One UART) |
|GPIO	|2 x 46 pin headers|
|Ethernet	|Wi-Fi 802.11b/g/n 2.4GHz and Bluetooth 4.1 LE|
|Operating Temperature	|0 ~ 75 |


##Application Ideas
- Internet of Things
- Smart House
- Industrial
- Automation & Process Control
- Human Machine Interface
- Sensor Hub
- Robot

Here are some funny projects for your reference.

##Getting Started
!!!Note
    This chapter is writing under Win10. The steps are familiar for the other operate systems.

###STEP1. Plug in your BBGW via USB
Use the provided micro USB cable to plug your BBGW into your computer. This will both power the board and provide a development interface. BBGW will boot Linux from the **on-board 2GB** or 4GB eMMC.

BBGW will operate as a flash drive providing you with a local copy of the documentation and drivers. Note that this interface may not be used to re-configure the microSD card with a new image, but may be used to update the boot parameters using the uEnv.txt file.

You’ll see the PWR LED lit steadily. Within 10 seconds, you should see the other LEDs blinking in their default configurations.

- D2 is configured at boot to blink in a heartbeat pattern
- D3 is configured at boot to light during microSD card accesses
- D4 is configured at boot to light during CPU activity
- D5 is configured at boot to light during eMMC accesses

###STEP2. Install Drivers

Install the drivers for your operating system to give you network-over-USB access to your Beagle. Additional drivers give you serial access to your board.

|Operating System |	USB Drivers |	Comments |
|---------------------|---------|------------|
|Windows (64-bit) |	[64-bit installer](http://beagleboard.org/static/Drivers/Windows/BONE_D64.exe)	 | |
|Windows (32-bit) |	[32-bit installer](http://beagleboard.org/static/Drivers/Windows/BONE_DRV.exe)||
|Mac OS X|[Network](http://beagleboard.org/static/Drivers/MacOSX/RNDIS/HoRNDIS.pkg) [Serial](http://beagleboard.org/static/Drivers/MacOSX/FTDI/EnergiaFTDIDrivers2.2.18.pkg) | Install both sets of drivers.|
|Linux|[mkudevrule.sh](http://beagleboard.org/static/Drivers/Linux/FTDI/mkudevrule.sh)|Driver installation isn't required, but you might find a few udev rules helpful.|

!!!Note
    For window system, please note that:
    
    * Windows Driver Certification warning may pop up two or three times. Click "Ignore", "Install" or "Run"
    * To check if you're running 32 or 64-bit Windows see [this](https://support.microsoft.com/kb/827218).
    *  On systems without the latest service release, you may get an error (0xc000007b). In that case, please [install](https://www.microsoft.com/en-us/download/confirmation.aspx?id=13523) and retry: 
    * You may need to reboot Windows.
    * These drivers have been tested to work up to Windows 10

!!!Note
    Additional FTDI USB to serial/JTAG information and drivers are available from [https://www.ftdichip.com/Drivers/VCP.htm](https://www.ftdichip.com/Drivers/VCP.htm).

!!!Note
    Additional USB to virtual Ethernet information and drivers are available from [https://www.linux-usb.org/gadget/](https://www.linux-usb.org/gadget/) and [https://joshuawise.com/horndis](https://joshuawise.com/horndis).


###STEP3. Browse to your Beagle

Using either Chrome or Firefox (Internet Explorer will NOT work), browse to the web server running on your board. It will load a presentation showing you the capabilities of the board. Use the arrow keys on your keyboard to navigate the presentation.

Click [http://192.168.7.2](http://192.168.7.2) to launch to your BBGW.
Older software images require you to EJECT the BEAGLE_BONE drive to start the network. With the latest software image, that step is no longer required.

[![Click to view larger image](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/launch.png)](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/launch.png)

###STEP4. Cloud9 IDE

To begin editing programs that live on your board, you can use the Cloud9 IDE by click

[![enter image description here](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/cloud9.png)](http://192.168.7.2:3000/ide.html)

###STEP5. Connect your BBGW to Wi-Fi 

Using your smart phone or computer to scan local Wi-Fi network and connect to the AP named "BeagleBone XXX"

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/wifi1.png?raw=true)

After connection success, it will head to the login page automatically. Select the SSID of your Wi-Fi and enter the passwd, click OK.

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/wifi2.png?raw=true)

Now your BBGW is connected to Wi-Fi.

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/wifi3.png?raw=true)

###STEP6. Connect your BBGW to your Bluetooth Device

Connect to Cloud9 IDE and start a new terminal.
Start the bluetooth config with the command: 

```
bb-wl18x-bluetooth
bluetoothctl
```

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/bluetooth1.jpg?raw=true)

Type ``scan on`` to scan local bluetooth devices. My device named "jy" is found. 

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/bluetooth2.jpg?raw=true)

Copy the device mac address, then contect to the device  with the command:

```
pair 0C:xx:xx:xx:xx:0B
trust 0C:xx:xx:xx:xx:0B
connect 0C:xx:xx:xx:xx:0B
```

![](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/bluetooth3.jpg?raw=true)

Now your BBGW is connected to your bluetooth device. Type ``quit`` back to the terminal.
Play music on BBGW, then you will hear music on your bluetooth speaker device.

##Update to latest software
-----

You need to update the board to latest software to keep a better performance, here we will show you how to make it step by step. 

###STEP1. Download the latest software image

First of all, you have to download the suitable image here. 

[![enter image description here](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/down_latest_image.png)](http://beagleboard.org/latest-images)

!!!Note
    Due to sizing necessities, this download may take about 30 minutes or more. 

The file you download will have an **.img.xz** extension. This is a compressed sector-by-sector image of the SD card. 

###STEP2. Install compression utility and decompress the image

Download and install [7-zip.](http://www.7-zip.org/download.html) 

!!!Note
    Choose a version that suitable for your system.

Use 7-zip to decompress the SD card **.img file**

###STEP3. Install SD card programming utility

Download and install [Image Writer for Windows](https://sourceforge.net/projects/win32diskimager/files/latest/download). Be sure to download the binary distribution.

###STEP4. Write the image to your SD card

You need a SD adapter to connect your microSD card to your computer at the first. Then use the software Image Write for Windows to write the decompressed image to your SD card.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/win32_disk_image.png)

Click on **Write** button, then the process is started. 

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/win32_disk_image_process.png)

!!!Note
    * You may see a warning about damaging your device. This is fine to accept as long as you are pointing to your SD card for writing.
    * You should not have your BeagleBone connected to your computer at this time.
    * This process may need up to 10 minutes.


###STEP5. Boot your board off of the SD card

Insert SD card into your (powered-down first) board. Then the board will boot from the SD card.

!!!Note
    If you don't need to write the image to your on-board eMMC, you don't need to read the last of this chapter.  Otherwise pleas go ahead.

If you desire to write the image to your on-board eMMC, you need to launch to the board, and modify a file. 

In **/boot/uEnv.txt**:

    ##enable BBB: eMMC Flasher:
    #cmdline=init=/opt/scripts/tools/eMMC/init-eMMC-flasher-v3.sh
Change to:

    ##enable BBB: eMMC Flasher:
    cmdline=init=/opt/scripts/tools/eMMC/init-eMMC-flasher-v3.sh

Then you will find the 4 user led light as below

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/BeagleBone_Green/master/images/flashing.gif)

!!!Note
    If you don't find the upper tracing light, please press the RESET button to reset the board. 
    
When the flashing is complete, all 4 USRx LEDs will be **off**. The latest Debian flasher images automatically power down the board upon completion. This can take up to **10 minutes**. Power-down your board, remove the SD card and apply power again to be complete.


##Program Grove Module with MRAA and UPM

We have provided Mraa library and UPM library to make it easy for developers and sensor manufacturers to map their sensors & actuators on top of supported hardware and to allow control of low level communication protocol by high level languages & constructs.
###What are Mraa and UPM?
Mraa is a C/C++ library with bindings to Python, Javascript and Java to interface with the I/O on BBG, BBGW and other platforms, with a structured and sane API where port names/numbering matches the board that you are on. Use of Mraa does not tie you to specific hardware with board detection done at runtime you can create portable code that will work across the supported platforms.
UPM is a high level repository for sensors that use MRAA. Each sensor links to MRAA and are not meant to be interlinked although some groups of sensors may be. Each sensor contains a header which allows to interface with it. Typically a sensor is represented as a class and instantiated.The constructor is expected to initialise the sensor and parameters may be used to provide identification/pin location on the board.
###How to use Mraa and UPM?
####1.Install and update
Mraa and UPM are already installed in the system image of BBGW, so **you don't need to install it.** However if you want to update the library, or want to upgrade the library, use ``apt-get update`` and ``apt-get upgrade`` please. Refer to [https://github.com/intel-iot-devkit/mraa](https://github.com/intel-iot-devkit/mraa) and [https://github.com/intel-iot-devkit/upm](https://github.com/intel-iot-devkit/upm) for more information.
####2.Mraa Map for BBGW

![GPIO](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/mraa_map_bbgw_gpio.jpg?raw=true)

![I2C](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/mraa_map_bbgw_i2c.jpg?raw=true)

![PWM](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/mraa_map_bbgw_pwm.jpg?raw=true)

![ADC_IN](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/mraa_map_bbgw_adc.jpg?raw=true)

![UART](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/blob/master/images/mraa_map_bbgw_uart.jpg?raw=true)


###Example
- light a led

```
import mraa
import time
#mraa.gpio60 = P9_14 = GPIO_50
led = mraa.Gpio(60)
led.dir(mraa.DIR_OUT)

while True:
    led.write(1)
    time.sleep(1)
    led.write(0)
    time.sleep(1)

```
- Grove - PIR Sensor

```
import mraa
import time
#mraa.gpio73 = P9_27 = GPIO_115
pir = mraa.Gpio(73)
pir.dir(mraa.DIR_IN)

while True:
    print (pir.read())
    time.sleep(1)
```
- Grove - Rotary Angle Sensor

```
import mraa
import time
#mraa.aio1 = AIN0
rotary = mraa.Aio(1)

while True:
    print(rotary.read())
    time.sleep(1)
```

- More Tutorials

[Grove - 3-Axis Digital Accelerometer(±16g)
 Grove - Variable Color LED](http://www.seeed.cc/BBGW-starter-tutorial%231-The-breath-LED-p-1641.html)

[Grove - Mini Fan
Grove - PIR Motion Sensor
Grove - Rotary Angle Sensor
](http://www.seeed.cc/BBGW-starter-tutorial%232%3A-storm-on-your-table-p-1643.html)

[Grove - Relay
Grove - Sound Sensor
](http://www.seeed.cc/BBGW-starter-tutorial%233-Speak-louuuuuudly-p-1644.html)

[Grove - OLED Display 0.96”
Grove - Light Sensor 
Grove - Temperature Sensor
](http://www.seeed.cc/BBGW-starter-tutorial%234%3AHow-hot-is-it-today%3F-Ask-BBGW!-p-1645.html)

[Grove - GPS
Grove - Button(P)
Grove - Buzzer
Grove - RTC v2.0
](http://www.seeed.cc/BBGW-starter-tutorial%235-Where-are-you%3F-p-1648.html)



##References and Resources
###References
----
There're many references to help you to get more information about the board. 

* [BeagleBoard Main Page](http://beagleboard.org/)
* [BeagleBone Green Wireless info at BeagleBoard page](http://beagleboard.org/green-wireless)
* [BeagleBoard Getting Started](http://beagleboard.org/getting-started)
* [Troubleshooting](http://beagleboard.org/getting-started#troubleshooting)
* [Hardware documentation](http://beagleboard.org/getting-started#hardware)
* [Projects of BeagleBoard](http://beagleboard.org/project)

###Resources
-----
- [BeagleBone_Green_Wireless Schematic(pdf)](https://github.com/SeeedDocument/BeagleBone_Green_Wireless/tree/master/resources/BeagleBone_Green Wireless_V1.0_SCH_20160314.pdf)


##Help us to make it better
-------

<iframe style="height: 600px; width: 700px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.surveymonkey.com/r/bbg_w" frameborder="0"></iframe>
