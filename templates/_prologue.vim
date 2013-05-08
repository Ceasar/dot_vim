set shell=/bin/bash

" try to use pathogen
silent! call pathogen#infect()

"Use Vim defaults
set nocompatible

syntax enable

let g:syntastic_ocaml_camlp4r = 1

filetype off
" enables filetype detection
filetype on
" enable filetype specific plugins
filetype plugin on
filetype indent on

" Put swap files in .tmp
set backupdir=~/.tmp
set directory=~/.tmp

set spell spelllang=en_us " enable spell-check
set dictionary="/usr/share/dict/words"

" Allow hidden buffer
set hidden 

" Command-line completion operates in an enhanced mode. On pressing
" 'wildchar' (usually <Tab>) to invoke completion, the possible matches are
" shown just above the command line, with the first match highlighted
" overwriting the status line if there is one.)
set wildmenu

set backspace=indent,eol,start  " backspace through everything in insert mode
