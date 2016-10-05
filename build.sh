echo "We are going to build section pages and site index"
echo "--------------------------------------------------"
echo ""
cd ymlgen
for fn in `ls mkdocs-templates`
do 
	echo "Generating $fn"
	echo "------------------------"
	cp mkdocs-templates/$fn layouts/index.html
	hugo --contentDir=../docs/
        if [[ $fn == *.md ]]
        then
 	   cp public/index.html ../docs/$fn
        else
           cp public/index.html ../$fn   
        fi
	rm layouts/index.html
        echo ""
done
rm -r public
cd ..
echo "Mkdocs build"
echo "-------------"
mkdocs build --clean
echo ""
echo "Creating Redirects for non existing pages"
echo "-----------------------------------------"
for redirectline in `cat ymlgen/redirects.txt`
do
 pagename=${redirectline%;*}
 pagelink=${redirectline#*;}
 echo "Redirecting $pagename ----> $pagelink"
 echo ""
 mkdir "site/$pagename"
 touch "site/$pagename/index.html"
 echo "<!DOCTYPE html>
 <html>
   <head>
     <link rel=\"canonical\" href=\"$pagelink\"/>
     <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"/>
     <meta http-equiv=\"refresh\" content=\"0;url=$pagelink\"/>
   </head>
 </html>" > "site/$pagename/index.html"
done
echo "-----------------------------------------"
echo "Now, You can copy the generated files in /site folder to Server."
echo ""
echo "Thank You ☺"




