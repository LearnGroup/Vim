set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'dimasg/vim-mark'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'minibufexpl.vim'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'godlygeek/tabular'
Bundle 'davidhalter/jedi-vim'

syntax on
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
filetype off
set hlsearch
set incsearch
filetype plugin indent on
set noerrorbells
set novisualbell
filetype plugin on
filetype indent on
syntax on
set ruler
set autoindent                " auto/smart indentation
set cindent
set preserveindent
set copyindent
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab



vmap <C-c> "+y
set mouse=a
autocmd BufEnter * silent! lcd %:p:h

let Tlist_Show_One_File = 1
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

set completeopt+=preview,longest

"personal abbr
function! ToggleNERDTree()
    let w:jumpbacktohere = 1
    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    " Perform the appropriate action
    if nerdtree_open
        NERDTreeClose
    else
        NERDTree
    endif
    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction
nnoremap <leader>\  :call ToggleNERDTree()<CR>
nnoremap <leader>t :TagbarToggle<CR>
