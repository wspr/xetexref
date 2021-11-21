# Public domain. Simple Makefile for xetex-reference.

doc = xetex-reference.tex
default: pdf

pdf xetex-reference.pdf: $(doc)
	texfot xelatex --file-line-error -no-mktex=tfm '\nonstopmode\input $<'

tryfonts:
	xetex -no-mktex=tfm '\nonstopmode\input tryxefonts.tex'

spell:
	myspell $(doc)
