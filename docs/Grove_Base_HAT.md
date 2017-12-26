---
title: Grove Base HAT
category: Raspberry Pi
bzurl:
oldwikiname:  
prodimagename:  Grove Base HAT.JPG
surveyurl:
sku:     
---
![](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/img/Grove%20Base%20HAT.JPG)

Grove Base HAT is an add-on board that brings Grove Sensors to the Raspberry Pi. It supports Raspberry Pi 2 Model B, Raspberry Pi 3 Model B and Raspberry Pi B+. There are four mounting holes, matching well with normal size Raspberry Pi. It also keeps the space for Camera cables.


## Version

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#6ab0de;}
.tg .tg-yw4l{vertical-align:top;width:20%}
.tg .tg-yw42{vertical-align:top;width:50%}
.tg .tg-4eph{background-color:#f9f9f9;}
.tg .tg-b7b8{background-color:#f9f9f9;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-yw4l">Product Version</th>
    <th class="tg-yw42">Changes</th>
    <th class="tg-yw4l">Released Date</th>
  </tr>
  <tr>
    <td class="tg-4eph">Grove Base HAT</td>
    <td class="tg-4eph">Initial</td>
    <td class="tg-b7b8">Dec 15, 2017</td>
  </tr>
</table>

##   Features

*   2 digital Ports
*   2 analoge Ports
*   3 I2C ports
*   1 UART port
*   1 power switch

## Hardware Overview

The images below show an overview of Grove Base HAT hardware features. The pin-out and alternate functions of various pins of Grove Base HAT are shown in the pin-out diagram. This could be used as a quick reference.

![](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/img/Hardware_overview.jpg)

- <font face="" size=5 font color="00b0f0">❶</font> **Digital Port:**
2 digital Grove ports are used to connect Grove digital sensors.

- <font face="" size=5 font color="00b0f0">❷</font> **Analog Port:**
2 analog Grove ports are used to connect Grove analog sensors. Raspberry Pi does not support annalog signal. So we use the ADS1015 chip to transfer the ADC signal to I2C signal.

- <font face="" size=5 font color="00b0f0">❸</font> **I2C Port:**
3 I2C Grove ports are used to connect Grove I2C sensors.

- <font face="" size=5 font color="00b0f0">❹</font> **UART:**
1 UART Grove port is used to connect Grove UART sensors. The UART of Raspberry Pi 3 is used by bluetooth. Please follow [THE RASPBERRY PI UARTS
](Rashttps://www.raspberrypi.org/documentation/configuration/uart.md) to enable the UART.

- <font face="" size=5 font color="00b0f0">❺</font> **System Power Switch:**
Slide switch is used to change the logic level and operating voltage of the board to either 5V or 3.3V.

- <font face="" size=5 font color="00b0f0">❻</font> **ADS1015:**
 ADS1015 is precision analog-to-digital converters (ADCs) with 12 bits of resolution, Data are transferred via an I2C-compatible serial interface.

- <font face="" size=5 font color="00b0f0">❼</font> **TXS0108:**
This 8-bit non-inverting translator uses two separate configurable power-supply rails. The A port tracks the VCCA pin supply voltage. The VCCA pin accepts any supply voltage between 1.2 V and 3.6 V. The A ports are conencted to Raspberry. The B port tracks the VCCB pin supply voltage. The VCCB pin accepts any supply voltage between 1.65 V and 5.5 V. The B ports are conencted to Grove sensors.

- <font face="" size=5 font color="00b0f0">❽</font> **FREE:**
The FREE pins are not used by Grove Base HAT.

## FAQs

Please click **[here](http://support.seeedstudio.com/knowledgebase/articles/1831468-grove-base-hat-sku-tbd)** to see all Grove_Base_HAT FAQs.


## Resources

- **[PDF]** [Download Wiki PDF](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/Grove_Base_HAT.pdf)
- **[PDF]** [Grove Base HAT SCH](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/Raspberry%20Pi%20Grove%20Base%20HAT%20SCH.pdf)
- **[PDF]** [Grove Base HAT BRD](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/Raspberry%20Pi%20Grove%20Base%20HAT%20BRD.pdf)
- **[Eagle]** [Grove Base HAT SCH](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/Raspberry%20Pi%20Grove%20Base%20HAT%20SCH.zip)
- **[Eagle]** [Grove Base HAT BRD](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/Raspberry%20Pi%20Grove%20Base%20HAT%20PCB.zip)
- **[Datasheet]** [ADS1015](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/ads1015.pdf)
- **[Datasheet]** [TXS0108](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/txs0108e.pdf)
- **[PDF]** [Grove Base HAT Mechanical](https://github.com/SeeedDocument/Grove_Base_HAT/raw/master/res/hat-board-mechanical.pdf)
- **[Github]** [HAT](https://github.com/raspberrypi/hats)
