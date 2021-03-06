set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax' " Additional JS Syntax
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline' " Status bar at bottom of screen
Plug 'vim-airline/vim-airline-themes' " Themes for status bar
Plug 'stephenway/postcss.vim'
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree' " File explorer
Plug 'jistr/vim-nerdtree-tabs' " Better tabs for NerdTree
Plug 'isruslan/vim-es6'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive' " Git plugin
Plug 'mileszs/ack.vim' " Ack and Ag searching
Plug 'rking/ag.vim'
Plug 'raimondi/delimitmate'
Plug 'dracula/vim'
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'elzr/vim-json'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'henrik/vim-indexed-search'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale' " Automating linter

call plug#end()

let mapleader = "\<Space>"

" Use ag search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ag! 
nnoremap <leader>d :Ag! <cword><cr>

" Shortcut to redraw window 
nnoremap <leader>r :redraw! <cr>

" Vim-devicons
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = 'eslint'

"ALE
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Airline
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'

" NERDTree/Tabs
let g:nerdtree_tabs_open_on_console_startup = 1 
let NERDTreeIgnore = ['\.pyc$', 'DS_Store$', '^node_modules\/$']

" Fugitive
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
"let g:indentLine_char = '¦'
"let g:indentLine_setColors = 0



" vim-jsx (Allow jsx syntax in js files)
let g:jsx_ext_required = 0


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
"set smartindent
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
let g:solarized_termcolors=256
filetype plugin indent on
autocmd BufNewFile,BufRead *.pcss   set syntax=css

if mode() == 'n'
  set pastetoggle=<F2>
endif

" use mouse
if has('mouse')
  set mouse=vn
endif

" MacVim options
set gfn=Monaco\ for\ Powerline\ Nerd\ Font\ Complete:h14
set guioptions=
if has("gui_running")
  let g:airline_theme='tomorrow'
  colorscheme base16-tomorrow-night
endif


" No shifting for commands
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
"nnoremap K i<CR><Esc><Right>mwgk:silent! s/\v +$//<CR>:noh<CR>`w

" Remap J to split lines (Steve Losh)
"nnoremap J mzJ`z

nnoremap J gT
nnoremap K gt
