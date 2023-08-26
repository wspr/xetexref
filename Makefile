# Public domain. Simple Makefile for xetex-reference.

doc = xetex-reference.tex
default: pdf

pdf xetex-reference.pdf: $(doc)
	texfot xelatex --file-line-error -no-mktex=tfm '\nonstopmode\input $<'

tryfonts:
	xetex -no-mktex=tfm '\nonstopmode\input tryxefonts.tex'

spell:
	dw <$(doc) | grep -v ': a$$' || true
	myspell $(doc)

diff dif:
reldir = /usr/local/texlive/dev/texmf-dist/doc/xetex/xetexref/
diff dif:
	-diff -u0 $(reldir)/xetex-reference.tex .

pkg = xetexref
dist:
	rm -rf $(pkg) $(pkg).zip
	mkdir $(pkg)
	ln -s ../Makefile ../README.txt ../$(doc) ../xetex-reference.pdf $(pkg)
	zip -r $(pkg).zip $(pkg)
