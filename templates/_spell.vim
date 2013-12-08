
" Spelling
" ========
"
" This section implements commands to aid spelling.
"
" Tips:
"
" - Words can be added to the dictionary via ``zg`` and removed via ``zw``.

" enable spell-check
set spell spelllang=en_us

set dictionary="/usr/share/dict/words"

abbreviate w/ with
abbreviate betw between
abbreviate teh the
abbreviate thier their

" Fix misspelled words
inoremap <leader>= <esc>[s1z=`]a
