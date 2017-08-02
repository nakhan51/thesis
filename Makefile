all: pdf


pdf:
	pdflatex paper.tex
	bibtex paper

	# twice to get references right the first time
	pdflatex paper.tex
	pdflatex paper.tex

	cp paper.pdf thesis_nishat.pdf

clean:
	rm paper.aux paper.blg paper.lof paper.log paper.lot paper.toc paper.bbl
