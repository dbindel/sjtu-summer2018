TEXINPUTS:=.

HW= \
	pdf/2018-06-12.pdf \
	pdf/2018-06-13.pdf \
	pdf/2018-06-15.pdf

.PHONY: all copy
all: $(HW)

pdf/%.pdf: tex/%.tex
	xelatex -output-dir pdf $<
	xelatex -output-dir pdf $<

clean:
	rm -f pdf/*.aux pdf/*.log pdf/*.out
	rm -f pdf/*.nav pdf/*.snm pdf/*.toc
	rm -f pdf/*.vrb

distclean: clean
	rm -f pdf/*.pdf

copy:
	mkdir -p ../web/hw
	cp $(HW) ../web/hw
