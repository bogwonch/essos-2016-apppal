all: paper.pdf
	latexmk -xelatex paper
	latexmk -c

paper.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)

tidy:
	latexmk -c

clean:
	latexmk -C
