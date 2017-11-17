call plug#begin('~/.local/share/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tomlion/vim-solidity'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'hashivim/vim-terraform'
call plug#end()

syntax enable
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
" vim-go settings https://github.com/fatih/vim-go-tutorial
let g:go_fmt_command = "goimports"
let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1

set t_Co=256
set mouse=a
set shiftwidth=2
set tabstop=2
set colorcolumn=80
set cursorline
set cursorcolumn
set expandtab
set smartindent
set number
set undodir=/tmp
filetype plugin indent on

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>
map <F2> :NERDTreeToggle<CR>
