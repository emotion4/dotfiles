let g:startify_change_to_dir = 0
let g:startify_update_oldfiles = 1
let g:startify_fortune_use_unicode = 1
let g:startify_bookmarks = ['~/.vimrc']
let g:startify_lists = [
\ { 'type': 'files', 'header': ['	Recent'] },
\ { 'type': 'bookmarks', 'header': ['	Bookmarks'] }
\ ]
let s:startify_ascii_header = [
\ '           ▟▙             ',
\ '           ▝▘             ',
\ ' ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖ ',
\ ' ▝██  ██▘  ██  ██▛▜██▛▜██ ',
\ '  ▜█▙▟█▛   ██  ██  ██  ██ ',
\ '  ▝████▘   ██  ██  ██  ██ ',
\ '    ▀▀     ▀▀  ▀▀  ▀▀  ▀▀ ',
\ '',
\]
let g:startify_custom_header = map(s:startify_ascii_header + startify#fortune#quote(), '"   ".v:val')
let g:startify_custom_footer = ['   Alexander E. Dang (hyperpleXED)']

augroup startify_change_statusline
    autocmd!
    autocmd User StartifyReady let &l:stl = 'Startify'
augroup END

augroup startify_fix_shit
    autocmd!
    autocmd User StartifyReady setlocal buflisted
augroup END

function! s:open_startify()
    let l:first_window = winnr()
    execute '1 wincmd w'
    Startify
    for window in range(2, winnr('$'))
       execute window . ' wincmd w'
       BbyeDelete
    endfor
    execute l:first_window . ' wincmd w'
endfunction

augroup startify_1instance
    autocmd!
    autocmd User StartifyReady if len(filter(range(1, bufnr('$')), 'getbufvar(v:val, "&filetype") ==# "startify"')) > 1 | execute 'BbyeDelete' | endif
augroup END

augroup startify_autoopen
    autocmd!
    autocmd User BufBbye,WinDelete if empty(filter(range(1, bufnr('$')), 'buflisted(v:val)')) | call s:open_startify() | end
augroup END
