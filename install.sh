#!/bin/bash
set -e
set -u
set -x
mkdir -p ~/bin
cp bin/* ~/bin/
mkdir -p ~/.vim/colors
cp .vim/colors/* ~/.vim/colors/
mkdir -p ~/.vim/plugin/
cp .vim/plugin/* ~/.vim/plugin/
cp .vimrc ~/
