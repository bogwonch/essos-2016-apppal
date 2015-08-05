all: paper.pdf
	latexmk -silent -pdf paper
	latexmk -c
	open paper.pdf

view: paper.pdf
	open paper.pdf

paper.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)

tidy:
	latexmk -c

clean:
	latexmk -C
