
" Mappings
"====================================

let mapleader = ","
" let maplocalleader = "\\"

inoremap jk <esc>
" This is commeneted because ', ' is frequently typed!
" inoremap <leader><space> <esc>

" nnoremap <leader>ev :split $MYVIMRC<cr>
" nnoremap <leader>sv :source $MYVIMRC<cr>

" Surrounds
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>) viw<esc>a)<esc>hbi(<esc>lel

" Convenience
nnoremap H ^
nnoremap L $

" Training
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
