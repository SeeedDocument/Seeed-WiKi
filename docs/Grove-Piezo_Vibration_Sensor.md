---
title: Grove - Piezo Vibration Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-Piezo-Vibration-Sensor-p-1411.html
oldwikiname: Grove_-_Piezo_Vibration_Sensor
prodimagename: Grove-Piezo_Vibration_Sensor-1.jpg
bzprodimageurl: http://statics3.seeedstudio.com/seeed/master/img/2016-06/VGKGp4ZlaglN4DMgnVAhUzUz.jpg
surveyurl: https://www.research.net/r/Grove-Piezo_Vibration_Sensor
sku: 101020031
tags: grove_analog, io_3v3, io_5v, plat_duino
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/img/Grove-Piezo_Vibration_Sensor-1.jpg)

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/img/Piezo_Vibration_Sensor_02.jpg)

Grove- Piezo Vibration Sensor is suitable for measurements of flexibility, vibration, impact and touch. The module is based on PZT film sensor LDT0-028. When the sensor moves back and forth, a certain voltage will be created by the voltage comparator inside of it. A wide dynamic range (0.001Hz~1000MHz) guarantees an excellent measuring performance. And, you can adjust its sensitivity by adjusting the on-board potentiometer with a screw.

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Piezo-Vibration-Sensor-p-1411.html)

Features
--------

-   Standard grove socket
-   Wide dynamic range：0.1Hz~180Hz
-   Adjustable sensitivity
-   High receptivity for strong impact

Platforms Supported
-------------------

Applications
------------

-   Vibration Sensing in Washing Machine
-   Low Power Wakeup Switch
-   Low Cost Vibration Sensing
-   Car Alarms
-   Body Movement
-   Security Systems

Usage
-----

### With [Arduino](/Arduino "Arduino")

The Grove - Piezo Vibration Sensor outputs a logic HIGH when vibration was detected. We can use any of Arduino pins to read the data. Here is an example of Piezo Vibration Sensor controlling LED. When the vibration was detected, this sensor outputs a logic high signal (the sensitivity can be changed by adjusting the potentiometer), an LED lights up.

<div class="admonition note">
<p class="admonition-title">Note</p>
It may output low level even though originally output high level when you increase the threshold voltage by clockwise adjusting the potentiometer.
</div>

1.Connect the module to the Analog port 0 of base shield using the 4-pin grove cable and connect LED to Pin 12.

2.Plug the Grove - Basic Shield into Arduino.

3.Connect Arduino to PC by using a USB cable.

4.Copy and paste code below to a new Arduino sketch. Please click [here](/Upload_Code) if you do not know how to upload.

```
    const int ledPin=12;
    void setup() {
      Serial.begin(9600);
    pinMode(ledPin,OUTPUT);
    } 
     
    void loop() {
    int sensorValue = analogRead(A0);
     Serial.println(sensorValue);
     delay(1000);
     if(sensorValue==1023)
      {
        digitalWrite(ledPin,HIGH);
      }
     else
     {
      digitalWrite(ledPin,LOW);
      }
    }
```

5.Touch the piezo sensor to make it vibrate, of course, any way to make it vibrate would be OK too. The LED would be on when vibration detected. You can also Open the serial monitor to see the sensor outputs.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/img/Grove-Piezo_Vibration_Sensor.jpg)

You can directly use a digital pin, take D5 of base shield as an example, and connect LED to Pin 12.

```
    const int ledPin=12;
    void setup() {
      Serial.begin(9600);
      pinMode(ledPin,OUTPUT);
    } 
     
    void loop() {
    int sensorState = digitalRead(5);
     Serial.println(sensorState);
     delay(1000);
     if(sensorState == HIGH)
      {
        digitalWrite(ledPin,HIGH);
      }
     else
     {
      digitalWrite(ledPin,LOW);
      }
    }
```

### With [Raspberry Pi](/GrovePiPlus "GrovePi+")

1.You should have a raspberry pi and a grovepi or grovepi+.

2.You should have completed configuring the development enviroment, otherwise follow [here](/GrovePiPlus#Introducing_the_GrovePi.2B).

3.Connection

-   Plug the sensor to grovepi socket A0 by using a grove cable.

4.Navigate to the demos' directory:
```
    cd yourpath/GrovePi/Software/Python/
```
-   To see the code
```
    nano grove_piezo_vibration_sensor.py   # "Ctrl+x" to exit #
```
```
    import time
    import grovepi

    # Connect the Grove Piezo Vibration Sensor to analog port A0
    # OUT,NC,VCC,GND
    piezo = 0

    grovepi.pinMode(piezo,"INPUT")

    while True:
        try:
            # When vibration is detected, the sensor outputs a logic high signal
            print grovepi.analogRead(piezo)
            time.sleep(.5)

        except IOError:
            print "Error"
```

5.Run the demo.
```
    sudo python grove_piezo_vibration_sensor.py
```

Resources
---------

- [Grove - Piezo Vibration Sensor Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/res/Eagle.zip)
- [Grove - Piezo Vibration Sensor PDF File](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/res/Gvove-Piezo_Vibration_Sensor.pdf)
- [Piezo Vibration Sensor Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-Piezo_Vibration_Sensor/master/res/Piezo_Vibration_Sensor.pdf)


<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Piezo_Vibration_Sensor -->
