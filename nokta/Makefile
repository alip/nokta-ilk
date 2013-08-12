INSTALL = install -p -m 600 -D

CONFIGS = \
	Makefile \
	asoundrc-hayalet \
	ackrc \
	dir_colors \
	enchant \
	festivalrc \
	gdbinit \
	gitconfig \
	gitignore \
	gitk \
	hgrc \
	tmux.conf \
	vimrc \
	wgetpaste.conf \
	zprofile \
	zshenv \
	zshrc \
	zshrc.local \
	zshrc.pre

default : all

all : $(CONFIGS)

clean :
	rm *~ || true

install-file-asoundrc-hayalet : asoundrc-hayalet
	test `hostname` != 'hayalet' || $(INSTALL) $< $(HOME)/.asoundrc

install-file-% : %
	$(INSTALL) $* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )
