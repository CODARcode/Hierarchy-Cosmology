paper = hierarchy_cosmology

hierarchy_cosmology.pdf: *.tex Narrative/*.tex
	pdflatex -interaction=nonstopmode $(paper)
	bibtex $(paper) 
	pdflatex -interaction=nonstopmode $(paper) 
	pdflatex -interaction=nonstopmode $(paper) 

.PHONY:
clean:
	rm -f *dvi *aux *toc *bbl *log *out *blg

.PHONY:
cleanall: clean
	rm -f $(paper).pdf
