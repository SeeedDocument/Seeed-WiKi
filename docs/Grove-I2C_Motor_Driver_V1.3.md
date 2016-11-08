---
title: Grove - I2C Motor Driver V1.3
category: Actuator
bzurl: https://www.seeedstudio.com/Grove-I2C-Motor-Driver-p-907.html
oldwikiname: Grove_-_I2C_Motor_Driver_V1.3
prodimagename: I2CMotorDriver_New.jpg
bzprodimageurl: https://statics3.seeedstudio.com/images/product/12Cmotor.jpg
surveyurl: https://www.research.net/r/Grove-I2C_Motor_Driver_V1_3
sku: 105020001
tags: grove_i2c, io_3v3, io_5v, plat_duino, plat_linkit, plat_pi, plat_wio
---

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2CMotorDriver_New.jpg)

The Grove - I2C Motor Driver V1.3 (latest version) can directly control Stepper Motor or DC Motor. Its heart is a dual channel H-bridge driver chip（L298N）that can handle current up to 2A per channel, controlled by an Atmel ATmega8L which handles the I2C communication with for example an Arduino. Both motors can be driven simultaneously while set to a different speed and direction. It can power two brushed DC motors or one 4-wire two-phase stepper motor. It requires a 6V to 15V power supply to power the motor and has an onboard 5V voltage regulator which can power the I2C bus and the Arduino(selectable by jumper). All driver lines are protected by diodes from back-EMF.

Contrast to the [Grove - I2C motor driver V1.2](/Grove-I2C_Motor_Driver_V1.2), the V1.3 enables users to control the stepper more easily. You do not need to control the steppers all the time anymore, simply send a command to I2C motor driver V1.3 to drive a stepper, and it will act as your command, which would save your Arduino resource and simplify your code.

[![](https://raw.githubusercontent.com/SeeedDocument/common/master/Get_One_Now_Banner.png)](http://www.seeedstudio.com/Grove-I2C-Motor-Driver-p-907.html)

Version Tracker
---------------

| Revision | Descriptions                                    | Release        |
|----------|-------------------------------------------------|----------------|
| v1.0     | Initial public release                          | May 17th, 2012 |
| v1.2     | Modify the I2C address set by hardware          | July 2nd, 2012 |
| v1.3     | Modify the firmware to support off-line Stepper | Feb 18th, 2013 |


Features
--------

-   Grove Compatible
-   I2C Interface
-   Adjustable motor speed and rotation direction
-   Changeable slave address by hardware

!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)

Specifications
--------------

<table border="1" cellspacing="0" width="80%">
<tr>
<th scope="col">
Item
</th>
<th scope="col">
Min
</th>
<th scope="col">
Typical
</th>
<th scope="col">
Max
</th>
<th scope="col">
Unit
</th>
</tr>
<tr>
<th scope="row">
Working Voltage
</th>
<td>
6
</td>
<td align="center" >
-
</td>
<td>
15
</td>
<td>
VDC
</td>
</tr>
<tr>
<th scope="row">
Max Output Current per channel
</th>
<td colspan="3" align="center">
0.5
</td>
<td>
A
</td>
</tr>
<tr>
<th scope="row">
Maximum Total current
</th>
<td colspan="3" align="center" >
1.0
</td>
<td>
A
</td>
</tr>
<tr>
<th scope="row">
Input/output voltage on I2C bus
</th>
<td colspan="3" align="center" >
5
</td>
<td>
V
</td>
</tr>
<tr>
<th scope="row">
Communication protocol
</th>
<td colspan="3" align="center" >
I2C
</td>
<td>
/
</td>
</tr>
</table>

Platforms Supported
-------------------

Hardware Overview
------------------

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2CMotorDriver-1.jpg)
**78M05 IC:** 5V voltage regulator

**L298 IC:** Dual full bridge driver

**ATmega8 IC:** Control Motor Rotate.

<div class="admonition note">
<p class="admonition-title">Note</p>
Input voltage on screw terminals is regulated to 5V and connected to I2C +5V via a jumper (J4). Remove jumper if both external power via the screw terminals and power via the I2C header are used. Use jumper if 5V should be supplied to the I2C bus.
</div>

Application Ideas
-----------------

-   Robots
-   Homebuilt RC cars
-   Case fans
-   High power LED illumination

<div class="admonition danger">
<p class="admonition-title">Caution</p>
The board will be very hot while operating over 1Amp. Do keep your hands off!
</div>


Usage
-----

The I2C Motor Driver can control motor which is based on the chip L298. The L298 isn’t just a dual motor driver, it is a dual H-bridge. An h-bridge is basically a specific setup of transistors that allow you to switch direction of current. Hooking up to a motor means you can have it spin in both directions; and with PWM input, you can use your Arduino to make them spin at any speed. Because the L298 has 2 H-bridges, you can make a robot turn around by spinning each wheel in different directions, and of course go forwards and backwards.

Now, let us use the I2C Motor Driver to control two DC motors or a stepper rotating clockwise and anticlockwise.

### Set the address of the I2C Motor Driver

-   Set the address by dial switch is a new function added to the new I2C Motor Driver.

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2CMotorDriver-9.jpg)

-   Then keep the address setup in the program the same as the address setup on the I2C motor driver. The default address setup in the program is 0x0f.

<!-- -->

    #define I2CMotorDriverAdd         0x0f   // Set the address of the I2CMotorDriver

### How to drive 2 DC motors

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2CMotorDriver-4.jpg)

<div class="admonition note">
<p class="admonition-title">Note</p>
The first thing to notice however, is that you need an external power source for your DC motors. The 5V pin on the Arduino cannot provide enough power to drive 2 motors, you may damage your Arduino if you do so.
</div>

And then program your Arduino as below:

```
#include <Wire.h>
     .......
     .......
    < Driver functions >
     .......
     .......
void setup()  {
  Wire.begin(); // join i2c bus (address optional for master)
  delayMicroseconds(10000); //wait for motor driver to initialization
}
 
void loop()  {
  while(1)  {
    MotorSpeedSetAB(100,20);
    delay(10); //this delay needed
    MotorDirectionSet(0b1010);  //0b1010  Rotating in the positive direction
    delay(1000);
    MotorDirectionSet(0b0101);  //0b0101  Rotating in the opposite direction
    delay(500);
  }
}
```

In this program, Arduino first set the speed of the 2 DC motors with the *MotorSpeedSetAB()*command, and then set the DC motors work directions with *MotorDirectionSet()* command. please refer to the [Function Reference](/Grove-I2C_Motor_Driver_V1.3#function-reference) for details, you can download all the demo code in the [Resources](/Grove-I2C_Motor_Driver_V1.3#resources).

### How to drive a stepper using I2C motor driver V1.3

As the upgraded version of [I2C motor DriverV1.2](/Grove-I2C_Motor_Driver_V1.2), You can drive stepper via 2 methods for I2C motor driver V1.3.

**1. Control the stepper directly by Arduino**
The I2C motor Driver can also be used to drive a 4-wire stepper. Connect your stepper to the output pins of I2C motor driver, and then connect motor driver to your Arduino/Seeeduino with I2C bus. Program your Arduino as below:

```
#include <Wire.h>
     .......
     .......
    < Driver functions >
     .......
     .......
void setup()  {
  Wire.begin(); // join i2c bus (address optional for master)
  delayMicroseconds(10000); //wait for motor driver to initialization
}
 
void loop()  {
 while(1)  {
    MotorSpeedSetAB(100,100);//when driving a stepper, the speed should be set to 100;
    delay(10);
    MotorDirectionSet(0b0001);
    delay(4);
      MotorDirectionSet(0b0011);
    delay(4);  
    MotorDirectionSet(0b0010);
    delay(4);
      MotorDirectionSet(0b0110);
    delay(4);  
    MotorDirectionSet(0b0100);
    delay(4);  
    MotorDirectionSet(0b1100);
    delay(4);
      MotorDirectionSet(0b1000);
    delay(4);
      MotorDirectionSet(0b1001);
    delay(4);
  }
}
```

This connected 4-wire stepper will rotate; you can adjust the rotation speed or step number in your Arduino program. You can also use some other stepper libraries to control it. For all the demo code please refer to [Resources](/Grove-I2C_Motor_Driver_V1.3#resources).

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/2.gif)

**2. Control the Stepper using the I2C motor Driver V1.3 on-chip ATmega8L.
** Take [24BYJ48](http://www.seeedstudio.com/depot/high-quality-stepper-motor-12v-p-335.html?cPath=170_171) as an example, The hardware installation as shown below:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2C_Motor_Driver_control_a_Stepper_Motor.jpg)

The connection between 24BYJ48 Stepper Motor and I2C Motor Driver is as shown below:

![](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/img/I2C_Motor_Driver_Connector.jpg)

Download the [Grove-I2C motor driver V1.3 demo code](/Grove-I2C_Motor_Driver_V1.3#resources), and open the *StepperControlMode2.ino*:

``` de1
#include <Wire.h>
#define MotorSpeedSet             0x82
#define PWMFrequenceSet           0x84
#define DirectionSet              0xaa
#define MotorSetA                 0xa1
#define MotorSetB                 0xa5
#define Nothing                   0x01
#define EnableStepper             0x1a
#define DisableStepper           0x1b
#define Stepernu                  0x1c
#define I2CMotorDriverAdd         0x0f   // Set the address of the I2CMotorDriver
// set the steps you want, if 255, the stepper will rotate continuously;
void SteperStepset(unsigned char stepnu)
{
  Wire.beginTransmission(I2CMotorDriverAdd); // transmit to device I2CMotorDriverAdd
  Wire.write(Stepernu);          // Send the stepernu command
  Wire.write(stepnu);            // send the steps
  Wire.write(Nothing);           // send nothing   
  Wire.endTransmission();        // stop transmitting
}
     .......
     .......
     .......
     .......
void stepperrun()
{
 Serial.println("sent command to + direction, very fast");
 SteperStepset(255);
 StepperMotorEnable(1, 1);// ennable the i2c motor driver a stepper.
  delay(5000);
  Serial.println("sent command to - direction, slow");
  SteperStepset(255);
  StepperMotorEnable(0, 20);
  delay(5000);
   Serial.println("sent command to - direction, fast");
  StepperMotorEnable(0, 2);// ennable the i2c motor driver a stepper.
  delay(5000);
 Serial.println("sent command to + direction,100 steps, fast");
 SteperStepset(100);
  StepperMotorEnable(1,5);
 delay(3000);
 
 Serial.println("sent command to shut down the stepper");
 StepperMotorDisable();
 delay(1000);
 
  Serial.println("sent command to - direction, slow, and 10 steps then stop");
 SteperStepset(10);
 StepperMotorEnable(0,40);
 delay(5000);
 Serial.println("sent command to shut down the stepper");
 StepperMotorDisable();
 delay(5000);
}
void setup()  {
  Wire.begin(); // join i2c bus (address optional for master)
  delayMicroseconds(10000);
  Serial.begin(9600);
  Serial.println("setup begin");
  stepperrun();
}
void loop()  {
 
}
```

In this demo code, Arduino sends stepper-control command to I2C motor driver via I2C bus, with SteperStepset() to set the step number, and StepperMotorEnable() to set the direction and speed. Please refer to the [Function Reference](/Grove-I2C_Motor_Driver_V1.3#function-reference) for the details.

Note that if you have I2C motor driver V1.2 and want to use the off-line Stepper control methods, you will need to upgrade your firmware in your V1.2 motor driver with a [AVRISP](http://www.seeedstudio.com/depot/atmel-avrisp-stk500-usb-isp-programmer-p-207.html?cPath=132_135) and upload the .hex file to your I2C motor driver. Please download the .hex file and source code and related tips in the [Resources](/Grove-I2C_Motor_Driver_V1.3#resources).

Function Reference
------------------

**1. void SteperStepset(unsigned char stepnu)**

*Description: Set the steps you want.*

*stepnu: the Parameter can be 1~255. if 255, the stepper will rotate continuously;*

Usage:

    Serial.println("sent command to + direction,100 steps, fast");
    SteperStepset(100);

**2. void StepperMotorEnable(unsigned char Direction, unsigned char motorspeed)**

*Description: Enable the IIC motor driver to drive a 4-wire stepper.*

*Direction: Stepper direction 1/0*

*motorspeed: defines the time interval the i2C motor driver, Change it output to drive the stepper. The actual interval time is : motorspeed \* 4ms. That is , When motor speed is 10, the interval time would be 40 ms.*

Usage:

    StepperMotorEnable(1, 1);// enable the i2c motor driver a stepper.

**3. void StepperMotorDisable()**

*Description: Uneanble IIC motor drive to drive the stepper.*

Usage:

    StepperMotorDisable();

**4. void MotorSpeedSetAB(unsigned char MotorSpeedA , unsigned char MotorSpeedB)**

*Description: defines the speed of motor 1 and motor 2*


*MotorSpeedA: the DC motor A speed, should be 0~100;*

*MotorSpeedB: the DC motor B speed, should be 0~100;*

Usage:


    Serial.println("sent DC speed 100");
    MotorSpeedSetAB(100,100);//defines the speed of motor 1 and motor 2;
    delay(10); //this delay needed

**5. void MotorPWMFrequenceSet(unsigned char Frequence)**

*Description:set the prescale frequency of PWM, 0x03 default*

*Frequency: the prescale frequency of PWM*

**6. void MotorDirectionSet(unsigned char Direction)**

*Description: Adjust the direction of the motors*

*Direction:can be Forward/Reverse rotating.*

Usage:

    MotorDirectionSet(0b1010);  //"0b1010" defines the output polarity, "10" means the M+ is "positive" while the M- is "negative"
                             // make sure M+ and M- is different polarity when driving DC motors.
    delay(1000);
    MotorDirectionSet(0b0101);  //0b0101  Rotating in the opposite direction
    delay(500);

**7. void MotorDriectionAndSpeedSet(unsigned char Direction,unsigned char MotorSpeedA,unsigned char MotorSpeedB)**

*Description: Adjust the direction and speed altogether.*

Resources
---------

-   [Grove - I2C Motor Driver V1.3 Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/res/Grove-I2C_Motor_Driver_v1.3_Eagle_File.zip)
-   [I2C Motor DriverV13 Demo Code](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/res/I2CMotorDriverDemoCodeV13.zip)
-   [L298 Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/res/L298datasheet.pdf)
-   [78M05 Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/res/ST_78M05DataSheet.pdf)
-   [On-Chip Firmware for I2C motor driver](https://raw.githubusercontent.com/SeeedDocument/Grove-I2C_Motor_Driver_V1.3/master/res/On-Chipfirmware_for_Motor_driver.zip)

<!-- This Markdown file was created from http://www.seeedstudio.com/wiki/Grove_-_I2C_Motor_Driver_V1.3 -->
