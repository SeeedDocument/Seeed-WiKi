<!--
+++
date        = "2016-01-01T11:27:27-04:00"
title       = "Rephone"
+++
 -->

# Rephone

\[[中文页面](http://www.seeedstudio.com/wiki/RePhone_Kit_%E4%B8%AD%E6%96%87%E7%89%88)\]

[![](/asset/Rephone/img/RePhoneMainPage_logo.png)](http://www.seeed.cc/rephone/)
RePhone

RePhone Kit is an open source modular phone kit that changes the way we put our phone into use. It provides a new form of phone customization, and the easiest solution to wearable/IoT development.

With Rephone you can create your own phone in minutes by using the slim MODULES, accessible SOFTWARE, and customizable PHONE CASE. You can also hack things around you, giving inanimate objects the power of cellular communication, having conversations with your pets, plants, toys, motorcycle helmets, robots, or drones through cellular connectivity.

[![](/asset/Rephone/img/Get_One_Now_Banner.png)](http://www.seeed.cc/rephone/)

Features
--------

-   World’s first open source and modular phone
-   Support Lua, Javascript, Arduino IDE and Eclipse IDE
-   Various rich-featured add-on modules for function extension
-   DIY Phone
-   Last for about 25 hours @ standby (RePhone Kit Create)

RePhone Family
--------------

The core of the RePhone is provided by Xadow GSM+BLE or by RePhone Core 3G Module (coming soon), beyond these two core modules are 8 more chainable add-on modules to extend the features and functionalities – Xadow 1.54 *Touchscreen, Xadow Audio, Xadow GSM Breakout, Xadow LED 5x7, Xadow Basic Sensors, Xadow Duino, Xadow GPS v2 and Xadow NFC v2.*
<span style="color: red">Note</span> that since we have updated the module Xadow 1.54" Touchscreen, you need to make some extra modifications to libraries if you plan to Xadow 1.54" Touchscreen v1.1. Find detailed description at <http://www.seeedstudio.com/wiki/Xadow_1.54%27%27_Touchscreen#Notice>.

### Core Module

-   [![](/asset/Rephone/img/Xadow_GSMPlusBLE_CORE.png)](http://www.seeedstudio.com/wiki/Xadow_GSM%2BBLE)

### Add-on Modules

-   [![](/asset/Rephone/img/Xadow_1.54inch_Touchscreen_addon.png)](http://www.seeedstudio.com/wiki/Xadow_1.54%27%27_Touchscreen)

-   [![](/asset/Rephone/img/Xadow_Audio_addon.png)](http://www.seeedstudio.com/wiki/Xadow_Audio)

-   [![](/asset/Rephone/img/Xadow_GSM_Breakout_addon.png)](http://www.seeedstudio.com/wiki/Xadow_GSM_Breakout)

-   [![](/asset/Rephone/img/Xadow_Duino_addon.png)](http://www.seeedstudio.com/wiki/Xadow_Duino)

-   [![](/asset/Rephone/img/Xadow_GPS_v2_addon.png)](http://www.seeedstudio.com/wiki/Xadow_GPS_v2)

-   [![](/asset/Rephone/img/Xadow_Basic_Sensors_addon.png)](http://www.seeedstudio.com/wiki/Xadow_Basic_Sensors)

-   [![](/asset/Rephone/img/Xadow_NFC_v2_addon.png)](http://www.seeedstudio.com/wiki/Xadow_NFC_v2)

-   [![](/asset/Rephone/img/Xadow_LED_5x7_add_on.png)](http://www.seeedstudio.com/wiki/Xadow_LED_5x7)

### RePhone Kit Create

-   [![](/asset/Rephone/img/IMG_2999.JPG)](http://www.seeedstudio.com/depot/RePhone-Kit-Create-p-2552.html?ref=newInBazaar)

### RePhone Strap Kit for Pebble

-   [![](/asset/Rephone/img/RePhone_strap_kit_for_pebble-20.png)](http://www.seeedstudio.com/wiki/RePhone_Strap_Kit_for_Pebble)

### RePhone Geo Kit

-   [![](/asset/Rephone/img/RePhone_Geo_Kit_wiki_2.jpg)](http://www.seeedstudio.com/wiki/RePhone_Geo_Kit)

### RePhone Lumi Kit

-   [![](/asset/Rephone/img/RePhone_Lumi_Kit_wiki_2.jpg)](http://www.seeedstudio.com/wiki/RePhone_Lumi_Kit)

### RePhone Extension Pack

-   [![](/asset/Rephone/img/RePhone_Extesion_Pack_wiki_2.jpg)](http://www.seeedstudio.com/wiki/RePhone_Extension_Pack)

Development Environment
-----------------------

We have developed rich libraries hooking into Arduino IDE, Lua and JavaScript, with detailed example sketches to help entry-level programmers develop with RePhone modules easily and quickly. We also provide a full power SDK based on Eclipse IDE for C/C++ developers to work with high level applications.

![](/asset/Rephone/img/IDE_LOGOs.png)

Check out:

#### [Arduino IDE for RePhone Kit](/wiki/Arduino_IDE_for_RePhone_Kit "Arduino IDE for RePhone Kit")

#### [Eclipse IDE for RePhone Kit](/wiki/Eclipse_IDE_for_RePhone_Kit "Eclipse IDE for RePhone Kit")

#### [Lua for RePhone Kit](/wiki/Lua_for_RePhone "Lua for RePhone")

#### [JavaScript for RePhone Kit](/wiki/JavaScript_for_RePhone "JavaScript for RePhone")

#### [Building RePhone Applications on Mac OS X](https://github.com/Seeed-Studio/CodeLite_for_RePhone/wiki/building-RePhone-applications-on-Mac-OS-X)

Also, if you are developing RePhone modules based on other Arduino compatible development board, you can refer to:

#### [RePhone APIs for Arduino](https://github.com/WayenWeng/RePhone_API_for_Arduino/)

Find the RePhone Kit Create Source Code here (based on Eclipse IDE):

#### [RePhone Kit Create Source Code](https://github.com/WayenWeng/RePhone_Create_Kit_Source_Code/)

We will keep updating the RePhone SDK on our Github page:

#### [RePhone SDK](https://github.com/WayenWeng/RePhone_SDK_Bin_Update//)

Reset your Rephone to defaults
------------------------------

**Please be noticed that reset your Rephone to defaults will delete all the settings and files(images, musics) in the RePhone, do aware of this before you reset it to defaults.**

To reset your RePhone to **DEFAULTS**:

1. Follow the instructions in "Update/Flash the Firmware" section to flash the firmware

2. Download the RePhone\_Create\_Kit\_VXP file

[![](/asset/Rephone/img/RePhone_Kit_Create_VXP.png)](https://github.com/WayenWeng/RePhone_Create_Kit_VXP/)

3. Enter the [RePhone Mass Storage Mode](http://www.seeedstudio.com/wiki/Xadow_GSM%2BBLE#Mass_Storage_Mode)

4. Copy everything under the file named "RePhone Create Kit VXP" into the RePhone 5MB mass storage.

5. Restart your RePhone then its done. As reset have deleted all the files, you would have to put an mp3 file in the mass storage as well for the use of ringtone.

RePhone Community
-----------------

[![](/asset/Rephone/img/RePhone_Community-2.png)](http://www.seeedstudio.com/forum/viewforum.php?f=71&sid=b70f8138c89becf7701260bb41faf9f4)

We’ve been looking for a better place where our backers (RePhone Users) can sit together, warmly and comfortably, have conversations about RePhone, discuss technical problems, share ideas/projects, and give feedback on the modules’ development in the future. And then here we go, the RePhone Community.

Now join us in the [RePhone Community](http://www.seeedstudio.com/forum/viewforum.php?f=71&sid=b70f8138c89becf7701260bb41faf9f4)!

Together we seek answers, make interesting stuff, care about each other, and share our experiences.

### **<span style="font-size:1.1em;">Frequently Asked Questions</span>**

Some frequently asked questions in RePhone Community are collected and answered to the topic **["Frequently Asked Questions of RePhone (FAQ)"](http://www.seeedstudio.com/forum/viewtopic.php?f=71&t=6664&p=23753#p23753)** , the topic will be kept updating whenever a new FAQ comes out.

Resources
---------

The schematic diagrams of RePhone Modules are provided in the following link:

-   [*Schematic Diagrams of RePhone Modules*](/asset/Rephone/res/Schematic_Diagrams_of_RePhone_Modules.rar)

which includes:

-   [Xadow GSM+BLE](http://www.seeedstudio.com/wiki/Xadow_GSM%2BBLE)
-   [Xadow GSM Breakout](http://www.seeedstudio.com/wiki/Xadow_GSM_Breakout)
-   [Xadow 1.54” Touchscreen](http://www.seeedstudio.com/wiki/Xadow_1.54%E2%80%99%E2%80%99_Touchscreen)
-   [Xadow Audio](http://www.seeedstudio.com/wiki/Xadow_Audio)
-   [Xadow Duino](http://www.seeedstudio.com/wiki/Xadow_Duino)
-   [Xadow GPS v2](http://www.seeedstudio.com/wiki/Xadow_GPS_v2)
-   [Xadow Basic Sensors](http://www.seeedstudio.com/wiki/Xadow_Basic_Sensors)
-   [Xadow NFC v2](http://www.seeedstudio.com/wiki/Xadow_NFC_v2)
-   [Xadow LED 5x7](http://www.seeedstudio.com/wiki/Xadow_LED_5x7)
-   [Xadow Pebble Time Adapter](http://www.seeedstudio.com/wiki/Xadow_Pebble_Time_Adapter)

Help us to make it better
-------------------------

<iframe frameborder="0" height="500" src="https://www.surveymonkey.com/r/3JQQ2L6" width="500"></iframe>
