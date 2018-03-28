set nocompatible              " be iMproved, required
filetype off                  " required

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list

set tags=tags

set tabstop=2 softtabstop=1 expandtab shiftwidth=2 smarttab

set ruler
set colorcolumn=81
set laststatus=3
set scrolloff=2
set autoindent
set showcmd
set incsearch
set relativenumber

set suffixesadd=*.rb
set path+=lib/**,test/**

" Paste from clipboard when in insert mode.
imap <C-V> <ESC>"+gpa 
" Paste from clipboard when in visual mode. (Replace whatever is selected in visual mode.)
vmap <C-V> "+gp
" Copy selection to clipboard when in visual mode.
vmap <C-C> "+y

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jacquesbh/vim-showmarks' 
Plugin 'Indent-Guides'
Plugin 'ctrlp.vim'
Plugin 'rails.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'posva/vim-vue'
Plugin 'surround.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Remaps
 let g:ctrlp_map = '<C-p>' 
 let g:ctrlp_cmd = 'CtrlP'

