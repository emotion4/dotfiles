if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore *.mp4 -l -g ""'
endif

let g:fzf_layout = { 'up': '30%' }

nnoremap <silent> <Leader>p <Cmd>Files<CR>
nnoremap <silent> <Leader>kp <Cmd>Buffers<CR>
