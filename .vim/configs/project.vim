let $CC = 'gcc'
let $CFLAGS = '-std=c11'
let $CXX = 'g++'
let $CXXFLAGS = '-std=c++17 -ggdb3 -O0 -pipe -static'
let $LDLIBS = '-lm'

nnoremap <expr> <silent> <Leader>B !empty(FindRootDirectory()) ? '<Cmd>wa <bar> make<CR>' : '<Cmd>w <bar> make %:.:r<CR>'
nnoremap <expr> <silent> <Leader><F5> !empty(FindRootDirectory()) ? '<Cmd>term make run<CR>' : '<Cmd>term ./%:.:r<CR>'
nnoremap <silent> <Leader><F7> <Cmd>w <bar> execute '!' . $CXX . ' ' . $CXXFLAGS . ' ' . $LDLIBS . ' ' . expand('%') . ' ' . '-o' . ' ' . expand('%:.:r')<CR>
