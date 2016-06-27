##Introduction

Looking for a new platform for your new IoT/wearables devices? Introducing LinkIt One: an all-in-one prototyping board. Integrating GSM, GPRS, Wi-Fi, GPS, Bluetooth features into a basic Arduino board.

[![www.seeed.cc](http://www.seeedstudio.com/wiki/images/a/ab/Linkit-one-page.jpg)](http://www.seeedstudio.com/depot/LinkIt-ONE-p-2017.html)

The LinkIt ONE development board is an open source, high performance board for prototyping Wearables and IoT devices. It's based on the world’s leading SoC for Wearables, MediaTek Aster (MT2502) combined with high performance Wi-Fi (MT5931) and GPS (MT3332) chipsets to provide you with access to all the features of MediaTek LinkIt. It also provides similar pin-out features to Arduino boards, making it easy for you to connect to various sensors, peripherals, and Arduino shields.

LinkIt ONE is a co-design product by Seeed Studio and MediaTek. It brings together the parties’ knowledge in open hardware and industry leading reference designs for Wearables and IoT devices to create this powerful development board.

##Specifications

- Chipset:MT2502A(Aster, ARM7 EJ-STM)
- Clock Speed: 260MHz
- Dimensions: 3.3x2.1 inches
- Flash: 16MB
- RAM: 4MB
- DC Current Per I/O Pin:1mA
- Analog Pins: 3
- Digital Output:3.3V
- Analog Input: 5V
- UART: Software Serial(Serial) and Hardware Serial(Serial1, D0&D1)
- SD Card: Up to 32G(Class 10)
- Positioning: GPS(MT3332)
- GSM: 850/900/1800/1900 MHz
- GPRS: Class 12
- Wi-Fi: 802.11 b/g/n
- Bluetooth: BR/EDR/BLE(Dual Mode)


##Pinout Diagram

![](http://www.seeedstudio.com/wiki/images/a/a0/LinkItONE_RESOURCE.png)


##Switch

There are 3 switches on LinkIt ONE, which are used to control function and working mode.

![](http://www.seeedstudio.com/wiki/images/c/c8/LinkIt_ONE_Wiki_Button.jpg)

- Program Mode
  - MS：The program will not run in this mode, when you connect LinkIt ONE to your PC, you will find a 10M size u-disk, you can put some file to it, and read it out via the code.
  - Uart：When you want to program the board, you should set this switch to Uart.
- Power Switch
  - BAT：Power with Li Battery. When you want to charge the battery, you should set to BAT and connect LinkIt ONE to PC as well.
  - USB：Power with USB, when there's no battery insert and you want to program the board, you should set to USB.
- SD/SPI Switch
  - SPI：When you want to use the extern SPI pins(D10 - D13), set to SPI
  - SD：If you had inserted a TF card and want to read it via code, you should set to SD. When you set to SD, D10-D13 will not available any more


##Quick Start Guide

Start with [MediaTek LinkIt Developer's Guide](http://labs.mediatek.com/fileMedia/download/5fed7907-b2ba-4000-bcb2-016a332a49fd) (requires registration)

![](http://www.seeedstudio.com/wiki/images/e/ee/LinkIt_Developers_Guide.png)

If you had ever used an Arduino, LinkIt ONE will be the easy for you. The same IDE, the same pinout. The difference is LinkIt ONE is uses a much more powerful SoC designed for wearable application.

**Note: LinkIt ONE IDE supports Windows only. Mac and Linux will be supported in the near future.**


####Download LinkIt ONE IDE

Note: If you are using OSX, please refer to here: [LinkIt SDK for OSX](http://www.seeedstudio.com/forum/viewtopic.php?f=42&t=5814)
First of all, you should make your Arduino work with LinkIt ONE, there are 2 steps to finish it.

#####Download Arduino IDE

Please choose the version 1.5.7 or later, upper than 1.6.0 is no support yet. If you had installed an Arduino IDE(1.5.x), then just go to step 2.

#####Install LinkIt SDK.

When you finished downloading the [SDK](http://labs.mediatek.com/site/global/developer_tools/mediatek_linkit/sdk_intro/index.gsp), copy it to the Arduino IDE folder, double click to install it.


On the MTK Offical website, there is 1.1.09 BETA version，which is only suitable for Arduino IDE 1.5.7(and older version). Additionally we have the following file [supports Windows and OS X](http://labs.mediatek.com/site/global/developer_tools/mediatek_linkit/sdk_intro/index.gsp). 

What's more, we add an experimental Board Manager support as for Arduino IDE 1.6.4, json repo website is as follow:[Additional Boards Manager URLs](http://download.labs.mediatek.com/package_mtk_linkitone_index.json) Currently it supports Windows, OS X. 

####Install Driver
You should [close the digital signature](http://www.seeedstudio.com/wiki/Download_Arduino_and_install_Arduino_driver#Installing_drivers_for_the_Seeeduino_with_window8) when you are unsing Win8 or Win8.1.
When first insert LinkIt ONE to your PC, you will find two COM ports that need to be installed driver:

![](http://www.seeedstudio.com/wiki/images/2/2b/LinkIt_ONE_Wiki_Temp1.jpg)

The driver path: **..\LinkIt_ONE_IDE\drivers\mtk**

After installed driver, you can find 2 ports:

![](http://www.seeedstudio.com/wiki/images/f/f9/LinkIt_ONE_Wiki_Temp2.jpg)

- MTK USB Debug Port used for uploading code
- MTK USB Modem Port used for printing message, such as Serial.println()


###Uploading Code

Here we will show you a Blink in LinkIt ONE.
First open LinkIt ONE IDE, then Click **File -> Examples -> Basics -> Blink** to open Blink.
Then Boards choose LinkIt ONE, Port choose the number of MTK USB Debug Port.
Make sure the switch is on the right side before click the Upload button:

![](http://www.seeedstudio.com/wiki/images/f/fc/LinkIt_ONE_Wiki_Temp3.jpg)


##Firmware Update
e will update the firmware of LinkIt ONE every once in a while. When there's new version, you can update your LinkIt ONE to the latest.
In the path: **\LinkIt_ONE_IDE\hardware\tools\mtk**. You will find a FirmwareUpdater.exe application, double click to open it:

![](http://www.seeedstudio.com/wiki/images/9/9e/LinkItONEUpdateFirmware.jpg)

Before you start updating the firmware, make sure the switch is on the right side:

![](http://www.seeedstudio.com/wiki/images/6/69/LinkItONEUpdateFirmware2.jpg)

Click the button and then insert you LinkIt ONE to PC, and wait about 1 minutes, the updating is success.

![](http://www.seeedstudio.com/wiki/images/6/60/LinkItONEUpdateFirmware_ok.jpg)

##Antenna

You can find 3 antennas with LinkIt ONE, they are used for:
- GSM/GPRS
- Wi-Fi/BT
- GPS
When you use this modules, you should connect to right antenna

![](http://www.seeedstudio.com/wiki/images/6/65/Linkit_one_antenna.jpg)


**Note: When you try to pull the antenna, please DO NOT use brute force, try to use the force perpendicular to the direction of the board, otherwise you might damage the antenna pad.**


##Compatible Groves and Shields for LinkIt ONE

We supply hundreds of Groves and Shields, include sensors, actuators, displays and other modules.
You can achieve your idea whit those Groves and Shields easily.
It's a pity that LinkIt ONE can't support all of them.
We had tested all the Groves and Shields with LinkIt ONE, after that we made a compatible list,
which can show you if one Grove or Shield is supported by LinkIt ONE.
Click [here](http://www.seeedstudio.com/wiki/images/1/1e/LinkIt_ONE_Comparability_Test.xlsx) to download the list.


##Tutorial of Sidekick Basic Kit for LinkIt ONE

The Sidekick Basic Kit for LinkIt ONE is designed to be used with your LinkIt ONE board. This kit will help you quickly get alone well with the platform of LinkIt. It includes many of the most popular accessories for DIY projects : like Breadboard, Jumper wires, Color LEDs, Resistors, Buzzer, etc. All of these coming with its own handy box are easy transport and minimal clutter. It includes a fully guide that will familiarize you with a wide range of electronic components while you create small, simple, and easy-to-assemble circuits. There are 10 different courses outlined that will offer a best way for beginner to be familiar with LinkIt ONE.

[![](http://www.seeedstudio.com/wiki/images/b/ba/LinkitONESidebox.jpg)](http://www.seeedstudio.com/depot/Sidekick-Basic-Kit-for-LinkIt-ONE-p-2027.html)



[Github Repo for Sidekick Basic Kit for LinkIt ONE](https://github.com/Seeed-Studio/Sidekick_Basic_Kit_for_LinkIt)

##Resources

* [LinkIt ONE Eagle File](http://www.seeedstudio.com/wiki/images/6/69/LinkIt_ONE_V1.zip)
* [Sidekick Base Kit for LinkIt ONE](http://www.seeedstudio.com/wiki/Sidekick_Basic_Kit_for_LinkIt_ONE)
* [MediaTek_LinkIt_SDK_for_Ardunio](http://labs.mediatek.com/site/global/developer_tools/mediatek_linkit/sdk_intro/index.gsp )
* [LinkIt_ONE_Hardware_Reference_Design_v1_0](http://labs.mediatek.com/fileMedia/download/3e75b1e4-abed-479c-afd2-62247ba47243 )
* [【pdf】LinkIt ONE_Pinout Diagram_v1.0](http://labs.mediatek.com/fileMedia/download/1a4025ed-eeb1-4e8a-b5c7-f3d54ebbb8f0)
* [【PDF】MediaTek_LinkIt_Developers_Guide_v1_0](http://labs.mediatek.com/fileMedia/download/5fed7907-b2ba-4000-bcb2-016a332a49fd)
* [【pdf】MediaTek_MT2502A_SOC_Data_Sheet_v1_0](http://labs.mediatek.com/fileMedia/download/a6883a0a-710e-42cc-8c53-c1ae990d83e3)
* [【pdf】MediaTek_MT5931_Wi-Fi_Data_Sheet_v1_0](http://labs.mediatek.com/fileMedia/download/849a1f28-c8ca-44be-8af8-090480b578e1)
* [【pdf】MediaTek_MT3332_GPS_Data_Sheet_v1_0](http://labs.mediatek.com/fileMedia/download/4c04f268-9f17-4525-954c-d1ae6fdc2f57)


##Related Projects
If you want to make some awesome projects by LinkIt ONE, here's some projects for reference.

###LinkIt ONE IoT Demo

This is an IoT demo make by LinkIt ONE and Grove.

[![](http://www.seeedstudio.com/wiki/images/c/c9/Seeed-recipe-77-20141020151546.jpg)](http://www.seeedstudio.com/recipe/77-linkit-one-iot-demo.html)

With this demo, we can:

- Display household temperautre, humidity, luminosity, volume control data collection on OLED screen
- Cloud service, data uploaded to Cloud platform Xively, real-time monitoring
- Data retention for reviewing how data changes over time
- Remote control Household Appliances by sending a message
- Table Lamp, 3D Printing, controlled by your phone


###Pringles Can antenna with a LinkIt ONE

Make a focused antenna with a pringles can.

![](http://www.seeedstudio.com/wiki/images/1/1c/5515ae26588ec.jpg)

**[More Awesome Projects by LinkIt ONE](http://www.seeedstudio.com/recipe/index.php?m=Home&controller=Recipe&action=productDetail&id=2)**


##Share Your Awesome Projects with Us

Born with the spirit of making and sharing, that is what we believe makes a maker.
And only because of this , the open source community can be as prosperous as it is today.
It does not matter what you are and what you have made, hacker, maker, artist and engineers,
as long as you start sharing your works with others,
you are being part of the open source community and you are making your contributions .
Now share you awesome projects on with us on Recipe, and win a chance to become the Core User of Seeed.

- Core Users, are those who show high interests and significant contributions in Seeed products.
- We cooperate with our Core Users in the development of our new product, which in another word, the Core Users will have the chance to experience any new products of Seeed before its official launch, and in return we expect valuable feedback from them to help us improving the product performance and user experience.
- Also, join the Core User Group, engage with other Core Users of Seeed and make friends with like-minded people, could be a wonder experience for you.
- And most importantly, in most of cases, if our Core Users have any good ideas for making things, we'll offer hardware pieces, PCBA services as well as technical support, to help them achieve their projects.

Get more information about Core User please email to: **recipe@seeed.cc**

##Contact Us

If you have any problem or suggestion about LinkIt ONE, please feel free to contact us.
There is [forum for LinkIt ONE](http://www.seeedstudio.com/forum/viewforum.php?f=42)

You can find if there's an answer here first.
What's more, share your projects or ideas that made by LinkIt ONE here is also welcome, and maybe you can get some useful suggestion about your idea here.