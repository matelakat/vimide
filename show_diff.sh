#!/bin/bash
set -u


function showdiff() {
    local dirname
    dirname="$1"
(
    cd "$dirname"
    for i in *; do
        diff -u ~/"$dirname"/$i $i
    done
)
}

showdiff bin
showdiff .vim/colors
showdiff .vim/plugin
diff -u ~/.vimrc .vimrc
