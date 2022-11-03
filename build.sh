#!/bin/bash
rm index.html 2> /dev/null || true
cp header.txt index.html
ink README.md >> index.html
cat footer.txt >> index.html
sed -i -e 's/img src/img class="center" src/g' index.html