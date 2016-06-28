#Grove - Barometer Sensor (BMP280)
---------

##Introduction
Grove - Barometer Sensor (BMP280) is a breakout board for Bosch BMP280 high-precision and low-power digital barometer. This module can be used to measure temperature and atmospheric pressure accurately. As the atmospheric pressure changes with altitude, it can also measure approximate altitude of a place. It can be connected to a microcontroller with I2C (integrated with Grove socket) or through SPI bus. We have also provided highly abstracted library to make this more product easier to use.

The BMP280 is an upgraded version of BMP180. BMP280 gets dramatic improvements from BMP180. BMP280 comes with a smaller footprint, lower power consumption, lower noise measurements, higher resolutions for pressure and temperature, lower RMS noise, newly added interface SPI, more measuring modes, higher measuring rate and newly added filter against environmental interference. Since the atmosphere pressure reading is affected by altitude and temperature, we have added compensation features in the library. Hence, Grove - Barometer Sensor (BMP280) would be more reliable in providing precise temperature, atmospheric pressure values and approximate altitude data.

Using the sensor is easy. For Seeeduino (compliant with Arduino), just connect this breakout board using Grove cable to I2C Grove connector. Then, use the provided library and example code from GitHub. If you are using an Arduino either use Base Shield v2.0 or simply connect the VCC pin to the 5V voltage pin, GND to ground, SCL to I2C Clock (Analog 5) and SDA to I2C Data (Analog 4).
Typical applications: Enhancement of GPS navigation, outdoor/indoor navigation, weather forecast, or any other project that requires an accurate atmospheric pressure reading.

![enter image description here](http://www.seeedstudio.com/wiki/images/d/da/Grove_-_Barometer_Sensor_%28BMP280%29_700_s.jpg)

###Version Tracker
|Product version	| Release date	|Support status	|Notes|
|-------------------|---------------|---------------|-----|
|Grove - Barometer Sensor (BMP280) (v1.0, latest version)|May 2016|Supported|None|


[![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/d/d0/Get_One_Now_Banner.png/150px-Get_One_Now_Banner.png)](http://www.seeedstudio.com/depot/Grove-Barometer-Sensor-BMP280-p-2652.html)


##Features

- Get more precise temperature, atmospheric pressure values, and approximate altitude data.
- Grove compatible and easy to use
- Highly abstracted library for building projects quicker

##Specifications

|Item|Value|
|---|---|
|Input voltage	|3.3V or 5V|
|I/O voltage	|3.3V or 5V|
|Operating current	|0.6mA|
|Operating temperature	|-40 - 85 ℃|
|Effective pressure measurement range	|300 - 1100 hPa (1 hPa= one hundred Pa) with ±1.0 hPa accuracy|
|Temperature measurement accuracy	|±1.0°C|
|Measurement modes|	Piezo & Temperature, forced or periodic|
|Chip	|BMP280 ([datasheet](http://www.seeedstudio.com/wiki/images/5/59/Grove_-_Barometer_Sensor_%28BMP280%29_BMP280-DS001-12_Datasheet.pdf))|
|Possible sampling rate	|182 Hz (typical)|
|Interface Bus|	SPI, I2C (use either one of them)|
|Weight	|3g (for breakout board)|
|Dimensions	|40 (width) × 20 (depth) mm|

!!! note
    We will show/describe how to select interface bus soon.


!!! note
    The altitude is calculated by a combination of temperature and atmospheric pressure. No specialized components for altitude.
###Platforms supported (only for battery)

|Platform	     |Seeeduino/Arduino	|Rasberry Pi	|Beaglebone|	LinkIt ONE|
|----------------|------------------|---------------|----------|--------------|
|Supported status|	Supported       |Not supported  |Supported |Supported     |

!!! note
    If no version number is present for a specific platform, it means this product supports all versions within this platform.

##Hardware Overview
![enter image description here](http://www.seeedstudio.com/wiki/images/e/ec/Grove_-_Barometer_Sensor_%28BMP280%29_Components_1200_s.jpg)

- SPI soldering pads, a voltage monitoring circuit.
- Interface bus selection pads , to select I2C bus, connect the     two pads by soldering (this is connected by default); to select SPI bus, cut the two pads with a sharp knife or a soldering iron.
- Slave board address selection pads, to select slave board address to avoid address collision.
If you have selected I2C bus, the default address for slave board is 0x77(right-two pads are connected). If you want to use the address 0x76, connect only left two (disconnect right two) by soldering. Tips: you can disconnect pads with just a sharp knife.
If you have selected SPI bus, the default address for slave board is 0x77(right-two pads are connected). If you want to use the address 0x76, disconnect all three pads.

!!! note
    Do not touch or shake or let this product in vibration when it works. This will cause interference and will affect the accuracy of data collected.

###Package includes (main parts)
|Parts name                         |Quantity |
|-----------------------------------|---------|
|Grove - Barometer Sensor (BMP280)	|1 piece  |
|Grove cable	                    |1 piece  |


##Getting Started

Now let us run some basic examples with this module.
###With Arduino
This section shows you how to build a simple project with Arduino platform. Even if you are using a different type of main control board, these instructions and source code are useful.
###Material required
- Grove - Barometer Sensor (BMP280) × 1
- [Seeeduino 4.2](http://www.seeedstudio.com/depot/Seeeduino-V42-p-2517.html) (fully compatible with Arduino) or Arduino UNO (other models are also fine) × 1
- [Grove - Base Shield](http://www.seeedstudio.com/wiki/Grove_-_Base_shield_v2) × 1 (it is optional if you are using Seeeduino which has two I2C sockets on Seeeduino v4.2)
- USB cable (type A to type B, for Arduino) × 1 or USB cable (Type-A to micro Type-B, for Seeeduino) × 1
- Grove cable × 1
###Connections
Connect all parts as follows: the first picture shows connection with Seeeduino, the second one demonstrates connection with Arduino UNO:

![enter image description here](http://www.seeedstudio.com/wiki/images/3/38/Grove_-_Barometer_Sensor_%28BMP280%29_Demo_Seeeduino_1200_s.jpg)

![enter image description here](http://www.seeedstudio.com/wiki/images/thumb/3/34/Grove_-_Barometer_Sensor_%28BMP280%29_Demo_Arduino_UNO.jpg/600px-Grove_-_Barometer_Sensor_%28BMP280%29_Demo_Arduino_UNO.jpg)

###Coding
You can find more demo sketches at https://github.com/Seeed-Studio/Grove_BMP280/tree/master/example/bmp280_example and development library at https://github.com/Seeed-Studio/Grove_BMP280
1. A typical demo code. You can upload code to main control board with Codebender.

<iframe style="height: 510px; width: 100%; margin: 10px 0 10px;" allowTransparency="true" src="https://codebender.cc/embed/sketch:305323" frameborder="0"></iframe>

2. Download and upload the code. If you do not know how to upload an Arduino sketch, please visit https://www.arduino.cc/en/Guide/Windows for Windows user or https://www.arduino.cc/en/Guide/MacOSX for Mac user. You can see the result as below.

**Tips:** if you use Seeeduino, please also select **Boards** under **Tools** as you upload sketches.

##Resources
- [Schematic(Eagle) file](http://www.seeedstudio.com/wiki/images/5/55/Battery_kit-3.7V_520mAh_Schematics.zip)
- [BMP280 Datasheet](http://www.seeedstudio.com/wiki/images/5/59/Grove_-_Barometer_Sensor_%28BMP280%29_BMP280-DS001-12_Datasheet.pdf)
- [Library and example code on GitHub](https://github.com/Seeed-Studio/Grove_BMP280)
- [I2C how-to for Arduino](https://www.arduino.cc/en/Reference/Wire)

##Is this page helpful
<iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.surveymonkey.com/r/P56YN6P" frameborder="0"></iframe>