#!/bin/bash

rm -f output/*.md

file1=journals.md
file2=chapters.md
file3=reports.md
file4=other.md

PANDOC_OPTIONS="--filter pandoc-citeproc --csl=https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl"

pandoc $PANDOC_OPTIONS input/$file1 -o output/journals.tex
pandoc --to gfm output/journals.tex -o output/journals2.md

#pandoc output/*.md -o output/publications.md

#cp output/publications.md ../content/01scholarship/publications.md
