---
title: Grove - Encoder
category: Sensor
bzurl: https://seeedstudio.com/Grove-Encoder-p-1352.html
oldwikiname: Grove_-_Encoder
prodimagename: Encoder2.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/product/Grove Encoder.jpg
surveyurl: https://www.research.net/r/Grove-Encoder
sku: 111020001
tags: grove_digital, io_3v3, io_5v, plat_duino, plat_linkit, plat_wio
---

<table>
    <tr>
        <td>
            <img src="https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/img/Encoder2.jpg">
        </td>
        <td>
            <img src="https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/img/Encoder_back.jpg">
        </td>
    </tr>
</table>


This module is an incremental rotary encoder. It encodes the rotation signal from the axis and output the signal by electronic pulse. The Grove – Encoder is one of the Grove series and has a standard Grove interface.
When you need to add a rotary knob to your project, for example a volume knob for a speaker, a selection panel or a digital input, this will be your first choice.

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/depot/Grove-Encoder-p-1352.html)

Features
--------

-   Incremental encoder.
-   Grove Interface.
-   360 degree rotary.

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)
    
Specifications
-------------

<table>
<tr>
<th>
Item
</th>
<th>
Min
</th>
<th>
Typical
</th>
<th>
Max
</th>
<th>
Unit
</th>
</tr>
<tr align="center">
<td width="150">
Voltage
</td>
<td width="100">
4.5
</td>
<td width="100">
5
</td>
<td width="100">
5.5
</td>
<td width="100">
V
</td>
</tr>
<tr align="center">
<td>
Current
</td>
<td>
10
</td>
<td>
20
</td>
<td>
30
</td>
<td>
mA
</td>
</tr>
<tr align="center">
<td>
Dimension
</td>
<td colspan="3">
20x 20
</td>
<td>
mm
</td>
</tr>
<tr align="center">
<td>
Net Weight
</td>
<td colspan="3">
12
</td>
<td>
g
</td>
</tr>
</table>

Platforms Supported
-------------------
Intel Edison (with the [seeedstudio library](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Encoder.zip))
Arduino101 (with the [community library](https://github.com/dantler/GroveEncoder))

Getting Started
---------------
This Grove-Encoder is very easy to use with the [seeedstudio Encoder Lib](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Encoder.zip), or the [community GroveEncoder library](https://github.com/dantler/GroveEncoder).  Simply connect this module to a Digital pin on the Base Shield and you can start using it. 

Circular LED bar demo
----------------
The following is a introduction of how to make a Circular LED bar.

-   This Circular LED bar consists of an Encoder and a [Grove-CircularLED](/Grove-Circular_LED) module. Connect the two modules to Base shield as the following picture:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/img/Cirhard.jpg)

-   In the project, the [TimerOne Lib](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/TimerOne.zip) and [Encoder Lib](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Encoder.zip) and [CircularLED Library](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/CircularLED.zip) are needed. Download all the librarys and install them to your Arduino IDE.

-   Restart the Arduino IDE and open the example by the path: File->Examples->Encoder->EncodeCircuiBar.

```
#include <CircularLED.h>
#include <Encoder.h>
#include <TimerOne.h>
CircularLED circularLED;
unsigned int LED[24];
int index_LED;
void setup()
{
  encoder.Timer_init();
}
void loop()
{
    if (encoder.rotate_flag ==1)
  {
    if (encoder.direct==1)
    {
      index_LED++;
      if (index_LED>23)
      index_LED=24;
      SenttocircularBar(index_LED);
    }
     else
     {
      index_LED--;
      if(index_LED<0)
      index_LED=0;
      SenttocircularBar(index_LED);
     }
    encoder.rotate_flag =0;
  }
}
void SenttocircularBar(int index)
{
  for (int i=0;i<24;i++)
  {
    if (i<index)
    {
      LED[i]=0xff;
    }
    else
    LED[i]=0;
  }
  circularLED.CircularLEDWrite(LED);
}
```

-   Upload it to your Arduino/Seeeduino. You can see:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/img/EncoderAndCircular_LED.gif)

<div class="admonition note">
<p class="admonition-title">Note</p>
It is able to generate another signal when it is being pressed down. However due to the limitation of the number of Grove signal cables, the module is made without output of this signal.
</div>

Resources
---------

-   [Encoder Spec](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Encoder_Spe.zip)
-   [Demo in Arduino forum](http://www.arduino.cc/playground/Main/RotaryEncoders)
-   [TimeOne Lib](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/TimerOne.zip)
-   [seeedstudio Encoder Library](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Encoder.zip)
-   [community Encoder Library](https://github.com/dantler/GroveEncoder/archive/v1.0.0.zip)
-   [Grove-Encoder Eagle files](https://raw.githubusercontent.com/SeeedDocument/Grove-Encoder/master/res/Grove-Encoder_eagle_files.zip)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Encoder -->
