TEXINPUTS:=.

LEC= \
	pdf/background.pdf \
	pdf/2018-06-12.pdf \
	pdf/2018-06-13.pdf \
	pdf/2018-06-14.pdf \
	pdf/2018-06-15.pdf \
	pdf/2018-06-19.pdf \
	pdf/2018-06-20.pdf \
	pdf/2018-06-21.pdf \
	pdf/2018-06-22.pdf \
	pdf/2018-06-26.pdf \
	pdf/2018-06-27.pdf \
	pdf/2018-06-28.pdf \
	pdf/2018-07-03.pdf \
	pdf/2018-07-04.pdf \
	pdf/2018-07-05.pdf \
	pdf/2018-07-06.pdf 

.PHONY: all copy
all: $(LEC)

pdf/%.pdf: notes/%.tex
	xelatex -output-dir pdf $<
	xelatex -output-dir pdf $<

clean:
	rm -f pdf/*.aux pdf/*.log pdf/*.out
	rm -f pdf/*.nav pdf/*.snm pdf/*.toc 
	rm -f pdf/*.vrb

distclean: clean
	rm -f pdf/*.pdf

copy:
	mkdir -p ../web/lec
	cp $(LEC) ../web/lec
