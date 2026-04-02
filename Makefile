MAIN    = main
LATEXMK = latexmk
PDFLATEX = pdflatex
BIBTEX  = bibtex

.PHONY: all clean

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex mct_geomip_section.tex references.bib
	$(LATEXMK) -pdf -interaction=nonstopmode $(MAIN).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).blg
