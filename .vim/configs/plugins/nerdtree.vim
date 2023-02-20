let g:NERDTreeWinSize = 30
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeHijackNetrw = 0

nnoremap <silent> <Leader>b <Cmd>NERDTree<CR>

augroup nerdtree_autoclose
    autocmd!
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif
augroup END

augroup nerdtree_fix_funny
    autocmd!
    autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup END
