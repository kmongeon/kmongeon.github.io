#!/bin/bash

rm -f output/*

file0=publications.md
file1=journals.md
file2=chapters.md
file3=reports.md
file4=other.md

#https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl
#https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-author-date.csl

PANDOC_OPTIONS="--to markdown_strict --filter pandoc-citeproc --csl=https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl"

pandoc $PANDOC_OPTIONS input/$file1 -o output/$file1
pandoc $PANDOC_OPTIONS input/$file2 -o output/$file2
pandoc $PANDOC_OPTIONS input/$file3 -o output/$file3
pandoc $PANDOC_OPTIONS input/$file4 -o output/$file4

cp input/$file0 output/$file0

pandoc --to markdown_strict output/$file0 output/$file1 output/$file2 output/$file3 output/$file4 -o output/$file0

cp output/$file0 ../content/01scholarship/$file0
