INSTALL = install -p -m 600 -D

CONFIGS = \
	Makefile \
	asoundrc-hayalet \
	conkyrc-hayalet
	Xresources-hayalet \
	ackrc \
	dir_colors \
	enchant \
	festivalrc \
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

install-file-asoundrc-hayalet : asoundrc-hayalet
	test `hostname` != 'hayalet' || $(INSTALL) $< $(HOME)/.asoundrc

install-file-conkyrc-hayalet : conkyrc-hayalet
	test `hostname` != 'hayalet' || $(INSTALL) $< $(HOME)/.conkyrc

install-file-Xresources-hayalet : Xresources-hayalet
	test `hostname` != 'hayalet' || $(INSTALL) $< $(HOME)/.Xresources

install-file-% : %
	$(INSTALL) $* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )
