default: all

all:
	$(MAKE) -C nokta all
.PHONY: all

clean:
	$(MAKE) -C nokta clean
.PHONY: clean

install:
	$(MAKE) -C nokta install
	bash -c ./vim-uzak.bash
.PHONY: install

update-modules:
	git submodule foreach --recursive git pull origin master
.PHONY: update-modules
