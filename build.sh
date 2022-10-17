#!/bin/bash
rm index.html 2> /dev/null || true
cp header.txt index.html
ink README.md >> index.html
cat footer.txt >> index.html