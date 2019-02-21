#!/bin/bash

bibtex=$(grep -o "{[a-z0-9]*," all.bib | cut -f2 -d"{" | cut -f1 -d"," | sort)
md=$(grep -o "\[@[a-z0-9]*" readings.md | cut -f2 -d"@" | sort)

echo "The following are not common between all.bib and readings.md:"
echo ""
echo ${bibtex[@]} ${md[@]} | tr ' ' '\n' | sort | uniq -u
