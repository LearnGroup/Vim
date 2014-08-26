set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"plugins
call vundle#begin()
Plugin 'dimasg/vim-mark'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/vimproc.vim'
Plugin 'lukerandall/haskellmode-vim'

"haskell only
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'

"golang only
Plugin 'Blackrush/vim-gocode'

call vundle#end()

syntax on
filetype plugin on
filetype indent on

set completeopt+=preview,longest
set fileencodings=ucs-bom,utf-8,cp936,latin-1,gbk,gb18030
set helplang=cn
set clipboard=unnamed
set shiftwidth=2
set tabstop=2
set expandtab
set nobackup
set noswapfile
set nowb
set backspace=start,indent,eol
set nu!
set autoindent
set smartindent
set wrap
set nocompatible
set hlsearch
set incsearch

set noerrorbells
set novisualbell
set ruler
set autoindent
set cindent
set preserveindent
set copyindent
set smarttab                  
set tabstop=4               
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a

"ycm settings

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers = {
\   'c' : ['->', '.'],
\   'objc' : ['->', '.'],
\   'ocaml' : ['.', '#'],
\   'cpp,objcpp' : ['->', '.', '::'],
\   'perl' : ['->'],
\   'php' : ['->', '::'],
\   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
\   'ruby' : ['.', '::'],
\   'lua' : ['.', ':'],
\   'erlang' : [':'],
\   'haskell' : ['.'],
\ }
let g:ycm_auto_trigger = 1


"haskell only
let g:haddock_docdir = "/usr/share/doc/ghc-doc/html"
let g:haddock_browser = ""
au BufEnter *.hs compiler ghc
