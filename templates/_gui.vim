
" Graphical interface options
"""""""""""""""""""""""""""""

" Enable the use of the mouse. Only works for certain terminals.
" The mouse can be enabled for different modes:
"   n   Normal mode
"   v   Visual mode
"   i   Insert mode
"   c   Command-line mode
"   a   All four modes modes
set mouse=a

" Use solarized
silent! colorscheme solarized

if exists("g:colors_name") &&  g:colors_name  ==? "solarized"
    set background=dark
    let g:solarized_contrast="high"
endif

if exists("&colorcolumn")
    "color of ruler @ 80 col, 2=green, 0=light gray
    set colorcolumn=81
    highlight ColorColumn ctermbg=2
endif

" Automatically wrap around at the 80 character limit.
"
" Maximum width of text that is being inserted. A longer line will be broken
" after white space to get this width. A zero value disables this. 'textwidth'
" is set to 0 when the paste option is set.
set textwidth=0

" When on, lines longer than the width of the window will wrap and displaying
" continues on the next line. When off, lines will not wrap and only part of
" long lines will be displayed. When the cursor is moved to a part that is not
" shown, the screen will scroll horizontally.
set nowrap

" Number of columns on the screen. Normally this is set by the terminal
" initialization and does not have to be set by hand.
"set columns=80

" Precede each line with its line number.
set number

" Show the line number relative to the line with the cursor in front of each
" line.
"set relativenumber

" Show the line and column number of the cursor position, separated by a
" comma.
set ruler

" Show partial commands in the last line of the screen
set showcmd

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=5
