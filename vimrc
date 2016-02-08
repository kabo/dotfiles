runtime bundle/vim-pathogen/autoload/pathogen.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("mac") || has("macunix")
  let g:pathogen_disabled = ['YouCompleteMe']
endif

" Infect with pathogen
call pathogen#infect()
call pathogen#helptags()

" Make sure we're in nocompat mode
set nocompatible

" Sets how many lines of history VIM has to remember
set history=700

" Disable mouse
set mouse=""

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" allow hidden buffers
set hidden

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Use system clipboard
set clipboard^=unnamedplus
if has("mac") || has("macunix")
  set clipboard=unnamed
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable 256 colors in terminal
"set t_Co=256
set background=dark
let g:solarized_termtrans=1
"let g:solarize_termcolors=16
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Press <leader>ln to toggle linenos
nmap <leader>ln :set invnumber<CR>
set number

" Highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=233

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expression turn magic on
set magic

" Show macthing brackets when text indicator is over them
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m`>+<cr>`<my`mzgv`yo`z
" vmap <M-k> :m`<-2<cr>`>my`mzgv`yo`z
" 
" if has("mac") || has("macunix")
"   nmap <D-j> <M-j>
"   nmap <D-k> <M-k>
"   vmap <D-j> <M-j>
"   vmap <D-k> <M-k>
" endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']
" let g:NERDTreeWinSize = 35
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript-libraries-syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colemak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap h h|xnoremap h h|onoremap h h|
" nnoremap n j|xnoremap n j|onoremap n j|
" nnoremap e k|xnoremap e k|onoremap e k|
" nnoremap i l|xnoremap i l|onoremap i l|
" 
" nnoremap j i|
" nnoremap J I|
" 
" nnoremap k n|
" nnoremap K N|

