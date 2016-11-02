---
title: Grove - High Temperature Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-High-Temperature-Sensor-p-1810.html
oldwikiname: Grove_-_High_Temperature_Sensor
prodimagename: High_Temperature_Sensor_01.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/product/High Temperature Sensor.jpg
surveyurl: https://www.research.net/r/Grove-High_Temperature_Sensor
sku: 111020002
tags: grove_analog, io_3v3, io_5v, plat_duino, plat_linkit
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/img/High_Temperature_Sensor_01.jpg)

Thermocouples are very sensitive devices. It requires a good amplifier with cold-junction compensation. The Grove - High Temperatire Sensor uses a K-Type themocouple and a thermocouple amplifier that measures ambient temperature using thermistor for cold-junction compensation. The detectable range of this Sensor is -50-600°C , and the accuracy is ±(2.0% + 2°C)

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/depot/Grove-High-Temperature-Sensor-p-1810.html)

Specifications
--------------

-   Voltage：3.3 ~ 5V
-   Max power rating at 25℃ ：300mW
-   Operating temperature range：-40 ~ +125 ℃
-   The temperature measurement range is (-50 ~ +600℃)
-   Amplifier output voltage range (0 ~ 3.3 V) mv
-   Cold junction compensation (environment temperature measurement)
-   Thermocouple temperature measurement accuracy of + / - 2.0% (+ 2 ℃)

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)

Platforms Supported
-------------------

Getting Started
---------------

Here is an example to show you how to read temperature information from the sensor.

We need a Seeeduino V3.0 and a Grove - High Temperature Sensor.

### Hardware Installation

A4 and A5 are the I2C lines of Seeduino. Plug the sensor to the I2C port of Seeeduino to read data.

### Download Code and Upload

You can download the library from [here](https://github.com/Seeed-Studio/Grove_HighTemp_Sensor/archive/master.zip)

Then extract the library to the Library folder of Arduino, open the demo in examples folder.

Then upload it to your Seeeduino.

### Open Serial Monitor and Get Data

Then, open your Serial Monitor, you can find the temperature in Celsius here.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/img/Htsdata.jpg)

### K type thermocouple indexing table

As a reference, the following is K type thermocouple indexing table.
![](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/img/Ktype.jpg)

Resources
--------

-   [Grove - High Temperature Sensor PDF](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/res/Grove-High_Temperature_Sensor_v1.0.pdf)
-   [Grove - High Temperature Sensor Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/res/Grove-High_Temperature_Sensor_v1.0_20140225.zip)
-   [High Temperature Sensor Library](https://github.com/Seeed-Studio/Grove_HighTemp_Sensor)
-   [Datasheet OPA333 PDF](http://www.ti.com/lit/ds/symlink/opa333.pdf)
-   [Datasheet LMV358 PDF](https://raw.githubusercontent.com/SeeedDocument/Grove-High_Temperature_Sensor/master/res/Lmv358.pdf)


<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_High_Temperature_Sensor -->
