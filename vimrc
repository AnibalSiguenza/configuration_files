"Begining of Vundle section"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" NERDTree
Plugin 'scrooloose/nerdtree'
" Auto-pairs (to complete {, (, [, etc.)
Plugin 'jiangmiao/auto-pairs'
" Plugin to change btw .h and .c
Plugin 'ericcurtin/CurtineIncSw.vim'
" Plugin to show a status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin to manage Git
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"End of Vundle section"

" Show the status bar all the time
set laststatus=2
" Use powerline fonts with the status bar
let g:airline_powerline_fonts = 1
" Define theme status bar
let g:airline_theme='light'

"Line number"
set number

"Highlight cursor"
hi CursorLine   ctermbg=green
set cursorline!

set wildmenu

"Insert line without leaving normal mode"
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Color column at 110 character"
set colorcolumn=150
highlight ColorColumn ctermbg=darkblue

" Identation and other stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Save and exit in normal mode with Ctrl-c
nmap <C-c> :wq<CR>

"Making the F keys functions"
" Change btw source and header by pressing <F1>
nmap <F3> :call CurtineIncSw()<CR>
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
" build using makeprg with <F7>
map <F7> :make<CR>


" Close VIM when only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Use Ctrl-n in normal mode to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>
