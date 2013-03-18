

augroup markdown
    " turn-on distraction free writing mode for markdown files
    autocmd BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
augroup END

augroup insertmode
    " Display unprintable characters with '^' and put $ after the line.
    autocmd InsertEnter * set list
    autocmd InsertLeave * set nolist
augroup END

augroup comments
    autocmd FileType haskell nnoremap <buffer> <localleader>c I//
    autocmd FileType javascript nnoremap <buffer> <localleader>c I--
    autocmd FileType python     nnoremap <buffer> <localleader>c I#
augroup END
