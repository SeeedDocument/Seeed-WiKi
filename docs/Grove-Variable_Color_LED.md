---
title: Grove - Variable Color LED
category: Actuator
bzurl: https://seeedstudio.com/Grove-Variable-Color-LED-p-852.html
oldwikiname: Grove_-_Variable_Color_LED
prodimagename: Variable_Color_LED1.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/product/Variable Color LED.jpg
surveyurl: https://www.research.net/r/Grove-Variable_Color_LED
sku: 104020001
tags: grove_digital, io_3v3, io_5v, plat_duino, plat_pi, plat_bbg
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Variable_Color_LED/master/img/Variable_Color_LED1.jpg) ![](https://raw.githubusercontent.com/SeeedDocument/Grove-Variable_Color_LED/master/img/Variable_Color_LED_01.jpg)

This Grove consists of one 8mm RGB LED. It operates at 5V DC. When SIG pin is logic HIGH, the RGB LED will light up. Perfect for use on Seeeduino digital outputs, or also can be controlled by pulse-width modulation. And it uses three adjustable resistor to change the color of the RGB LED.


[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Variable-Color-LED-p-852.html)


Features
--------

-   Grove compatible
-   Color adjustable

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)
    
Application Ideas
-----------------

-   Toys
-   Decoration

<div class="admonition danger">
<p class="admonition-title">Caution</p>
Be gentle while adjusting the R, G and B adjustable resistances in case of over-turning.
</div>

Specifications
-------------

| Item              | Typical | Unit |
|-------------------|---------|------|
| Operate Voltage   | 5.0     | VDC  |
| Working Current   | 20      | mA   |
| Variable Resistor | &lt;1   | KΩ   |

Platforms Supported
-------------------

Usage
-----

The three resistances RED, GREEN and BLUE of the module control the R, G and B channels respectively. By adjusting the three adjustable resistances, it can turn out variable color. The thing to notice, however, is that be gentle when turning the adjustable resistances.

The following sketch demonstrates a simple application of controlling its brightness. As the picture on the below indicates, the Variable Color LED is connected to digital port 9 of the [Grove - Base Shield](/Base_Shield_V2). The hardware installation is as follows:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Variable_Color_LED/master/img/Grove-Variable_Color_LED.jpg)

-   Copy and paste code below to a new Arduino sketch.

Demo code like:

```
int ledPin = 9;    // LED connected to digital pin 9

void setup()  {
    // nothing happens in setup
}

void loop()  {
    // fade in from min to max in increments of 5 points:
    for(int fadeValue = 0?; fadeValue <= 255; fadeValue +=5) {
        // sets the value (range from 0 to 255):
        analogWrite(ledPin, fadeValue);
        // wait for 30 milliseconds to see the dimming effect
        delay(30);
    }

    // fade out from max to min in increments of 5 points:
    for(int fadeValue = 255?; fadeValue >= 0; fadeValue -=5) {
        // sets the value (range from 0 to 255):
        analogWrite(ledPin, fadeValue);
        // wait for 30 milliseconds to see the dimming effect
        delay(30);
    }
}
```
-   Upload the code.Adjust the three adjustable resistances, I am sure you will like it. Have a try!

## Try it in JAVA!

Check out this tutorial for the [Grove Variable Color LED](https://github.com/oci-pronghorn/FogLight-Grove/blob/master/VariableColorLED/README.md).   
Its part of the open source framework FogLight where  many of the [Grove Devices](https://github.com/oci-pronghorn/FogLight-Grove) are supported. 
It was designed for IoT applications and provides an integrated web server.   

Resources
---------

-   [Variable Color LED eagle_file](https://raw.githubusercontent.com/SeeedDocument/Grove-Variable_Color_LED/master/res/Variable_Color_LED_eagle_file.zip)


<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Variable_Color_LED -->
