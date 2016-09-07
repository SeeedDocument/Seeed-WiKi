cd ymlgen
hugo --contentDir=../docs/
cp public/index.html ../mkdocs.yml
rm -r public
cd ..




