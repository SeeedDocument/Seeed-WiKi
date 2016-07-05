#文档审核
---

##需要审核的内容

有一下内容需要审核，后面会详细的讲解每个内容的注意事项。

* 图片
* 超链接
* 是否添加调查问卷
* 是否有多余的内容


##图片

目前的图片主要存在一下的问题：
 
* 图片中的产品与实际产品不符
* 图片中的产品不是最新版的，可能是样板（绿色的）
* 图片太挫，不清晰等

如果发现有这样的图片，需要领出相关的产品重新拍摄，如果有任何疑问，可以找loovee确认。

!!!note
    好看的图片是一篇文档是否优美的关键之一，所以大家需要重视！

##超链接

wiki中存在大量的已经失效的超链接，需要点开每一个超链接，看看是否还有效。如果无效的，把正确的添加上，如果有任何疑问，可以找loovee确认

##是否添加调查问卷

查看最后是否有添加调查问卷，如果没有，按照以下步骤添加：

**step1:** 登陆[https://www.surveymonkey.com/](https://www.surveymonkey.com/)，账号密码可以在trello看到。

**step2:** 点击右上角的**create Survey** (一个绿色的按钮)

**step3:** 选择**Edit a Copy of an Existing Survey**，在**Which survey**随便选择一个已经存在的标题。

**step4:** 点**Let's Go**

**step5:** 修改标题以及底下的内容（双击需要修改的地方即可），修改完后，点击右上角的**Next**

**step6:** 选择**Get Web Link**，产生一个链接

接着在文档的最后插入一下的代码

    ##Is this page helpful
    <iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="这里插入你刚才产生的那个链接" frameborder="0"></iframe>

就把调查问卷的超链接插入进去了。


##是否有多余的内容

通常一些特别旧的wik会有很多多余的内容，包括：

* Support
* But Tracker
* Additional Idea
* See Also
* How to Buy
* Licensing
* External Links

!!!note
    可以删掉任何你认为没有用的东西，如果不确定，可以向loovee咨询。
