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

"auto complete plugin 
Plugin 'Valloric/YouCompleteMe'

"Quickfix enter: to compile c++ and see the compile errors press <F3> and enter
Plugin 'yssl/QFEnter'

" Undo managment
Plugin 'mbbill/undotree'

" NERDTree
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore = ['\.o$'] 

" Auto-pairs (to complete {, (, [, etc.)
Plugin 'jiangmiao/auto-pairs'

" Plugin to change btw .h and .c
Plugin 'ericcurtin/CurtineIncSw.vim'

" Plugin to show a status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin to manage Git
Plugin 'tpope/vim-fugitive'
" Fugitive is required for Conflicted
Plugin 'christoomey/vim-conflicted'

" Plugin for do quick snipest """"""""""""""""""""""""""""""""""""""""""
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsSnippetDirectories=["PersonalUltisnips", "UltiSnips"]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin to add comments
Plugin 'tpope/vim-commentary'
" Toggle comments with <SPACE>c
nmap <SPACE>c :Commentary<CR>
vmap <SPACE>c :Commentary<CR>
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s

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

"Line number and line number modes
set number
nmap <SPACE>r :set relativenumber<CR>
nmap <SPACE>n :set norelativenumber<CR>

"Show all the coincidence in searh"
:set hlsearch
nmap <F6> :nohlsearch<CR>

"Highlight cursor"
hi CursorLine   ctermbg=green
set cursorline!

set wildmenu

"Insert line without leaving normal mode"
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Color column at 110 character"
set colorcolumn=102
highlight ColorColumn ctermbg=darkblue

" Identation and other stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" to show the tabs
set list
set listchars=tab:>-

"infinite undo
nnoremap <F5> :UndotreeToggle<cr>
set undodir=~/.undodir/
set undofile

" Disable preview: this avoids the suggestion in structures of the
" youcompleteme
set completeopt-=preview

" Save and exit in normal mode with Ctrl-c
nmap <C-c> :wq<CR>

" in normal mode F2 will save the file
nmap <F2> :w<CR>

" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>

" build using makeprg with <F4>
map <F4> :ccl<CR> :w!<CR> :make<CR> :cw<CR>
imap <F4> <ESC> :ccl<CR> :w! :make<CR> :cw<CR>

" Stay in same word while searching
nmap * *N
"go to the shell
map gs :sh <CR>

"paste and keep word
"vmap <SPACE>p: p<ESC>gvy

" Close VIM when only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Use Ctrl-n in normal mode to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Navigate between windows using <SPACE>+Arrows
nmap <SPACE><Up> <C-w>k
nmap <SPACE><Down> <C-w>j
nmap <SPACE><Left> <C-w>h
nmap <SPACE><Right> <C-w>l

nmap <SPACE>k <C-w>k
nmap <SPACE>j <C-w>j
nmap <SPACE>h <C-w>h
nmap <SPACE>l <C-w>l

" Search and replace
nmap <SPACE>H "zyiw:%s/<C-r>z//gc<LEFT><LEFT><LEFT>

" c++ specifics config
" seach all occurrences of a expresion recursivelly in cpp and h
nmap <F7> "zyiw:vimgrep <C-r>z **/*.cpp<CR> :cw<CR>
nmap <F8> "zyiw:vimgrep <C-r>z **/*.h<CR> :cw<CR>

" Change btw source and header by pressing <F1>
map <F3> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" automatically define function in cpp
map <SPACE>F yy<F3>G<CR>p==:w!<CR><F3>/class<CR>wyw<F3>G%%BPa::<ESC>%ls{<CR><ESC>dd

" Copy to system clipboard by default. You need to have clipboard feature flag
" enable to this to work. To check it, just execute vim --version and look for
" clipboard. If we have + is fine, if we have - we will need to install
" something extra. In the case of ubuntu, just install vim-gnome
set clipboard=unnamedplus

"Thesis helpfull functions
nmap gi 141ggH
