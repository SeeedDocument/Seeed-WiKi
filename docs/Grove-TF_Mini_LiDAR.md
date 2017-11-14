---
title: Grove-TF Mini LiDAR
category: Sensor
bzurl: https://www.seeedstudio.com/Seeedstudio-Grove-TF-Mini-LiDAR-p-2996.html
oldwikiname: Grove-TF Mini LiDAR
prodimagename:
surveyurl:
sku: 114991434
tags: io_3v3, io_5v, plat_duino

---
![](https://github.com/SeeedDocument/Grove-TF_Mini_LiDAR/raw/master/img/Grove-TF-Mini-LiDAR.JPG)

This product is based on ToF (Time of Flight) principle and integrated with unique optical and electrical designs, so as to achieve stable, precise, high sensitivity and high-speed distance detection.

ToF is the abbreviation of Time of Flight technology, and its operating principle is as follows: a modulated near-infrared light is sent from the sensor and reflected by an object; the distance to the object to be shot can be converted with the sensor by calculating the time difference or phase difference between the light sending and the light reflection, so as to produce the depth information.

[![Get one now](https://github.com/SeeedDocument/Grove_Ultrasonic_Ranger/raw/master/image/300px-Get_One_Now_Banner.png)](https://www.seeedstudio.com/Seeedstudio-Grove-TF-Mini-LiDAR-p-2996.html)

!!!Warning
    Prevent dust or any other foreign matter from entering the lens; otherwise it may affect the light transmission.


## Version

| Product Version              | Changes                                                                                                                                                                                    | Released Date |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| Grove-TF Mini LiDAR V1.0 | Initial | Nov 2017      |


## Specification
---
| Product   Name                              | TFmini                           |
|---------------------------------------------|----------------------------------|
| Operating range                             | 0.3m-12m                         |
| Maximum operating range at 10% reflectivity | 5m                               |
| Average power consumption                   | 0.12W                            |
| Applicable voltage range                    | 4.5V-6V                          |
| Acceptance angle                            | 2.3°                             |
| Minimum resolution ratio                    | 5mm                              |
| Frequency                                   | 100Hz                            |
| Accuracy                                    | 1%   (less than 6m), 2% (6m-12m) |
| Distance detection unit                     | mm                               |
| Wavelength                                  | 850nm                            |
| Size                                        | 42mm×15mm×16mm                   |
| Operating temperature                       | -20℃-60℃                       |
| Light sensitivity                           | 70,000lux                        |
| Weight                                      | 6.1g                             |
| Communication interface                     | UART 115200                      |
| LED peak current                            | 800ma                            |
| Serial port TTL voltage level               | 3.3V                              |


!!!Tip
    More details about Grove modules please refer to [Grove System](http://wiki.seeed.cc/Grove_System/)

Platforms Supported
-------------------

## Getting Started
---
### Play With Arduino

#### Hardware

- Step 1. Prepare the below stuffs:

| Seeeduino Lite |  Grove-TF-Mini-LiDAR |
|--------------|-----------------|
|![enter image description here](https://github.com/SeeedDocument/Grove-TF_Mini_LiDAR/raw/master/img/Seeed%20lite_S.jpg)|![enter image description here](https://github.com/SeeedDocument/Grove-TF_Mini_LiDAR/raw/master/img/Grove-TF-Mini-LiDAR_S.JPG)|
|[Get ONE Now](https://www.seeedstudio.com/Seeeduino-Lite-p-1487.html)|[Get ONE Now](https://www.seeedstudio.com/Seeedstudio-Grove-TF-Mini-LiDAR-p-2996.html)|

- Step 2. Connect Grove-TF-Mini-LiDAR to UART port of Seeeduino Lite.
- Step 3. Connect Seeeduino to PC through a USB cable.

![](https://github.com/SeeedDocument/Grove-TF_Mini_LiDAR/raw/master/img/Seeeduino.JPG)


#### Software

- Step 1. Copy the code into Arduino IDE and upload.

```
unsigned char dta[100];
unsigned char len = 0;

void setup()
{
    Serial1.begin(115200);
    Serial.begin(115200);
}

void loop()
{
    while(Serial1.available()>=9)
    {
        if((0x59 == Serial1.read()) && (0x59 == Serial1.read()))
        {
            unsigned int t1 = Serial1.read();
            unsigned int t2 = Serial1.read();

            t2 <<= 8;
            t2 += t1;
            Serial.print(t2);
            Serial.print('\t');

            t1 = Serial1.read();
            t2 = Serial1.read();

            t2 <<= 8;
            t2 += t1;
            Serial.println(t2);

            for(int i=0; i<3; i++)Serial1.read();
        }
    }
}
```
- Step 2. We will see the distance display on terminal.


## Resources
---
- **[Datasheet]** [Grove-TF-Mini-LiDAR
](https://github.com/SeeedDocument/Grove-TF_Mini_LiDAR/blob/master/res/DE-LiDAR%20TFmini%20Datasheet-V1.5-EN.pdf)
