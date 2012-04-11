"colorscheme lavish
colorscheme mayansmoke
syntax on
set t_Co=256
set background=light
set mouse=r
set nocp
set wildmode=list:longest,full
set showmode
set showcmd
set showmatch
set nomodeline
set shiftwidth=2
set tabstop=2
set shiftround
set expandtab
set smartindent
set number
filetype indent plugin on
map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>
