#basic makefile

###

all: paper

###

paper: paper.tex	
	pdflatex -pdf paper.tex
	bibtex paper.aux
	pdflatex -pdf paper.tex
	pdflatex -pdf paper.tex
	mv paper.pdf "Notions of Anonymity, Fairness and Symmetry for Finite Strategic-Form Games.pdf"

###

clean:
	rm *.aux *.bbl *.blg *.log *.out *.toc 
