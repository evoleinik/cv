# Makefile for building the CV

# Variables
TEXFILE=cv-2026.tex
PDFFILE=cv-2026.pdf
PNGFILE1=cv-2026-1.png
PNGFILE2=cv-2026-2.png

# Default target
all: $(PDFFILE) $(PNGFILE1) $(PNGFILE2)

# Rule to build the PDF
$(PDFFILE): $(TEXFILE)
	xelatex $(TEXFILE)

# Rules to convert PDF pages to high quality PNGs
$(PNGFILE1): $(PDFFILE)
	magick convert -density 300 $(PDFFILE)[0] -quality 100 $(PNGFILE1)

$(PNGFILE2): $(PDFFILE)
	magick convert -density 300 $(PDFFILE)[1] -quality 100 $(PNGFILE2)

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.pdf *.png

# Phony targets
.PHONY: all clean
