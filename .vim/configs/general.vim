syntax on
filetype plugin indent on

if has("gui_running")
    set guifont=Iosevka\ Nerd\ Font\ Mono\ 15
    set guicursor+=i:ver100-Cursor
    set guioptions-=mrL
    set guioptions-=T
endif

if has('clipboard')
    if has('unnamedplus')
        set clipboard=unnamed,unnamedplus
    else
        set clipboard=unnamed
    endif
endif

if has('terminal')
    set termwinsize=10*0
endif

set hlsearch
set ignorecase
set smartcase
set incsearch
set wildmenu
set wildoptions+=fuzzy
set wildignore+=*.o,*.obj
set mouse=a
set shortmess=a
set switchbuf=usetab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set cindent
set cinoptions+=g0
set hidden
set splitbelow
set pumheight=10
set encoding=utf-8
set shell=/bin/zsh
set pastetoggle=<F2>
let mapleader = "\<Space>"
colorscheme codedark

set noswapfile
set nobackup
set undofile
let &undodir = expand('~/.vim/undo')
if !isdirectory(&undodir) | call mkdir(&undodir, "p") | endif

noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Space> <Nop>
nnoremap Y y$
tnoremap <C-w>p <C-w>"+
nnoremap <silent> <Leader><PageUp> <Cmd>bp<CR>
nnoremap <silent> <Leader><PageDown> <Cmd>bn<CR>
nnoremap <silent> <Leader>, <Cmd>e ~/.vimrc<CR>
nnoremap <silent> <Leader>` <Cmd>term<CR>
nnoremap <silent> <Leader>\ <Cmd>vs<CR>
nnoremap <silent> <Leader>k\ <Cmd>sp<CR>

augroup autosource_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC,~/.vim/plug.vim,~/.vim/config.vim,~/.vim/configs/*.vim source $MYVIMRC | call feedkeys("\<C-l>")
augroup END

augroup open_quickfix_after_make
    autocmd!
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow
augroup END

set number
augroup number_toggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i"                | setlocal rnu        | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                                 | setlocal nornu      | endif
    autocmd BufEnter,WinEnter                         * if bufname("%:.:r") ==# '_ycm_filter_' | setlocal nonu nornu | endif
    autocmd TerminalOpen                              *						                     setlocal nonu nornu
augroup END

augroup set_terminal_unlisted
    autocmd!
    autocmd TerminalOpen * setlocal nobuflisted
augroup END
