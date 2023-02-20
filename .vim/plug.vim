" disable netrw (ew)
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'romainl/vim-cool'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'liuchengxu/vim-which-key'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'puremourning/vimspector'
Plug 'bronson/vim-trailing-whitespace'
Plug 'farmergreg/vim-lastplace'
Plug 'romainl/vim-qf/'
Plug 'terryma/vim-expand-region'
Plug 'svermeulen/vim-cutlass'
Plug 'hollowedCED/close-buffers.vim'
Plug 'hollowedCED/vim-buftabline'
Plug 'hollowedCED/vim-code-dark'
Plug 'hollowedCED/vim-bbye'
Plug 'hollowedCED/vim-commentary'
call plug#end()
