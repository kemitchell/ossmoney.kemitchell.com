GRAPHS=$(wildcard *.dot)

SVGS=$(GRAPHS:.dot=.svg)

all: $(SVGS)

%.svg: %.dot
	dot -Tsvg $< > $@
