---
title: ReSpeaker 4-Mic Array for Raspberry Pi
category: Respeaker
bzurl: https://www.seeedstudio.com/ReSpeaker-4-Mic-Array-for-Raspberry-Pi-p-2941.html
oldwikiname:
prodimagename:
surveyurl: https://www.research.net/r/ReSpeaker_4-Mic_Array_for_Raspberry_Pi
sku: 103030216
---

![](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/overview.jpg?raw=true)

ReSpeaker 4-Mic Array for Raspberry Pi is a quad-microphone expansion board for Raspberry Pi designed for AI and voice applications. This means that you can build a more powerful and flexible voice product that integrates Amazon Alexa Voice Service, Google Assistant, and so on.


Different from [ReSpeaker 2-Mics Pi HAT](https://www.seeedstudio.com/ReSpeaker-2-Mics-Pi-HAT-p-2874.html), this board is developed based on AC108, a highly integrated quad-channel ADC with I2S/TDM output transition for high definition voice capture, which allows the device to pick up sounds in a 3 meters radius. Besides, this 4-Mics version provides a super cool LED ring, which contains 12 APA102 programable LEDs. With that 4 microphones and the LED ring, Raspberry Pi would have ability to do VAD(Voice Activity Detection), estimate DOA(Direction of Arrival), do KWS(Keyword Search) and show the direction via LED ring, just like Amazon Echo or Google Home.

[![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/images/300px-Get_One_Now_Banner-ragular.png)](https://www.seeedstudio.com/ReSpeaker-4-Mic-Array-for-Raspberry-Pi-p-2941.html)

## Features

* Raspberry Pi compatible(Support Raspberry Pi Zero and Zero W, Raspberry Pi B+, Raspberry Pi 2 B and Raspberry Pi 3 B)
* 4 Microphones
* 3 meters radius voice capture
* 2 Grove Interfaces
* 12 APA102 User LEDs
* Software Algorithm: VAD(Voice Activity Detection), DOA(Direction of Arrival) and KWS(Keyword Search)

Note that there are no any audio output interfaces on ReSpeaker 4-Mic Array for Raspberry Pi. It is only for voice capture. And you could use the [headphone jack](https://www.raspberrypi.org/documentation/configuration/audio-config.md) on Raspberry Pi for audio output.

## Application Ideas

* Voice Interaction Application
* AI Assistant

## Hardware Overview

![](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/features.png?raw=true)

- MIC: 4 analog microphones
- LED: 12 APA102 programable RGB LEDs, connected to SPI interface
- Raspberry Pi 40-Pin Headers: support Raspberry Pi Zero, Raspberry Pi 1 B+, Raspberry Pi 2 B and Raspberry Pi 3 B
- AC108: highly integrated quad-channel ADC with I2S/TDM output transition
- I2C: Grove I2C port, connected to I2C-1
- GPIO12: Grove digital port, connected to GPIO12 & GPIO13

Note that if you want to use the APA102 RGB LEDs, please write HIGH to `GPIO5` first to enable VCC of the LEDs.

## Usage

### Connect ReSpeaker 4-Mic Array to Raspberry Pi

Mount ReSpeaker 4-Mic Array on your Raspberry Pi, make sure that the pins are properly aligned when stacking the ReSpeaker 4-Mic Array for Raspberry Pi.

![connection pic1](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/connect1.jpg?raw=true)
![connection pic2](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/connect2.jpg?raw=true)

### Setup the driver

While the AC108 codec is not currently supported by current Pi kernel builds, we must it build manually.

Get the seeed voice card source code.
```
git clone --depth=1 https://github.com/respeaker/seeed-voicecard
cd seeed-voicecard
chmod +x install_4mic.sh
sudo ./install_4mic.sh
reboot
```

Check that the sound card name matches the source code seeed-voicecard.

```
pi@raspberrypi:~/seeed-voicecard $ arecord -l
**** List of CAPTURE Hardware Devices ****
card 1: seeedvoicecard4 [seeed-voicecard-4mic], device 0: bcm2835-i2s-ac108-codec0 ac108-codec0-0 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

If you want to change the alsa settings, You can use `sudo alsactl --file=ac108_asound.state store` to save it.

Seeed-4mic-voicecard need a alsa plugin to decode the data:
```
cd ac108_plugin
make
sudo make install
```
Open Audacity and select **AC108** to test:

![](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/audacity.png?raw=true)

<!-- ### Configure sound settings and adjust the volume with **alsamixer** -->

Or you could record with `arecord` and play with `aplay`:

```
arecord -Dac108 -f S16_LE -c 4 -r 16000 hello.wav
aplay -Dplughw:1,0 hello.wav
// Audio will come out via audio jack of Raspberry Pi
```

Note: If you can't record or can't play or play something strange, please see [here](#Debug).

### Getting Started with Google Assistant and Snowboy

### How to use the on-board APA102 LEDs

Each on-board APA102 LED has an additional driver chip. The driver chip takes care of receiving the desired colour via its input lines, and then holding this colour until a new command is received.

![](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/rainbow.jpg?raw=true)

- Activate SPI: `sudo raspi-config`; Go to "Interfacing Options"; Go to "SPI"; Enable SPI; Exit the tool
- Get APA102 LEDs Library and examples

```
cd /home/pi
git clone https://github.com/respeaker/4mics_hat.git
cd /home/pi/4mics_hat
```

<!-- - Edit `pixels.py` with `nano pixels.py`, change `PIXELS_N = 3` to `PIXELS_N = 12`, then press CTRL-X, press Y and Enter to save.

![](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/img/pixels_n12.png?raw=true) -->

- Install spidev `pip install spidev`
- Run the example code `python pixels.py`

<!-- ### DoA on ReSpeaker 4-Mic Array for Raspberry Pi -->




### Debug

`sudo nano /etc/asound.conf` make sure it look like this:

```
pcm.!default {
        type ac108
    slavepcm "hw:0,0"
    channels 4
}


pcm.ac108 {
        type ac108
        slavepcm "hw:0,0"
        channels 4
}
```

and if there is an `.asoundrc` in your /home/pi path, make sure it look like this. If the file `.asoundrc` doesn't exist, ignore this one.

```
pcm.!default {
        type ac108
    slavepcm "hw:0,0"
    channels 4
}


pcm.ac108 {
        type ac108
        slavepcm "hw:0,0"
        channels 4
}


pcm.!default {
        type hw
        card 1
}

ctl.!default {
        type hw
        card 1
}
```


## Resources

[Schematics of ReSpeaker 4-Mic Array for Raspberry Pi(PDF)](https://github.com/SeeedDocument/ReSpeaker-4-Mic-Array-for-Raspberry-Pi/blob/master/src/ReSpeaker%204-Mic%20Array%20for%20Raspberry%20Pi%20%20v1.0.pdf)
