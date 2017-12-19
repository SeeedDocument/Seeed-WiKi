---
title: LoRa/LoRaWAN Gateway Kit
category: Wireless
bzurl:  https://www.seeedstudio.com/LoRa-LoRaWAN-Gateway-868MHz-Kit-with-Raspberry-Pi-3-p-2823.html
prodimagename:
surveyurl: https://www.research.net/r/LoRa_LoRaWAN_Gateway-868MHz_Kit_with_Raspberry_Pi_3
sku: 110060622
---
![](https://github.com/SeeedDocument/LoRaWAN_Gateway-868MHz_Kit_with_Raspberry_Pi_3/raw/master/img/LoraWan%20Getway%20868MHz.jpg)

LoRa is a perfect long-range wireless solution to create low-power, wide area networks.So far we have released several “LoRa” boards such as Seeeduino LoRaWan and Grove LoRa Radio etc. However if you want to build you own LoRa network, there are 3 things   that you should prepare to get started: a Gateway, at least one Node and a local server where you can monitor all your devices.

This kit provides all the basic elements you need: a Raspberry Pi 3, a Seeeduino LoRaWAN with GPS and a gateway & local server that allows you to collect and transfer data among all your LoRa nodes. By connecting the gateway with Seeeduino LoRaWAN and Grove modules, you can build your IOT prototype within minutes.

Regarding the gateway module RHF0M301, it is a 10 channel(8 x Multi-SF + 1 x Standard LoRa + 1 x FSK) LoRaWan gateway moduel with a 24pin DIP port on board, users can easily connect the RHF0M301 with PRI 2 bridge RHF4T002, adapter for Raspberry Pi 3 and RHF0M301. We also included a 868MHz antenna, an 8GB SD card and USB cables, Ethernet Cables and other accessories.


!!!Warning
    Please always plug 3.7V Lipo battery in case USB power supply is not sufficient. This wiki works for both 868MHz kit and 915MHz kit.


|868MHz Kit with Raspberry Pi 3|[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](https://www.seeedstudio.com/LoRa-LoRaWAN-Gateway-868MHz-Kit-with-Raspberry-Pi-3-p-2823.html)|
|---|---|
|**915MHz Kit for Raspberry Pi 3**|[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](https://www.seeedstudio.com/LoRa%2FLoRaWAN-Gateway-915MHz-for-Raspberry-Pi-3-p-2821.html)|

## Features
- Low power consumption & wide area
- Industrial standard reliability
- Economic solution to build LoRa /LoRaWAN network
- Rich Accessories of sensor and actuator
- Real time monitoring

## hardware Overview


pic_here

### Partlist
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#999;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#444;background-color:#F7FDFA;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#999;color:#fff;background-color:#26ADE4;}
.tg .tg-s6z2{text-align:center}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-vn4c{background-color:#D2E4FC}
.tg .tg-0fxu{background-color:#6ab0de;vertical-align:top}
.tg .tg-j0tj{background-color:#D2E4FC;text-align:center;vertical-align:top}
.tg .tg-5hgy{background-color:#D2E4FC;text-align:center}
.tg .tg-yw4l{vertical-align:top}
.tg .tg-6k2t{background-color:#D2E4FC;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-0fxu">Parts number</th>
    <th class="tg-0fxu">Parts name</th>
    <th class="tg-0fxu">Quantity</th>
  </tr>
  <tr>
    <td class="tg-j0tj"><font face="" size=5 font color="00b0f0"><B>❶</B></font></td>
    <td class="tg-vn4c">Raspberry Pi 3</td>
    <td class="tg-5hgy">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh"><font face="" size=6 font color="00b0f0"><B>❶❷❸❹❺</B></font></td>
    <td class="tg-031e">Gateway module RHF0M301 – 868</td>
    <td class="tg-s6z2">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-j0tj"><font face="" size=5 font color="00b0f0">❶</font></td>
    <td class="tg-vn4c">PRI 2 Bridge RHF4T002</td>
    <td class="tg-5hgy">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh">4</td>
    <td class="tg-031e">Seeeduino LoRaWAN with GPS (RHF76-052AM)</td>
    <td class="tg-s6z2">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-j0tj">5</td>
    <td class="tg-vn4c">USB to UART Adapter</td>
    <td class="tg-5hgy">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh">6</td>
    <td class="tg-031e">8GB Micro SD Card – Class 10</td>
    <td class="tg-s6z2">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-j0tj">7</td>
    <td class="tg-vn4c">0dBi Rubber Duck Antenna</td>
    <td class="tg-5hgy">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh">8</td>
    <td class="tg-yw4l">5V/2.1A American Standard Adapter with Micro USB Connector</td>
    <td class="tg-baqh">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-j0tj">9</td>
    <td class="tg-6k2t">Micro USB Cable 20cm</td>
    <td class="tg-j0tj">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh">10</td>
    <td class="tg-yw4l">Micro USB Cable 100cm</td>
    <td class="tg-baqh">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-j0tj">11</td>
    <td class="tg-6k2t">RJ45 Ethernet Cable 200cm</td>
    <td class="tg-j0tj">1 PCS</td>
  </tr>
  <tr>
    <td class="tg-baqh">12</td>
    <td class="tg-yw4l">JST2.0 Cable 10cm</td>
    <td class="tg-baqh">1 PCS</td>
  </tr>
</table>




## Application Ideas
- Internet of Things
- Smart House
- Security
- Smart Grid
- Intelligent Farm
- Intelligent Park

## User Manual
The user manual from RisingHF has well instructed how to use the LoRaWan Getway Kit, it will describe the usage of this kit in details, including
-  how to buildup hardware,
-  how to connect to a LoRaWan network,
-  how to test hardware and so on.

Please click to download the [User Manual](https://github.com/SeeedDocument/LoRaWAN_Gateway-868MHz_Kit_with_Raspberry_Pi_3/raw/master/res/%5BRHF-UM01649%5DIoT%20Discovery%20User%20Manual-seeed-v2.1.pdf).

!!!note
    Please note that the part list in the user manual is not the same as the LoRaWAN Getway Kit. When you run Session 3.1 Loriot Server Gateway Registration Step i "./lrt -f -i eth0 -s cn1.loriot.io", there will be an error as below.

![](https://github.com/SeeedDocument/LoRaWAN_Gateway-868MHz_Kit_with_Raspberry_Pi_3/raw/master/img/Gateway_error.jpg)

The reason behind is that Loriot server is upgraded while our image SDK is not upgraded yet. So please follow below instructions to upgrade the gateway SDK manually. We will upgrade the image later on.

```
cd /home/rxhf/loriot/1.0.2
sudo systemctl stop pktfwd
sudo gwrst
wget https://cn1.loriot.io/home/gwsw/loriot-risinghf-rhf2s008-rhf1257-SPI-0-latest.bin -O loriot-gw.bin
chmod +x loriot-gw.bin
./loriot-gw.bin -f -s cn1.loriot.io

```

## Resources
- [User Manual](https://github.com/SeeedDocument/LoRaWAN_Gateway-868MHz_Kit_with_Raspberry_Pi_3/raw/master/res/%5BRHF-UM01649%5DIoT%20Discovery%20User%20Manual-seeed-v2.1.pdf).
- [Wiki of Seeeduino LoRaWAN](/Seeeduino_LoRAWAN/)
- [RisingHF Website](http://www.risinghf.com/product/risinghf-iot-dicovery/?lang=en)
