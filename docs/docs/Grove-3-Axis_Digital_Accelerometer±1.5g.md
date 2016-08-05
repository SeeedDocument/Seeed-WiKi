<!-- 
+++
date        = "2016-01-01T11:27:27-04:00"
title       = "Grove - 3-Axis Digital Accelerometer(±1.5g)"
+++
 -->

# Grove - 3-Axis Digital Accelerometer(±1.5g)

\[[中文](http://www.seeedstudio.com/wiki/Grove_-_3-Axis_Digital_Accelerometer%28%C2%B11.5g%29_%E4%B8%89%E8%BD%B4%E6%95%B0%E5%AD%97%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%BC%A0%E6%84%9F%E5%99%A8)\]

Introduction
------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="center">
<div class="floatnone">
<img src="/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/3_aix_acc.jpg" />
</div>
</div></td>
<td><div class="center">
<div class="floatnone">
<img src="/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/Grove-3-Axis_v1.3.jpg" />
</div>
</div></td>
</tr>
<tr class="even">
<td><div style="text-align: center">
Grove - 3-Axis Digital Accelerometer v1.2
</div></td>
<td><div style="text-align: center">
Grove - 3-Axis Digital Accelerometer v1.2b
</div></td>
</tr>
</tbody>
</table>

3-Axis Digital Accelerometer is the key part in projects like orientation detection, gesture detection and Motion detection. This 3-Axis Digital Accelerometer(±1.5g) is based on Freescale's low power consumption module, MMA7660FC. It features up to 10,000g high shock survivability and configurable Samples per Second rate. For generous applications that don't require too large measurement range, this is a great choice because it's durable, energy saving and cost-efficient.
**Model:[SEN21853P](http://www.seeedstudio.com/depot/twig-3axis-accelerometer-p-765.html?cPath=144_146)**

Specifications
--------------

-   Working voltage: 3.0 - 5.5V
-   Off Mode Current: 0.4μA
-   Standby Mode Current: 2μA
-   Active Mode Current: 47 μA at 1 ODR
-   Test Range: ±1.5g
-   Sensitivity: 21LSB/g
-   Suli-compatible Library

**Note:** *More details about Suli-compatible Library, please refer to [Suli](http://www.seeedstudio.com/wiki/Suli)*

Demonstration
-------------

### With [Arduino](/wiki/index.php?title=Arduino&action=edit&redlink=1 "Arduino (page does not exist)")

Here we are going to show you how to get raw data and data measured by "g" from this sensor. 

Connect this module to the I2C port of Grove - Base Shield via a Grove cable.

**Note:**If you want to activate the Interrupt function of this module, you need to connect the INT soldering pad we broke out on the board with a pin of Arduino that's capable of Interrupt Service Routine. 

![](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/Digital_Accelerometer_Sensor_Connector1.5g.jpg)

Install the library we provide in the "Resources" section.

Open the code directly by the path:File -&gt; Example -&gt;DigitalAccelerometer\_MMA7660FC -&gt;MMA7660FC\_Demo.

In this program, acceleration information are sent from the sensor to Seeeduino via I2C bus and then Seeeduino printed them onto the serial monitor.
Open the serial monitor to check the result.

![](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/Grove-3-Axis_Digital_Accelerometer±1.5g.jpg)

The outputs of this sensor consist of two parts: raw data and 3-axis acceleration info converted into the unit of gravity, "g".**
**

### With [Raspberry Pi](/wiki/GrovePi%2B "GrovePi+")

1.You should have got a raspberry pi and a grovepi or grovepi+.
2.You should have completed configuring the development enviroment, otherwise follow [here](http://www.seeedstudio.com/wiki/GrovePi%2B#Introducing_the_GrovePi.2B).
3.Connection

-   Plug the sensor to grovepi socket i2c-x(1~3) by using a grove cable.

4.Navigate to the demos' directory:

       cd yourpath/GrovePi/Software/Python/

-   To see the code

<!-- -->

       nano grove_i2c_accelerometer.py   # "Ctrl+x" to exit #

    import time
    import grovepi

    # Connect the Grove Accelerometer (+/- 1.5g) to any I2C port eg. I2C-1
    # Can be found at I2C address 0x4c
    # SCL,SDA,VCC,GND

    while True:
        try:
            print grovepi.acc_xyz()
            time.sleep(.5)

        except IOError:
            print "Error"

5.Run the demo.

       sudo python grove_i2c_accelerometer.py

Reference
---------

Below are two figures helping you understand the physical meaning of the result.

The first figure is about the direction of each axis:
![](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/MMA7660_Direction.jpg)

The second figure gives some examples:

![](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/img/Sensing_Direction_1.jpg)

Resources
---------

-   [Datasheet of MMA7660FC.](http://garden.seeedstudio.com/images/e/ee/MMA7660FC.pdf)
-   [Grove - 3-Axis Digital Accelerometer Eagle File](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/res/Grove-3-Axis_Digital_Accelerometer±1.5g_Eagle_File.zip)
-   [DigitalAccelerometer\_MMA7660FC Library](https://github.com/Seeed-Studio/DigitalAccelerometer_MMA7660FC)
-   [github repository for 3-Axis Digital Accelerometer(±1.5g)](https://github.com/Seeed-Studio/Accelerometer_MMA7660)
-   [***Wiki in PDF Format***](/asset/Grove-3-Axis_Digital_Accelerometer±1.5g/res/101020038.pdf)


