"vundle setting
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'a.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'minibufexpl.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'

"solarized theme
syntax enable
set background=dark
colorscheme solarized
set t_Co=256


"general setting
set fileencodings=ucs-bom,utf-8,cp936
set helplang=cn
set clipboard=unnamedplus
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
filetype off

filetype plugin indent on
set noerrorbells
set novisualbell

filetype plugin on
filetype indent on

syntax on
set ruler

map <> :NERDTree<cr>
map <C-r> :TlistToggle<cr>
vmap <C-c> "+y
set mouse=a
autocmd VimEnter * NERDTree
autocmd BufEnter * silent! lcd %:p:h

let Tlist_Show_One_File = 1


let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"akirayu101 modify personal
map <C-P> :bp<cr>
map <C-N> :bn<cr>
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()


"youcompleteme config
nnoremap <C-\> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
