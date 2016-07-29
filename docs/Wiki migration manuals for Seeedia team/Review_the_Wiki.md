Now let's begin the great work of Wiki migration. With the work of us, Seeeed will have a much better document system in about 3 month.
# What content need to be reviewed?
As the purpose of WiKi migration is to provide a more proffessional document system for our customers, and the old WiKi indeed has many content that is either wrong or improper, before migration, it is very essential to have a review on below content:

- Picture
- Hyperlink
- Has the survey been added?
- Anything is redundant?

Here is detail on how to review below content:

## Picture

Currently we have issues about picture as below:
- Product shows in picture does not corresponding the product in WiKi
- The product in picture is not the most updated one. maybe it is prototype (The color of board is green)
- The picture is blurred

For those product you have stock in India, you can rephoto it if needed, If you don't have the product, please contact with me directly and I will ask related colleague to provide new picture.

## Hyperlink
There are some hyperlinks in old WiKi that are disabled any more, what need to do is to click every hyperlink to check if it still link to the right place, if not, find the right link and update it. If you have any query on it, please contact with me(Jeremy.xiao@seeed.cc) directly.

## Check if the survey has been added.
There is a survey attached at the end of every Wiki, below is an example:
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Survey%20image.png)

Check if there is a survey at the end of the WiKi you are reviewing, if not, you can add the survey by below steps:
- Step1: Log in to [https://www.surveymonkey.com/](https://www.surveymonkey.com/), account and password as below:
  
  Account: Seeed_AE

  Password: seeed0728ae
  
- Step2: Click "**Create Survey**" on the top right corner of the page

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Create%20survey%20both.png)

- Step3: Choose "**Edit a Copy of an existing survey**", 

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Edit%20a%20copy%20of%20an%20existing%20survey.png)

- Select any Survey under "**Select an existing survey**"

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Select%20an%20existing%20survey.png)

It will show many surveys that is already existing, select any one of them.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Select%20an%20existing%20survey2.png)

- Step4: Click "**Let's Go**"

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Let's%20go.png)

- Step5: Change the content to correspond the WiKi you are going to Migrate.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Edit%20survey.png)

- Step6:After the modification, click "**Next**"

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/Next.png)

- Step7: Click "**Get Web Link**", then you will get a hyperlink of the survey.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/get%20web%20link.png)
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/About%20Survey/copy%20this%20link.png)

- Step8:Copy the link and paste it in to below code. The copy the code to the end of the document when you are writing new Wiki by markdown.
```
##Is this page helpful
<iframe style="height: 600px; width: 500px; margin: 10px 0 10px;" allowTransparency="true" src="Here put the link you just generated" frameborder="0"></iframe>
```

## Are there any content that is redundent?
Usually there are some content that is out of date and need to be deleted, including:

- Support
- But Tracker
- Additional Idea
- See Also
- How to Buy
- Licensing
- External Links

If you find any content as above, delete it. If you can't make sure if it is ok to delete, please contact with me(Jeremy.xiao@seeed.cc) directly.





