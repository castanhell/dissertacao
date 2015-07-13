install: dissertacao.ps


dissertacao.ps: dissertacao.dvi
	dvips -o dissertacao.ps dissertacao.dvi


clean: 
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bak
	rm -f *.log
	rm -f *.blg 
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof
	rm -f *.dvi
	rm -f *.idx 
	rm -f *.ilg 
	rm -f *.ind

dissertacao.dvi: dissertacao.tex capitulo1.tex referencias.bbl
	xelatex dissertacao
	xelatex dissertacao

referencias.bbl: referencias.bib
	xelatex dissertacao
	xereferencias dissertacao

