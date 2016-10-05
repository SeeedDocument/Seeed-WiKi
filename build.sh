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

echo "Thanks You"




