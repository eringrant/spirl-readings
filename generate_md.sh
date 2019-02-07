#!/bin/bash
pandoc --bibliography all.bib --csl chicago-syllabus.csl -o readings-compiled.md -s readings.md -f markdown -t markdown-native_divs-raw_html-citations 
