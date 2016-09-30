---
title: Grove - Ultrasonic Ranger
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Ultrasonic-Ranger-p-960.html
oldwikiname: Grove - Ultrasonic Ranger
prodimagename: 350px-Ultrasonic_Ranger.jpg
surveyurl: https://www.research.net/r/Grove-Ultrasonic-Ranger
sku: 101020010
---

---
![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/350px-Ultrasonic_Ranger.jpg)

This Grove - Ultrasonic sensor is a non-contact distance measurement module which works at 42KHz, suitable for projects that require middle distance measurement.

[![Get one now](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/image/300px-Get_One_Now_Banner.png)](https://www.seeedstudio.com/item_detail.html?p_id=960)



## Specification
---
|Parameter|	Value/Range|
|:------|:------------------|
|Operating voltage|	3.3~5V|
|Operating current|	15mA|
|Ultrasonic frequency|	42kHz|
|Measuring range|	3-400cm|
|Resolution|	1cm|
|Output|	PWM|

## Get Started
---
Connect Serial LCD to D4/D5 pins of Grove - Base Shield and connect Ultrasonic Ranger to D7.

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-UltrasonicRanger.png)

Download the  [ UltrasonicRanger Library](https://github.com/Seeed-Studio/Grove_Ultrasonic_Ranger) and  [  SerialLCD Library](https://github.com/Seeed-Studio/Serial_LCD) from Github. Since the are not in origin library of Arduino library files, You need to install them to Arduino Library. If you don't know how to install library for Arduino, please refer to the toturial [How to install library](http://wiki.seeed.cc/How_to_Install_an_Arduino_Library/)

```c
/***************************************************************************/        
// Function: Measure the distance to obstacles in front and display the
//                         result on seeedstudio serialLcd. Make sure you installed the
//                         serialLCD, SoftwareSerial and Ultrasonic library.        
//        Hardware: Grove - Ultrasonic Ranger, Grove - Serial LCD
//        Arduino IDE: Arduino-1.0
//        Author:         LG                
//        Date:          Jan 17,2013
//        Version: v1.0 modified by FrankieChu
//        by www.seeedstudio.com

/*****************************************************************************/


#include <SoftwareSerial.h>
#include <SerialLCD.h>
#include "Ultrasonic.h"

SerialLCD slcd(11,12);
Ultrasonic ultrasonic(7);
void setup()
{
   slcd.begin();
}
void loop()
{
        long RangeInCentimeters;
        RangeInCentimeters = ultrasonic.MeasureInCentimeters();
        delay(150);
        slcd.clear();
        slcd.setCursor(0,0);
        slcd.print("The distance:");
        slcd.setCursor(0,1) ;
        slcd.print(RangeInCentimeters,DEC);
        slcd.setCursor(5,1) ;
        slcd.print("cm");
}
```
Also we have shot a video about it. which is more straightforward to understand You may find it in the Resources!

**With TI LaunchPad**

Sensing the Distance (Ultrasonic Ranger Sensor)

This example shows how to measure the distance to obstacles using the ultrasonic sensor and display the value on a 4-Digital-Display (centimeters).

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-Ultrasonic.jpg)
```c
/*
 Ultrasonic-Ranger to 4-digit-display
 Measure the distance to obstacles in front and display the value on
 4-digital-display

 The circuit:
 * Ultrasonic Ranger attached to SPI plug on Grove Base BoosterPack
 * one side pin (either one) to ground
 * the other side pin to +VCC
 * LED anode (long leg) attached to RED_LED
 * LED cathode (short leg) attached to ground

 * Note:  


 This example code is in the public domain.

 http://www.seeedstudio.com/wiki/Grove_-_Ultrasonic_Ranger
 */

#include "TM1637.h"
#include "Ultrasonic.h"
/* Macro Define */
#define CLK               40                  /* 4-digital display clock pin */
#define DIO               39                 /* 4-digital display data pin */
#define BLINK_LED         RED_LED            /* blink led */
#define ULTRASONIC_PIN    38                  /* pin of the Ultrasonic Ranger */

/* Global Variables */
TM1637 tm1637(CLK, DIO);                  /* 4-digital display object */
Ultrasonic ultrasonic(ULTRASONIC_PIN);    /* Ultrasonic Ranger object */
int distance = 0;                         /* variable to store the distance to obstacles in front */
int blink_interval = 0;                   /* led delay time */
int8_t bits[4] = {0};                     /* array to store the single bits of the value */

/* the setup() method runs once, when the sketch starts */
void setup() {

    /* Initialize 4-digital display */
    tm1637.init();
    tm1637.set(BRIGHT_TYPICAL);

    /* declare the red_led pin as an OUTPUT */
    pinMode(RED_LED, OUTPUT);

}

/* the loop() method runs over and over again */
void loop() {   

    distance = ultrasonic.MeasureInCentimeters();   /* read the value from the sensor */   

    memset(bits, 0, 4);                             /* reset array when we use it */
    for(int i = 3; i >= 0; i--) {
        /* get single bits of the analog value */
        bits[i] = distance % 10;
        distance = distance / 10;  
        tm1637.display(i, bits[i]);                 /* display by 4-digital display */
    }
    delay(100);
}
```

**With [Raspberry Pi](http://www.seeedstudio.com/wiki/GrovePi%2B)**

Connect Ultrasonic ranger to Port D4 and Run the program below. It will print distance information on you terminal, as the figure below.

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/GrovePi%2B_Ultrasonic_Ranger_Sensor.jpg)

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-GrovePi%2B_Ultrasonic_Ranger_Sensor_terminal.jpg)
```python
# GrovePi + Grove Ultrasonic Ranger

from grovepi import *

# Connect the Grove Ultrasonic Ranger to digital port D4
# SIG,NC,VCC,GND

ultrasonic_ranger = 4

while True:
    try:
        # Read distance value from Ultrasonic
        print ultrasonicRead(ultrasonic_ranger)

    except TypeError:
        print "Error"
    except IOError:
        print "Error"
```
### Run The Program
- Find the path to the file(According to your own path)
```Javascript
 cd GrovePi/Software/Python/
```
- Run Program
```Javascript
 sudo python grove_ultrasonic.py
```

### Related Projects
If you want to make some awesome projects by Grove - Ultrasonic Ranger, here's some projects for reference.

**Automatic Water Level Controller**

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-Automatic_Water_Level_Controller.jpg)

This is an IoT demo make by Arduino and [   Grove](http://www.seeedstudio.com/wiki/Grove_System)

There are many ways like using a float sensor to determine the water level, or using probes to detect peak and low level in the tank. How to measure water level without using probe or contacting with water? yeah there is a way just using a Ultrasonic sensor, and it is very simple! You can even determine the water depth in the tank by setting the maximum and minimum level.

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=241)

**Indoor Lightning Cloud**

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/Indoor_Lightning_Cloud.gif)

This is an IoT demo maked by Seeeduino and [   Grove](http://www.seeedstudio.com/wiki/Grove_System)


Make an indoor lightning Cloud, hang it to your ceiling, to make a joke, blast whoever passing under it, have fun!

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=182)

**The Colour Helix**

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-The_Colour_Helix.JPG)

This is an IoT demo maked by Seeeduino and [ Grove](http://www.seeedstudio.com/wiki/Grove_System)

Our artist Shihui Wang recently showed me her another amazing work of art: the Colour Helix. Again with few simple components she presented us the beauty of the combination of art and electronics.

With a Grove - Ultrasonic Ranger she can magically control the number of illuminated LEDs inside the Helix by raising or lower her palm in the air.

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=138)

## Resources
---
- [Ultrasonic Ranger library](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/blob/master/resource/Ultrasonic.zip)
- [Video demonstration](http://v.youku.com/v_show/id_XMzEzNTcwODI4.html)
- [Github repository for Grove_Ultrasonic_Ranger Library (new)](https://github.com/Seeed-Studio/Grove_Ultrasonic_Ranger)
- [SerialLCD Library](https://github.com/Seeed-Studio/Serial_LCD)
- [Suli-compatible Library](http://www.seeedstudio.com/wiki/Suli)
