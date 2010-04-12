PDFLATEX = pdflatex
PDFNAME = diploma
RM = rm -f
GREP = grep

all: $(PDFNAME).pdf

$(PDFNAME).pdf: *.tex
	$(PDFLATEX) $(PDFNAME)
	while $(GREP) 'Label(s) may have changed' $(PDFNAME).log > /dev/null 2>&1 ; do \
		$(PDFLATEX) $(PDFNAME) ; \
	done

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out *.toc $(PDFNAME).pdf
