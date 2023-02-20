function! s:window_delete(bang, args)
    if !empty(a:args) && a:args !~# '^\d\+$'
        return
    endif

    let l:args = empty(a:args) ? winnr() : a:args
    let l:bufnr = winbufnr(l:args)
    let l:other_windows = len(filter(range(1, winnr('$')), 'v:val != l:args && winbufnr(v:val) == winbufnr(l:args)'))

    if winnr('$') == 1 || bufname(l:bufnr) ==# "[Command Line]"
        quit
    endif

    if l:other_windows == 0 && bufname(l:bufnr) !=# "[Command Line]"
        execute 'bdelete' . a:bang . ' ' . l:bufnr
    endif

    if l:other_windows > 0
        quit
    endif

    if exists('#User#WinDelete')
        exe 'doautocmd User WinDelete'
    endif
endfunction

command! -bang -nargs=? Wdelete :call s:window_delete('<bang>', <q-args>)
command! -bang -nargs=? Wd :Wdelete<bang> <args>
