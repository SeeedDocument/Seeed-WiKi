#TFT Touch Shield

##Introduction

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/main.jpg)

This is a multifunctional Arduino/Seeeduino/Arduino Mega compatible resistive touch screen. It can be used as display device or sketch pad.Compared with the previous version, 2.8``TFT Touch Shield V1.0, we replaced the screen driver with a more professional chip, ILI9341 driver, providing different pin-saving SPI communication without sacrificing the data transmitting speed. Due to the communication method change, programs developed for the original version need modifications before being transplanted to the new version. With a SD card module integrated also on this shield, this shield reserves great room for other expansions to your project.

[![](https://raw.githubusercontent.com/SeeedDocument/Seeed-WiKi/master/docs/images/get_one_now.png)](http://www.seeedstudio.com/2.8-TFT-Touch-Shield-V2.0-p-1286.html)  

##Features

* Big screen for easy and comfortable experience
* Backlight controllable via programming
* 65k rich colors display
* SPI pin-saving communication method
* Full screen touch active range

##Specification

| Item | Value |
|-------|--------|
|Working Voltage | 5 V |
|Resolution | 320 x 240 |
| Colors | 65k |


##Application Ideas

* Game
* Sensor Hub
* Human Machine Interface
* Smart House

Here are some awesome projects for your reference. If you have project want to add to this chapter, please feel free to contact loovee@seeed.cc. 

|Arduino Phone|Facebook Monitor|Instrucatbles Monitor|
|---------------|-------------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/project1.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/project2.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/project3.jpg)|
|[Make it Now!](http://www.instructables.com/id/ArduinoPhone-20-an-Open-Source-Mobile-Phone-Based-/)|[Make it Now!](http://www.instructables.com/id/Facebook-Like-Monitor/)|[Make it Now!](http://www.instructables.com/id/Make-a-Instructables-Indicator/)|


##Pin Used

!!!Note
    You can use the NOT USED pins to control the others module. 
    
Digital Pins

| Pin Name | Function |
|-----------|-------------|
|D0   | NOT USED
|D1   | NOT USED           |
|D2   | NOT USED           |
|D3   | NOT USED           |
|D4   | **TF_CS**          |
|D5   | **TFT_CS**         |
|D6   | **TFT_DC**         |
|D7   | **BACKLIGHT(Selectable)**|
|D8   | NOT USED           |
|D9   | NOT USED           |
|D10   | NOT USED          |
|D11   | **SPI_MOSI**      |
|D12   | **SPI_MISO**      |
|D13   | **SPI_SCK**       |


Analog Pins

| Pin Name | Function |
| -----------|-------------|
|A0   | **TOUCH PANEL**		    |
|A1   | **TOUCH PANEL**           |
|A2   | **TOUCH PANEL**           |
|A3   | **TOUCH PANEL**           |
|A4   | NOT USED           |
|A5   | NOT USED             |



##Getting Started

!!!Note
    This getting started is based on Win10 and Arduino IDE 1.6.9

Here we will show you how this display work, we need thing as below to start. 

| Seeeduino V4 | 2.8 TFT Touch Shield V2 | Micro USB Cable |
|--------------|-------------------------|-----------------|
|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/gs1.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/gs2.jpg)|![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/gs3.jpg)|
| [More Details](http://www.seeedstudio.com/Seeeduino-V4.2-p-2517.html) | [More Details](http://www.seeedstudio.com/2.8-TFT-Touch-Shield-V2.0-p-1286.html) | [More Details](http://www.seeedstudio.com/Micro-USB-Cable-48cm-p-1475.html) |

###Download Arduino Library

This library work for:

* Arduino/Genuino UNO
* Seeeduino V3/4.0/4.2
* Arduino/Genuino Mega
* Arduino Leonardo
* Seeeduino Lite/Clio/Lotus
* LinkIt ONE(Touch panel don't work)

Click on the below button to download the library and install it [(HOW TO INSTALL AN ARDUINO LIBRARY)](http://wiki.seeed.cc/Tutorial/How_to_Install_an_Arduino_Library/). 

[![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/library.png)](https://github.com/Seeed-Studio/TFT_Touch_Shield_V2/archive/master.zip)

This library include few examples, 

* drawCircle
* drawLines
* drawNumber
* drawRectangle
* paint
* shapes
* text
* tftbmp
* tftbmp2

We use shapes example for this demo.

###Connection and Upload the code

Insert the board to Seeeduino, and open your Arduino IDE. Click on **File > Examples > TFT_Touch_Shield_V2-master > shapes** to open the code. 

Select the correct COM port and Boards(Seeeduino V4), upload the code to Seeeduino, then it's done. If you have any question about how to start the uploading, please put had on [here](http://wiki.seeed.cc/Platform/Arduino/SeeeduinoV4.2/#getting-started) to get more details. 

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/display.jpeg)

##Backlight

The backlight is default on always, if you want to control the backlight, you need to do some hack in the board. Please look at the back side of the board, there's a BACKLIGHT label, and one side named ON the other side named D7. We need to cut the wire at ON side and solder D7 side. As shown below.

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/TFT_Touch_Shield_V2/master/images/backlight.png)

Then you can control the backlight via control D7.
 
 To open backlight:
     digitalWrite(7, HIGH);

To close backlight:
    digitaWrite(7, LOW);

!!!Warning
    Please be careful when use a box cutter and soldering iron.


##Resources

* [Schematic in Eagle File](https://github.com/SeeedDocument/TFT_Touch_Shield_V2/raw/master/resources/TFT_Eagle_File.zip)
* [Library at Github page](https://github.com/Seeed-Studio/TFT_Touch_Shield_V2)
* [Github page of this document](https://github.com/SeeedDocument/TFT_Touch_Shield_V2)


##Help us to make it better

<iframe style="height: 600px; width: 700px; margin: 10px 0 10px;" allowTransparency="true" src="https://www.research.net/r/tft_touch_shield_v2" frameborder="0"></iframe>