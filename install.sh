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
cp .tmux.conf ~/

if ! grep -q mlakatrc ~/.bashrc; then
    echo ". ~/bin/mlakatrc" >> ~/.bashrc
fi
