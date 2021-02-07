" Plugins - Vim Plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'jdsimcoe/hyper.vim'

call plug#end()

" My config
set guicursor=
set number
set tabstop=2
set ignorecase
colorscheme hyper
hi StatusLine ctermbg=255 ctermfg=16
hi LineNr ctermfg=255

