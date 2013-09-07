OUTPUT = notes

OPTIONS = -synctex=1 -shell-escape -interaction=nonstopmode --jobname=$(OUTPUT)

MAIN = Main.tex

CLEAN = rm -v *.log *.synctex.gz *.aux

CON = Main.tex -nt $(OUTPUT).log -o \
	  Title.tex -nt $(OUTPUT).log -o \
	  MetricSpaces.tex -nt $(OUTPUT).log -o \
	  DetectiveProblem.tex -nt $(OUTPUT).log -o \
	  LengthInMetricSpaces.tex -nt $(OUTPUT).log  -o \
	  LengthInSmoothSpaces.tex -nt $(OUTPUT).log  -o \
	  CauchySchwarzInequality.tex -nt $(OUTPUT).log -o \
	  LengthEnergy.tex -nt $(OUTPUT).log -o \
	  EnergyMinimization.tex -nt $(OUTPUT).log -o \
	  CPoE_EuclideanSpace.tex -nt $(OUTPUT).log  -o \
	  CPoE_Sphere.tex -nt $(OUTPUT).log

notes:
	cd src; pdflatex $(OPTIONS) $(MAIN); $(CLEAN)

continuous:
	cd src; while true; do sleep 2; if [ $(CON) ]; then pdflatex $(OPTIONS) $(MAIN); fi; done;
