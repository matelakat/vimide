" Force 25 colors
set t_Co=256
" Force vim to do BCE (Background-Color-Erase)
set t_ut=
" Select dark colorscheme
set background=dark
colorscheme 256-jungle
syntax on
filetype plugin on
set autoindent
set nowrap
set encoding=utf-8
set hlsearch
set sw=4
set cc=80
map gn :wa<CR>:!xsetroot -solid yellow & xdotool key super+2 key ctrl+p key KP_Enter key super+1<CR><CR>
map gs :wa<CR>:r !date<CR>I #: <esc><C-h>i
map ge o  
set expandtab
au BufNewFile,BufRead *.mak setfiletype mako
au BufNewFile,BufRead *.mako setfiletype mako
au BufNewFile,BufRead *.ftl setfiletype ftl
au BufNewFile,BufRead *.pp setfiletype puppet
au Bufread,BufNewFile *.feature setfiletype gherkin
so ~/.vim/plugin/py-coverage.vim

nnoremap gmh :PyCoverageHighlight<CR>
nnoremap gmc :PyCoverageClear<CR>
nnoremap gmq :PyCoverageSetQuickfix<CR>
nnoremap gml :PyCoverageSetLoclist<CR>

" highlight PyCoverageMissed gui=undercurl guisp=Orange
highlight PyCoverageMissed ctermbg=52

autocmd FileType python PyCoverageHighlight
