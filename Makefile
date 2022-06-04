DOC=document
DOC_PDF=$(DOC).pdf
DOC_DVI=$(DOC).dvi

.PHONY: all clean
.SUFFIXES: .dvi .pdf .tex
.INTERMEDIATE: $(DOC_DVI)

all: $(DOC_PDF)

.tex.dvi:
	platex $<

.dvi.pdf:
	dvipdfmx $<

clean:
	$(RM) $(DOC_PDF) $(DOC_DVI) *.log *.aux
