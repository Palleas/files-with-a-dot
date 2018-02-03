#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function configure_git {
    mkdir -p $HOME/.git
    ln -s $DIR/git/gitconfig $HOME/.gitconfig
    ln -s $DIR/git/gitignore $HOME/.gitignore
}

function configure_homebrew {
    brew bundle --file=$DIR/homebrew/Brewfile
}

function configure_vim {
	ln -s $DIR/vim/vimrc $HOME/.vimrc
	ln -s $DIR/vim $HOME/.vim
}

function configure_gpg {
    mkdir -p $HOME/.gnupg
    cp $DIR/gnupg/* $HOME/.gnupg
}
