nnoremap <silent> <Leader>w <Cmd>BbyeDelete<CR>

augroup bbye_delete_nameless
    autocmd!
    autocmd BufRead * execute 'Bdelete nameless unmodified'
augroup END
