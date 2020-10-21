#!/bin/bash

tidy -config scripts/config-tidy.txt |
	java -jar lib/saxon9he.jar -xsl:_xslt/prep-for-pdf.xslt -s:- |
	pandoc -f html -t html5 -o yolo.pdf
