syntax on
colorscheme 256-jungle
filetype plugin on
set autoindent
set nowrap
set encoding=utf-8
set hlsearch
set sw=4
set cc=80
map gn :wa<CR>:!tmux send-keys -t 1 C-p C-m<CR><CR>
map gci :!svn ci % -m "
map gadd :!svn add % -m "
map gkt :!python ci/pep8.py %
map gp :!python %
map gl :!pylint % \| less
map gd :!svn diff % \| less
set expandtab
au BufNewFile,BufRead *.mak setfiletype mako
au BufNewFile,BufRead *.mako setfiletype mako
au BufNewFile,BufRead *.ftl setfiletype ftl
au Bufread,BufNewFile *.feature setfiletype gherkin

