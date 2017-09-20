---
title: Grove - Ultrasonic Ranger
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Ultrasonic-Ranger-p-960.html
oldwikiname: Grove - Ultrasonic Ranger
prodimagename: 350px-Ultrasonic_Ranger.jpg
surveyurl: https://www.research.net/r/Grove-Ultrasonic-Ranger
sku: 101020010
tags: io_3v3, io_5v, plat_duino, plat_pi

---
![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/350px-Ultrasonic_Ranger.jpg)

This Grove - Ultrasonic sensor is a non-contact distance measurement module which works at 40KHz, suitable for projects that require middle distance measurement.

[![Get one now](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/image/300px-Get_One_Now_Banner.png)](https://www.seeedstudio.com/Grove-Ultrasonic-Ranger-p-960.html)

## Product Update
We have made some update on this product in order to improve the power stability when working with some low-voltage main board. The update includes:

- Added an capacitance C14
- Redesigned the layout to make it more tidy
- Compatible with 3.3V voltage system

Here we use 2 photos to show the difference:

![](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/front.jpg)

![](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/back.jpg)

!!!note
    Please note that the new version shares the same sku with old version, so you can still use the old sku:101020010 to buy and we will ship new version to you.

## Specification
---
|Parameter|	Value/Range|
|:------|:------------------|
|Operating voltage|	3.2~5.2V|
|Operating current|	8mA|
|Ultrasonic frequency|	40kHz|
|Measuring range|	2-350cm|
|Resolution|	1cm|
|Output|PWM|
|Size|50mm X 25mm X 16mm|
|Weight|13g|


!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)

Platforms Supported
-------------------

## Getting Started
---
### With Arduino
#### Connection

Here we will show you how this Grove - Ultrasonic Ranger works via a simple demo. First of all, you need to prepare the below stuffs:

| Seeeduino V4 | Grove - Ultrasonic Ranger | Base Shield |Grove - LCD RGB Backlight |
|--------------|-------------|-----------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_1.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/Ultrasonic_Ranger_s.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_4.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/img/grove-lcd%20rgb_s.jpg)|
|[Get ONE Now](http://www.seeedstudio.com/Seeeduino-V4.2-p-2517.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-Ultrasonic-Ranger-p-960.html)|[Get ONE Now](https://www.seeedstudio.com/Base-Shield-V2-p-1378.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-LCD-RGB-Backlight-p-1643.html)|

-   Connect Ultrasonic Ranger to port D7 of Grove-Base Shield.
-   Connect LCD RGB Backlight to port I2C of Grove-Base Shield.
-   Plug Grove - Base Shield into Arduino.
-   Connect Arduino to PC via a USB cable.

![](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/arduino%20connection.jpg)

#### Software

- Download the  [ UltrasonicRanger Library](https://github.com/Seeed-Studio/Grove_Ultrasonic_Ranger/archive/master.zip) and  [  Grove - LCD RGB Backlight Library ](https://github.com/Seeed-Studio/Grove_LCD_RGB_Backlight/archive/master.zip) from Github.
-  If you don't know how to install library for Arduino, please refer to [How to install library](/How_to_Install_an_Arduino_Library/)

```
#include <Wire.h>
#include "rgb_lcd.h"
#include "Ultrasonic.h"

rgb_lcd lcd;
Ultrasonic ultrasonic(7);

const int colorR = 0;
const int colorG = 255;
const int colorB = 0;


void setup()
{
    // set up the LCD's number of columns and rows:
    lcd.begin(16, 2);
    lcd.setRGB(colorR, colorG, colorB);
}

void loop()
{   
    long RangeInCentimeters;
    RangeInCentimeters = ultrasonic.MeasureInCentimeters();
    delay(150);
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("The distance:");
    lcd.setCursor(0,1) ;
    lcd.print(RangeInCentimeters,DEC);
    lcd.setCursor(5,1) ;
    lcd.print("cm");
}
```
- Copy the code into Arduino and upload. We can see the distance display on the LCD.

### With TI LaunchPad

#### Connection

Sensing the Distance (Ultrasonic Ranger Sensor)

This example shows how to measure the distance to obstacles using the ultrasonic sensor and display the value on a 4-Digital-Display (centimeters).

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-Ultrasonic.jpg)

#### Software
```
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

### With [Raspberry Pi](http://www.seeedstudio.com/wiki/GrovePi%2B)

#### Connection
| Raspberry pi | Grove - Ultrasonic Ranger | GrovePi_Plus |
|--------------|-------------|-----------------|
|![enter image description here](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/pi.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/Ultrasonic_Ranger_s.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove-Temperature_and_Humidity_Sensor_Pro/raw/master/img/grovepi%2B.jpg)|
|[Get ONE Now](https://www.seeedstudio.com/Raspberry-Pi-3-Model-B-p-2625.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-Ultrasonic-Ranger-p-960.html)|[Get ONE Now](https://www.seeedstudio.com/GrovePi%2B-p-2241.html)|

- Follow [instruction](http://wiki.seeed.cc/GrovePi_Plus/) to configure the development environment.
- Connect Ultrasonic ranger to Port **D4** and Run the program below. It will print distance information on you terminal, as the figure below.

![](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/img/pi%20connection.jpg)



#### Software

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

- Here is the result.
![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-GrovePi%2B_Ultrasonic_Ranger_Sensor_terminal.jpg)


### Related Projects
If you want to make some awesome projects by Grove - Ultrasonic Ranger, here are some projects for your reference.

#### Automatic Water Level Controller

There are many ways like using a float sensor to determine the water level, or using probes to detect peak and low level in the tank. How to measure water level without using probe or contacting with water? yeah there is a way just using a Ultrasonic sensor, and it is very simple! You can even determine the water depth in the tank by setting the maximum and minimum level.

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-Automatic_Water_Level_Controller.jpg)

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=241)

#### Indoor Lightning Cloud

Make an indoor lightning Cloud, hang it to your ceiling, to make a joke, blast whoever passing under it, have fun!

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/Indoor_Lightning_Cloud.gif)

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=182)

#### The Color Helix

Our artist Shihui Wang recently showed me her another amazing work of art: the Colour Helix. Again with few simple components she presented us the beauty of the combination of art and electronics.

With a Grove - Ultrasonic Ranger she can magically control the number of illuminated LEDs inside the Helix by raising or lower her palm in the air.

![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/600px-The_Colour_Helix.JPG)

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Ultrasonic_Ranger/master/image/200px-Wiki_makeitnow_logo.png)](http://www.seeed.cc/project_detail.html?id=138)

## Resources
---
- **[Library]** [Ultrasonic Ranger library](https://github.com/Seeed-Studio/Grove_Ultrasonic_Ranger/archive/master.zip)
- **[Library]** [Grove_LCD_RGB_Backlight-master](https://github.com/Seeed-Studio/Grove_LCD_RGB_Backlight/archive/master.zip)
- **[Example]** [Example_Measure_and_display_the_distance](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/res/Example_Measure_and_display_the_distance.zip)
- **[Example]** [Example_Measure_distance_and_led_display](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/res/Example_Measure_distance_and_led_display.zip)
