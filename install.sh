#!/bin/bash
set -e
set -u
set -x
cp bin/* ~/bin/
cp .vim/colors/* ~/.vim/colors/
mkdir -p ~/.vim/plugin/
cp .vim/plugin/* ~/.vim/plugin/
cp .vimrc ~/
