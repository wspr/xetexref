# Public domain. Simple Makefile for xetex-reference.

doc = xetex-reference.tex
default: pdf

pdf xetex-reference.pdf: $(doc)
	texfot xelatex --file-line-error -no-mktex=tfm '\nonstopmode\input $<'

tryfonts:
	xetex -no-mktex=tfm '\nonstopmode\input tryxefonts.tex'

spell:
	myspell $(doc)
	#dw <$(doc)

pkg = xetexref
dist:
	rm -rf $(pkg) $(pkg).zip
	mkdir $(pkg)
	ln -s ../README.txt ../$(doc) ../xetex-reference.pdf $(pkg)
	zip -r $(pkg).zip $(pkg)
