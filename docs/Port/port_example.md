#一个例子
-------
下面是我移植一个文档时做的步骤，大概一个文档需要30-90分钟。仅供参考，如果你有效率更高的方法，可以分享给大家！


###STEP1

在github建立一个仓库，然后**git clone**到本地，在本地仓库创建以下内容：

* image文件夹
* resource文件夹
* product_name.md
* readme.md (通常我回去复制一个现成的，然后修改一些内容)

###STEP2

打开产品wiki的页面，按照[文档审核](http://wiki.seeed.cc/Port/port_review/)的内容审核文档。如果运气足够好没有任何问题，就可以调到**step3**,否则就需要把错误的记下来，在写文档的时候修正。

###STEP3

用MarkdownPad2软件打开**product_name.md**文档，开始按照markdown的格式把wiki的内容粘贴过来。

如果遇到图片，还需要把图片下载下来，然后上传到github以获取新的图片地址。

!!!warning
    如果直接在wiki上对图片右键另存为，可能会保存到不是最大尺寸的图片，所以需要点进去，看到大图后再另存为。

###STEP4

编辑完成后，修改一下readme.md的内容，然后把整个仓库推送到github。关于这个步骤参见[Github的使用](http://wiki.seeed.cc/Port/port_github/)


###STEP5

在github上点开product_name.md文件，可以预览内容是否正确，如果不正确的，**返回STEP3**，重新编辑。

如果预览没有问题，那么这个文档移植完成。


!!!note
    上面的步骤只是大概的步骤，并不涵盖所有的操作细节。实际操作中会遇到一些困难，不过弄了一两篇熟悉后，就不是问题了。