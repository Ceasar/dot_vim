.PHONY : all install

SRC = templates
SRCS = $(SRC)/_prologue.vim \
	   $(SRC)/_abbreviations.vim \
	   $(SRC)/_autocommands.vim \
	   $(SRC)/_backup.vim \
	   $(SRC)/_functions.vim \
	   $(SRC)/_gui.vim \
	   $(SRC)/_indentation.vim \
	   $(SRC)/_mappings.vim \
	   $(SRC)/_search.vim


all: .vimrc

.vimrc: $(SRCS)
	cat $(SRCS) > .vimrc

install: .vimrc
	ln -is .vimrc ~/.vimrc