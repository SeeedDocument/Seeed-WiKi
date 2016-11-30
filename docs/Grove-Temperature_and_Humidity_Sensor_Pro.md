---
title: Grove - Temperature and Humidity Sensor Pro
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Temperature%26Humidity-Sensor-Pro-p-838.html
oldwikiname: Grove - Temperature and Humidity Sensor Pro
prodimagename:
surveyurl: https://www.surveymonkey.com/r/Grove_Temperature_and_Humidity_Sensor_Pro
sku: 101020019
---
![](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/Temp_humi_pro.jpg)

Gopro in temperature and relative humidity measurement applications with this Grove gadget. This is a powerful sister version of our Grove - Temperature and Humidity Sensor. It has more complete and accurate performance than the basic version. The detecting range of this sensor is 5% RH - 99% RH, and -40°C - 80°C. And its accuracy satisfyingly reaches up to 2% RH and 0.5°C. A professional choice for applications that have relatively strict requirements.

[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](https://www.seeedstudio.com/Grove-Temperature%26Humidity-Sensor-Pro-p-838.html)

## Specification

|Item|		Min	|Norm	|Max	|Unit|
|---|---|---|---|---|
|VCC	|	3.3|	-|	6|	V|
|Measuring Current Supply	|	1|	-|	1.5|	mA|
|Standby Current Supply	|	40|	-|	50|	uA|
|Measuring range **(Humidity)**	|5%|	-|	99%|	RH|
|Measuring range **(Temperature)**|	-40|	-	|80|	°C|
|Accuracy	**(Humidity)**|-	|	-|	±2%|	RH|
|Accuracy **(Temperature)**	|-|-|	±0.5|	°C|
|Resolution	**(Humidity)**	|-|	-|	0.1%	|RH|
|Resolution **(Temperature)**	| -|-|	0.1|	°C|
|Repeatability	**(Humidity)**|	-|	-|	±0.3%|	RH|
|Repeatability **(Temperature)**|	-	|-	|±0.2|	°C|
|Long-term Stability|		-|	-	|±0.5%	|RH/year|
|Signal Collecting Period	|-|	2|	-|	S|
|Respond Time	1/e(63%)|	6|	-	|20|	S|

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)


**Platforms Supported**

|Arduino|Raspberry Pi|
|---|---|
|![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/arduino_logo.jpg)|![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/raspberry_pi_logo.jpg)|

## Getting Started

Following documents help in getting the user started with Grove.

- [Preface - Getting Started](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/blob/master/res/Preface.pdf)
- [Introduction to Grove](http://wiki.seeed.cc/Grove_System/)

## Demos

**With Arduino**

1. Connect the Temperature and Humidity Sensor Pro to D2 of [Grove - Base Shield](http://wiki.seeedstudio.com/wiki/Grove_-_Base_Shield). Then plug Grove - Base Shield into Arduino and connect Arduino to PC using a USB cable.
![](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/Temperature%26Humidity_Sensor_Pro_demo_Seeeduino_600_s.jpg)

2. Download [Seeed DHT library](https://github.com/Seeed-Studio/Grove_Temperature_And_Humidity_Sensor) for arduino boards with 16MHz XTAL; Unzip and put it in the libraries file of Arduino IDE by the path: **..\arduino-1.0\libraries**; Another library - [DHTlib](https://github.com/RobTillaart/Arduino/tree/master/libraries/DHTlib) is also available instead of Seeed DHT library. This library supports both 16MHz and 8MHz Arduino (eg. Seeeduino Stalker)

3. Restart the Arduino IDE. Open “ DHTtester” example via the path: File --> Examples --> Humidity_Temperature_Sensor --> DHTtester. Through this demo, we can read the temperature and relative humidity information of the environment.

![](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/DHTtester_code.jpg)

!!!Note
    This Grove - Temperature and Humidity Sensor Pro and our another product [Grove-Temperature and Humidity Sensor](/Grove-TemperatureAndHumidity_Sensor/) are sharing this library. No matter which product you are using, make sure that you have made the definition line of the sensor of your board into effect and commented out the definition lines of other specs. For example, the sensor we used on Grove - Temperature and Humidity Sensor Pro is DHT 22. So the definition part of the sensor spec should be:

```
#define DHTTYPE DHT11   // DHT 11
#define DHTTYPE DHT22   // DHT 22  (AM2302)
//#define DHTTYPE DHT21   // DHT 21 (AM2301)or
```

4. Upload it into your Arduino board.

![](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/DHT_Test_Score.jpg)

**With Raspberry Pi**
1.You need to prepare a raspberry pi and a grovepi or grovepi+.

2.You need to complete configuring the development enviroment, otherwise
follow [here](http://wiki.seeedstudio.com/wiki/GrovePi+#Introducing_the_GrovePi.2B).

3.Connection
- Plug grove DHT pro to the socket D4 of grovepi.

4.Navigate to the demos' directory:
```
  cd yourpath/GrovePi/Software/Python/
```
To see the code
```
    nano grove_dht_pro.py   # "Ctrl+x" to exit #
```
```
import grovepi

# Connect the Grove Temperature & Humidity Sensor Pro to digital port D4
# SIG,NC,VCC,GND
sensor = 4

while True:
    try:
        [temp,humidity] = grovepi.dht(sensor,1)
        print "temp =", temp, " humidity =", humidity

    except IOError:
        print "Error"
```
5.Run the demo.
```
      sudo python grove_dht_pro.py
```
6.Result

![](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/Grovepi_dht_pro_00.png)

## Resources

- [Temp Humi Pro eagle files.zip](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/res/Temp_Humi_Pro_eagle_files.zip)
- [Humidity Temperature Sensor pro.zip](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/res/Humidity_Temperature_Sensor_pro.zip)
- [AM2302-CN.pdf](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/res/AM2302-CN.pdf)
- [AM2302-EN.pdf](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/res/AM2302-EN.pdf)
