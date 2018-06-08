TEXINPUTS:=.

LEC= \
	pdf/2018-06-11.pdf \
	pdf/2018-06-12.pdf \
	pdf/2018-06-14.pdf \
	pdf/2018-06-15.pdf

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
	#cp $(LEC) ../web/lec
