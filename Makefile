PDFLATEX = pdflatex
PDFNAME = diploma
RM = rm -f

all: $(PDFNAME).pdf

$(PDFNAME).pdf: *.tex
	$(PDFLATEX) $(PDFNAME)

.PHONY: clean
clean:
	$(RM) *.aux *.log *.toc $(PDFNAME).pdf
