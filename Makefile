# Makefile for building the CV

# Variables
TEXFILE=cv-2024.tex
PDFFILE=cv-2024.pdf

# Default target
all: $(PDFFILE)

# Rule to build the PDF
$(PDFFILE): $(TEXFILE)
	xelatex $(TEXFILE)

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz

# Phony targets
.PHONY: all clean
