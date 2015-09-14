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
Plugin 'chrisdambrosio/ZoomWin'
Plugin 'godlygeek/tabular'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'ajf/puppet-vim'
Plugin 'tkztmk/vim-vala'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rking/ag.vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'lambdatoast/elm.vim'

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

au BufRead,BufNewFile Vagrantfile set filetype=ruby

set t_Co=256
set background=dark
colorscheme solarized

set relativenumber
set number " http://jeffkreeftmeijer.com/2013/vims-new-hybrid-line-number-mode/

set shiftwidth=2
set tabstop=2
set softtabstop=2

set backspace=indent,eol,start
set history=500
set ruler
set autoindent
set smarttab
set expandtab
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set list listchars=tab:\|\ ,trail:. " Display extra whitespace
set hlsearch
set laststatus=2
set synmaxcol=200 " vim slows down with very long lines

let mapleader = ' '

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <Leader>n :NERDTreeToggle<CR>
map <C-h> :nohl<cr>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:airline_powerline_fonts = 1

let g:syntastic_enable_signs = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" ignore some htmltidy warnings
" https://github.com/scrooloose/syntastic/issues/612#issuecomment-52066598
let g:syntastic_html_tidy_ignore_errors=
  \ [" proprietary attribute " ,"trimming empty <", "unescaped &" ,
  \ "lacks \"action", "is not recognized!", "discarding unexpected"]

" custom ctrlp ignore settings
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|tmp$\|vendor/assets$\|source_maps$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
