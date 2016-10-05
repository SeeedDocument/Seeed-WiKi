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
	cp public/index.html ../$fn
	rm layouts/index.html
        echo ""
done
rm -r public
cd ..

echo "Thanks You"




