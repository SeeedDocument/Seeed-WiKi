---
title: Grove - Relay
category: Actuator
bzurl: https://www.seeedstudio.com/Grove-Relay-p-769.html
oldwikiname: 
prodimagename: Twig-Relay.jpg
surveyurl: https://www.surveymonkey.com/r/Grove_Relay
sku: 103020005
---

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/img/Twig-Relay.jpg)

The Grove-Relay module is a digital normally-open switch. Through it, you can control circuit of high voltage with low voltage, say 5V on the controller. There is an indicator LED on the board, which will light up when the controlled terminals get closed.

[![](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](https://www.seeedstudio.com/Grove-Relay-p-769.html)  


##Specifications

* Parameter	v1.1	v1.2
* Product Release Date	27th Jan 2013	9th June 2014
* Operating Voltage	5V	3.3V~5V
* Operating Current	60mA	100mA
* Relay Life	100,000 Cycle	100,000 Cycle
* Max Switching Voltage	250VAC/30VDC	250VAC/30VDC
* Max Switching Current	5A	5A

##Platform Support

|Arduino|Wio|BeagleBone|Raspberry Pi|LinkIt|
|---------|-----|-----|------|------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/arduino_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/wio_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/bbg_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/raspberry_pi_logo.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/linkit_logo.jpg)|


##Getting Started
###With Arduino

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/img/Conn-five.jpg)

Below is a demo that shows you how to control a Grove - Relay with a Grove - Button. When the button gets pressed, the relay will close.

```
// Project Five - Relay Control

void setup()
{
  pinMode(1, INPUT);
  pinMode(2, INPUT);
  pinMode(6, OUTPUT);
}

void loop()
{
  if (digitalRead(1)==HIGH)
  {
    digitalWrite(6, HIGH);
    delay(100);
  }
  if (digitalRead(2)==HIGH)
  {
    digitalWrite(6, LOW);
  }
}
```

###With [TI LaunchPad](https://seeeddoc.github.io/w/index.php?title=TI_LaunchPad&action=edit&redlink=1)

Controlling other electronics (Relay)

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/img/Relay.jpg)

This example showcases how to use the Grove-relay module to control larger load, i.e. a desk lamp light. A 3V voltage signal can cause the relay to switch on, allowing current to flow through the connected appliance.

```
/*
Relay
The basic Energia example. 
This example code is in the public domain.
*/

#define RELAY_PIN 39

// the setup routine runs once when you press reset:
void setup() { 
         pinMode(RELAY_PIN, OUTPUT); // initialize the digital pin as an output. 
}

// the loop routine runs over and over again forever:
void loop() {
         digitalWrite(RELAY_PIN, HIGH); // turn the relay on (HIGH is the voltage level)
         delay(1000);   // wait for a second
         digitalWrite(RELAY_PIN, LOW);   // turn the relay o by making the voltage LOW
         delay(1000);   // wait for a second
}
```


###With Raspberry Pi

This sample is show you how to use Grove - Relay by Raspberry Pi . The demo below will show that the relay be control by Grove -Button.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/img/GrovePiPlus_Grove_relay.jpeg)

```
# Raspberry Pi + Grove Switch + Grove Relay

import time
import grovepi
# Connect the Grove Switch to digital port D3
# SIG,NC,VCC,GND

switch = 3
# Connect the Grove Relay to digital port D4
# SIG,NC,VCC,GND

relay = 4
grovepi.pinMode(switch,"INPUT")
grovepi.pinMode(relay,"OUTPUT")
while True:
    try:
        if grovepi.digitalRead(switch):
            grovepi.digitalWrite(relay,1)
        else:
            grovepi.digitalWrite(relay,0)
            time.sleep(.05)
    except KeyboardInterrupt:
        grovepi.digitalWrite(relay,0)
        break
    except IOError:
        print "Error"
```

####Run the program

* Find the path to the file(According to your own path)
```cd GrovePi/Software/Python/```
* Run Program
```sudo python grove_switch_relay.py```

##Resources

* [Grove - Relay Eagle File](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/res/Grove-Relay_Eagle_Files.zip)
* [Relay_Datasheet](https://raw.githubusercontent.com/SeeedDocument/Grove-Relay/master/res/Relay_Datasheet.pdf)
* [How to upload code](https://seeeddoc.github.io/Upload_Code)
* [Buy it](http://www.seeedstudio.com/depot/grove-relay-p-769.html?cPath=39_42)
