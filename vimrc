" Vundle stuff

set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'taylor/vim-zoomwin'
Plugin 'godlygeek/tabular'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'ajf/puppet-vim'
Plugin 'tkztmk/vim-vala'

" All of your Plugins must be added before the following line
call vundle#end()            " required by vundle
filetype plugin indent on    " required by vundle

syntax on " Enable syntax highlighting

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
augroup END

set t_Co=256
set background=dark
colorscheme solarized

set relativenumber
set number " http://jeffkreeftmeijer.com/2013/vims-new-hybrid-line-number-mode/

set backspace=indent,eol,start
set history=500
set ruler
set autoindent
set smarttab
set sw=2
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set tabstop=2
set list listchars=tab:\|\ ,trail:. " Display extra whitespace

let mapleader = ' '

map <Leader>n :NERDTreeToggle<CR>

" ignore some htmltidy warnings
" https://github.com/scrooloose/syntastic/issues/612#issuecomment-52066598
let g:syntastic_html_tidy_ignore_errors=
  \ [" proprietary attribute " ,"trimming empty <", "unescaped &" ,
  \ "lacks \"action", "is not recognized!", "discarding unexpected"]

" custom ctrlp ignore settings
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|tmp$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

