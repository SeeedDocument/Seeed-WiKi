---
title: Base Shield V2
category: Arduino
bzurl: https://www.seeedstudio.com/base-shield-v13-p-1378.html
oldwikiname: 
prodimagename: Base_Shield_v2-1.png
surveyurl: https://www.surveymonkey.com/r/base_shield_v2
sku: 103030000
---

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Base_Shield_V2/master/img/Base_Shield_v2-1.png)
As an expansion board, Base Shield v2 has many Grove connectors, making it convenient for you to use Grove products together. And It is compatible with a series of Arduino products.

!!!Note
    Click to get more info about [Grove System](http://wiki.seeed.cc/Grove_System/).

[![](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](https://www.seeedstudio.com/base-shield-v13-p-1378.html)  


##Features

* Power Compatible: Every Grove connector has four wires, one of which is Vcc. However, not every micro-controller main board needs a supply voltage of 5V, some need 3.3V. That's why we add a power switch to Base Shield v2. In this way, you can adjust the voltage of Vcc via this switch, making sure the voltage of Vcc is the same as supply power of the main board.

So While using Arduino UNO with Base Shield v2, please turn the switch to 5v position; While using Seeeduino Arch with Base Shield v2, please turn the switch to 3.3v.

* Board Compatible: The number of pinout is the same as that of Arduino UNO R3.

Added SDA and SCL pins that are near to the AREF pin and two other new pins placed near to the RESET pin, the IOREF that allow the shields to adapt to the voltage provided from the board. In future, shields will be compatible with both the board that uses the AVR, which operates with 5V and with the Arduino Due that operates with 3.3V. The second one is a not connected pin, that is reserved for future purposes. ---- According to Arduino UNO

!!!Note
    If using Base Shield v2 with Seeeduino V3, please solder the pads, P1 and P2.

Grove connectors: Base Shield v2 has sixteen Grove connectors.

| Specification | Name | Qty|
|----------------|---------|-----|
|Analog port|	A0/A1/A2/A3	|4|
|Digital port|	D2/D3/D4/D5/D6/D7/D8	|7|
|UART port|	UART|	1|
| 2C port  |	I2C  |	1 |

* Dimension: 2.1 * 2.7 inch
* LED indicator: The Green LED would be lighted up while powering.

##Application

We have used Grove - LED and Grove - Button with Base Shield v2. All Grove products have Grove connectors, and can be plugged onto Base Shield directly.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Base_Shield_V2/master/img/Base_Shield_v2-3.png)

```
/*
 The circuit:
* LED attached from pin 3 to ground
* Button attached to pin 2 from +5V
* 10K resistor attached to pin 2 from ground 
* Button Control An LED 
*/

const int button = 2;       // the Grove port No. you attached a button to
const int LED    = 3;       // the Grove port No. you attached an LED to
void setup()
{
    pinMode(button, INPUT); //set button as an INPUT device
    pinMode(LED, OUTPUT);   //set LED as an OUTPUT device
}
void loop()
{
    int btn = digitalRead(button); //read the status of the button
    digitalWrite(LED, btn);
    delay(10);
}
```

##Resource

* [Schematic of Base Shield v2](https://raw.githubusercontent.com/SeeedDocument/Base_Shield_V2/master/res/Base_Shield_v2.zip)
* [Schematics PDF of Base Shield V2](https://raw.githubusercontent.com/SeeedDocument/Base_Shield_V2/master/res/Base_Shield_v2.pdf)