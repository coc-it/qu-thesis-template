SHELL = /bin/sh
DIR=build
out_file_name="thesis"
$(shell mkdir -p $(DIR))

all: main.pdf

main.pdf: *.tex *.bib
	pdflatex -output-directory=$(DIR) -jobname=$(out_file_name) 00-main.tex
	bibtex $(DIR)/$(out_file_name)
	touch 00-main.tex
	pdflatex -output-directory=$(DIR) -jobname=$(out_file_name) 00-main.tex
	pdflatex -output-directory=$(DIR) -jobname=$(out_file_name) 00-main.tex
	pdflatex -output-directory=$(DIR) -jobname=$(out_file_name) 00-main.tex

short: *.tex 
	pdflatex -output-directory=$(DIR) -jobname=$(out_file_name) 00-main.tex

clean:
	if (rm -f $(DIR)/*.pdf $(DIR)/*.lof $(DIR)/*.lot $(DIR)/*.out $(DIR)/*.log $(DIR)/*.aux $(DIR)/*.bbl $(DIR)/*.blg $(DIR)/*.toc $(DIR)/*.dvi $(DIR)/*.ps $(DIR)/*.brf $(DIR)/*.lbl $(DIR)/*.acr) then :; fi