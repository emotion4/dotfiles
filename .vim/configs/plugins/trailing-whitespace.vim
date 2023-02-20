let g:extra_whitespace_ignored_filetypes = ['startify']

augroup tw_fixwhitespace_on_save
    autocmd!
    autocmd BufWritePre * FixWhitespace
augroup END
