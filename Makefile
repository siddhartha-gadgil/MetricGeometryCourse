CD = cd src/

OPTIONS = -synctex=1 -shell-escape -interaction=nonstopmode

MAIN_FILE = Main.tex

CLEAN = rm -v *.log *.synctex.gz *.aux

notes:
	$(CD) && pdflatex $(OPTIONS) --jobname=notes $(MAIN_FILE) && $(CLEAN)
