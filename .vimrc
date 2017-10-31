set nocompatible

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' " Required
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax' " Addition JS Syntax 
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline' " Status bar at bottom of screen
Plugin 'vim-airline/vim-airline-themes' " Themes for status bar
Plugin 'stephenway/postcss.vim'
Plugin 'ap/vim-css-color'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdtree' " File explorer
Plugin 'jistr/vim-nerdtree-tabs' " Better tabs for NerdTree
Plugin 'isruslan/vim-es6'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'raimondi/delimitmate'
Plugin 'dracula/vim'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/base16-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'ryanoasis/vim-devicons'
Plugin 'yggdroot/indentline'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

" Airline
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" NERDTree/Tabs
let g:nerdtree_tabs_open_on_console_startup = 1 
let NERDTreeIgnore = ['\.pyc$', 'DS_Store$', '^node_modules\/$']

" Fugitive
let mapleader = "\<Space>"
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>

" git gutter settings
" has to be before colorscheme
autocmd ColorScheme * 
      \ highlight clear SignColumn
      \ highlight GitGutterAdd ctermfg=green
      \ highlight GitGutterChange ctermfg=yellow
      \ highlight GitGutterDelete ctermfg=red
      \ highlight GitGutterChangeDelete ctermfg=yellow

"Python indentLine settings
let g:indentLine_char = '¦'
let g:indentLine_setColors = 0

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
"let base16colorspace=256
syntax enable
set background=light
colorscheme solarized
let g:solarized_termcolors=256
"color dracula
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

" Z to clear search highlighting
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

" Vim-devicons
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
