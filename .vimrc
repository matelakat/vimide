" Force 25 colors
set t_Co=256
" Force vim to do BCE (Background-Color-Erase)
set t_ut=
" Select dark colorscheme
set background=dark
colorscheme asmanian2
syntax on
filetype plugin on
set autoindent
set nowrap
set encoding=utf-8
set hlsearch
set sw=4
set cc=80
set tabstop=4
" use super for windows key, alt for alt
" map gn :wa<CR>:!xsetroot -solid yellow & xdotool key super+2 key ctrl+p key KP_Enter key super+1<CR><CR>
map gn :wa<CR>:!tmux set status-bg yellow & tmux send-keys -t 1 c-p enter<CR><CR>
map gs :wa<CR>:r !date<CR>I #: <esc><C-h>i
map ge o  
map gl :w<CR>:!pdflatex %<CR><CR>
set expandtab
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mak setfiletype mako
au BufNewFile,BufRead *.mako setfiletype mako
au BufNewFile,BufRead *.ftl setfiletype ftl
au BufNewFile,BufRead *.pp setfiletype puppet
au Bufread,BufNewFile *.feature setfiletype gherkin
so ~/vimfiles/plugin/py-coverage.vim

command GDiff !gitdiff
command GCommit !git commit -av

nnoremap gmh :PyCoverageHighlight<CR>
nnoremap gmc :PyCoverageClear<CR>
nnoremap gmq :PyCoverageSetQuickfix<CR>
nnoremap gml :PyCoverageSetLoclist<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
call matchadd('ExtraWhitespace', '\s\+$', 11)

" http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
" http://vim.wikia.com/wiki/Highlight_long_lines
" Consider this one, since WinEnter doesn't fire on the first window created
" when Vim launches.
" You'll need to set any options for the first window in your vimrc,
" or in an earlier VimEnter autocmd if you include this
autocmd VimEnter * let w:created=1

" highlight PyCoverageMissed gui=undercurl guisp=Orange
highlight PyCoverageMissed ctermbg=52

autocmd FileType python PyCoverageHighlight

" Example of how to use w:created in an autocmd
autocmd WinEnter * if !exists('w:created') | highlight ExtraWhitespace ctermbg=red guibg=red | call matchadd('ExtraWhitespace', '\s\+$', 11) | endif

" Pycoverage auto activation
autocmd VimEnter *.py let w:pyhighlighted=1
autocmd WinEnter *.py if !exists('w:pyhighlighted') | execute "PyCoverageHighlight" | endif

set guifont=Courier\ New:h15
