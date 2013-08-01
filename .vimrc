syntax on
colorscheme 256-jungle
filetype plugin on
set autoindent
set nowrap
set encoding=utf-8
set hlsearch
set sw=4
set cc=80
map gn :wa<CR>:!xsetroot -solid yellow & xdotool key super+2 key ctrl+p key KP_Enter key super+1<CR><CR>
set expandtab
au BufNewFile,BufRead *.mak setfiletype mako
au BufNewFile,BufRead *.mako setfiletype mako
au BufNewFile,BufRead *.ftl setfiletype ftl
au BufNewFile,BufRead *.pp setfiletype puppet
au Bufread,BufNewFile *.feature setfiletype gherkin

