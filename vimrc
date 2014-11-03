"Use vundle to mananger all vim plugin
"To start the vim just follow installation of Vundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" then use this .vimrc as your vim config file.
" in vim use this command to start plugin installation.
" :BundleInstall
"
"
"
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'scrooloose/syntastic'
" Bundle 't9md/vim-quickhl'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
" Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

"powerline config
set laststatus=2
set t_Co=256   
set encoding=utf-8  
set fillchars+=stl:\ ,stlnc:\

" other config
set nu
set mouse=a
set tabstop=4
let mapleader = ","
let g:mapleader = ","

"  <F3> turn on/off line number display
nmap <F3> :set invnumber<CR>

"  <F4> turn on/off tagbar
nmap <F4> :TagbarToggle<CR>

"set paste, in insert mode, press<F5> to go to paste mode
set pastetoggle=<F5>

" disable paste mode when leaving insert mode
au InsertLeave * set nopaste
