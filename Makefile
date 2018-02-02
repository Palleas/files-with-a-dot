ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

install:
	-ln -s $(ROOT_DIR)/vim/vimrc $(HOME)/.vimrc
	-ln -s $(ROOT_DIR)/vim $(HOME)/.vim

