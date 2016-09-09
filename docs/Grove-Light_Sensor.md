---
title: Grove - Light Sensor
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Light-Sensor-(P)-v1.1-p-2693.html
oldwikiname: Grove_-_Light_Sensor
prodimagename: cover.jpg
sku: 101020173
---
# Grove - Light Sensor

## Introduction

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/cover.jpg)


The Grove - Light sensor a photo-resistor(light dependent resistor) to detect the intensity of light in the environment. The resistance of photo-resistor decreases when the intensity of light increases. A dual OpAmp chip LM358 on board produces voltage corresponding to intensity of light(i.e. based on resistance value). The output signal is analog value, the brighter the light, the larger the value.

This module can be used to build a light controlled switch i.e. switch off lights during day time and switch on lights during night time.


!!!Warning
    The light sensor value only reflects the approximated trend of the intensity of light, it DOES NOT represent the exact Lumen.


### Version Track
This document applies to the following version of products:

| Version 	| Released Date	| How to buy	|
|-----------|---------------|---------------|
|Grove - Light Sensor 1.0 | Apr28, 2013|[![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/300px-Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Light-Sensor-p-746.html)|
|Grove - Light Sensor(P)| 2014 | [![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/300px-Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Light-Sensor(P)-p-1253.html)|
|Grove - Light Sensor(P) V1.1| Aug, 2016| [![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/300px-Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Light-Sensor(P)-p-1253.html)|


## Features
-----
* **Analog value output**
* High reliability and sensibility
* Small footprint
* Recognize wider spectrum

### Platform Support

|Arduino|Wio|BeagleBone|Raspberry Pi|LinkIt|
|---------|-----|-----|------|------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/arduino_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/wio_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/bbg_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/raspberry_pi_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/linkit_logo.jpg)|



## Specification
----
|Item|Value|
|-----|--------|
|Operating voltage|3~5V|
|Operating current|	0.5~3 mA|
|Response time|20-30 milliseconds|
|Peak Wavelength|540 nm|
|Weight|4 g|


## Getting Started

!!!Note
    This part is besed on Grove - Light Sensor(P) V1.0.

Here we will show you how this Grove - Light Sensor works via a simple demo. First of all, you need to prepare the below stuffs:

| Seeeduino V4 | Grove - Light Sensor | Grove - LED Bar |
|--------------|----------------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_1.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_2.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_3.jpg)|
|[Get ONE Now](http://www.seeedstudio.com/Seeeduino-V4.2-p-2517.html)|[Get ONE Now](http://www.seeedstudio.com/Grove-Light-Sensor%28P%29-p-1253.html)|[Get ONE Now](http://www.seeedstudio.com/Grove-LED-Bar-v2.0-p-2474.html)|


| Base Shield | micro USB cable | Grove cable |
|---------------|---------------|-------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_4.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_5.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_6.jpg)|
|[Get ONE Now](http://www.seeedstudio.com/Base-Shield-V2-p-1378.html)|[Get ONE Now](http://www.seeedstudio.com/Micro-USB-Cable-100cm-p-1476.html)|[Get ONE Now](http://www.seeedstudio.com/Grove-Universal-4-Pin-20cm-Unbuckled-Cable-%285-PCs-Pack%29-p-749.html)|



### Connection

Thanks to the benefit of Grove series module, you don't need to make soldering or bread board, what you need to do is connect the modules to the right port of Base Shield. For this demo, we have 2 Grove modules.

* Grove - Light Sensor is an analog output module, we connect it to **A0** at this demo
* Grove - LED Bar is a digital input module with a 2-wire bus, we connect it to **D2**

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/connect.jpeg)

### Download sketch

There's a sketchbook for Seeeduino Stalker V3.1, which is consist of:

* Example of read raw value of the sensor
* Example of this getting started
* Example of the secret box demo
* LED Bar library

[![](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/sketch_download.png)](https://github.com/Seeed-Studio/Sketch_Grove_Light_Sensor)

Download the sketch and put it at anywhere, open Arduino IDE, **File > Reference**, and copy the location path to **Sketchbook location**, then click on OK. Reopen Arduino IDE, then the sketchbook is set.

### Upload the code to Arduino

Open Arduino IDE, **File > Sketchbook > GettingStarted** to open the code for this part.

Then choose the right Board and COM port, and then click on the Upload button, this process will take seconds. Then let's try to cover the light sensor with your hand, you will find LED Bar reduce its led.

### Get Raw Data

If you don't need a Grove - LED Bar, there's another example you can try, Open Arduino IDE, **File > Sketchbook > RawData** to open the code, after uploaded the example to Seeeduino V4, click on **Serial > Plotter** to get the changing curve of the sensor.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/raw_data.png)


### Project: Secret Box

Here we will show you a project made with Grove - Light Sensor - Secret Box. First you need a box, a paper box, wooden box, any box is ok. Put something in the box, because we named it secret box, that means we don't want anybody to open it, otherwise there will be an alarm to inform you.

Here we use LinkIt ONE as the controller, which is an Arduino compatible board and consist of rich function. And you need things below:

* [LinkIt ONE](http://www.seeedstudio.com/LinkIt-ONE-p-2017.html)
* Grove - Light Sensor
* Grove - Base Shield
* A Sim Card

Let's connect Grove - Light Sensor to A0 or Base Shield, and open Arduino IDE, **File > Sketchbook > SecretBox**, what you need to do is upload the example to LinkIt ONE. Then someone open the box, the light will detect it, and send you a SMS.

Have fun.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/secret_box.png)


### Resources

* [Sketchbook for Light Sensor](https://github.com/Seeed-Studio/Sketch_Grove_Light_Sensor)
* [Eagle File for Grove - Light Sensor V1.0](https://github.com/SeeedDocument/Grove_Light_Sensor/raw/master/resources/Grove%20-%20Light%20Sensor.zip)
* [Eagle File for Grove - Light Sensor(P) V1.0](https://github.com/SeeedDocument/Grove_Light_Sensor/raw/master/resources/Grove%20-%20Light%20Sensor%28P%29.zip)
* [Eagle File for Grove - Light Sensor(P) V1.1](https://github.com/SeeedDocument/Grove_Light_Sensor/raw/master/resources/Grove%20-%20Light%20Sensor%28P%29%20v1.1.zip)


=======
Help us to make it better
---
Thank you for choosing Seeed. As one of the world-leading open-hardware suppliers, Seeedstudio has been continuously creating well-quality and diversified modules for our customers, makers and developers. As a young company, it is inevitable that there are things we neglected the importance, for example, our document system. It is a little shame however true that we have been continuously receiving complaint about how hard it is to use our document system——ugly interface, confusing content, and the URL that can never be opened etc. Here we sincerely apologize for all the inconvenient you’ve experienced during using the old system.

It is time to say good bye to the user-unfriendly old document system now, in order to bring better experience to our users, we have launched a project to optimize the document system from the middle of 2016. The work includes:

* Replace the old WiKi system with a new one that developed from Mkdocs, a more widely used and cooler project documentation tool.
* Review and rewrite documents for hundreds of products to make them more understandable.
* Inspected repair all the URL to make sure it can be linked to the right page.

Although we have tried our best to optimize, it is still possible that we make some mistakes, so if you find anything that needs to be updated, it is very welcome to submit the amended version as our contributor or give us suggestions in the survey below. Please don’t forget to leave your email address if you need our reply, we will reply to you as soon as we can.

By the way, we will feel very happy and encouraged if we receive 5 stars from you. With the help and encouragement from you, we believe that we can make this document better and better!
