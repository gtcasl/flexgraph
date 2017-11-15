TEX = pdflatex -interaction nonstopmode
BIB = bibtex

PAPER = main
BIBFILE = reference.bib

all: $(PAPER).pdf
	 
view: $(PAPER).pdf
	open $(PAPER).pdf

clean::
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof $(PAPER).pdf

$(PAPER).pdf: $(PAPER).aux $(PAPER).bbl
	$(TEX) $(PAPER)

$(PAPER).bbl: $(PAPER).aux $(BIBFILE)
	$(BIB) $(PAPER)

$(PAPER).aux: $(PAPER).tex
	$(TEX) $(PAPER)
