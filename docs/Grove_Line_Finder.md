---
title: Grove - Line Finder
category: Sensor
bzurl: https://www.seeedstudio.com/Grove-Line-Finder-p-825.html
oldwikiname: Grove - Line Finder
prodimagename: Grovelinefinder1.jpg
surveyurl: https://www.research.net/r/grove-line-finder
sku: 101020009
---

---
![](https://github.com/SeeedDocument/Grove_Line_Finder/raw/master/images/Grovelinefinder1.jpg)

Line finder Grove is designed for line following robot. It has an IR emitting LED and an IR sensitive phototransistor. It can output digital signal to a microcontroller so the robot can reliably follow a black line on a white background, or vice versa.

[![](https://github.com/SeeedDocument/Grove_Line_Finder/raw/master/images/300px-Get_One_Now_Banner.png)](https://www.seeedstudio.com/Grove-Line-Finder-p-825.html)

## Specification
---
- Power supply :5V DC
- Digital output mode: TTL (High when black is detected, Low when white is detected)
- Connector: 4 pin Buckled Grove interface
- Dimension: 20mm*20mm
- ROHS: YES
- Comparator: MV358
- Photo reflective diode: RS-06WD

## Demonstration
---
**With Arduino**

Brick will return HIGH when black line is detected, and LOW when white line is detected. Using the adjustable resistor the detection range can be changed from 1.5cm to 5cm. If the sensor can’t tell between black and white surfaces, you can also use the adjustable resistor to set a suitable reference voltage.

Includes important code snippet. Demo code like :

```
Demo code
{

//------------------------------------------------------------
//Name: Line finder digital mode
//Function: detect black line or white line
//Parameter:   When digital signal is HIGH, black line
//             When digital signal is LOW, white line
//-------------------------------------------------------------
int signalPin =  3;    // connected to digital pin 3
void setup()   {
  pinMode(signalPin, INPUT); // initialize the digital pin as an output:
  Serial.begin(9600);  // initialize serial communications at 9600 bps:
}
// the loop() method runs over and over again,
// as long as the Arduino has power
void loop()
{
  if(HIGH == digitalRead(signalPin))
    Serial.println("black");
    else  Serial.println("white");  // display the color
  	//delay(1000);                  // wait for a second
}

}
```

**With Raspberry Pi**

1. You need a raspberry pi and a grovepi or grovepi+.
2. You need to complete configuring the development enviroment, otherwise follow here.
3. Connection
  - Plug the sensor to grovepi socket D7 by using a grove cable.

4. Navigate to the demos' directory:

```
 cd yourpath/GrovePi/Software/Python/
```

To see the code

```
   nano grove_line_finder.py   # "Ctrl+x" to exit #
```
```
import time
import grovepi

# Connect the Grove Line Finder to digital port D7
# SIG,NC,VCC,GND
line_finder = 7

grovepi.pinMode(line_finder,"INPUT")

while True:
    try:
        # Return HIGH when black line is detected, and LOW when white line is detected
        if grovepi.digitalRead(line_finder) == 1:
            print "black line detected"
        else:
            print "white line detected"

        time.sleep(.5)

    except IOError:
        print "Error"
```

5.Run the demo.

```
   sudo python grove_line_finder.py
```

## Resources
---
- Eagle files

## Help us to make it better
---
Thank you for choosing Seeed. As one of the world-leading open-hardware suppliers, Seeedstudio has been continuously creating well-quality and diversified modules for our customers, makers and developers. As a young company, it is inevitable that there are things we neglected the importance, for example, our document system. It is a little shame however true that we have been continuously receiving complaint about how hard it is to use our document system——ugly interface, confusing content, and the URL that can never be opened etc. Here we sincerely apologize for all the inconvenient you’ve experienced during using the old system.

It is time to say good bye to the user-unfriendly old document system now, in order to bring better experience to our users, we have launched a project to optimize the document system from the middle of 2016. The work includes:

* Replace the old WiKi system with a new one that developed from Mkdocs, a more widely used and cooler project documentation tool.
* Review and rewrite documents for hundreds of products to make them more understandable.
* Inspected repair all the URL to make sure it can be linked to the right page.

Although we have tried our best to optimize, it is still possible that we make some mistakes, so if you find anything that needs to be updated, it is very welcome to submit the amended version as our contributor or give us suggestions in the survey below. Please don’t forget to leave your email address if you need our reply, we will reply to you as soon as we can.

By the way, we will feel very happy and encouraged if we receive 5 stars from you. With the help and encouragement from you, we believe that we can make this document better and better!

<iframe style="height: 600px; width: 700px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.research.net/r/grove-line-finder" frameborder="0"></iframe>
