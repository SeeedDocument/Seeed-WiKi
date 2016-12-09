---
title: XBee Shield V2.0
category: Arduino
bzurl: https://www.seeedstudio.com/XBee-Shield-V2.0-p-1375.html
oldwikiname:  XBee Shield V2.0
prodimagename:  Xbeeshield_01.jpg
surveyurl: https://www.research.net/r/XBee_Shield_V2
sku:   103030004
---

![](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/img/Xbeeshield_01.jpg)

The new version of XBee Shield is a standardized and stackable shield compatible with Arduino. You can easily stack any modules from the Bee series onto it, and build a wireless network for your project. In spite of that, it is also equipped with function of level conversion, which enables a double-way conversion between high&amp; low IO levels. The reserved digital pins facilitate users to select TX/RX port using jumper caps.

[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](https://www.seeedstudio.com/Skeleton-Box-p-1407.html)

##   Feature
---
*   Standardized shape design
*   Can be configured by connecting UartSBee module to USB
*   The DIN and DOUT pins can be connected with both UART and other digital pins（D2~D12）
*   Enlarged space for your own development
*   LED indicators

##   Interface Function
---
![](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/img/XBee_Shield_Interface.jpg)

 U2：CJT1117 IC, provides 3.3V voltage for XBee modules.
 U3：SN74LVC1G125 IC, achieves Logic-level translator function.

##   Usage
---
If you want to control the XBee module by Arduino/Seeeduino, The XBee Shield is required. Here us the RF Bee as a example for wireless communication. You can also use Bluetooth Bee or other modules.

**The steps are listed below:**
 1. Plug XBee Module onto XBee Shield.

 ![](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/img/XBee_Shield_connect_RF_XBee.jpg)

![](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/img/XBEE1.jpg)

 2. Plug XBee Shield onto Arduino/Seeeduino, connect your Arduino/Seeeduino to the computer via a USB cable to turn it on.
 3. Use a jumper cap to connect XB_TX and Digital 4. Also, Use a jumper cap to connect XB_RX and Digital 5. Of course you can change the digital port as you like. But don't forget to change the port number in the definition of the demo code at the same time.

<div class="MediaTransformError" style="width: 500px; height: 338px; display:inline-block;">Error creating thumbnail: Invalid thumbnail parameters</div>

**Note：**The followings are its known limitations:

<dl><dd><dl><dd><dl><dd>1. If you are using multiple software serial ports, only one can receive data at a time.

</dd><dd>2. Not all pins on the Mega and Mega 2560 support change interrupts, so only the following can be used for RX: 10, 11, 12, 13, 50, 51, 52, 53, 62, 63, 64, 65, 66, 67, 68, 69

</dd><dd>3. Not all pins on the Leonardo support change interrupts, so only the following can be used for RX: 8, 9, 10, 11, 14 (MISO), 15 (SCK), 16 (MOSI).
</dd></dl>
</dd></dl>
</dd></dl>

If you need further information about how to communicate, please refer to WIKI pages of relevant modules.

##   Resource
---
- [XBee Shield V2.0 Eagle File](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/res/XBee_Shield_Eagle_file.zip)

- [XBee Shield V2.0b Schematics File](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/res/XBee_Shield_v2.0b.pdf)

- [CJT1117 Datasheet](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/res/CJT1117_datasheet.pdf)

- [SN74LVC1G125 Datasheet](https://github.com/SeeedDocument/XBee_Shield_V2.0/raw/master/res/SN74LVC1G125DCKR.pdf)
