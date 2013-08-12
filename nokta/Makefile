INSTALL = install -p -m 600 -D

CONFIGS = \
	Makefile \
	zprofile \
	zshenv \
	zshrc \
	zshrc.local \
	zshrc.pre

default : all

all : $(CONFIGS)

clean :
	rm *~ || true

install-file-% : %
	$(INSTALL) $* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )
