packadd minpac
call minpac#init()
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('k-takata/minpac')
call minpac#add('tpope/vim-fugitive')
call minpac#add('thoughtbot/vim-rspec')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-rails')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('kien/ctrlp.vim')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('scrooloose/nerdtree')
call minpac#add('chrisdambrosio/ZoomWin')
call minpac#add('godlygeek/tabular')
call minpac#add('fatih/vim-go')
call minpac#add('w0rp/ale')
call minpac#add('terryma/vim-multiple-cursors')
call minpac#add('tpope/vim-commentary')
call minpac#add('itchyny/lightline.vim')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('rking/ag.vim')
call minpac#add('Glench/Vim-Jinja2-Syntax')
call minpac#add('mustache/vim-mustache-handlebars')
call minpac#add('chase/vim-ansible-yaml')
call minpac#add('wellle/targets.vim')
call minpac#add('elixir-lang/vim-elixir')
call minpac#add('rust-lang/rust.vim')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('elmcast/elm-vim')
call minpac#add('tpope/vim-ragtag')
call minpac#add('javier-lopez/sml.vim')
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

syntax on " Enable syntax highlighting
filetype plugin indent on

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  autocmd FileType elm setlocal sw=4 sts=4 expandtab
augroup END

au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile *.es6 set filetype=javascript

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
set incsearch
set laststatus=2
set synmaxcol=200 " vim slows down with very long lines
set backupcopy=yes " resolves file watcher issues

set pastetoggle=<F2>

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

let g:lightline = { 'colorscheme': 'solarized' }

let g:syntastic_enable_signs = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:elm_syntastic_show_warnings = 1

" ignore some htmltidy warnings
" https://github.com/scrooloose/syntastic/issues/612#issuecomment-52066598
let g:syntastic_html_tidy_ignore_errors=
  \ [" proprietary attribute " ,"trimming empty <", "unescaped &" ,
  \ "lacks \"action", "is not recognized!", "discarding unexpected"]

" custom ctrlp ignore settings
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|tmp$\|vendor/assets$\|source_maps$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

let g:jsx_ext_required = 0
