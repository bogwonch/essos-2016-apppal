all: paper.pdf
	latexmk -silent -pdf paper
	latexmk -c
	pdf2ps paper.pdf
	open paper.pdf

pub: paper.pdf
	cp paper.pdf 2016-essos-hallett-aspinall-apppal-for-android.pdf

view: paper.pdf
	open paper.pdf

paper.pdf: $(wildcard *.bib) $(wildcard *.tex) $(wildcard *.sty)

tidy:
	latexmk -c

clean:
	latexmk -C
