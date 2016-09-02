# Arduino IDE for RePhone

![enter image description here](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/rephone.jpg)
RePhone is an open source and modular phone kit.

With Rephone you can:

1.Create your own phone in minutes with the slim MODULES, accessible SOFTWARE, and customizable Phone Enclosures.

2.Hack anything around you, **giving inanimate objects the power of cellular communication**. Have a conversation with your pets, plants, toys, motorcycle helmets, robots, or drones through RePhone's GSM and 3G functions.

RePhone is a set of tools and components that allows everyone including students, teachers, makers, hackers, geeks, artists, developers and engineers rethink, remix, redesign and remake the phone. 

#Getting Started

Before you download the Arduino IDE for RePhone, make sure you have an operation system as following:

Windows **XP/Vista/7/8/8.1**

##Install the Driver

###Disable Driver Signature Enforcement under Windows 8/8.1

If you are using the Windows8/8.1, you would need to disable Driver Signature Enforcement first to be able to install the driver.

You should save the files you are editing before trying to turn off the 'Driver Signature Enforcement' as your system will be shut down during the operation.

1. Now follow the instructions below to disable the 'Driver Signature Enforcement.' 
2. Press "Windows Key" +"R" 
3. Enter shutdown.exe /r /o /f /t 00 
4. Click the "OK" button.
5. System will restart to a "Choose an option" screen
6. Select "Troubleshoot" from "Choose an option" screen
7. Select "Advanced options" from "Troubleshoot" screen
8. Select "Windows Startup Settings" from "Advanced options" screen
9. Click "Restart" button
10. System will restart to "Advanced Boot Options" screen
11. Select "Disable Driver Signature Enforcement"
12. Once the system starts, you can install the Arduino drivers as same as Windows

###Driver Installation

1.Firstly, power up your RePhone by **plug in the battery** to the battery socket on the Xadow GSM+BLE, **press and hold the power key (PWR) for 2 second to turn it ON** (LED indicator shows **GREEN**), then connect your RePhone to PC with a Micro USB cable. 


![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/10.png)

2.Open **Device Manager** by clicking the Start button, clicking Control Panel, clicking System and Security, and then, under System, clicking Device Manager. If you're prompted for an administrator password or confirmation, type the password or provide confirmation. 
In the Device Manager, you'll be seeing unknown devices as shown below: 

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/20.png)

3.Right click on one of the unknown devices, choose **Update Driver Software**.

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/30.png)

4.Choose **Browse my computer for driver software**.

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/40.png)

5.Click **Browse** and the locate the folder which you've unzipped the Arduino IDE for RePhone .. \Arduino_IDE_for_RePhone\drivers\mtk . Click **Next** to start the driver installation.

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/50.png)

6.When the driver software is successfully installed, you will be able to see the following **complete** page, click **Close** and **start over from step 1 to 6 to install the driver for another unknown device.**

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/60.png)


##Update/Flash the Firmware

To make use of the Arduino IDE for RePhone, you would have to update/flash the firmware as well. The process is as simple as following:

1.**Disconnect your RePhone with PC, press and hold the power key(PWR) for 2 seconds to turn it OFF** (LED indicator turn **RED** and then goes out)

2.Open the FirmwareUpdate.exe under the path \Arduino_IDE_for_RePhone\hardware\tools\mtk, click **Download**. 

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/70.png)

3.Now you will be asked to connect your RePhone to PC via USB cable, make sure your RePhone has been turned **OFF**. 

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/80.png)

4.Wait until the downloading finish. 

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/900.png)

5.In the Complete page click OK to finish the firmware update.

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/100.png)


##Hello World

Now you've prepared things required, and we are ready to rock on with RePhone.

Let's start with a simple program **Hello World**

1.Press and hold the power key (PWR) for 2 seconds to turn it ON (LED indicator shows GREEN) 

2.Open the **Arduino_IDE_for_RePhone.exe** in the folder where you unzipped the Arduino IDE for RePhone, the software interface is as following:

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/110.png)

3.Open **Device Manager** to check for the COM ports. There will be **two COM ports**:


* MTK USB Debug Port is used for uploading code
* MTK USB Modem Port is used for logs, like printing messages in the serial monitor with Serial.println()

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/120.png)

4.On the Arduino IDE window, click **Tool > Port**, select **MTK USB Debug Port**, which is **COM20** in this case, the COM number might be different in your PC, just make sure it corresponds to the Debug Port. 

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/130.png)

5.On the Arduino IDE window, click **Tool > Board**, select RePhone

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/140.png)

6.Now copy the following code to your Arduino IDE:

    // hello world for test RePhone
    // loovee@10-18-2015
    void setup() {
        Serial.begin(115200);
    }
       
    void loop() {
        // put your main code here, to run repeatedly:
        Serial.println("Hello World, Hello RePhone!");
        delay(100);
    }
    
7.Now press the Upload button to upload the code to your RePhone. You will see the **Done uploading** when the code is successfully uploaded.

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/150.png)

8.As RePhone use different COM ports for uploading software and logs, to read the logs, we need to switch the selected COM Port to **MTK USB Modem Port**. On the Arduino IDE window, click **Tool > Port**, select **MTK USB Modem Port**, which is **COM48** in this case.
Then open the **Serial Monitor**

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/160.png)

9.Now we can see the **Hello World** we have printed with **Serial.println()**

![](https://raw.githubusercontent.com/SeeedDocument/Arduino_IDE_For_RePhone/master/images/170.png)


#References

[RePhone mian Page](http://www.seeed.cc/rephone)
[Kickstarter page for RePhone](https://www.kickstarter.com/projects/seeed/rephone-kit-worlds-first-open-source-and-modular-p)
