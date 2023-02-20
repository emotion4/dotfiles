set completeopt-=preview
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_auto_hover = ''
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_enable_semantic_highlighting = 1

nmap <Leader>h <Plug>(YCMHover)
nmap <Leader>O <Plug>(YCMFindSymbolInDocument)
nmap <Leader>t <Plug>(YCMFindSymbolInWorkspace)
nnoremap <silent> <F12> <Cmd>YcmCompleter GoToDefinition <bar> YcmCompleter GoToInclude<CR>
nnoremap <silent> <Leader><F12> <Cmd>YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <S-F12> <Cmd>YcmCompleter GoToReferences<CR>
nnoremap <F2> <Cmd>execute 'YcmCompleter RefactorRename' input('Rename to: ')<CR>
nnoremap <silent> <Leader>f <Cmd>YcmCompleter Format<CR>
nnoremap <silent> <Leader>. <Cmd>YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>m <Cmd>YcmDiags<CR>

augroup ycm_keep_quickfix
    autocmd!
    autocmd User YcmQuickFixOpened autocmd! ycmquickfix WinLeave
augroup END

call prop_type_add( 'YCM_HL_class', { 'highlight': 'LspCxxHlSymClass' } )
call prop_type_add( 'YCM_HL_struct', { 'highlight': 'LspCxxHlSymStruct' } )
call prop_type_add( 'YCM_HL_enum', { 'highlight': 'LspCxxHlSymEnum' } )
call prop_type_add( 'YCM_HL_namespace', { 'highlight': 'LspCxxHlSymNamespace' } )
call prop_type_add( 'YCM_HL_typeParameter', { 'highlight': 'LspCxxHlSymTypeParameter' } )
