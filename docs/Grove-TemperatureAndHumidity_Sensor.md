---
title: Grove - Temperature and Humidity Sensor
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Temp%26Humi-Sensor-p-745.html
oldwikiname: Grove - Temperature and Humidity Sensor
prodimagename: 101020011%201.jpg
surveyurl: https://www.research.net/r/Grove_Temperature_and_Humidity_Sensor
sku: 101020011
---

---
![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/101020011%201.jpg)

This is a multifunctional sensor that gives you temperature and relative humidity information at the same time. It utilizes a DHT11 sensor that can meet measurement needs of general purposes. It provides reliable readings when environment humidity condition in between 20% RH and 90% RH, and temperature condition in between 0°C and 50°C, covering needs in most home and daily applications that don't contain extreme conditions.

[![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/300px-Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Temp%26Humi-Sensor-p-745.html)

## Specification
---

<html>
<head>
<meta charset="utf-8">
<title>Specification(runoob.com)</title>
</head>
<body>

<table border="1">
<tr>
  <th>Working Voltage:</th>
  <td>3.3v~5v</td>
</tr>
<tr>
  <th rowspan="2"> Meaturing Range:</th>
  <td>Humidity: 20% - 90% RH</td>
</tr>
<tr>
  <td>Temperature:±2° C</td>
</tr>
<tr>
  <th rowspan="2"> Accuracy:</th>
  <td>Humidity:±5% RH </td>
</tr>
<tr>
  <td>Temperature:0 ~ 50 °C</td>
</tr>
<tr>
  <th rowspan="2"> Sensitivity:</th>
  <td>Humidity: ±1% RH</td>
</tr>
<tr>
  <td>Temperature:1° CC</td>
</tr>
<tr>
  <th>Signal Collecting Period:</th>
  <td>2S</td>
</tr>


</table>

</body>
</html>

## Usage
---
**With Arduino**

This demo is going to show you how to read temperature and humidity information from this Grove
- Temperature and Humidity Sensor

![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/Temperature_Sensor-xin.jpg)

The Temperature and Humidity sensor is connecting to analog port A0 of Grove - Base Shield.
- Download [Humidity_Temperature_Sensor library](https://github.com/Seeed-Studio/Grove_Temperature_And_Humidity_Sensor) for Arduino boards with 16MHz XTAL; Unzip
and put it in the libraries file of Arduino IDE by the path:
..\arduino-1.0\libraries; Another library-DHTlib is also available instead of Humidity_Temperature_Sensor library. This library supports
both 16MHz and 8MHz Arduino(eg. Seeeduino Stalker)
- Open “ DHTtester” example via the path: File --> Examples -->
Humidity_Temperature_Sensor --> DHTtester.

```c
// Example testing sketch for various DHT humidity/temperature sensors
// Written by ladyada, public domain
#include "DHT.h"
#define DHTPIN A0 // what pin we're connected to
// Uncomment whatever type you're using!
#define DHTTYPE DHT11 // DHT 11
//#define DHTTYPE DHT22 // DHT 22 (AM2302)5
//#define DHTTYPE DHT21 // DHT 21 (AM2301)
// Connect pin 1 (on the left) of the sensor to +5V
// Connect pin 2 of the sensor to whatever your DHTPIN is
// Connect pin 4 (on the right) of the sensor to GROUND
// Connect a 10K resistor from pin 2 (data) to pin 1 (power) of the
sensor
DHT dht(DHTPIN, DHTTYPE);
void setup()
{
Serial.begin(9600);
Serial.println("DHTxx test!");
dht.begin();
}
void loop()
{
// Reading temperature or humidity takes about 250 milliseconds!
// Sensor readings may also be up to A0 seconds 'old' (its a very
slow sensor)
float h = dht.readHumidity();
float t = dht.readTemperature();
// check if returns are valid, if they are NaN (not a number) then
something went wrong!
if (isnan(t) || isnan(h))
{
Serial.println("Failed to read from DHT");
}
else
{
Serial.print("Humidity: ");
Serial.print(h);
Serial.print(" %\t");
Serial.print("Temperature: ");
Serial.print(t);
Serial.println(" *C");
}
}
```

!!!Note
This Grove - Temperature and Humidity Sensor and our another product [Grove -
Temperature and Humidity Sensor Pro](http://www.seeedstudio.com/Grove-Temperature%26Humidity-Sensor-Pro-p-838.html) are sharing this library. No matter which product you are
using, make sure that you have made the definition line of the sensor of your board into effect and
commented out the definition lines of other specs. For example, the sensor used on Grove -
Temperature and Humidity Sensor is DHT 11. So the definition part of the sensor spec should be:

```
#define DHTTYPE DHT11 // DHT 11
//#define DHTTYPE DHT22 // DHT 22 (AM2302)
//#define DHTTYPE DHT21 // DHT 21 (AM2301)
```

- Upload it into your Arduino board and open the serial monitor to observe the temperature and
relative humidity information of the environment

![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/COM5%20data.png)

**With TL LaunchPad**

Feeling the Environments (Temperature and humidity)
This example allows you to read the value from grove-temperature-humidity sensor. The
temperature & humidity values are displayed on the Grove 4 digital display

![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/Temperature.jpg)

```c
/*
Grove-Temperature-Humidity Sensor
Read value from grove-temperature-humidity sensor then display on grove-
4-digital-display
The circuit:
* 4-digital-display attached to pin38 & pin39 (J14 plug on Grove Base
BoosterPack)
* sig pin of the Grove-Temperature-Humidity Sensor to the analog pin 24
(Grove connector J6)
* one side pin (either one) to ground
* the other side pin to +VCC
* LED anode (long leg) attached to RED_LED
* LED cathode (short leg) attached to ground
* Note: Put your hands on Grove-Temperature-Humidity Sensor, both of the
value
will rise.
4-digital-display:
|--------------------------|
| temperature : humidity |
|--------------------------|
This example code is in the public domain.
http://www.seeedstudio.com/wiki/Grove_-
_Temperature_and_Humidity_Sensor_Pro
*/8
#include "TM1637.h"
#include "DHT.h"
/* Macro Define */
#define CLK 39 /* 4-digital display clock pin
*/
#define DIO 38 /* 4-digital display data pin */
#define BLINK_LED RED_LED /* blink led */
#define TEMP_HUMI_PIN 24 /* pin of temperature&humidity
sensor */
/* Global Varibles */
TM1637 tm1637(CLK, DIO); /* 4-digital display object */
DHT dht(TEMP_HUMI_PIN, DHT22); /* temperature&humidity sensor
object */
int8_t t_bits[2] = {0}; /* array to store the single bits
of the temperature */
int8_t h_bits[2] = {0}; /* array to store the single bits
of the humidity */
/* the setup() method runs once, when the sketch starts */
void setup() {
tm1637.init(); /* initialize 4-digital display */
tm1637.set(BRIGHT_TYPICAL); /* set the brightness */
tm1637.point(POINT_ON); /* light the clock point ":" */
dht.begin(); /* initialize temperature humidity
sensor */
pinMode(RED_LED, OUTPUT); /* declare the red_led pin as an
OUTPUT */
}
/* the loop() method runs over and over again */
void loop() {
int _temperature = dht.readTemperature(); /* read the
temperature value from the sensor */
int _humidity = dht.readHumidity(); /* read the
humidity value from the sensor */
memset(t_bits, 0, 2); /* reset array when
we use it */
memset(h_bits, 0, 2);
/* 4-digital-display [0,1] is used to display temperature */
t_bits[0] = _temperature % 10;
_temperature /= 10;
t_bits[1] = _temperature % 10;
/* 4-digital-display [2,3] is used to display humidity */
h_bits[0] = _humidity % 10;
_humidity /= 10;
h_bits[1] = _humidity % 10;
/* show it */
tm1637.display(1, t_bits[0]);
tm1637.display(0, t_bits[1]);
tm1637.display(3, h_bits[0]);
tm1637.display(2, h_bits[1]);
}
```

**With Raspberry Pi**

This example can Return temperature and humidity value,And show them on [Grove - LCD RGB
Backlight](http://www.seeedstudio.com/Grove-LCD-RGB-Backlight-p-1643.html).Also print them on PC terminal.

![](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/images/GrovePi%2B_Tem%26Humi_sensor2.jpg)

Notice: To use the method dht(pin,module_type) you need to chang parameter module_type to 1
when using DHT pro and to 0 when using DHT.

```python
# grovepi_lcd_dht.py
# dht(pin,module_type), change module_type number to use other kind of
dht
# module_type:
# DHT11 0
# DHT22 1
# DHT21 2
# DHT2301 3
from grovepi import *
from grove_rgb_lcd import *
dht_sensor_port = 7 # Connect the DHt sensor to port 7
while True:
try:
[ temp,hum ] = dht(dht_sensor_port,1) #Get the temperature
and Humidity from the DHT sensor
print "temp =", temp, "C\thumadity =", hum,"%"
t = str(temp)
h = str(hum)
setRGB(0,128,64)
setRGB(0,255,0)
setText("Temp:" + t + "C " + "Humidity :" + h + "%")11
except (IOError,TypeError) as e:
print "Error"
```
**Run the program**

-  Find the path to the file(According to your own path)

```
cd Desktop/Applications/GrovePi/GrovePi LCD DHT/
```
- Run Program

```
sudo python grovepi_lcd_dht.py
```

## Resources
---
- [Temperature Humidity Eagle File](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/resources/Temperature_Humidity.zip)
- [Library](https://github.com/Seeed-Studio/Grove_Temperature_And_Humidity_Sensor)
- [DHT11 datasheet](https://github.com/SeeedDocument/Grove_Temperature_and_Humidity_Sensor/raw/master/resources/DHT11.pdf)
