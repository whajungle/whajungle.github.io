#!/bin/sh

## hyphop ##

for d in . lev lev/albums ; do

NOW=`TZ='UTC' date` tools/md2html \
    ${d}/README.md \
    ${d}/index.html

done
