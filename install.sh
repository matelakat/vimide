#!/bin/bash
set -e
set -u
set -x
mkdir -p ~/bin
cp bin/* ~/bin/
mkdir -p ~/vimfiles/colors
cp .vim/colors/* ~/vimfiles/colors/
mkdir -p ~/vimfiles/plugin/
cp .vim/plugin/* ~/vimfiles/plugin/
mkdir -p ~/vimfiles/syntax/
cp .vim/syntax/* ~/vimfiles/syntax/
cp .vimrc ~/
cp .tmux.conf ~/

if ! grep -q mlakatrc ~/.bashrc; then
    echo ". ~/bin/mlakatrc" >> ~/.bashrc
fi
