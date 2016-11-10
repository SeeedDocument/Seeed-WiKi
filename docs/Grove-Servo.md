---
title: Grove - Servo
category: Actuator
bzurl: https://www.seeedstudio.com/Grove-Servo-p-1241.html
oldwikiname:  Grove - Servo
prodimagename: Grove—Servo.jpg
surveyurl: https://www.research.net/r/Grove-Servo
sku:  316010005
---
![](https://github.com/SeeedDocument/Grove-Servo/raw/master/img/Grove—Servo.jpg)

Grove - Servo is DC motor with gearing and feedback system. It is used in driving mechanism of robots. The module is a bonus product for Grove lovers. We regulated the three-wire servo into a Grove standard connector. You can plug and play it as a typical Grove module now, without jumper wires clutter.

But if you feel more like a proto servo, check out EMAX 9g ES08A High Sensitive Mini Servo. They are the same model, both of good quality and burden-free price.

[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](http://www.seeedstudio.com/depot/433mhz-rf-link-kit-p-127.html?cPath=139_140)

##  Feature
---
*   Small module

*   Grove Compatible Interface

*   Easy to use

##  Specification
---
<table  cellspacing="0" width="80%">
<tr>
<th scope="col"> Item
</th>
<th scope="col"> Min
</th>
<th scope="col"> Typical
</th>
<th scope="col"> Max
</th>
<th scope="col"> Unit
</th></tr>
<tr>
<th> Working Voltage
</th>
<td> 4.8
</td>
<td> 5.0
</td>
<td> 6.0
</td>
<td> V
</td></tr>
<tr>
<td> Torque
</td>
<td colspan="3"> 1.5/1.8
</td>
<td> Kg.cm
</td></tr>
<tr>
<th scope="row"> Speed
</th>
<td colspan="3"> 0.12/0.16
</td>
<td> s/60°
</td></tr>
<tr>
<th scope="row"> Size
</th>
<td colspan="3"> 32X11.5X24
</td>
<td> mm
</td></tr>
<tr>
<th scope="row"> Weight
</th>
<td colspan="3"> 8.5
</td>
<td> g
</td></tr></table>

##  Usage
---
The Servo has three wires: power, ground, and signal. The power wire is typically red, and should be connected to the 5V pin on the Arduino/Seeeduino board. The ground wire is typically black or brown and should be connected to a ground pin on the Arduino board. The signal pin is typically yellow, orange or white and should be connected to Digital 9 on the Arduino board.You can change to the digital port as you like. But don't forget to change the port number in the definition of the demo code at the same time.

Next sweeps the shaft of a servo back and forth across 180 degrees.This example makes use of the Arduino [servo library](http://arduino.cc/en/Reference/Servo).

*   Connect the Servo to Seeeduino and connect Seeeduino to PC using a USB cable.

*   Restart the Arduino IDE, open one demo code you like, for example Sweep directly by the path:File -&gt; Example -&gt;Servo-&gt;Sweep.

![](https://github.com/SeeedDocument/Grove-Servo/raw/master/img/Servo_Demo.jpg)

*   Upload the code.Please click [here](http://wiki.seeedstudio.com/wiki/Upload_Code) if you do not know how to upload.
