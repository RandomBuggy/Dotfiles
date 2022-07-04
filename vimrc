"call plug#begin(~/.vim/plugged/)
    "plug 'scrooloose/syntastic'
    "plug 'scrooloose/nerdtree'
    "plug 'flazz/vim-colorschemes'
    "plug 'ervandew/supertab'

"call plug#end()
"packloadall
set nocompatible
set number
set relativenumber
set nu
set linespace=2
filetype on
filetype plugin on
filetype plugin indent on
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set signcolumn=yes
set scrolloff=8
set spell
set showmatch
set matchpairs+=<:> "Use % to jump between pairs
set encoding=utf-8
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
:map <C-v> :NERDTree
"syntastic configuration 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd BufNewFile *.c 0r ~/.vim/templates/skel.c
autocmd BufWinEnter *.c call cursor(5, 5)
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skel.cpp
autocmd BufWinEnter *.cpp call cursor(6, 5)
autocmd BufNewFile *.html 0r ~/.vim/templates/skel.html
autocmd BufWinEnter *.html call cursor(7, 16)
autocmd BufNewFile *.java 0r ~/.vim/templates/skel.java
autocmd BufWinEnter *.java call cursor(1, 14)
autocmd BufNewFile *.asm 0r ~/.vim/templates/skel.asm
autocmd BufWinEnter *.asm call cursor(1, 3)
set clipboard=unnamed
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
