#!/usr/bin/env bash

# 1. hugo生成网页文件，放置在public文件夹下
echo "******use hugo to generate web files******"
hugo 

# 2. 将public所有文件移至docs，便于github pages
echo "******move generated public/ to docs/******"
cp -rf public/* docs/
rm -rf public

# 3. push到 https://github.com/pris-nlp/pris-nlp.github.io
echo "******push to github repo: https://github.com/pris-nlp/pris-nlp.github.io******"
git add .
git commit -m "update"
git push

echo "Successfully update the PRIS official website!!! Thanks for your contributions.\n Please review the updated website at https://pris-nlp.github.io/ (maybe you need to clear the cache of your brower before viewing it)"