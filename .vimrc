" Setting the theme
colorscheme lavish

filetype plugin indent on

" have syntax highlighting in terminals that support it
if has('syntax') && (&t_Co > 2)
   syntax on
endif

set mouse=r
"have command-line completion <TAB> for filenames,help topics, option names
" have further <Tab>s cycle through the possibilities:
set nocp
set wildmode=list:longest,full

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" show matching parens
set showmatch
"don't let anything override my .vimrc
set nomodeline

" use indents of 4 spaces, and have them copied down lines:
" set shiftwidth=4
" set tabstop=4
set shiftwidth=2
set tabstop=2
set shiftround
set expandtab
" This adds an indent for every { } combination not as
" smart as indent
set smartindent

" Show line numbers
set number

" use indenting when writing code
" filetype indent on
filetype indent plugin on

" Commenting blocks of code
" let g:EnhCommentifyUserBindings = 'yes'

" , #perl # comments
map ,# :s/^/#/<CR>

" ,/ C/C++/C#/Java // comments

map ,/ :s/^/\/\//<CR>

" ,< HTML comment
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>

" c++ java style comments
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>
