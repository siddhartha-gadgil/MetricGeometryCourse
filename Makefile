CD = cd src

OPTIONS = -synctex=1 -shell-escape -interaction=nonstopmode --jobname=notes

MAIN = Main.tex

CLEAN = rm -v *.log *.synctex.gz *.aux

CON = CauchySchwarzInequality.tex -nt notes.log -o CPoE_Sphere.tex -nt notes.log -o EnergyMinimization.tex -nt notes.log -o \
	  LengthInMetricSpaces.tex -nt notes.log  -o Main.tex -nt notes.log -o Title.tex -nt notes.log -o \
	  CPoE_EuclideanSpace.tex -nt notes.log  -o  DetectiveProblem.tex -nt notes.log -o  LengthEnergy.tex -nt notes.log -o \
	  LengthInSmoothSpaces.tex -nt notes.log  -o  MetricSpaces.tex -nt notes.log

notes:
	$(CD) && pdflatex $(OPTIONS) $(MAIN) && $(CLEAN)

continuous:
	cd src; while true; do sleep 2; if [ $(CON) ]; then pdflatex $(OPTIONS) $(MAIN); fi; done;
