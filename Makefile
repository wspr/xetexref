# Public domain. Simple Makefile for xetex-reference.

default: pdf

pdf xetex-reference.pdf: xetex-reference.tex
	xelatex -no-mktex=tfm '\nonstopmode\input $<'

tryfonts:
	xetex -no-mktex=tfm '\nonstopmode \input tryxefonts.tex'
