syntax on
filetype plugin indent on

set hlsearch
set incsearch
set ic
set showmatch

set nowrap

set nobackup
set nowritebackup
set noswapfile

set ai
set nosi
set noci
set tabstop=4
let &shiftwidth = &tabstop
let &softtabstop = &tabstop
set et

set textwidth=110
let &wrapmargin= &textwidth

map <Space> <PageDown>
map <Backspace> <PageUp>

set ruler

let mapleader = ","

hi ColorColumn     guibg=#444444
hi ColorColumn     ctermbg=7

" Toggle colorcolumn
function! ToggleColorColumn()
    if &colorcolumn == 0
        " Draw the color column wherever wrapmargin is set
        let &colorcolumn = &wrapmargin
    else
        let &colorcolumn = 0
    endif
endfunction

command! ToggleColorColumn call ToggleColorColumn()
noremap <leader>l :ToggleColorColumn<cr>
let &colorcolumn = &wrapmargin

" Show trailing whitespace
hi TrailingWhitespace guibg=#CCCCCC
hi TrailingWhitespace ctermbg=1
match TrailingWhitespace /\s\+$/
autocmd BufWinEnter * match TrailingWhitespace /\s\+$/
autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match TrailingWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! StripTrailingWhitespace()
    %s/\s\+$//
endfunction
command! StripTrailingWhitespace call StripTrailingWhitespace()
noremap <leader>w :StripTrailingWhitespace<cr>
