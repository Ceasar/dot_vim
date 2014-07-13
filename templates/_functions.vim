" Functions
"====================================
"
" Functions can be called via `:call myfunc()`.

function! DistractionFreeWriting()
    set wrap " make long lines wrap around to the next line
    set linebreak " break the lines on words rather than arbitrary characters
    set nolist " don't show list
    set noruler " don't show ruler
    " set nonumber " don't show line number
    set laststatus=0 " don't show status line
endfunction

" Correct indentation in a file
function! Indent()
    " Go to start of file
    normal gg
    " Indent (takes a motion)
    normal =
    " To end of file
    normal G
endfunction

" Strip trailing whitespace
function! Strip()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

" Configure vim for polling apps
function! Poll()
    " Do not make a backup before overwriting a file
    set nobackup
    " Do not make a backup before overwriting a file
    set nowritebackup
    " Don't create swapfiles
    set noswapfile
endfunction

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
set dictionary="/usr/dict/words"
