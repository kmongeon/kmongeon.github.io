#!/bin/bash

# Publications
rm -f output/*

file10=10publications.md
file11=11journals.md
file12=12chapters.md
file13=13reports.md
file14=14other.md

#https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl
#https://raw.githubusercontent.com/citation-style-language/styles/master/canadian-journal-of-economics.csl
#https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-author-date.csl

#--metadata-file=input/default.yaml
#--pdf-engine=xelatex
PANDOC_OPTIONS="--to markdown_strict --filter pandoc-citeproc --csl=https://raw.githubusercontent.com/citation-style-language/styles/master/canadian-journal-of-economics.csl"

pandoc $PANDOC_OPTIONS input/$file11 -o output/$file11
pandoc $PANDOC_OPTIONS input/$file12 -o output/$file12
pandoc $PANDOC_OPTIONS input/$file13 -o output/$file13
pandoc $PANDOC_OPTIONS input/$file14 -o output/$file14

cp input/$file10 output/$file10

pandoc --to markdown_strict output/$file10 output/$file11 output/$file12 output/$file13 output/$file14 -o output/$file10

cp output/$file10 ../content/01scholarship/$file10

#####
file5=grants.md

pandoc $PANDOC_OPTIONS input/$file5 -o output/$file5

##### Presentations
file20=20presentations.md
file21=21academic.md
file22=22industry.md
PANDOC_OPTIONS="--to markdown_strict --filter pandoc-citeproc --csl=https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl"

pandoc $PANDOC_OPTIONS input/$file21 -o output/$file21
pandoc $PANDOC_OPTIONS input/$file22 -o output/$file22
cp input/$file20 output/$file20

pandoc --to markdown_strict output/$file20 output/$file21 output/$file22 \
  -o output/$file20
cp output/$file20 ../content/01scholarship/$file20

##### Media
file30=30media.md
file31=31broadcast.md
file32=32print.md
PANDOC_OPTIONS="--to markdown_strict --filter pandoc-citeproc --csl=https://raw.githubusercontent.com/citation-style-language/styles/master/apa-cv.csl"

pandoc $PANDOC_OPTIONS input/$file31 -o output/$file31
pandoc $PANDOC_OPTIONS input/$file32 -o output/$file32
cp input/$file30 output/$file30

pandoc --to markdown_strict output/$file30 output/$file31 output/$file32 \
  -o output/$file30
cp output/$file30 ../content/01scholarship/$file30
