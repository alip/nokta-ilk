INSTALL = install -p -m 600 -D

CONFIGS = \
	Makefile \
	Xresources-hayalet \
	gdbinit \
	gitconfig \
	gitignore \
	gitk \
	vimrc \
	zprofile \
	zshenv \
	zshrc \
	zshrc.local \
	zshrc.pre

default : all

all : $(CONFIGS)

clean :
	rm *~ || true

install-file-Xresources-hayalet : Xresources-hayalet
	test `hostname` != 'hayalet' || $(INSTALL) $< $(HOME)/.Xresources

install-file-% : %
	$(INSTALL) $* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )
