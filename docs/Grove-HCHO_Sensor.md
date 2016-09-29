---
title: Grove - HCHO Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-HCHO-Sensor-p-1593.html
oldwikiname: Grove_-_HCHO_Sensor
prodimagename: HCHO_Sensor_01.jpg
bzprodimageurl: http://statics3.seeedstudio.com/images/product/grove HCHO.jpg
surveyurl: https://www.research.net/r/Grove-HCHO_Sensor
sku: 101020001
tags: grove_analog, io_5v, plat_duino, plat_linkit
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/img/HCHO_Sensor_01.jpg)

The Grove - HCHO Sensor is a semiconductor VOC gas sensor. Its design is based on WSP2110 whose conductivity changes with the concentration of VOC gas in air. Through the circuit, the conductivity can be converted to output signal that corresponding to the gas concentration. This sensor has a very high sensitivity and stability, it can detect the gas whose concentration is up to 1ppm. It’s suitable for detecting formaldehyde, benzene, toluene and other volatile components. This product can be used to detect harmful gas in the home environment. Therefore, it’s a good assistant for you to improve indoor environment quality of life.

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/depot/grove-hcho-sensor-p-1593.html)

<div class="admonition warning">
<p class="admonition-title">Warning</p>
The sensor value only reflects the approximated trend of gas concentration in a permissible error range, it DOES NOT represent the exact gas concentration. The detection of certain components in the air usually requires a more precise and costly instrument, which cannot be done with a single gas sensor. If your project is aimed at obtaining the gas concentration at a very precise level, then we do not recommend this gas sensor.
</div>

Specifications
-------------

-   Operating Voltage: 5.0V ± 0.3V
-   Target Gases: HCHO, Benzene,Toluene,Alcohol
-   Concentration Range: 1~50 ppm
-   Sensor Resistance Value(Rs): 10KΩ-100KΩ(in 10ppm HCHO)
-   Sensitivity: Rs(in air)/Rs(10ppm HCHO)≥5

Platforms Supported
-------------------

Getting Started
---------------

### With [Arduino](/Arduino "Arduino")

The Grove - HCHO Sensor can be used to detect VOCs, such as HCHO,toluene, benzene, alcohol. Here we take alcohol for an example to demonstrate how to use this sensor.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/img/HCHO_Hardware_Connection.jpg)

```
// demo of Grove - HCHO Sensor
 
void setup()
{
    Serial.begin(9600);
}
 
void loop()
{
    int sensorValue=analogRead(A0);
    float Vol=sensorValue*4.95/1023;
    Serial.print("Vol = ");
    Serial.println(Vol);
    delay(500);
}
```

After uploading the code, open the serial monitor to get the voltage(Vol) under normal condition.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/img/Test_result1.jpg)

Now list out the formula describing the relationship of Vol and R0:

R0=(Vc/Vol-1)×R1 (Vc=4.95V) ①

Then put a bottle of alcohol near the sensor, and read again the sensor value:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/img/Test_result3.jpg)

And we get the Rs:

Rs = (Vc/Vol-1)×R1 (Vc=4.95V) ②

Now calculate Rs/R0. Here we get 0.285. Then refer to the sensitivity characteristic diagram below and find the alcohol concentration is about 5 ppm.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/img/Sensitivity_Characteristic.jpg)

### With [Raspberry Pi](/GrovePiPlus "GrovePi+")

1.You should have got a raspberry pi and a grovepi or grovepi+.

2.You should have completed configuring the development enviroment, otherwise follow [here](/GrovePiPlus#Introducing_the_GrovePi.2B).

3.Connection

-   Plug the sensor to grovepi socket A0 by using a grove cable.

4.Navigate to the demos' directory:
```
    cd yourpath/GrovePi/Software/Python/
```

-   To see the code
```
    nano grove_hcho_sensor.py   # "Ctrl+x" to exit #
```
```
    import time
    import grovepi

    # The sensitivity can be adjusted by the onboard potentiometer

    # Connect the Grove HCHO Sensor to analog port A0
    # SIG,NC,VCC,GND
    hcho_sensor = 0

    grovepi.pinMode(hcho_sensor,"INPUT")

    # Vcc of the grove interface is normally 5v
    grove_vcc = 5

    while True:
        try:
            # Get sensor value
            sensor_value = grovepi.analogRead(hcho_sensor)

            # Calculate voltage
            voltage = (float)(sensor_value * grove_vcc / 1024)

            print "sensor_value =", sensor_value, " voltage =", voltage
            time.sleep(.5)

        except IOError:
            print "Error"
```

5.Run the demo.
```
    sudo python grove_hcho_sensor.py
```

Resources
---------

-   [Grove - HCHO Sensor Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/res/Grove-HCHO_Sensor_Eagle_File.zip)
-   [WSP2110 Datasheet (Chinese)](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/res/WSP2110.pdf)
-   [WSP2110 Datasheet (English)](https://raw.githubusercontent.com/SeeedDocument/Grove-HCHO_Sensor/master/res/Wsp2110-1-.pdf)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_HCHO_Sensor -->
