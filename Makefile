MAIN = main
MAIN_EPS = main_eps
all:    
	latexmk -pdf -silent -time -pv $(MAIN)
fast:
	latexmk -pdf -dvi- -f -silent -time $(MAIN)
auto:
	latexmk -pdf -silent -time -pvc $(MAIN)
eps:
	latex --shell-escape $(MAIN_EPS)
bib:
	latexmk -bibtex $(MAIN)
clean_aux:
	latexmk -c
clean:
	latexmk -C
	rm -f *.aux *.bbl *.blg *.log *~ \#*\# *.toc *.dvi *.pdf *.out *.loe *.lof *.lot *.fdb_latexmk *.fls *.gz *.nl* *.nst *.xml *-blx.bib *.eps *.ps *.md5 *.dpth *.auxlock
