
" Indentation
"====================================

" Number of spaces that a <Tab> in the file counts for.
" > This affects how existing text displays.
set tabstop=4

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
" To insert a real tab when 'expandtab' is on, use CTRL-V<Tab>.
" When true, inserts 'softtabstop' spaces instead of a tab on <TAB>
set expandtab

" Number of spaces to use for each step of (auto)indent. Used for
" `cindent`, `>>`, `<<`, etc.
set shiftwidth=4

" The kind of folding used for the current window.
" - indent - Lines with equal indent form a fold.
set foldmethod=indent

" Changes how <TAB> is interpreted depending on where the cursor is.
" If true, pressing <TAB> inserts indentation according to 'shiftwidth'
" at the beginning of a line, whereas 'tabstop' and 'softtabstop' are
" used everywhere else.
set smarttab

" Copy indent from current line when starting a new line.
set autoindent

" Copy the structure of the existing lines indent when autoindenting a new
" line.
set copyindent

" Automatically indent when it makes sense
" Do smart autoindenting when starting a new line.
" Works for C-like programs, but can also be used for other languages.
" An indent is automatically insert:
" - After a line ending in '{'.
" - After a line starting with a keyword from 'cinwords'.
" - Before a line starting with '}'
set smartindent


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>


