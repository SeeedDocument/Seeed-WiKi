Github is the main and most important tool we use during migration, all the documents, pictures and files will be deposited at github. 

## Sign up
I guess you already have an account for github. If you don't have, please sign up with your company email and apply to join [Seeed Document](https://github.com/SeeedDocument)

## Install Git Bash
Git bash is similar to CMD in windows which you can input command in it and it will execute the command.

Download and install [Git Bash](https://git-scm.com/download)

Open git bash, you will see a interface as below.
![](http://www.seeedstudio.com/wiki/images/4/47/Git_basae.png)
Input some command to make configuration. Push "Enter" after inputting every command.
```
git config --global user.name "your username"
git config --global user.email "your email"
```
## Create new repository.
After everything has been set up, let go back to the github website to create repository.

Every product's documents (including images, resources, md files etc) need a repository to manage. Make sure you are already a member of [Seeed Document](https://github.com/SeeedDocument) before creating a new repository.

Find the green icon "New Repository" and click it.
![](http://www.seeedstudio.com/wiki/images/a/a8/Create_repository.png)

Then you will see page as below:

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/This%20is%20a%20test.png)
- Choose Seeed Document in Owner(make sure you already joint Seeed Document group)
- Fill in product name in the rectangular box under **Repository name**
   - If there is blank space or "-" in product name, replace them with "_"
   - Examples: Grove_LED，Breakout_for_LinkIt_Smart_7688_2_0

If you have created the repository successfully, the page will jump to the main page of the repository. You will find that there is only one README.md file, don't worry, we will add more things to it later.
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/This%20is%20a%20test%20main%20page.png)

If you enter other product's repository, you will find there is contect in README.md  file.take Wio Node for example:
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Wio%20node%20README%20md%20file.png)

So README.md has to contain below content
```
Wio_Node

SKU: [102110057](https://www.seeedstudio.com/Wio-Node-p-2637.html)

Wiki Link: wiki.seeed.cc

Change Log:

2016-7-7: create repos by Jeremy.xiao (jeremy.xiao@seeed.cc)
This document is written by Seeed Studio and is licensed under MIT License.

Contributing to this document is warmly welcomed. You can do this basically by forking, committing modifications and then pulling requests (follow the links above for operating guide). Adding change log and your contact into file header is encouraged. Thanks for your contribution.

Seeed is a hardware innovation platform for makers to grow inspirations into differentiating products. By working closely with technology providers of all scale, Seeed provides accessible technologies with quality, speed and supply chain knowledge. When prototypes are ready to iterate, Seeed helps productize 1 to 1,000 pcs using in-house engineering, supply chain management and agile manufacture forces. Seeed also team up with incubators, Chinese tech ecosystem, investors and distribution channels to portal Maker startups beyond.
```

How to make the README.md to have contect as above?

- Click into the README.md file

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Click%20README%20file.png)

- Click the edit icon to edit the file

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Edit%20the%20README%20file.png)

- Copy the content from other product's README.md file.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Copy%20from%20wio%20node%20readme%20file.png)

- Modify the content to suitable for the product which is being migrated.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Modify%20the%20content.png)

- Commit changes

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Commit%20changes.png)

- Result
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/finish%20change%20README%20file.png)

You will also see the product's repository at the main page of Seeed Document.

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Seeed%20document%20main%20page.png)

## What a repository usually contains?
A regular repository usually contains:

- image fold, for restoring images of wiki
- Resource fold, for restoring  related documents of the product such as schematic, Zip file.
- readme.md file, for recording update history.
- product_name.md，the content that will show in WiKi. I will specialize how to write it in another document.

Take Wio Node's repository for example:

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/What%20a%20repository%20usually%20contains.png)



## Add new files to github
Once you have created the repository at github successfully, the next step is to add new files in the repository. Git bash is a tool to make the uploading more efficiently, let's go back to git bash and open it. The first command you are going to use is:

```
git clone link_to_repository
```
"link_to_repository" means web link of the repository you want to clone 
so the first thing you need to do is to find the web link of the repository you just created and copy it, let's take "This_is_a_test repository" as example

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/finish%20git%20push.png)

Then use input the command "git clone + the link you just copied"

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/git%20clone.png)

!!!note
Actually you don't need to type the web link letter by letter, if you are using Windows, copy the web link, the push "insert" at git bash, then you can successfully copy the link in git bash. "Ctrl+v" is not useful in git bash.

After you git clone the repository, you will find a folder with the repository's name in local driver.

**Add Content**

In the folder cloned from github, you will find the file README.md, as just mentioned, a repository should contain an image folder, an resource folder, and a product_name.md file. 
- Create 2 new folders, name image and resource.
- Download pictures and resources from the old WiKi.
- Put pictures into the image file and other documents into the resource file you just created.
- Close the git bash window you just used to clone repository, right click your mouse in the repository fold, choose git bash.
 
This is an example of Wio Node
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/Open%20git%20bash%20at%20the%20new%20folder.png)
- Input command as below
```
git add .
```
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/git%20add.png)
!!!Note
Don't miss the punctuation ".", it means the whole folder need to be upload to github.

If you deleted and file, input below command
```
git add -u
```
Add some descriptions to what you want to upload. This is necessary otherwise you are not able to upload, use below command:
```
git commit -m"this is the description"
```
Because I just added some new pictures in the image folder, So my commit is "add some new pictures about using github". Git commit is a way to tell other coworkers what's the change you made to the repository.
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/git%20commit.png)

Upload change to github, use below command:
```
git push origin master
```
![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/git%20push%20origin%20master.png)

It will require you to input your usename and password of github

![](https://github.com/SeeedDocument/Seeed-WiKi/raw/master/docs/Wiki%20migration%20manuals%20for%20Seeedia%20team/image/How%20to%20use%20github/username%20and%20pass%20word.png)

!!!Note 
The password will not show in git bash when you are typing, don't worry just input it anyway.

## Have a try
Create a new repository name whatever you like， such as Test_Viswa.

- Create a file named readme.md in repository, write any content you like 
- Open git bash
- Clone the repository by "git clone"
- Close git bash, open the repository file you just cloned to local, then right click your mouse and open git bash again.
- Input "git add ."
- Input "git commit -m"test"
- Input "git push origin master", then input your github username and password.
- Open the repository in github again, refresh the webpage, then you can see the files you uploaded to the repository.


