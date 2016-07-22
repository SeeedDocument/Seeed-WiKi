## Introduction

Building IoT project is exciting, as you can connect almost everything around you and control them. However it is also not easy to build IoT applications since it requires a lot of hard works such as hardware programming, jump wires, soldering etc.Even a well trained user would spend hours to hanlde all the work, let alone beginers. In order to simplify the development of IoT project, Seeed launched **[Wio Link](http://www.seeedstudio.com/wiki/Wio_Link)** on **[kickstarter](https://www.kickstarter.com/projects/seeed/wio-link-3-steps-5-minutes-build-your-iot-applicat?ref=nav_search)** and it turn out a big sucess.The slogen on kickstarter well defined the main feature of Wio link:

**3 steps. 5 minutes. Build your own IoT applications!** 

It is so simple, it is fast buiding, however it is not ideal for all conditions.
What if we only need 2 grove connectors? What if there is limited space in the appication but Wio Link is over sized? What if we want to cost down? So right after we released Wio Link, a micro and economic solution was put on schedule,for months Seeeder has redesigned and optimized the WiFI board and here it is,the new member of Wio family---**Wio Node**.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Front%26Back.png)

Just like the meaning of its name, Wio Node is truly a WiFi node that connect things in IoT project. If Wio Link is big brother, Wio node must be the little brother in the Wio family coz this cute little guy is only quarter size of Wio link while intergrates all the basic features of Wio Link.

The ecosystem of Wio Node also consists of Open Hardware **Wio Node board**, **Open Source Wio Link Mobile App** and **Open Source IoT Server implementation**. So the software platform for Wio Link is also available for Wio Node.

[![Get one now](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/300px-Get_One_Now_Banner.png)](https://www.seeedstudio.com/Wio-Node-p-2637.html)

## Features
- No hardware programming or No breadboard or No jumper wires or No soldering required.
- A lot of Grove modules are supported (Check the list in Mobile App).
- Plug-n-Play Grove Modules
- Visual configuration instead of microcontroller programming.
- Update automatically via cloud compiling and OTA.
- Bring Realworld to Virtual platform. All sensors become virtual RESTful API.
- Android & iOS Apps to manage Wio Node.
- IFTTT supported by Seeed's Channel
- CE/FCC/TELEC Certified for core module ESP-WROOM-02

## Specifications
|General||Power Management||
|:---|---|:---|---:|
|**Size**|28mm * 28mm|**DC Current Per I/O Pin**|12mA|
|**Crystal**|26MHz|**Input Voltage (MicroUSB)**| 5V|
|**Flash Memory**|4MBytes (W25Q32B)|**Input Voltage (Battery holder)**|3.4~4.2V|
|**Wi-Fi Network Protocol**|802.11b/g/n|**Output DC Current**|1000mA MAX
|**Wi-Fi Encryption Technology**|WEP/TKIP/AES|**Operating Voltage**|3.3V|
|**Expansion Grove Connector1**|UART0/I2C0/D0 |**Charge Current**|500mA MAX|
|**Expansion Grove Connector2**|Analog/I2C1/D1|

## Hardware Overview

No.|Name|Function|No.|Name|Function|
:---:|:---|---|:---:|---|:---|
1|	**Function Button**| Set Wio Node Mode|5|	**Port0**|	UART/I2C0/D0
2|	**ESP8266**|	MCU Module|6|	**Port1**|	Analog/I2C1/D1
3|	**Reset Button**|	Reset the MCU|7|**JST 2.0 Port**|	Power supply from battery
4|	**Micro USB**|	Power Supply|

![](https://raw.githubusercontent.com/SeeedDocument/Wio_Node/master/pictures/Hardware%20Overview.png)

### Bonus!
Wio Node has an inbuilt LiPo battery charger, so you can charge 3.7v LiPo battery through JST 2.0 Port when USB is connecting.

Note!!!
    Please handle the USB micro type-B socket gently, or you may break the socket apart from the board.
    Battery is not included in the package. But we have arranged plenty of choices for you in [Bazzar](https://www.seeedstudio.com/s/battery.html).


## Get Started
Let us build a very basic LED application with Wio Node,in this application you will be able to control LED by your smartphone in about 5 minutes.Before we start, please make sure you have below things on hand:

|What you need|
|:---:|
|**1.Wio node**
[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20Node2.png)](https://www.seeedstudio.com/Wio-Node-p-2637.html)|
||
|**2.Grove-Led by Seeed**
[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Red%20LED.jpg)](https://www.seeedstudio.com/Grove-Red-LED-p-1142.html)|
||
|**3.USB cable**
[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/48cmUSBc.jpg)](http://www.seeedstudio.com/Micro-USB-Cable-48cm-p-1475.html)|
||
|**4.Grove - Universal 4 Pin Buckled Cable**
[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/20cmbk1.jpg)](http://www.seeedstudio.com/Grove-Universal-4-Pin-Buckled-20cm-Cable-(5-PCs-pack)-p-936.html)|
||
|**5.Smartphone (Android OS version 4.1 or advanced, iOS version 7 or advanced.)**|
### Step 1: Install Android/iOS App
You need to install the Wio Link App to manage and configure your Wio Node devices.

Download the Android or iOS App and install. Or you can go to app store of Apple or Google market and search "Wio Link",you will find it.

|Android|iOS|
|:---:|:---:|
|[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20core%20icon.png)](https://play.google.com/store/apps/details?id=cc.seeed.iot.ap)|[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20core%20icon.png)](https://itunes.apple.com/us/app/wio-link/id1054893491?mt=8)|

Note!
Make sure your Android OS version is 4.1 or advanced, iOS version is 7 or advanced.
### Step 2: Create your Account
- If it is your first time to use Wio APP,you may need to sign up first.
- If you already have an account, check the server location before logging in, a wrong server location may lead to falure when connecting to Wio Node.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/sign%20in%2Blog%20in%2Bchoose%20server.png)
### Step3: Connect Wio Node WiFi AP
- Push and hold the CONFIG button until the blue LED turns into breathing mode (i.e blinking with fade in & fade out effect). It means that Wio node has turned to configuration mode successfully and can be detected by the Wio App.
![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Confiture%20button.png)
- Push "Add your first Device".
- Choose Wio Node
- "Go to wifi list" will lead you to the wifi setting interface of yoour smartphone.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Connect%20to%20Wio%20node%201.png)

- If you have successfully made the blue LED turn into breathing mode, you will find the wio node in the wifi list, connect to it!(Usually it is not called wio node in the wifi list, in the exsample, mine is Wio_091016, you may find one named wio_xxxxxx in your list.)
- Once connected, you will receive a notice, then you can go back to the app 
- Next step is connecting to the wifi of your home or company

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Connect%20to%20Wio%20node2.png)

- If there is password pf the wifi you want to connect,it may require you to enter the password
- Consider that you may need to connect more than 1 wio node in the future,a special name will make you distinguish them from each other easily.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Connect%20to%20Wio%20node3.png)
### Step 4: Virtually interconnect modules with Wio Node and down load firmware
- Click the Wio Node and you will be in the main interface.
- There are 2 grove connectors, select the left one(D0).
- Because LED is output devices. choose output category
- Find the icon that looks like a bulb,choose it.
- Then you will find the bottom rectangle button becomes red and "View API" becomes "Update Firmware".Choose "Update Firmware"

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Connect%20modules%20with%20Wio%20node.png)

- Since you selected the D0 port to connect with LED in the APP, you need to connect the real Grove-LED to D0 port of Wio Node too.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/Wio_Node_Grove_LED.JPG)

### Step 5: Test application using APIs
- Now that  you have successfully connect the LED to Wio Node,click "View API" to check the API of Wio Node
- Input "1" or "0" in the "Test Rquest" area,and click "Post" button and see what will happen.

![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/change%20the%20valure%20to%20see%20what%20will%20happen.png)


## Get started with IFTTT & DoButton
Dont't know how to code? Don't worry,With the help of [IFTTT](https://en.wikipedia.org/wiki/IFTTT), even if you know nothing about coding, you are still able to build some simple projects.

If you don't have an IFTTT account,click [here](https://ifttt.com/join) to sign up.

If you already have an IFTTT account,click [here](https://ifttt.com/recipes/search?q=seeed) to connect with seeed, or search seeed at IFTTT website.There you will find 9 recipes by Seeed to teach you how to us e IFTTT.
![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/IFTTT%20recipes.png)
What is DoButton? DoButtton is one of IFTTT's application that empowers you to create your own personalized button with just a tap,it is very suitable for building IoT projects and control it through your smartphone, here are two examples to show you how to use IFTTT&DoButton to make useful applications.

### Example:

|**IFTTT**|**DoButton**|
|:---|:---|
|[**Recipe**][DIY an Automatic Garden Irrigation without coding](http://www.seeed.cc/project_detail.html?id=1080)|[**Recipe**][How to feed your pets when you're not home](http://www.seeed.cc/project_detail.html?id=1066)|
|[**Video**][How to use ITFFF](https://vimeo.com/148590984)|[**Video**][How to use DoButton](https://vimeo.com/146988454)|


## Application Ideas
Wio Node is well designed to provide simple and economic wifi solutions for projects like:
- Smart Home
- Intelligent environmental monitoring
- Funny Toys
- Web of Things
- Internet of Things

In fact, we have already designed many projects in our [**recipe**](http://www.seeed.cc/projects.html?t=Wio), come and visit it to find some interesting projects or even share you own projects, I am sure it will gain a lot of fans for you ~

|Irrigation control system |The internet of led wall | Dog feeding machine|
|---|---|---|
|[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/2.png)](http://www.seeed.cc/project_detail.html?id=1274)    |[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/1.png)](http://www.seeed.cc/project_detail.html?id=1594) |![](https://raw.githubusercontent.com/SeeedDocument/Wio_Node/master/pictures/3.png)|
## Guide for advanced users

If you are advanced users and want to know more details about Wio Node, here it is! [Guide for advanced users](https://github.com/Seeed-Studio/Wio_Link/wiki/Advanced%20User%20Guide).The guide covers:
- Status LEDs
- Process of Connecting to Server
- Debug Console
- Repair Bricked Wio Link
- Use Wio Link Offline
- Use Wio Link's SDK and Program in Arduino-Styleanced users

 
## FAQ

If you have any issues when you are using Wio Node or other Wio products, welcome to the [Community of Wio](http://www.seeed.cc/topics.html?t=Wio) where there are many professional users waiting to give you advices and also many advanced users providing plenty of ideas on how to use Wio products!.Here are some examples 
- [**Wio node and gesture sensor to control a servo**](http://www.seeed.cc/topic_detail.html?id=5787)
- [**Incorrect temperature?**](http://www.seeed.cc/topic_detail.html?id=5787)
- [**One Wire Temperature Sensor With WioNode**](http://www.seeed.cc/topic_detail.html?id=5781)
- [**#idea SAM - an Integrated Sound and Music system for the home.**](http://www.seeed.cc/topic_detail.html?id=5609)

## Resources
- Documentation and references
  - [API Reference](http://seeed-studio.github.io/Wio_Link/)
  - [Server Deployment Guide](https://github.com/Seeed-Studio/Wio_Link/wiki/Server%20Deployment%20Guide)
  - [How to write module driver for Wio Link](https://github.com/Seeed-Studio/Wio_Link/wiki/How-to-write-module-driver-for-Wio-Link%3F)
- Software
  - [Sourcecode on Github.](https://github.com/Seeed-Studio/Wio_Link)
- Hardware
  - [Schematic Files](https://github.com/SeeedDocument/Wio_Node/raw/master/Recources/Wio%20Node%20v1.0.pdf)
- Certificate
  - [CE/FCC/TELEC Certified(only) for core module ESP-WROOM-02](https://github.com/SeeedDocument/Wio_Node/raw/master/Recources/CE-FCC-TELEC_Certified(only)_for_core_module_ESP-WROOM-02.zip)




## Help us to make it better

<iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.surveymonkey.com/r/5P6WC89" frameborder="0"></iframe>




