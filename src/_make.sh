#!/bin/bash

rm -f output/*

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

pandoc --to markdown_strict output/$file1 output/$file2 output/$file3 output/$file4 -o ../content/01scholarship/publications.md

#cp output/publications.md ../content/01scholarship/publications.md
