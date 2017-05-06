set nocompatible

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' " Required
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax' " Addition JS Syntax 
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'stephenway/postcss.vim'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'isruslan/vim-es6'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'raimondi/delimitmate'
Plugin 'dracula/vim'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/base16-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
call vundle#end()

" Airline
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" NERDTree/Tabs
let g:nerdtree_tabs_open_on_console_startup = 1 
let NERDTreeIgnore = ['\.pyc$', 'DS_Store$']

" Fugitive
let mapleader = "\<Space>"
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>

" git gutter settings
" has to be before colorscheme
set updatetime=250
autocmd ColorScheme * 
      \ highlight clear SignColumn
      \ highlight GitGutterAdd ctermfg=green
      \ highlight GitGutterChange ctermfg=yellow
      \ highlight GitGutterDelete ctermfg=red
      \ highlight GitGutterChangeDelete ctermfg=yellow

""""""""""""""""""""
" General settings "
""""""""""""""""""""
set title
filetype off
set number
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=utf-8
set ruler
set laststatus=2
set smartindent
inoremap jk <ESC>
let mapload = "\<Space>"
set backspace=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set backupcopy=yes
set cursorline
set noerrorbells
set visualbell
set showmatch
let base16colorspace=256
syntax enable
colorscheme base16-tomorrow-night
filetype plugin indent on
autocmd BufNewFile,BufRead *.pcss   set syntax=css

" vim-jsx (Allow jsx syntax in js files)
let g:jsx_ext_required = 0 

" use mouse
if has('mouse')
  set mouse=vn
endif

" No shifting for colon
nnoremap ; :

" Remap H and L to go to beginning/end of line
nnoremap H ^
nnoremap L $

" Use ctrl+hjkl to move between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Keep search matches in middle of window
nnoremap <silent> n nzzzv
nnoremap <silent> N Nzzzv

" Esc to clear search highlighting
nnoremap Z :noh <cr><esc>

" Move over wrapped lines
nnoremap j gj
nnoremap k gk

" Remap K to split lines (Steve Losh)
nnoremap K i<CR><Esc><Right>mwgk:silent! s/\v +$//<CR>:noh<CR>`w

" Remap J to split lines (Steve Losh)
nnoremap J mzJ`z

" Use ag search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


