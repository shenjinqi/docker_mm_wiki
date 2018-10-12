#!/bin/sh

set -e

# Allows to use sed but with user input which can contain special sed characters such as \, / or &.
# $1 - the text to search for
# $2 - the replacement text
# $3 - the file in which to do the search/replace

if [ ! -e  /mm_wiki/conf/template.conf  ]; then
    tar -zxf /mm-wiki-linux-amd64.tar.gz -C /mm_wiki	
    cd  ./install/
    ./install
else
    ./mm-wiki --conf conf/mm-wiki.conf
fi
