---
title: Grove - Gas Sensor(MQ2)
category: Sensor
bzurl: https://seeedstudio.com/Grove-Gas-Sensor(MQ2)-p-937.html
oldwikiname: Grove_-_Gas_Sensor(MQ2)
prodimagename: Twig-Gas_Sensor.bmp
bzprodimageurl: http://statics3.seeedstudio.com/images/product/Gas Sensor MQ.jpg
surveyurl: https://www.research.net/r/Grove-Gas_Sensor-MQ2
sku: 101020055
tags: grove_analog, io_5v, plat_duino
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/img/Twig-Gas_Sensor.bmp)

The Grove - Gas Sensor(MQ2) module is useful for gas leakage detection (in home and industry). It is suitable for detecting <font color="Blue">H2, LPG, CH4, CO, Alcohol, Smoke or Propane</font>. Due to its high sensitivity and fast response time, measurements can be taken as soon as possible. The sensitivity of the sensor can be adjusted by using the potentiometer. 

<div class="admonition danger">
<p class="admonition-title">Note</p>
The sensor value only reflects the approximated trend of gas concentration in a permissible error range, it DOES NOT represent the exact gas concentration. The detection of certain components in the air usually requires a more precise and costly instrument, which cannot be done with a single gas sensor. If your project is aimed at obtaining the gas concentration at a very precise level, then we do not recommend this gas sensor.
</div>

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/depot/grove-gas-sensormq2-p-937.html)

Features
--------

-   Wide detecting scope
-   Stable and long life
-   Fast response and High sensitivity

Specification
-------------

| Item | Parameter           | Min | Typical    | Max | Unit |
|------|---------------------|-----|------------|-----|------|
| VCC  | Working Voltage     | 4.9 | 5          | 5.1 | V    |
| PH   | Heating consumption | 0.5 | -          | 800 | mW   |
| RL   | Load resistance     |     | adjustable |     |      |
| RH   | Heater resistance   | -   | 33         | -   | Ω    |
| Rs   | Sensing Resistance  | 3   | -          | 30  | kΩ   |

Platforms Supported
-------------------

Application Ideas
-----------------

-   Gas leakage detection.
-   Toys.

Hardware Overview
-----------------

This is an Analog output sensor. This needs to be connected to any one Analog socket in [Base Shield](/Base_shield_v2). The examples used in this tutorial makes uses of A0 analog pin. Connect this module to the A0 port of Base Shield.

It is possible to connect the Grove module to Arduino directly by using jumper wires by using the connection as shown in the table below:

| Arduino   | Gas Sensor |
|-----------|------------|
| 5V        | VCC        |
| GND       | GND        |
| NC        | NC         |
| Analog A0 | SIG        |

The output voltage from the Gas sensor increases when the concentration of gas increases. Sensitivity can be adjusted by varying the potentiometer. <font color="Red">Please note that the best preheat time for the sensor is above 24 hours</font>. For detailed information about the MQ-2 sensor, please refer the data-sheet provided in **Resources** section.

Getting Started
---------------

![](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/img/Read_Gas_Sensor_data_MQ2_MQ5.jpg)

Connect the Grove - Gas Sensor(MQ2) to A0 port as shown in the picture above.

### Gas Detection : Basic Example

In this example, the sensor is connected to A0 pin. The voltage read from the sensor is displayed. This value can be used as a threshold to detect any increase/decrease in gas concentration.

```
void setup() {
  Serial.begin(9600);
}
 
void loop() {
  float sensor_volt; 
  float sensorValue;
 
  sensorValue = analogRead(A0);
  sensor_volt = sensorValue/1024*5.0;
 
  Serial.print("sensor_volt = ");
  Serial.print(sensor_volt);
  Serial.println("V");
  delay(1000);
}
```

### Measurement : Approximation

These examples demonstrate ways to know the approximate concentration of Gas. As per the data-sheet of the MQx sensors, these equations are tested for standard conditions and are not calibrated. It may vary based on change in temperature or humidity.

1. Keep the Gas Sensor in clean air environment. Upload the program below.


        void setup() {
          Serial.begin(9600);
        }

        void loop() {
          float sensor_volt; 
          float RS_air; //  Get the value of RS via in a clear air
          float R0;  // Get the value of R0 via in H2
          float sensorValue;

        /*--- Get a average data by testing 100 times ---*/   
            for(int x = 0 ; x < 100 ; x++)
          {
            sensorValue = sensorValue + analogRead(A0);
          }
          sensorValue = sensorValue/100.0;
        /*-----------------------------------------------*/

          sensor_volt = sensorValue/1024*5.0;
          RS_air = (5.0-sensor_volt)/sensor_volt; // omit *RL
          R0 = RS_air/9.8; // The ratio of RS/R0 is 9.8 in a clear air from Graph (Found using WebPlotDigitizer)

          Serial.print("sensor_volt = ");
          Serial.print(sensor_volt);
          Serial.println("V");

          Serial.print("R0 = ");
          Serial.println(R0);
          delay(1000);

        }


2. Then, open the serial monitor of Arduino IDE. Write down the value of R0 and this needs to be used in the next program. Please node down the R0 after the reading stabilizes.

    <font color="Red">Replace the R0 below with value of R0 tested above </font>. Expose the sensor to any one of the gas listed above.


        void setup() {
          Serial.begin(9600);
        }
        
        void loop() {
        
          float sensor_volt;
          float RS_gas; // Get value of RS in a GAS
          float ratio; // Get ratio RS_GAS/RS_air
          int sensorValue = analogRead(A0);
          sensor_volt=(float)sensorValue/1024*5.0;
          RS_gas = (5.0-sensor_volt)/sensor_volt; // omit *RL
        
          /*-Replace the name "R0" with the value of R0 in the demo of First Test -*/
          ratio = RS_gas/R0;  // ratio = RS/R0 
          /*-----------------------------------------------------------------------*/

          Serial.print("sensor_volt = ");
          Serial.println(sensor_volt);
          Serial.print("RS_ratio = ");
          Serial.println(RS_gas);
          Serial.print("Rs/R0 = ");
          Serial.println(ratio);

          Serial.print("\n\n");

          delay(1000);

        }


    Now, we can get the concentration of gas from the figure below.

    ![](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/img/Gas_sensor_1.png)

    According to the graph, we can see that the minimum concentration we can test is 100ppm and the maximum is 10000ppm, in a other word, we can get a concentration of gas between 0.01% and 1%. However, we can't provide a formula because the relation between ratio and concentration is nonlinear.


Resources
---------

**Suggest Reading / References**

-   [Download Arduino and install Arduino driver](/Download_Arduino_and_install_Arduino_driver)
-   [Getting Started with Seeeduino](/Getting_Started_with_Seeeduino)
-   [How to choose a Gas Sensor](/How_to_choose_A_Gas_Sensor)
-   [What's LEL](http://en.wikipedia.org/wiki/Flammability_limit)

**Schematic**

-   [Grove Gas Sensor - EAGLE (Schematic and Board) files](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/res/Gas_Sensor_Eagle_files.zip)
-   [Grove Gas Sensor - PDF Schematic](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/res/Gas_Sensor_Schematic.pdf)

**Datasheet**

-   [MQ-2 Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-Gas_Sensor-MQ2/master/res/MQ-2.pdf)


<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_Gas_Sensor(MQ2) -->
