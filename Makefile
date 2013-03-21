all:	clean bib pdf

pdf: 
	latex barcelo_research_plan.tex
	latex barcelo_research_plan.tex
	#dvipdf barcelo_research_plan.dvi
	dvips -o barcelo_research_plan.ps -Ppdf -G0 -t a4 barcelo_research_plan.dvi
	ps2pdf -sPAPERSIZE=a4 -dEmbedAllFonts=true barcelo_research_plan.ps
	evince barcelo_research_plan.pdf &

bib:	
	latex barcelo_research_plan.tex
	bibtex barcelo_research_plan
	latex barcelo_research_plan.tex
					
clean:
	rm -f barcelo_research_plan.aux barcelo_research_plan.log barcelo_research_plan.blg barcelo_research_plan.bbl barcelo_research_plan.out barcelo_research_plan.dvi barcelo_research_plan.ps barcelo_research_plan.pdf barcelo_research_plan.fff barcelo_research_plan.lof

