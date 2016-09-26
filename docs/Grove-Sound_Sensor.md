---
title: Grove - Sound Sensor
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Sound-Sensor-p-752.html
oldwikiname: Grove_-_Sound_Sensor
prodimagename: page.jpg
surveyurl: https://www.surveymonkey.com/r/SoundSensor
sku: 101020023
---
---
![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Sound_Sensor/master/images/page.jpg)

Grove - Sound Sensor can detect the sound strength of the environment. The main component of the module is a simple microphone, which is based on the LM358 amplifier and an electret microphone. This module's output is analog and can be easily sampled and tested by a Seeeduino.

[![](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](http://www.seeedstudio.com/Grove-Sound-Sensor-p-752.html)


## Features
---
* Easy to use
* Provides analog output signal
* Easily integrates with Logic modules on the input side of Grove circuits
* [Grove System](http://127.0.0.1:8000/Grove/Grove_System/)

!!!Warning
    This sound sensor is to detect if there's sound surround or not, please don't use the module to collect sound signal. Such as you can use it to make a sound control lamp, but not as a recording device.

## Specifications

|Item|Value|
|-----|------|
|Operating Voltage Range| 3.3/5 V |
|Operating Current(Vcc=5V)|4~5 mA|
|Voltage Gain(V=6V, f=1kHz)|26 dB|
|Microphone sensitivity(1kHz)|52-48 dB|
|Microphone Impedance|2.2k Ohm|
|Microphone Frequency|16-20 kHz|
|Microphone S/N Radio|54 dB|

## Platform Support

|Arduino|Wio|BeagleBone|Raspberry Pi|LinkIt|
|---------|-----|-----|------|------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/arduino_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/wio_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/bbg_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/raspberry_pi_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/linkit_logo.jpg)|

## Getting Started

!!!Note
    This chapter is based on Win10 and Arduino IDE 1.6.9

This an easy-to-use module, what you need to do is connect the signal pin (the YELLOW pin of Grove cable) to the ADC input of your controller. If there's no internal ADC in your controller, [Grove - I2C ADC](http://www.seeedstudio.com/Grove-I2C-ADC-p-1580.html) is recommend.


Here we will show you how this Grove - Sound Sensor works via a simple demo. First of all, you need to prepare the below stuffs:

| Seeeduino V4 | Grove - Sound Sensor | Base Shield |
|--------------|----------------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_1.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Sound_Sensor/master/images/gs_1.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Light_Sensor/master/images/gs_4.jpg)|
|[Get ONE Now](http://www.seeedstudio.com/Seeeduino-V4.2-p-2517.html)|[Get ONE Now](http://www.seeedstudio.com/Grove-Sound-Sensor-p-752.html)|[Get ONE Now](http://www.seeedstudio.com/Grove-Universal-4-Pin-20cm-Unbuckled-Cable-%285-PCs-Pack%29-p-749.html)|



**Connection**

Thanks to the benefit of Grove series modules, you don't need to make soldering or bread board, what you need to do is connect the modules to the right port of Base Shield. For this demo, we have only one Grove module.

* Grove - Sound Sensor is an analog output module, we connect it to **A0** at this demo


![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Sound_Sensor/master/images/connection.jpg)


**Upload the code to Arduino**

Copy the below code to Arduino IDE.

```
// test code for Grove - Sound Sensor
// loovee @ 2016-8-30

const int pinAdc = A0;

void setup()
{
    Serial.begin(115200);
    //Serial.println("Grove - Sound Sensor Test...");
}

void loop()
{
    long sum = 0;
    for(int i=0; i<32; i++)
    {
        sum += analogRead(pinAdc);
    }

    sum >>= 5;

    Serial.println(sum);
    delay(10);
}

```

Then choose the right Board and COM port, and then click on the Upload button, this process take few seconds.

**Get Raw Data**

Here let's click on **Serial > Plotter** to get the changing curve of the sensor. Please make a noise to view the change of the value.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove_Sound_Sensor/master/images/sound_raw.png)


## Resources
---
- [Schematic in Eagle File](https://github.com/SeeedDocument/Grove_Sound_Sensor/raw/master/resources/Grove%20-%20Sound%20Sensor.zip)
- [Github Page of this Document](https://github.com/SeeedDocument/Grove_Sound_Sensor)
- [Lmp86.PDF](https://github.com/SeeedDocument/Grove_Sound_Sensor/raw/master/res/LM386.pdf)
