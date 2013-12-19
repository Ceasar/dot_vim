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

" Allow hidden buffer
set hidden 

set backspace=indent,eol,start  " backspace through everything in insert mode
