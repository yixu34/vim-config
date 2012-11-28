syntax on
filetype plugin indent on

set hlsearch
set incsearch
set ic
set nobackup
set nowrap

set ai
set nosi
set noci
set sw=4
set ts=4
set noet
set softtabstop=4
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

" Show extra whitespace
hi ExtraWhitespace guibg=#CCCCCC
hi ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
