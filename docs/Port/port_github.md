#Github的使用
---

##写在前面
Git是一个分布式的版本控制系统，最初由[Linus Torvalds](http://baike.baidu.com/view/518124.htm)编写，用作[Linux内核](http://baike.baidu.com/view/573460.htm)代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在[Ruby社区](http://baike.baidu.com/subview/45135/5977034.htm)中。目前，包括Rubinius、Merb和Bitcoin在内的很多知名项目都使用了Git。Git同样可以被诸如Capistrano和Vlad the Deployer这样的部署工具所使用。

作为开源代码库以及版本控制系统，Github拥有140多万开发者用户。随着越来越多的应用程序转移到了云上，Github已经成为了管理软件开发以及发现已有代码的首选方法。

如前所述，作为一个分布式的版本控制系统，在Git中并不存在主库这样的概念，每一份复制出的库都可以独立使用，任何两个库之间的不一致之处都可以进行合并。

GitHub可以托管各种git库，并提供一个web界面，但与其它像 SourceForge或Google Code这样的服务不同，GitHub的独特卖点在于从另外一个项目进行分支的简易性。为一个项目贡献代码非常简单：首先点击项目站点的“fork”的按钮，然后将代码检出并将修改加入到刚才分出的代码库中，最后通过内建的“pull request”机制向项目负责人申请代码合并。已经有人将GitHub称为代码玩家的MySpace。

在GitHub进行分支就像在Myspace（或Facebook…）进行交友一样，在社会关系图的节点中不断的连线。
GitHub项目本身自然而然的也在GitHub上进行托管，只不过在一个私有的，公共视图不可见的库中。开源项目可以免费托管，但私有库则并不如此。Chris Wanstrath，GitHub的开发者之一，肯定了通过付费的私有库来在财务上支持免费库的托管这一计划。

!!!note
    上面的内容摘自百度百科，随便看一下就好，你需要记住的是：git是一个很屌的工具，github是一个很牛x的网站。我们的所有文档都会存放在github上面

!!!warning
    这篇文档并不打算讲述太多原理性的内容，只会讲一些能够用到的需要操作的东西。所以如果你希望深入的了解github以及git的用法，可以利用空余时间利用[搜索引擎](google.com)搜索相关内容进行学习。


##注册账号
首先登陆[Github](www.github.com)，用公司邮箱注册一个账号，并且申请加入[Seeed文档组织](https://github.com/SeeedDocument)。

##安装git base

下载并安装一个小工具[Git Base](http://pan.baidu.com/share/link?shareid=1636365721&uk=1778906437)。

打开git base，可以看到一个命令行的界面：

![](http://www.seeedstudio.com/wiki/images/4/47/Git_basae.png)


输入命令进行一些配置(这是两条命令，每输入一条按一次Enter)

    git config --global user.name "your username"
    git config --global user.email "your email"

##创建一个仓库

每一个产品文档都用一个仓库来管理。

打开[组织的Github页面](https://github.com/SeeedDocument),在右下角找到一个New Repository的绿色的按钮：

![](http://www.seeedstudio.com/wiki/images/a/a8/Create_repository.png)

然后跳转到：

![](http://www.seeedstudio.com/wiki/images/3/34/Create_repository2.png)

* 在Ower选择SeeedDocument(前提是你的账号已经加入了组织)
* 在Repository name填上产品的名称
	* 产品名称如果有空格或者‘.’，用下划线替代
	* 例如Grove_LED，Breakout_for_LinkIt_Smart_7688_2_0

然后就可以在组织的页面看到你创建的仓库了。


##一个仓库应该包含的内容

一个常规的仓库应该包含：

* image文件夹 - 用以存放该产品文档用到的图片
* resource文件夹 - 用以存放该产品文档需要下载的资料，例如原理图，压缩包
* readme.md文件，用以记录该文档的更新记录
* product_name.md，文档的实体内容，具体的编写会在另外一篇文档说明


其中，readme.md需要包含以下内容：

    Breakout for Linkit Smart 7688 V2
	---

	**SKU**: [103100022](https://www.seeedstudio.com/item_detail.html?p_id=2641)

	**Wiki Link**: [wiki.seeed.cc](wiki.seeed.cc)

	
	###Change Log:

	**2016-7-4:** create repos by loovee (loovee@seeed.cc)
	
	
	--------
	This document is written by Seeed Studio and is licensed under MIT License.

	Contributing to this document is warmly welcomed. You can do this basically by
	[forking](https://help.github.com/articles/fork-a-repo), committing modifications and then [pulling requests](https://help.github.com/articles/using-pull-requests) (follow the links above
	for operating guide). Adding change log and your contact into file header is encouraged.
	Thanks for your contribution.
	
	Seeed is a hardware innovation platform for makers to grow inspirations into differentiating products. By working closely with technology providers of all scale, Seeed provides accessible technologies with quality, speed and supply chain knowledge. When prototypes are ready to iterate, Seeed helps productize 1 to 1,000 pcs using in-house engineering, supply chain management and agile manufacture forces. Seeed also team up with incubators, Chinese tech ecosystem, investors and distribution channels to portal Maker startups beyond.
	

你可以查看[Breakout for LinkIt Smart 7688 V2.0的仓库](https://github.com/SeeedDocument/Breakout_for_LinkIt_Smart_7688_v2_0)以增进理解。


##常用命令

这里介绍到的命令都是能够被用到的。

打开git base，然后就可以输入这些命令了。

###复制仓库到本地

    git clone link_to_repository

其中，link_to_repository是某个仓库的链接。

!!!note
    实际上你不需要把冗长的链接一个一个输入，如果你是使用windows操作系统，你可以复制链接，然后在git base按下[Insert键](http://baike.baidu.com/link?url=_EZofPztyympwaeteNzuyfpMdzaqUyzwSFZNaHMKscQQyQ3KAWhBkIZi5W8r072cIM_TCcPRw03KS8ZoxYi2b_)，就可以粘贴到git base了。git base里面是不能用ctrl+v的。

把一个仓库复制到本地后，你就可以看到多了一个文件夹。


###添加内容

当你添加了任何内容，需要用以下命令，把内容添加到本地仓库：

    git add .

!!!note
    上面的命令最后有个点，那也是需要的，点表示真个文件夹


如果你删除了写文件/文件夹，就需要用以下命令：

    git add -u


###添加提交说明

你需要些一些你修改内容的说明，用以下命令：

    git commit -m "这里是具体的内容"


###提交到远程仓库

远程仓库就是指github的页面上的那个仓库了。

    git push origin master

会提示输入用户名以及密码。

!!!note
    输入密码时是没有显示的，习惯就好。


##动手试一试

上面了那么多，动手试一下创建一个仓库，仓库名字随便，例如Test_Jemery.

创建好后，打开git bash. 可以任何时候鼠标右键有个git bash的按钮，然后：

* 通过git clone命令把该仓库拷贝到本地
* 在仓库里面建立一个readme.md的文件
* 编辑readme.md，随便写入一些内容
* 把git bash关掉，进入仓库的第一次文件夹，再把git bash打开
* 输入git add .
* 输入git commit -m "test"
* 输入git push origin master, 按照提示输入用户名和密码

然后，打开github上你刚才建的那个测试用的仓库，刷新一下，就可以看到你上传的内容了。
