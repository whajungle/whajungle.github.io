#!/bin/sh

## hyphop ##

for d in . lev lev/album ; do

NOW=`TZ='UTC' date` tools/md2html \
    ${d}/README.md \
    ${d}/index.html

done
