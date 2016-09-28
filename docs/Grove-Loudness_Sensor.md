---
title: Grove - Loudness Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-Loudness-Sensor-p-1382.html
oldwikiname: Grove_-_Loudness_Sensor
prodimagename: LoudnessSensor.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/product/Loudness Sensor.jpg
surveyurl: https://www.research.net/r/Grove-Loudness_Sensor
sku: 101020063
tags: grove_analog, io_3v3, io_5v, plat_duino, plat_linkit, plat_bbg
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/img/LoudnessSensor.jpg)

The Grove - Loudness Sensor is designed to detect the loudness of environmental sound. Based on amplifier LM2904 and a built-in microphone, it amplifies and filters the high frequency signal that received from the microphone, and outputs a positive envelop. This will make for Arduino’s signal acquisition. The output value depends on the level of sound input. In order to avoid unnecessary signal disturbances, input signal will go through two times’ filtering inside the module. Lastly, there is a screw potentiometer that enables manual adjustments to the output gain.

Previous Version: v0.9b

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Loudness-Sensor-p-1382.html)

Specifications
--------------

-   Voltage ：3.5~10 VDC
-   Working Frequency ：50~2000 Hz
-   Sensitivity : -48~66 dB
-   Signal-to-noise Ratio : &gt;58 dB
-   Output Signal range : Analog Signal (0-1023)

Platforms Supported
-------------------

Demonstration
-------------

### With [Arduino](/Arduino "Arduino")

This module uses the chip LM2904 to amplify the electronic signal produced by the mini microphone. At last, you’ll get the analog-to-digital conversion value. Let's try to read the output value.

-   As the picture on the below indicates, the Loudness sensor is connected to analog port A0 of the **Grove - Base Shield**.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/img/Loudness_Sensor_.JPG)

-   Connect Arduino/Seeeduino to PC by using a USB cable.
-   Copy and paste code below to a new Arduino sketch.

```
    int val;
    void setup()
    {
        Serial.begin(9600);
    }

    void loop()
    {
        analogRead(0);
        delay(10);
        val = analogRead(0);
        Serial.println(val);
        delay(200);
    }
```

-   Upload the code.
-   Then open the serial monitor to observe the output results. There will be a significant change when blow to the sensor.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/img/Loudness_Sensor.jpg)

The blue line is the original signal from microphone and the yellow is the sig pin of Loudness Sensor. It is the original signal envelope that the module outputs. Here is the test screenshot from the oscilloscope.

Blowing to the sensor:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/img/Loudness_Sensor_Test_1.bmp)

Speaking to the sensor：

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/img/Loudness_Sensor_Test_3.bmp)

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
    nano grove_loudness_sensor.py   # "Ctrl+x" to exit #
```
```
    import time
    import grovepi

    # Connect the Grove Loudness Sensor to analog port A0
    # SIG,NC,VCC,GND
    loudness_sensor = 0

    while True:
        try:
            # Read the sound level
            sensor_value = grovepi.analogRead(loudness_sensor)

            print "sensor_value =", sensor_value
            time.sleep(.5)

        except IOError:
            print "Error"
```

5.Run the demo.
```
    sudo python grove_loudness_sensor.py
```

Resources
--------

- [Grove - Loudness Sensor Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/res/Grove-Loudness_Sensor_Eagle_File.zip)
- [Grove - loudness sensor pdf](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/res/Grove_loudness_sensor.pdf)
- [LM2904DR Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-Loudness_Sensor/master/res/LM2904DR.pdf)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Loudness_Sensor -->
