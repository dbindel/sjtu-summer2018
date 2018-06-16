TEXINPUTS:=.

HW= \
	pdf/2018-06-12.pdf \
	pdf/2018-06-13.pdf \
	pdf/2018-06-15.pdf

HWS= \
	pdf/2018-06-12s.pdf \
	pdf/2018-06-13s.pdf \
	pdf/2018-06-15s.pdf

.PHONY: all sol copy
all: $(HW)

sol: $(HWS)

pdf/%.pdf: tex/%.tex
	xelatex -output-dir pdf $<
	xelatex -output-dir pdf $<

pdf/%.pdf: texs/%.tex
	xelatex -output-dir pdf $<
	xelatex -output-dir pdf $<

clean:
	rm -f pdf/*.aux pdf/*.log pdf/*.out
	rm -f pdf/*.nav pdf/*.snm pdf/*.toc
	rm -f pdf/*.vrb

distclean: clean
	rm -f pdf/*.pdf

copy: $(HW)
	mkdir -p ../web/hw
	cp $(HW) ../web/hw
