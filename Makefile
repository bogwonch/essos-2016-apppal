all: paper.pdf
	latexmk -xelatex -quiet paper
	latexmk -c

view: paper.pdf
	open paper.pdf

paper.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)

tidy:
	latexmk -c

clean:
	latexmk -C
