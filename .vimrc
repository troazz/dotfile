set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/ag'
call vundle#end()

filetype plugin indent on

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Directory and swap file
set nobackup
set nowb
set noswapfile
set noerrorbells

" Appearance "

syntax enable

set number
set relativenumber
set linespace=12

set title
set titlestring=%F\ -\ vim
set noshowmode
set laststatus=2

set background=dark

" File behaviour "

set expandtab
set smarttab
set linebreak
set breakindent
set nostartofline

set shiftwidth=4
set tabstop=4

" Search "

set smartcase
set hlsearch
set incsearch

" Panes "

set splitbelow
set splitright

set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" Bindings "
let mapleader = ','
map q <Nop>
map <C-p> :Files<CR>
set backspace=indent,eol,start

map <F6> :setlocal spell!<CR>
map <C-o> :NERDTreeToggle<CR>
map <C-S-f> :Ag

map <Leader> <Plug>(easymotion-prefix)

" Plugins "

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_sign_column = 'bg0'

colorscheme gruvbox
hi CursorLineNr ctermfg=white

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'fileformat', 'fileencoding']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'gitbranch#name'
  \     }
  \ }

let NERDTreeShowHidden=1

