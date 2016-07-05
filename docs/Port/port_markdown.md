#Markdown
-----
##写在前面
[Markdown](http://baike.baidu.com/link?url=8VtYVQFHym1circOKHgLECjB1S3soK-dOpKEZd93I5f0SjBSegSRu_nozmKREf5JDb1JC5u2Xm4xAp8Uh-eYn_)是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式。

新文档系统的文档是用Markdown进行撰写的，所有在这里会简单的介绍一些需要用到的内容


##软件

推荐使用一个叫[MarkdownPad2](http://markdownpad.com/download.html)的软件，有免费使用版本。

##语法

关于Markdown语法，推荐阅读这篇文章《[Markdown——入门指南](http://www.jianshu.com/p/1e402922ee32/)》

##一些移植时需要用到的格式

###一级标题

一级标题用##

二级标题用###

以此类推。


###插入图片

插入图片可以用快捷键**ctrl+G**，然后插入图片的地址链接。在Github的那篇文档中我们提到需要把所有的图片放到image文件夹里面。当我们把图片传到github后，可以获得图片的地址。

###Note&Warning

有些Note或者Warning信息，可以用以下的格式：

    !!!note
        这里写入note的内容

就会变成下面的格式：

!!!note
	这里写入note的内容

Warning也是一样的，不过是把note换成warning。

!!!note
    这个格式在MarkdownPad2软件里面并不能预览，因为该软件不支持这个格式，不过我们的文档系统是支持的。

###插入超链接

选中文字，使用快捷键**ctrl+L**即可插入超链接。

###表格

表格使用一下的语法：

    |Product reversion | Release date |Support status |Notes                  |
    |------------------|--------------|---------------|-----------------------|
    |Version 1.0       |November 2015 |Supported      |	None                  |
    |Version 2.0       |April 2016	  |Supported      | Refer to New Features |

显示的内容如下：

|Product reversion | Release date |Support status |Notes                  |
|------------------|--------------|---------------|-----------------------|
|Version 1.0       |November 2015 |Supported      |	None                  |
|Version 2.0       |April 2016	  |Supported      | Refer to New Features |


!!!note
    这个格式在MarkdownPad2软件里面并不能预览，因为该软件不支持这个格式，不过我们的文档系统是支持的。


###无序列表

通常我们喜欢用无序列表来表示一些并列的项目，格式如下：

    * Grove interface makes wiring easier and allows expansions with Grove modules.
    * USB host
    * Audio Output
    * Ethernet port
    * Cost-effective

!!!note
    实际上，上面的*号可以换成-号

显示的内容如下：

* Grove interface makes wiring easier and allows expansions with Grove modules.
* USB host
* Audio Output
* Ethernet port
* Cost-effective

如果需要二级无序列表，可以这样：

    * 一级列表1
        * 二级列表1
        * 二级列表2
    * 一级列表2
    * 一级列表3

显示的内容如下：

* 一级列表1
    * 二级列表1
    * 二级列表2
* 一级列表2
* 一级列表3



