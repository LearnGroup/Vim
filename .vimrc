set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

"plugins
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/vimproc.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'

"haskell only
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'lukerandall/haskellmode-vim'

"golang only
Plugin 'Blackrush/vim-gocode'

call vundle#end()

syntax on
filetype plugin on
filetype indent on

set completeopt+=preview,longest
set fileencodings=ucs-bom,utf-8,cp936,latin-1,gbk,gb18030
set clipboard=unnamed
set backspace=start,indent,eol
set nu!
set wrap
set nocompatible
set hlsearch
set incsearch

set ruler
set smarttab                  
set cursorline
set mouse=a
set selectmode=mouse
set ttymouse=xterm2

set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab

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
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"CtrlP setting
nnoremap <C-R> :CtrlPBufTagAll<CR>
let g:ctrlp_working_path_mode="rw"

"minibuf setting
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"haskell only
let g:haddock_docdir = "/usr/share/doc/ghc-doc/html"
let g:haddock_browser = ""
au BufEnter *.hs compiler ghc
