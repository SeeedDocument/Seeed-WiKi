---
title: Grove - Multichannel Gas Sensor
category: Sensor
bzurl: https://seeedstudio.com/Grove-Multichannel-Gas-Sensor-p-2502.html
oldwikiname: Grove_-_Multichannel_Gas_Sensor
prodimagename: Multi_sensor1.png
bzprodimageurl: http://statics3.seeedstudio.com/images/product/101020088 1.jpg
surveyurl: https://www.research.net/r/Grove-Multichannel_Gas_Sensor
sku: 101020088
tags: grove_i2c, io_3v3, io_5v, plat_duino, plat_linkit, plat_wio
---

<table>
    <tr>
        <td>
            <img src="https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Multi_sensor1.png">
        </td>
        <td>
            <img src="https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Multi_sensor2.png">
        </td>
    </tr>
</table>


Grove – Multichannel Gas sensor is a environment detecting sensor with a built in MiCS-6814 which can detect many unhealthful gases, and three gases can be measured simultaneously due to its multi channels, so it can help you to monitor the concentration which more than one gas.

This sensor belongs to **Grove system**, and you can plug it onto the **Base shield** and work with Arduino directly without any jumper wires. The interface of it is I2C, so plug it onto the I2C port of Base shield, then you can start to work it.

<div class="admonition caution">
<p class="admonition-title">Caution</p>
The sensor value only reflects the approximated trend of gas concentration in a permissible error range, it DOES NOT represent the exact gas concentration. The detection of certain components in the air usually requires a more precise and costly instrument, which cannot be done with a single gas sensor. If your project is aimed at obtaining the gas concentration at a very precise level, then we do not recommend this gas sensor.
</div>

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-Multichannel-Gas-Sensor-p-2502.html)

Before usage
------------

### Related Reading

We suggest you to read those knowledge before using the Gas sensor, it'll help you to learn more about Arduino and our products, and also it'll let you to use open souse hardware more easier.

-   [Getting Started with Arduino](/Getting_Started_with_Seeeduino)
-   [What is Grove system](/Grove_System)
-   [Why i need a Base shield?](/Base_shield_v2)

After reading that you will know how to use Base shield with Grove products to work well with Arduino. Let's start it !

### To be prepared

This tutorial will include some necessary products:

-   [Arduino UNO R3](http://www.seeedstudio.com/depot/Arduino-Uno-Rev3-p-694.html) or [Seeeduino v4](http://www.seeedstudio.com/depot/Seeeduino-V4-p-669.html)
-   [Base Shield](http://www.seeedstudio.com/depot/Base-Shield-V2-p-1378.html)
-   Grove - Multichannel Gas Sensor

Hardware Overview
-----------------

<center>
![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Multi_sensor1.png)
</center>

Four pins are pointed out from the figure above

| Pin Label | Description             |
|-----------|-------------------------|
| GND       | Connect to ground       |
| VCC       | Power supply: 3.3V - 5V |
| SDA       | I2C data                |
| SCL       | I2C clock               |

The power supply is between 3.3V and 5V, so this sensor can be compatible with a micro-controller whose output voltage is 3.3V.

Features
-------

-   Three fully independent sensing elements on one package
-   Built with ATmega168PA
-   I2C interface with programmable address
-   Heating power can be shut down for low power
-   Detectable gases
    -   Carbon monoxide CO 1 – 1000ppm
    -   Nitrogen dioxide NO2 0.05 – 10ppm
    -   Ethanol C2H6OH 10 – 500ppm
    -   Hydrogen H2 1 – 1000ppm
    -   Ammonia NH3 1 – 500ppm
    -   Methane CH4 &gt;1000ppm
    -   Propane C3H8 &gt;1000ppm
    -   Iso-butane C4H10 &gt;1000ppm

Block Diagram
-------------

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Grove-Multichannel_Gas_Sensor_block_diagram.jpg)

Platforms Supported
-------------------

Electrical Characteristics
--------------------------

| Item          | Condition  | Min. | Typ. | Max. | Unit |
|---------------|------------|------|------|------|------|
| Voltage       | -          | 3.1  | 3.3  | 5.25 | V    |
| Ripple        | @Max Power | -    | 80   | 100  | mV   |
| Heating Power | -          | -    | -    | 88   | mW   |
| Max Power     | -          | -    | -    | 150  | mW   |
| ADC Precision | -          | -    | 10   | -    | Bits |
| I2C Rate      | -          | -    | 100  | 400  | kHz  |
| VIL           | @I2C       | -0.5 | -    | 0.99 | V    |
| VIH           | @I2C       | 2.31 | -    | 5.25 | V    |

### Performance RED sensor

| Characteristic RED sensor  | Symbol | Typ | Min | Max  | Unit |
|----------------------------|--------|-----|-----|------|------|
| Sensing resistance in air  | R0     | -   | 100 | 1500 | kΩ   |
| Typical CO detection range | FS     | -   | 1   | 1000 | ppm  |
| Sensitivity factor         | SR     | -   | 1.2 | 50   | -    |

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Red_sensor.jpg)

### Performance OX sensor

| Characteristic OX sensor    | Symbol | Typ | Min  | Max | Unit |
|-----------------------------|--------|-----|------|-----|------|
| Sensing resistance in air   | R0     | -   | 0.8  | 20  | kΩ   |
| Typical NO2 detection range | FS     | -   | 0.05 | 10  | ppm  |
| Sensitivity factor          | SR     | -   | 2    | -   | -    |

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/OX_sensor.jpg)

### Performance NH3 sensor

| Characteristic NH3 sensor   | Symbol | Typ | Min | Max  | Unit |
|-----------------------------|--------|-----|-----|------|------|
| Sensing resistance in air   | R0     | -   | 10  | 1500 | kΩ   |
| Typical NH3 detection range | FS     | -   | 1   | 300  | ppm  |
| Sensitivity factor          | SR     | -   | 1.5 | 15   | -    |

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/NH3_sensor.jpg)

Firmware and library
--------------------

### Firmware

This grove module has an ATmega168 MCU which is flashed with a factory firmware. The firmware does the following:

1.  Controls the power on and off for heating circuit and indicator LED
2.  Listens to the command that make the module do the calibration - the calibration will sample the resistance of the MEMS core of this sensor which will be used as the reference, so please perform calibration in a fresh air condition
3.  Listens to commands that get resistance value of one of the three sensor core which will be used to calculate the concentration of a specific gas
4.  Listens to the command that changing the I2C address of this module - at most time, you do not need to do this except that the I2C address of this module (0x04) conflicts with another slave module.

<div class="admonition note">
<p class="admonition-title">Note</p>
The calibration has been done before the modules leave the factory. If you want to recalibrate, please do make sure that the air condition is fresh.
</div>

### Library

The library reads resistance values from the module and calculate the concentration of gas. One thing must be noticed is, the readings of this sensor are not supposed to be used to distinguish the type of gases, but to measure the concentration of a specific gas which is known to be that kind of gas.

The cores of this sensor are more sensitive to CO, NO2 and NH3, the precision of measurement for other gases would be worse.

<div class="admonition note">
<p class="admonition-title">Note</p>
The doCalibrate() function will take 8 seconds before it returns, as said above, at most time you don't need to recalibrate the sensor.
</div>

Demonstration
-------------

**Hardware Installation:**

1.Connect Grove - Multichannel Gas Sensor to Seeeduino.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Grove-MultiChannelGasSensor.jpg)

**Upload Code:**

2.Download [Arduino Library & Grove/Xadow firmware](https://github.com/Seeed-Studio/Mutichannel_Gas_Sensor) and install it to Arduino Library.

3.Open the code directly by the path:File -> Example -> Mutichannel_Gas_Sensor-> ReadSensorValue_Grove.

The code of ReadSensorValue_Grove is given below.
```
    /*
        This is a demo to test MutichannelGasSensor library
        This code is running on Xadow-mainboard, and the I2C slave is Xadow-MutichannelGasSensor
        There is a ATmega168PA on Xadow-MutichannelGasSensor, it get sensors output and feed back to master.
        the data is raw ADC value, algorithm should be realized on master.
        
        please feel free to write email to me if there is any question 
        
        Jacky Zhang, Embedded Software Engineer
        qi.zhang@seeed.cc
        17,mar,2015
    */


    #include <Wire.h>
    #include "MutichannelGasSensor.h"

    void setup()
    {
        Serial.begin(9600);  // start serial for output
        Serial.println("power on!");

        mutichannelGasSensor.begin(0x04);//the default I2C address of the slave is 0x04
        //mutichannelGasSensor.changeI2cAddr(0x10);
        //mutichannelGasSensor.doCalibrate();
        //delay(8000);
        while(mutichannelGasSensor.readR0() < 0)
        {
            Serial.println("sensors init error!!");
            delay(1000);
        }
        Serial.print("Res0[0]: ");
        Serial.println(mutichannelGasSensor.res0[0]);
        Serial.print("Res0[1]: ");
        Serial.println(mutichannelGasSensor.res0[1]);
        Serial.print("Res0[2]: ");
        Serial.println(mutichannelGasSensor.res0[2]);
        mutichannelGasSensor.powerOn();
    }

    void loop()
    {
        mutichannelGasSensor.readR();
        Serial.print("Res[0]: ");
        Serial.println(mutichannelGasSensor.res[0]);
        Serial.print("Res[1]: ");
        Serial.println(mutichannelGasSensor.res[1]);
        Serial.print("Res[2]: ");
        Serial.println(mutichannelGasSensor.res[2]);
        
        mutichannelGasSensor.calcGas();
        Serial.print("NH3: ");
        Serial.print(mutichannelGasSensor.density_nh3);
        Serial.println("ppm");
        Serial.print("CO: ");
        Serial.print(mutichannelGasSensor.density_co);
        Serial.println("ppm");
        Serial.print("NO2: ");
        Serial.print(mutichannelGasSensor.density_no2);
        Serial.println("ppm");
        
        delay(1000);
        Serial.println("...");
    }
```

4.Upload the code. Remember to select Seeeduino Uno from the Tools | Board menu of the Arduino environment, and select the correct serial port Arduino is using.

By opening the serial monitor, you can see the raw data read from sensor.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/img/Mutichannel_Gas_Sensor_Grove_Print.jpg)

Resources
---------

-   [Grove - Multichannel Gas Sensor v1.0 sch](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/res/Grove-Multichannel_Gas_Sensor_v1.0_sch.pdf)
-   [Grove - Multichannel Gas Sensor eagle files](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/res/Grove-Multichannel_Gas_Sensor_v1.0_eagle_files.zip)
-   [Arduino Library & Grove/Xadow firmware](https://github.com/Seeed-Studio/Mutichannel_Gas_Sensor)
-   [MiCS-6814 Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-Multichannel_Gas_Sensor/master/res/MiCS-6814_Datasheet.pdf)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Multichannel_Gas_Sensor -->
