The document of new Wiki is written by Markdown, so here I will introduce grammar that will be used.

## Software

Recommend a software named "[MakedownPad2](http://markdownpad.com/)", there are free version. 

## Grammar

Regarding the grammar of Markdown, recommend the article 《[markdown tutorial](http://www.markdowntutorial.com/)》,or you can goole "markdown" and you will find many tutorials.

Some format that will be used during migration.

### Header

# # This is header one
## ## This is header two
### ### This is header three
#### #### This is header four

##### ##### This is header five

###### ###### This is header six

**will show as:**

# This is header one
## This is header two
### This is header three
#### This is header four

##### This is header five

###### This is header six
---
### Insert image

There are 2 ways:

- 1.Use Ctrl+G and input the weblink of the image
- 2.Use ![](web link of the image)
---
### Note and Warning

```
!!!note
Here is the content of note
```
Will show as below

Warning is similar to note
```
!!!warning 
Here is contect of warning
```
Will show as below
---
### Insert hyperlink
There are also 2 ways
- Use Ctrl+L, then input the link
- Use [here is the content you want to add hyperlink](the link)
---
### Table
```
|Product reversion | Release date |Support status |Notes                  |
|------------------|--------------|---------------|-----------------------|
|Version 1.0       |November 2015 |Supported      | None                  |
|Version 2.0       |April 2016    |Supported      | Refer to New Features |
```
Will show as below
|Product reversion | Release date |Support status |Notes                  |
|------------------|--------------|---------------|-----------------------|
|Version 1.0       |November 2015 |Supported      | None                  |
|Version 2.0       |April 2016    |Supported      | Refer to New Features |

---
### List
```
* Grove interface makes wiring easier and allows expansions with Grove modules.
* USB host
* Audio Output
* Ethernet port
* Cost-effective
```
Will show as below
* Grove interface makes wiring easier and allows expansions with Grove modules.
* USB host
* Audio Output
* Ethernet port
* Cost-effective

"*" can also be replaced by "-"

```
* First level list 1
    * Second level list 1
    * Second level list 2
* First lever list 2
* First lever list 3
```
Will show as
* First level list 1
    * Second level list 1
    * Second level list 2
* First lever list 2
* First lever list 3

---

### Insert code

use "``" before and after the code you want to insert
```
void setup()
{
    Serial.begin(115200);
    Serial.println("hello world");
}

void loop()
{

}
```

