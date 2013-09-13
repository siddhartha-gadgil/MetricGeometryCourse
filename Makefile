OUTPUT = notes

OUTPUT_FILE = $(OUTPUT).pdf

OPTIONS = -synctex=1 -shell-escape -interaction=nonstopmode --jobname=$(OUTPUT)

MAIN = Main.tex

CLEAN = rm -v *.log *.synctex.gz *.aux

CON = Main.tex -nt $(OUTPUT_FILE) -o \
	  Title.tex -nt $(OUTPUT_FILE) -o \
	  MetricSpaces.tex -nt $(OUTPUT_FILE) -o \
	  DetectiveProblem.tex -nt $(OUTPUT_FILE) -o \
	  LengthInMetricSpaces.tex -nt $(OUTPUT_FILE)  -o \
	  LengthOfSmoothCurves.tex -nt $(OUTPUT_FILE)  -o \
	  CauchySchwarzInequality.tex -nt $(OUTPUT_FILE) -o \
	  LengthEnergy.tex -nt $(OUTPUT_FILE) -o \
	  EnergyMinimization.tex -nt $(OUTPUT_FILE) -o \
	  CPoE_EuclideanSpace.tex -nt $(OUTPUT_FILE)  -o \
	  CPoE_Sphere.tex -nt $(OUTPUT_FILE)

notes:
	cd src; pdflatex $(OPTIONS) $(MAIN); $(CLEAN)

continuous:
	cd src; while true; do sleep 2; if [ $(CON) ]; then pdflatex $(OPTIONS) $(MAIN); $(CLEAN); fi; done;
