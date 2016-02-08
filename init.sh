#!/bin/bash

#   Get the basedir of this file 
#   solution by http://stackoverflow.com/a/246128/530518
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#   Link vim dotfiles
ln -s "$BASEDIR/.vimrc" ~/.vimrc
ln -s "$BASEDIR/.vim" ~/.vim
