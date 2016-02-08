#!/bin/bash

#   Get the basedir of this file 
#   solution by http://stackoverflow.com/a/246128/530518
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#   Link vim dotfiles
rm ~/.vimrc
cp -r "$BASEDIR/.vimrc" ~/.vimrc

rm -rf ~/.vim
cp -r "$BASEDIR/.vim" ~/.vim

#   Fix terminator dotiles
mkdir -p ~/.config/terminator
rm ~/.config/terminator/config
cp "$BASEDIR/.config/terminator/config" ~/.config/terminator/config
