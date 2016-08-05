# Introduction
What's the toughest part of building IoT applications? Someone says the jump wires usually make him frustrated, while the other guy says he hates soldering the most. There are even some people who don't like breadboard. Maybe you are not one of them, but the knowledge of electronic engineering, micro-controller programming, network programming, IoT protocols handling are still great burden between you and a successful IoT project.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/WioLink.png)

In order to simplify all these steps, at the end of 2015, Seeed Studio initiated Wio Link on [KickStarter](https://www.kickstarter.com/projects/seeed/wio-link-3-steps-5-minutes-build-your-iot-applicat?ref=nav_search), defined a new way of developing IoT applications. Wio Link is an ESP8266 SoC based open-source Wi-Fi development board, the best part of it is the associated platform that allows users to create IoT applications by virtualizing plug-n-play modules to RESTful APIs with mobile Apps. It means that there will be no hardware programming, no breadboard, no jumper wires, and no soldering, just by installing an App on your mobile phone, you are able to build a simple IoT project in 5 minutes.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/300px-Get_One_Now_Banner.png)
# Features

- No hardware programming, No breadboard, No jumper wires, No soldering required.
- A lot of Grove modules are supported (Check the list in Mobile App).
- Plug-n-Play Grove Modules
- Visual configuration instead of microcontroller programming.
- Update automatically via cloud compiling and OTA.
- Bring real world to virtual platform. All sensors become virtual RESTful API.
- Android & iOS Apps to manage Wio Link.
- IFTTT supported by Seeed's Channel

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Wio_Link_Banner.gif)

# Specification
----
|General|Value|Power Management|Value|
|:---|---|:---|---:|
|**Size**|55mm * 48mm|**DC Current Per I/O Pin**|12mA|
|**Crystal**|26MHz|**Input Voltage (Micro USB)**| 5V|
|**Flash Memory**|4MBytes (W25Q32B)|**Input Voltage (Battery holder)**|3.4~4.2V|
|**Wi-Fi Network Protocol**|802.11b/g/n|**Output DC Current**|1000mA MAX
|**Wi-Fi Encryption Technology**|WEP/TKIP/AES|**Operating Voltage**|3.3V|
|**Grove Connectors**|6 |**Charge Current**|500mA MAX|
|**Flash**|	4MB (W25Q32B)|

## Make with Wio Link
----
Wio Link is well designed to provide simple Wi-Fi solutions for projects like:

- Smart Home
- Intelligent environmental monitoring
- Funny Toys
- Web of Things
- Internet of Things

In fact, we have already designed many projects in our [**recipe**](http://www.seeed.cc/projects.html?t=Wio), come and visit it to find some interesting projects or even share you own projects, I am sure it will gain a lot of fans for you ~



[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Feed%20your%20pet%20button.jpg)](http://www.seeed.cc/project_detail.html?id=1066)

[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Environmental%20Monitor.jpg)](http://www.seeed.cc/A-website-to-see-the-environment-data-around-you--p-1069.html)

[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/No%20Missed%20Call%20.jpg)](http://www.seeed.cc/project_detail.html?id=1059)

[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Smart%20Plant%20Watering.jpg)](http://www.seeed.cc/Irrigation-Control-System-Based-on-Wio-Node-p-1274.html)

[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Boss%20Key.jpg)](http://www.seeed.cc/project_detail.html?id=1077)

[![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Traffic%20light%20prompter.jpg)](http://www.seeed.cc/project_detail.html?id=1068)

# Hardware Overview

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Hardware%20overview.jpg)

|Part|Function|
|---|---|
|MCU	|ESP8266|
|Digital Port 0	|GPIO 14|
|Digital Port 1|	GPIO 12|
|Digital Port 2	|GPIO 13|
|Analog Port	|A3|
|UART Port|	Pin 1 & Pin 3|
|I2C Port|	Pin 4 & Pin 5|
|Status Light|Blue LED is the WiFi status indicator, Red LED indicates the working status
|Configure Button| To configure and manage your Wio Link|
|Battery Holder|JST2.0|
|Micro USB|To power the board or communicate to the PC|
|Reset Button| To reset the MCU|

### Status LEDs
Near to the FUNCTION button there’re 2 status Leds, a blue one and a red one. The BLUE led is the network status indicating led. It has the following blink patterns:

- breathing Under configuration mode
- blink twice quickly then off 1s requesting IP address from router
- blink once quickly then off 1s connecting to the server
- on 1s then off 1s The node is online
- on constantly the node is dead for not getting IP or not connecting to server.
- blink quickly (on 100ms then off 100ms) OTA  

!!!Note
The BLUE led is attached to GPIO2 which is also the TX pin of UART1. When downloading firmware, the UART1 dumps the data transmitting on UART0 by instinct. So the BLUE led will blink while downloading firmware. After startup the GPIO2 will be configured as a GPIO not TX of UART1.

The RED led is another status led which indicates the power status of Grove modules. All the six Grove interface’s VCC converge together and can be controlled with GPIO 15. When the node is in deep sleep mode, all the grove modules lose their power too. The RED led will light on when Grove modules are powered and will go off when Grove modules aren’t powered.

### Bonus!
Wio Link has an inbuilt LiPo battery charger, so you can charge 3.7v LiPo battery through JST 2.0 Port when USB is connecting.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/500px-Wio_Link_Battery.jpg)

!!!Note
Battery needs to be bought separately. Please visit Bazzar where we arranged many choices for you.

# Get Started

Let us build a very basic LED application with Wio Link, in this application you will be able to control LED by your smartphone in about 5 minutes. Before we start, please make sure you have below things on hand:

|Wio Link|Grove - LED|Micro USB Cable|
|:--------:|:-----------:|:---------------:|
|![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Wio%20link%20small%20image.jpg)|![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Red%20LED.jpg)|![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/48cmUSBc.jpg)|
|[GET ONE NOW](https://www.seeedstudio.com/Wio-Link-p-2604.html)|[GET ONE NOW](https://www.seeedstudio.com/Grove-Red-LED-p-1142.html)|[GET ONE NOW](http://www.seeedstudio.com/Micro-USB-Cable-48cm-p-1475.html)|

!!!NOTE
    * A smartphone is needed as well (Android OS version 4.1 or advanced, iOS version 7 or advanced)
    * Grove - LED include a Grove cable already
### **STEP 1:** Install Android/iOS App
You need to install the Wio Link App to manage and configure your Wio Link devices.

Download the Android or iOS App and install. Or you can go to App Store of Apple or Google Market and search "Wio Link", you will find it.

|[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Android%20Robot%20new.jpg)](https://play.google.com/store/apps/details?id=cc.seeed.iot.ap)|[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Apple%20new.jpg)](https://itunes.apple.com/us/app/wio-link/id1054893491?mt=8)|
|:---:|:---:|
|[Get Android App](https://play.google.com/store/apps/details?id=cc.seeed.iot.ap)|[Get iOS App](https://itunes.apple.com/us/app/wio-link/id1054893491?mt=8)|

!!!Note
    Make sure your Android OS version is 4.1 or advanced, iOS version is 7 or advanced.

### **STEP 2:** Create your Account
- If it is your first time to use Wio APP, it may require GPS authorization, please approve it, then sign up.
- If you already have an account, check the server location before logging in.

!!!Note
Please pay attention to the server location, because wrong server location will lead to failure when connecting to Wio Node.

[![](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/sign%20in%2Blog%20in%2Bchoose%20server.png)](https://github.com/SeeedDocument/Wio_Node/raw/master/pictures/Wio%20App/sign%20in%2Blog%20in%2Bchoose%20server.png)

### **STEP 3**: Connect Wio Link Wi-Fi AP
- Push and hold the CONFIG button until the blue LED turns into breathing mode (i.e. blinking with fade in & fade out effect). It means that Wio Link has turned to configuration mode successfully and can be detected by the Wio App.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/WioLink_Configure-middle.png)

- Push "Add your first Device".
- Choose Wio Link
- "Go to Wi-Fi list" will lead you to the Wi-Fi setting interface of your smartphone.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Step3-1new.png)

- If you have successfully made the blue LED turn into breathing mode, you will find the Wio Link in the Wi-Fi list, connect to it!(Usually it is not called Wio Link in the Wi-Fi list, in the example, mine is Wio_8B2F12, you may find one named wio_xxxxxx in your list.)
- Once connected, you will receive a notice, then you can go back to the app
- Next step is connecting to the Wi-Fi of your home or company

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Step3-2.png)

- If there is password pf the Wi-Fi you want to connect, it may require you to enter the password
- Consider that you may need to connect more than 1 Wio device in the future, a special name will make you distinguish them from each other easily.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Step3-3.png)

### **STEP 4:** Virtually interconnect modules with Wio Node and update firmware
- Click the Wio Link and you will be in the main interface.
- There are 6 grove connectors, select the first one on the left.
- Because LED is output devices. Choose output category
- Find the icon that looks like a bulb, choose it.
- Then you will find the bottom rectangle button becomes red and "View API" becomes "Update Firmware". Choose "Update Firmware"

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Step4.png)

- Since you selected the Digital 0 port to connect with LED in the APP, you need to connect the real Grove-LED to Digital 0 port of Wio Link too.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Wio_Link_Grove_LED%20middle.JPG)

### **STEP 5**: Test application using APIs
- Now that  you have successfully connect the LED to Wio Node, click "View API" to check the API of Wio Link
- Input "1" or "0" in the "Test Request" area, and click "Post" button and see what will happen.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Step5.png)



# Get started with IFTTT & DoButton
---
Dont't know how to code? Don't worry, with the help of [IFTTT](https://en.wikipedia.org/wiki/IFTTT), even if you know nothing about coding, you are still able to build some simple projects.

IFTTT is an abbreviation of "If This Then That", it is a free web-based service that allows users to create chains of simple conditional statements, called "recipes", which are triggered based on changes to other web services such as Gmail, Facebook, Instagram. How does IFTTT work with Wio Node? As you can see in below pictures, Seeed provided cloud service at wio.seeed.io, which can interchange data and send instructions to IFTTT and Wio Node. So by creating some simple recipe, you are able to hack things without coding.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/IFTTT.png)

If you don't have an IFTTT account, click [here](https://ifttt.com/join) to sign up.

If you already have an IFTTT account,click [here](https://ifttt.com/recipes/search?q=seeed) to connect with Seeed, or search Seeed at IFTTT website. There you will find 9 recipes by Seeed to teach you how to us e IFTTT.
![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/IFTTT%20recipes.png)

What is DoButton? DoButton is one of IFTTT's application that empowers you to create your own personalized button with just a tap, it is very suitable for building IoT projects and control it through your smartphone, here are two examples to show you how to use IFTTT&DoButton to make useful applications.

## Example:

|**IFTTT**|**DoButton**|
|:---|:---|
|[**Recipe**][DIY an Automatic Garden Irrigation without coding](http://www.seeed.cc/project_detail.html?id=1080)|[**Recipe**][How to feed your pets when you're not home](http://www.seeed.cc/project_detail.html?id=1066)|
|[**Video**][How to use ITFFF](https://vimeo.com/148590984)|[**Video**][How to use DoButton](https://vimeo.com/146988454)|


# Guide for advanced users
----
Feel those examples too simple? Wanna make more complicated projects? Here are the best guides for advanced users to hack things with Wio Link. By these guides, advanced users are able to know more detail information about Wio Link, deploy private server, even write module driver for Wio Link.

[![](https://raw.githubusercontent.com/SeeedDocument/Wio_Node/master/pictures/GOTO_ADVANCED_GUIDE.png)](https://github.com/Seeed-Studio/Wio_Link/wiki)

The guide covers:

- API Reference
- Server Deployment Guide
- Advanced User Guide
- How to write module driver for Wio Link?

# Advanced Tutorial
If you have successfully controlled the grove-led with your smartphone, and want to try something more difficult and not that complicated, why not try this tutorial, after learning it, you will be able to  build a temperature and humidity monitor and light up the RGB Led strip with Wio Link.

Before you start, please check if you have below devices on hand.

- [Led strip](https://www.seeedstudio.com/s/led%20strip.html)
- [Grove-Temperature and Humidity Sensor](https://www.seeedstudio.com/Grove-Temp%26Humi-Sensor-p-745.html)


- Step1: Remove the Grove LED from the grove connector, plug the Led strip to Wio Link and drag the same module to Wio Link in the App.
- Update the firmware.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/advance%20tutorial%20video.png)

- Step2：Plug the Grove-Temperature and Humidity Sensor to Wio Link and drag the same module to Wio Link in the App.
- Update the firmware.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/advance%20tutorial%20video%202.png)

- Step3: View the APIs and read the temperature & humidity in your house. Below image shows the temperature change before and after holding the grove in hand. I increased the temperature by 1 celsuis. Try and see how you can change the temperature and humidity in your house.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Celsuis%202%20pics.png)

- Step4: Control the light of Led strip by changing RGB value.

Because the Wio Link App read hex RGB value, RGB value need to be converted to hex value. Here I would like to recommend the website [RGB t0 Hex](http://www.rgbtohex.net/). Just by inputting RGB value for the 3 RGB elements (Red, Green, Blue), the website will converts the RGB value to hex very easily. Here is some example.
- Input 255, 0, 0

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/RGB%20255%200%200.png)

- Convert it, then you will get the hex value as FF0000, the color is Red.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/FF0000.png)

!!!Note
The RGB value you input should be any nature number between 0 and 255 (Including 0 and 255)

Then input how many Leds you want to lighten and the hex value in the app, here my Led strip has 30 Leds, so I lighten all of them.

![](https://github.com/SeeedDocument/Wio_Link/raw/master/image/Wio%20link%20control%20led%20strip.png)

You can also specific which part of the strip be lighted and give a special color to it, or even make like blink in rainbow mode. A lot of amazing functions are waiting for your exploration!


# Resource
---
- Hardware
  - [EAGLE Schematic files](https://github.com/SeeedDocument/Wio_Link/raw/master/resource/Wio_Link_SCH_v1.0.rar)
  - EAGLE PCB file
  - Schematic files(pdf)
- Software
  - [Source Code on Github.](https://github.com/Seeed-Studio/Wio_Link)
- More documentation and references
  - [API Reference](http://seeed-studio.github.io/Wio_Link/)
  - [Server Deployment Guide](https://github.com/Seeed-Studio/Wio_Link/wiki/Server%20Deployment%20Guide)
  - [How to write module driver for Wio Link](https://github.com/Seeed-Studio/Wio_Link/wiki/How-to-write-module-driver-for-Wio-Link%3F)
  - [iot.seeed.cc](http://iot.seeed.cc/index.html) to get more info.


## FAQ
----
Here are some questions that we usually received from new users. If you have any other issues when you are using Wio Link or other Wio products, welcome to the [Community of Wio](http://www.seeed.cc/topics.html?t=Wio) where there are many professional users waiting to give you advices and also many advanced users providing plenty of ideas on how to use Wio products!

**1. Power & Battery － Does Wio Link come with a Lipo battery?**

Nope. Each Wio Link goes with a micro USB cable for charging or you can purchase a 3.7V Lipo battery from our Bazzar. Here’s the specs for your reference:
- maximum input voltage: 4.2V;
- maximum charging current: 500mA.


**2. Power & Battery - Can I use a power adapter with Wio Link? Which type? And common battery holders?**

There are two ways to power the Wio Link, Micro USB cable or a 3.7V Lipo battery. If both Micro USB and battery are plugged into the board, the battery will be charged by the USB power. You can use all kinds of power adapter which can connect with Micro USB cable and 5Vdc output. The battery holder is a JST-2.0 connector.


**3. Power Consumption - What’s the power consumption of Wio Link?**

The average power consumption is 70mA. With a battery of 700mAh, it can keep alive up to 10 hours. There are Low-Power-APIs which allows you to change the Wio Link from working-mode to sleeping-mode. It will reduce average power consumption to 150uA or less.


**4. Grove Cables - Are the Groves equipped with cables in all kits?**

Yes, we have each Grove modules packed with one standard 4-pin Grove cable.


**5. RESTful APIs - Where are the endpoints? The calls aren't required to go through some cloud servers are they? Is it an internet connection required or can they be made all through a local network?**

We deploy the REST API server to iot.seeed.cc, so you can get access to sensor and actuator from iot.seeed.cc. At the moment, Wio Link must connect to the Internet. Also, we will open-source the server so as to enable users deploy local servers in very simple Docker way. With local servers deployed, they can utilize the compiling and data exchange service locally instead of going online.


**6. Programming Methods Supported - Will other programming methods be supported, such as Arduino IDE?**

Wio Link can be programed with Arduino IDE, in that case it will lose the functionality of RESTful APIs except you implement another one in the same time. Wio Link is mostly expected to archive the Web of Things conversion for physical hardware, so interactions are expected to perform in web / internet. But no worries, the software architecture is flexible, you can pull down the source code to local and connect Wio Link to the local servers, then you could modify the source code which will be compiled.

If you would like to interact with Arduino or RPI, you can develop a 3rd-party module driver and here’s the guide: https://github.com/Seeed-Studio/Wio_Link/wiki/How-to-write-module-driver-for-Wio-Link%3F and example driver: https://github.com/Seeed-Studio/Wio_Link/tree/master/grove_drivers/grove_example


**7. Platform Supported -Does Wio Link support Windows Platform?**

By now Wio Link provides Android and iOS two mobile Apps. We have all services as RESTful API, such like user accounts and OTA, following API documents, the third-party developers can build their own applications say Mobile Apps or Desktop Apps.
Wio Link is an community friendly project. It won't be limited to a certain platform. We really expect people can play with Wio Link in their way.


**8. Can I use Wio Link to interact with existing systems?**

Yes. Who Link can interact with your existing system in several ways. First, connect any GPIO of Wio Link to other system, select “Generic Digital Input” or “Generic Digital Output” virtual Grove modules in the mobile App, then send/read signals to/from the existing system with RESTful API calls. Second, connect the analog port of Wio Link to other system, select “Generic Analog Input” virtual Grove module in the mobile App, then read analog measurement for some physical quantity of your existing system. Third, to interact with existing system more flexible, you can develop a 3rd party module driver in which dispatch the requests from internet to your existing system through I2C or UART interface. We have a guide[1] about how to develop 3rd party module driver and also we can provide technical support for your development.

[1]https://github.com/Seeed-Studio/Wio_Link#how-to-write-module-driver-for-wio-link


**9. How many Groves supported on Wio Link?**

There are 150+ kinds of plug and play Groves modules available, among which 36 were supported on Wio Link till now, and you can find most of them in the Rewards, we're working to add more continuously.

Here's the list of supported Groves so far:

- [Grove - Moisture Sensor](http://seeedstudio.com/wiki/Grove_-_Moisture_Sensor)

- [Grove - Air quality sensor v1.3](http://www.seeedstudio.com/wiki/Grove_-_Air_Quality_Sensor_v1.3)

- [Grove - Relay](http://www.seeedstudio.com/wiki/Grove_-_Relay)

- [Grove - SPDT Relay(30A)](http://www.seeedstudio.com/wiki/Grove_-_SPDT_Relay(30A))

- [Grove - Dry-Reed Relay](http://www.seeedstudio.com/wiki/Grove_-_Dry-Reed_Relay)

- [Grove - Solid State Relay](http://www.seeedstudio.com/wiki/Grove_-_Solid_State_Relay)

- [Grove - Button](http://www.seeedstudio.com/wiki/Grove_-_Button)

- [Grove - Button(P)](http://www.seeedstudio.com/wiki/Grove_-_Button)

- [Grove - Digital Light Sensor](http://www.seeedstudio.com/wiki/Grove_-_Digital_Light_Sensor)

- [Grove - Magnetic Switch](http://www.seeedstudio.com/wiki/index.php… )

- [Grove - Barometer Sensor（BMP180)](http://www.seeedstudio.com/wiki/Grove_-_Barometer_Sensor_(BMP180))

- [Grove - Multichannel Gas Sensor](http://www.seeedstudio.com/wiki/Grove_-_Multichannel_Gas_Sensor)

- [Grove - Speaker](http://www.seeedstudio.com/wiki/Grove_-_Speaker)

- [Grove - EL Driver](http://www.seeedstudio.com/wiki/Grove_-_EL_Driver)

- [Grove - Rotary Angle Sensor(P)](http://www.seeedstudio.com/wiki/Grove_-_Rotary_Angle_Sensor)

- [Grove - Rotary Angle Sensor](http://www.seeedstudio.com/wiki/Grove_-_Rotary_Angle_Sensor)

- [Grove - Gesture](http://www.seeedstudio.com/wiki/Grove_-_Gesture_v1.0)

- [Grove - 3-Axis Digital Accelerometer(±1.5g)](http://www.seeedstudio.com/wiki/Grove_-_3-Axis_Digital_Accelerometer(±1.5g))

- [Grove - 3-Axis Digital Compass](http://www.seeedstudio.com/wiki/Grove_-_3-Axis_Compass_V1.0)

- [Grove - 3-Axis Digital Gyro](http://www.seeedstudio.com/wiki/Grove_-_3-Axis_Digital_Gyro)

- [Grove - Temp&Humi Sensor](http://www.seeedstudio.com/wiki/Grove-_Temperature_and_Humidity_Sensor)

- [Grove - Temperature&Humidity Sensor Pro](http://www.seeedstudio.com/wiki/Grove_-_Temperature_and_Humidity_Sensor_Pro)

- [Grove - Servo](http://www.seeedstudio.com/wiki/Grove_-_Servo)

- [Grove - IR Distance Interrupter](http://www.seeedstudio.com/wiki/Grove_-_IR_Distance_Interrupt)

- [Grove - WS2812 RGB LED](http://www.seeedstudio.com/depot/Digital-RGB-LED-FlexiStrip-30-LED-1-Meter-p-1665.html)

- [Grove LED Bar v2.0](http://www.seeedstudio.com/wiki/Grove_-_LED_Bar)

- [Grove - OLED Display 1.12"](http://www.seeedstudio.com/wiki/Grove_-_OLED_Display_128*64)

- [Grove - PIR Motion Sensor](http://www.seeedstudio.com/wiki/index.php… )

- [Grove - Temperature Sensor](http://www.seeedstudio.com/wiki/Grove_-_Temperature_Sensor_V1.2)

- [Grove - Electromagnet](http://www.seeedstudio.com/wiki/Grove_-_Electromagnet)

- [Grove - I2C Motor Driver](http://www.seeedstudio.com/wiki/Grove_-_I2C_Motor_Driver_V1.3)

- [Grove - Protoshield](http://www.seeedstudio.com/wiki/Grove_-_Protoshield)

- [Grove - I2C Hub](http://www.seeedstudio.com/wiki/index.php… )

- [Grove - Buzzer](http://www.seeedstudio.com/wiki/Grove_-_Buzzer)

- [Grove - Recorder](http://www.seeedstudio.com/wiki/Grove_-_Recorder)

- [Grove - Ultrasonic Ranger](http://www.seeedstudio.com/wiki/Grove_-_Ultrasonic_Ranger)


# Help us to make it better
---

<iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.surveymonkey.com/r/GSKRQYF" frameborder="0"></iframe>
