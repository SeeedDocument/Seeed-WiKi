# 主页

## 1.主页的基本风格
Mkdocs的系统并没有主页，所以我们要创建一个主页以使得我们的文档系统看起来更美观。为了保持Seeed网站风格的一致性，现在对主页的想法主要是类似于Community里那样得风格，将不同板块的内容作为矩形分布在主页页面。下面是Community的主页。
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/New%20document%20system%20style/images/Community.png)


## 2.主页应包含哪些内容

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/New%20document%20system%20style/images/Main%20Page%20Style.png)

主页的菜单栏，应该包含：
- Docs
- Bazzar
- Recipe
- 搜索框

根据产品的重要性，我们选出了9个主题板块放在主页中，他们分别是：
- Arduino
- Respberry Pi
- Beaglebone
- LinkIt
- Rephone
- Wio
- Grove
- Tutotial
- SZ2U

我们会给这9个主题分别写一個介绍的页面，点进去之後，中间的文档会显示介绍该系列的一篇文档。


## 3.将老Wiki中的那张图片应用在主页中
老Wiki的那张图片很经典，有辨识度。可以把图片作为一些元素放在新的Wiki的主页中，比如作为背景图片，或者进行切割拼凑。具体的设计师可以发挥。

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/New%20document%20system%20style/images/Wiki_banner-1.jpg)

# 文档系统
## 1.目录-打开收起功能

目录需要有打开收起功能。现在的目录里，以下属于一级标题，不需要收起。
- Platform
- Grove
- IoT
- Tutorial
- SZ2U
- About

点击一级标题可以打开二级标题,二级标题可以被隐藏。并且二级标题以下的具体文档的标题都可以被隐藏。以下是二级标题：
- Arduino
- Respberry Pi
- Edision
- LaunchPAd
- LinkIt
- mbed
- Rephone
- Wio
- Sensor
- Actuator
- Display
- Communication

## 2.目录-点击“Home”
点击“Home”后，所有展开的标题都要收起，只保留一级标题

## 3.点击某一篇文档
点击某一篇具体的文档后，需要有做到：
- 目录自动聚焦到该篇文档的详细目录上。以防止因目录太长使用者需要向下寻找文档的具体目录。
- 收起其他标题，让目录看起来更为简洁。

## 4.文档系统的字体风格
字体风格行间距等可以参考[Paticle](https://docs.particle.io/guide/getting-started/intro/photon/).我们可以尝试使用和他们类似的字体，行间距。Paticle本身风格比较清新，如果最终觉得不合适，需要能够切换回目前默认的风格。








