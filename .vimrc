execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
set mouse=a
set shiftwidth=4
set tabstop=4
set colorcolumn=80
set cursorline
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
set rtp+=~/workspace/powerline/powerline/bindings/vim
