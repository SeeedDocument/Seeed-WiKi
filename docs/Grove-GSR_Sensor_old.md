---
title: Grove - GSR Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-GSR-sensor-p-1614.html
oldwikiname: Grove_-_GSR_Sensor
prodimagename: GSR.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/101020052 1.jpg
surveyurl: https://www.research.net/r/Grove-GSR_Sensor
sku: 101020052
tags: grove_digital, io_3v3, io_5v, plat_duino, plat_linkit, plat_pi, plat_bbg
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/GSR.jpg)

GSR, standing for galvanic skin response, is a method of measuring the electrical conductance of the skin. Strong emotion can cause stimulus to your sympathetic nervous system, resulting more sweat being secreted by the sweat glands. Grove – GSR allows you to spot such strong emotions by simple attaching two electrodes to two fingers on one hand, an interesting gear to create emotion related projects, like sleep quality monitor.


[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-GSR-sensor-p-1614.html)

## Version
----
| Product                  | Released Date  | Description                                |
|------------------------|----------------|--------------------------------------------|
| Grove - GSR_Sensor V1.0      | June 19, 2013     | Initial      |
| Grove - GSR_Sensor V1.2  | July 31, 2014 | Add C3 100nf between M324PW-TSSOP14 and GND |

## Specifications
--------------

-   Input Voltage: 5V/3.3V
-   Sensitivity adjustable via a potentiometer
-   External measuring finger cots

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)

## Platforms Supported
-------------------

## Getting Started
-------------

### Connection

Here we will show you how this Grove - GSR works via a simple demo. First of all, we need to prepare the below stuffs:


| Seeeduino V4 | Grove - GSR | Base Shield |Grove-RGB LCD Backlight |Grove-Buzzer |
|--------------|----------------------|-----------------|-----------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_1.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/img/Grove-GSR_s.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_4.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/img/Grove%20-%20LCD%20RGB%20Backlight_s.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/img/Grove-Button_s.jpg)|
|[Get ONE Now](http://www.seeedstudio.com/Seeeduino-V4.2-p-2517.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-GSR-sensor-p-1614.html)|[Get ONE Now](https://www.seeedstudio.com/Base-Shield-V2-p-1378.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-LCD-RGB-Backlight-p-1643.html)|[Get ONE Now](https://www.seeedstudio.com/Grove-Buzzer-p-768.html)|

- Connect the Grove-GSR to **A2** on the Grove - Base Shield by using a Grove Universal 4 pin cable.
- Connect the Grove-Buzzer to **D3** on the Grove - Base Shield by using a Grove Universal 4 pin cable.
- Connect the Grove-RGB LCD Backlight to **I2C** on the Grove - Base Shield by using a Grove Universal 4 pin cable.
- Plug the base Shield into Seeeduino-V4.
- Connect Seeeduino-V4 to PC by using a USB cable.

 ![](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/img/GSR_arduino_connection.jpg)

!!!Note
    If you don't have a Base Shield, don't worry, the sensor can be connected to your Arduino directly. Please follow below tables to connect with Arduino.

| Grove-GSR Sensor | Arduino       |
|------------------|---------------|
| GND              | GND           |
| VCC              | VCC           |
| SIG              | A2            |
| NC               | No connection |


| Grove-Buzzer | Arduino       |
|--------------|---------------|
| GND          | GND           |
| VCC          | VCC           |
| SIG          | 3             |
| NC           | No connection |

| Grove - LCD RGB Backlight | Arduino Uno |
|---------------------------|---------|
| GND                       | GND     |
| VCC                       | VCC     |
| SDA                       | A4      |
| SCL                       | A5      |

As a reference the table below shows where I2C pins are located on various Arduino boards.

| Board         | I2C  pins                      |
|---------------|--------------------------------|
| Uno, Ethernet | A4 (SDA), A5 (SCL)             |
| Mega2560      | 20 (SDA), 21 (SCL)             |
| Leonardo      | 2 (SDA), 3 (SCL)               |
| Due           | 20 (SDA), 21 (SCL), SDA1, SCL1 |


### Software

We need to download Grove_LCD_RGB_Backlight library and install to your Arduino IDE.

- Please follow [how to install an arduino library](http://wiki.seeed.cc/How_to_install_Arduino_Library/) procedures to install LCD RGB Backlight library.

[![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_LCD_RGB_Backlight/master/images/library.png)](https://github.com/Seeed-Studio/Grove_LCD_RGB_Backlight/archive/master.zip)

- Copy and paste the code below to a new Arduino sketch and upload it to Arduino.

```
#include <Wire.h>
#include "rgb_lcd.h"

    const int BUZZER=3;
    const int GSR=A2;
    int threshold=0;
    int sensorValue;
    rgb_lcd lcd;

    void setup(){
      long sum=0;
      lcd.begin(16, 2);
      Serial.begin(9600);
      pinMode(BUZZER,OUTPUT);
      digitalWrite(BUZZER,LOW);
      delay(1000);

      for(int i=0;i<500;i++)
      {
      sensorValue=analogRead(GSR);
      sum += sensorValue;
      delay(5);
      }
      threshold = sum/500;
       Serial.print("threshold =");
       Serial.println(threshold);
      }

    void loop(){
      int temp;
      sensorValue=analogRead(GSR);
      Serial.print("sensorValue=");
      Serial.println(sensorValue);
      lcd.setCursor(0, 0);
      lcd.print("GSR Value: ");
      lcd.print(sensorValue);
      temp = threshold - sensorValue;
      if(abs(temp)>50)
      {
        sensorValue=analogRead(GSR);
        temp = threshold - sensorValue;
        if(abs(temp)>50){
        digitalWrite(BUZZER,HIGH);
        Serial.println("YES!");
        delay(3000);
        digitalWrite(BUZZER,LOW);
        delay(1000);}
      }
      }

```

- Wear the finger stretch and relax, we can see data from  Grove_LCD_RGB_Backlight and serial port:

  ![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/GSR_Result_Data.jpg)


- Then take a deep breath. The buzzer should trigger now. And an obvious change in the output value should be observed.


## Reference
---------

There are several graphs which are created in excel by using GSR data. We can open the [GSR sensor data](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/res/GSR_sensor_data.xls) to see the detail data.

- **Deep Breath**
![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/Reference_graphs1.png)

- **Hungry**
![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/Reference_graphs3.png)

- **Relax**
![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/Reference_graphs2.png)

- **My Boss is Coming**
![](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/img/Reference_graphs4.png)

## Resources
---------

- **[Eagle]** [Grove - GSR v1.0 Eagle File](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove-GSR_Eagle_File_V1.0.zip)
- **[PDF]** [Grove-GSR v1.0 Sch](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove%20-%20GSR%20v1.0%20SCH.pdf)
- **[PDF]** [Grove-GSR v1.0 PCB](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove%20-%20GSR%20v1.0%20PCB.pdf)
- **[Eagle]** [Grove - GSR v1.2 Eagle File](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove-GSR_Eagle_File_V1.2.zip)
- **[PDF]** [Grove-GSR v1.2 Sch](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove%20-%20GSR_v1.2_SCH.pdf)
- **[PDF]** [Grove-GSR v1.2 PCB](https://github.com/SeeedDocument/Grove-GSR_Sensor/raw/master/res/Grove%20-%20GSR_v1.2_PCB.pdf)
- **[Datasheet]** [LM324 datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/res/Lm324.pdf)
- **[Document]** [GSR sensor data](https://raw.githubusercontent.com/SeeedDocument/Grove-GSR_Sensor/master/res/GSR_sensor_data.xls "File:GSR sensor data.xls")


<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_GSR_Sensor -->
