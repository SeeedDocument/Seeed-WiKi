---
title: Motor Shield V2.0
category: Arduino
bzurl: https://www.seeedstudio.com/Motor-Shield-V2.0-p-1377.html
oldwikiname: Motor_Shield_V2.0
prodimagename: 500px-Motorshield_01.jpg
surveyurl: https://www.surveymonkey.com/r/MotorShield
sku: 105030001
---

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Motor_Shield_V2.0/master/image/500px-Motorshield_01.jpg)

!!!Note
    This document works for Motor Shield V2.0/2.1/2.2.


The Motor Shield is a driver module for motors that allows you to use Arduino to control the working speed and direction of the motor. Based on the Dual Full-Bridge Drive Chip L298, it is able to drive two DC motors or a step motor. The Motor Shield can either be powered directly by Arduino or by an external 6V~15V power supply via the terminal input. This module can be used for the development of micro robots and intelligent vehicles, etc

[![Get one now](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](https://www.seeedstudio.com/item_detail.html?p_id=1377)



## Features

- Standard Arduino UNO Shield pin out
- Based on L298 full bridge IC
- Drive 2 DC Motor or 1 Stepper
- External power input available
- Led indicator
- Heat sink for better performance
- Arduino library


## Specifications


|Spec   |Value|
|:------|:-----------------|
|Operating Voltage   |	5V |
|External Power	|6-15V  |
|Output Current 	|2.0A Max @ Each Channel   |
|PWM Range	 |0-100% |
|Output    |2 Channels, 4 Ports|

## Compatibility

We have produced a lot of extension board that can make your platform board more powerful, however not every extension board is compatible with all the platform board, here we use a table to illustrate how are those boards compatible with platform board.

!!!note
    Please note that "Not recommended" means that it might have chance to work with the platform board however requires extra work such as jump wires or rewriting the code. If you are interested in digging more, welcome to contact with techsupport@seeed.cc.

**Click to see full picture**
[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/Shield%20Compatibility.png)](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/Shield%20Compatibility.png)


## Hardware Overview

![](https://raw.githubusercontent.com/SeeedDocument/Motor_Shield_V2.0/master/image/700px-MotorShieldHardware.png)

**1**.Channel 1 indicator, include 3 leds

- EB - channel 1 enable, high active
- IN3 - status of OUT3
- IN4 - status of OUT4

**2**.Channel 1 Sense - Please connect the left 2 pins together for normal usage.

**Note** that it's a high level application for sense the current, please refer to datasheet and schematic for more information.

**3**.OUTPUT - There're 2 channels, each channel has 2 output

- Channel 0 - OUT1, OUT2
- Channel 1 - OUT3, OUT4

**4**.Channel 0 Sense

**5**.Channel 0 indicator, include 3 leds

- EB - channel 0 enable, high active
- IN1 - status of OUT1
- IN2 - status of OUT2

**6**.External Power Input, range 6-15V

**7**.Reset indicator - turn red when Reset button is pressed

**8**.Reset button - pressed to reset the shield and Arduino

**9**.Power indicator - turn green when power in, either internal or external

**A.**Power switch

- Connect - Get power from Arduino
- Disconnect - Get power from External sources

**B.**Standard Arduino shield pin out

### Digital Pin Used
|Arduino Pin   |Function        |
|:------|:-----------------|
|D0   |	Not Used       |
|D1	|Not Used           |
|D2 	|Not Used    |
|D3	    |Not Used  |
|D4    |Not Used |
|D5    |Not Used |
|D6    |Not Used |
|D7    |Not Used |
|D8    |**OUT1** |
|D9    |**Enable of Channel0** |
|D10    |**Enable of Channel1** |
|D11    |**OUT2** |
|D12    |**OUT3**|
|D13    |	**OUT4** |

!!!Note
    D8~D13 was used by Motor Shield. Please don't use those pins to avoid conflict.

### Analog Pin Used
|Arduino Pin   |Function        |
|:------|:-----------------|
|D0   |	Not Used       |
|D1	|Not Used           |
|D2 	|Not Used    |
|D3	    |Not Used  |
|D4    |Not Used |
|D5    |Not Used |


!!!Note
    Not Used means you can use those pins freely.

## Getting Started

Here we will show you how to drive a dc motor and a stepper with this shield.

We need a[ Seeeduino V4 ](http://www.seeedstudio.com/wiki/LinkIt_Smart_7688#Getting_Started)as the controller, Seeeduino V4 is an Arduino compatible board, and you can use an Arduino as well.

And you need a dc motor or a stepper for testing.

### Download the library

Click the below button to download the library. If the library you had download include "**-master**", please remove it.

[![](https://raw.githubusercontent.com/SeeedDocument/Motor_Shield_V2.0/master/image/400px-Motor_shield_v2_library.png)](https://github.com/Seeed-Studio/SeeedMotorShieldV2)

### Drive a DC Motor
You can drive 2 DC motor with this shield. Here I will show you how to drive a DC motor.
![](https://raw.githubusercontent.com/SeeedDocument/Motor_Shield_V2.0/master/image/400px-Electric_motor_cycle_2.png)

You need to do some preparing first:

- Set **SEN_A** and **SEN_B**, connect the left 2 pins together with a jumper.
- Connect **MB_EN** together with a jumper, as we are no going use an external power.
- Connect your DC motor to Chanel 0 (OUT1 and OUT2).

Then open **motor_dc** example in the library. Upload the code to Seeeduino V4.2.

```
//  Demo function:The application method to drive the DC motor.
//  Author:Loovee (luweicong@seeed.cc)
//  2016-3-11

#include "MotorDriver.h"

MotorDriver motor;

void setup()
{
    // initialize
    motor.begin();
}

void loop()
{
    motor.speed(0, 100);            // set motor0 to speed 100
    delay(1000);
    motor.brake(0);                 // brake
    delay(1000);
    motor.speed(0, -100);           // set motor0 to speed -100
    delay(1000);
    motor.stop(0);                  // stop
    delay(1000);
}
// END FILE
```
Then you will find your motor move (1s), stop (1s), move back (1s), stop (1s), and loop.

If there's nothing happen, please make sure:

- You had uploaded the code successfully
- Your motor connect right
- The led indicators blink right

### Drive a Stepper
You can drive a 4-wire stepper with this shield. Here I will show you how to drive a [ stepper ](https://en.wikipedia.org/wiki/Stepper_motor)

![](https://raw.githubusercontent.com/SeeedDocument/Motor_Shield_V2.0/master/image/400px-StepperMotor.gif)

You need to do some preparing first:
- Set **SEN_A** and **SEN_B**, connect the left 2 pins together with a jumper.
- Connect **MB_EN** together with a jumper, as we are no going to use an external power.

Find the pin definitions of you stepper, and connect it to the OUTPUT of the shield. As below:

|Stepper   |Motor Shield  |
|:------|:-----------------|
|A+   |	OUT1  |
|A-	|OUT2  |
|B+ 	|OUT3  |
|B-    |OUT4 |

Then open **stepper_test** example in the library, upload it to Seeeduino V4, then you will find your stepper move.
```
/*
 * Stepper test for Seeed Motor Shield V2
 * loovee @ 15 Mar, 2016
 */

#include <Stepper.h>

// change this to the number of steps on your motor
#define STEPS 200

// create an instance of the stepper class, specifying
// the number of steps of the motor and the pins it's
// attached to
Stepper stepper(STEPS, 8, 11, 12, 13);

// the previous reading from the analog input
int previous = 0;

void step(int steps)
{
    digitalWrite(9, HIGH);
    digitalWrite(10, HIGH);
    stepper.step(steps);
    digitalWrite(9, LOW);
    digitalWrite(10, LOW);
}

void setup()
{
    // set the speed of the motor to 30 RPMs
    pinMode(9, OUTPUT);
    pinMode(10, OUTPUT);
    digitalWrite(9, LOW);
    digitalWrite(10, LOW);
    stepper.setSpeed(30);
}

void loop()
{
    step(1000);
    step(-1000);
}

// END FILE
```
If there's nothing happen, please double check if you had connected the wire right.

## Library APIs

### begin
**Description**
```Javascript
void begin();
```
### speed
**Description**

Set speed, control by PWM.
```Javascript
void move(int motor_id, int speed);
```
- motor_id
  - 0 - Chanel 0
  - 1 - Chanel 1
- speed: -100~100, the larger the faster, 0 for stop

**stop**
```Javascript
void stop(unsigned char motor_id);
```
**brake**
```Javascript
void brake(unsigned char motor_id);
```
### Stepper
**Note** that we use the library provided by Arduino IDE to drive a stepper.

There's something need to be modified, please refer the examples.

### Resources

- [ Motor Shield V2.0 Eagle File ](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/Motor_Shield_Eagle_File.zip)
- [Motor shield V2.1 Eagle File ](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/Motor_shield_2.1.rar)
- [Motor Shield 2.0 schematics](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/Motor_shield_2.0.pdf)
- [Motor Shield 2.1 schematics](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/Motor_shield_2.1.pdf)
- [Motor Shield 2.2 schematics](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/Motor%20Shield%20v2.2.pdf)
- [Motor Shield Library](https://github.com/Seeed-Studio/SeeedMotorShieldV2)
- [L298 Datasheet](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/L298.pdf)
- [78M05 Datasheet](https://github.com/SeeedDocument/Motor_Shield_V2.0/raw/master/resource/78M05_datasheet.pdf)
