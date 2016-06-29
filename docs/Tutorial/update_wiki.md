#如何添加一篇文档
----


##说明

本文档意在说明新文档系统的操作方式。目前的上传是通过手动的方式的，即每次更新上传文档都需要手动的把更新后的文件上传到aws s3. 


!!!note
	本教程主要讲述操作的步骤，对原理及文档的技术点没有深入的讲述。如果想深入了解mkdocs文档系统，可以点击文末参考资料里面的内容。

!!!note
	以后将会采用自动上传的方式，内容移植得差不多后，就会让INT的同事进行软件的编写，以及前端工程师也会适当的修改主题。


##配置工作环境

需要在Linux环境下进行操作。

安装python-pip

	sudo apt-get install python-pip

安装mkdocs

	sudo pip install mkdocs

安装git

	sudo apt-get install git

!!!warning
	我使用的是ubuntu14.0.x的版本，可能不同版本的linux会有所不同。

##Github

我们在github建立了一个[仓库](https://github.com/SeeedDocument/Seeed-WiKi)，用来存放所有的文档。

该仓库有一个docs的文件夹，我们所写的文档会存放在这里面。

其中：

- **index.md**是首页的内容
- **about.md**是页面About里面的内容

产品的文档会放在剩下的几个文件夹里面，根据不同的分类放到不同的地方，目前，计划的分类是这样的：

- **Platform**
	- Arduino
	- Raspberry Pi
	- LinkIt
	- LaunchPad
	- BeagleBone
	- Intel Edison
	- mbed
	- RePhone
	- Wio
- **Grove**
	- Sensor
	- Actuator
	- Display
	- Communication
- **IoT**
- **Shield**
- **Robot**

!!!note
	上面的分类指数一个参考，后面可以继续讨论更加合理的分类方式

我们把该仓库clone到本地。然后下面我们介绍添加一个文档。

##添加一个文档

我们一添加一个Grove - LED为例。

Grove - LED属于Grove里面的Actuator分类，于是我们在**Grove/Actuator**里面添加一个Grove_LED.md的文件，并且随便添加一些内容，例如：

    #Grove - LED
    -------
    Test how to add a document

并且打开**mkdocs.yml**（用文本或者notepad++都可以）。

在Grove, Actuator的位置添加如下信息：

![](http://www.seeedstudio.com/wiki/images/9/9d/Mkdocs_seeed_tutorial_grove_led.png)

然后，把该本地仓库合并到master并且push到远程仓库。

    git add .
    git commit -m "test"
    git push origin master


##更新网站
上面我们已经在github添加了一篇文档。接下来把该文档编译后呈现在wiki.seeed.cc上。

回到linux那边，同样的，把上面提到的仓库clone到本地。如果已经clone到本地，那么git pull让本地的仓库跟远程的仓库同步一下。

然后执行下面的命令可以打开本地预览

    mkdocs serve

执行上面的命令后，查看是否有错误，如果有错误，根据错误的类型对源文件进行修改。如果没有错误，那么就可以在linux打开浏览器，输入：

    localhost:8000

就可以看到编译后的文档了，不过这只是本地服务器的文档。还需要一些步骤才能更新到服务器。

执行下面的命令把markdown编译成html：

    mkdocs build

然后编译好的文件就存到了site文件夹里面（在我们刚才下载的仓库里）


接下来，把编译好的文件上传到[AWS S3](https://642772724142.signin.aws.amazon.com/console)，需要输入账号密码，账号密码我已经放到了AE的trello里面。

输入账号密码后，来到aws的控制台，点S3的入口，可以看到两个站点的数据，一个是static.seeed.cc一个是wiki.seeed.cc，我们需要进入wiki这个。

进去后，左上角有个Upload按钮，点击它，然后：

![](http://www.seeedstudio.com/wiki/images/9/93/S34.png)

然后等所有的文件上传完，网页打开[wiki.seeed.cc](wiki.seeed.cc)， 就可以看到更新的内容了。

##参考资料
- [http://www.mkdocs.org/](http://www.mkdocs.org/)
- [https://github.com/mkdocs/mkdocs/](https://github.com/mkdocs/mkdocs/)