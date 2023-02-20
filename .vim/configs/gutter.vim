set signcolumn=yes
let &fillchars ..= ',eob: '

augroup gutter_terminal_no_sign
    autocmd!
    autocmd TerminalOpen * setlocal signcolumn=no
augroup END
