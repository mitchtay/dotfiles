call plug#begin('~/.config/nvim/plugged')

Plug 'ianks/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'

call plug#end()

" TODO(mitchtay): Reorganise and create folds by category.
filetype on
filetype plugin on
filetype plugin indent on

syntax on

set background=dark
colorscheme gruvbox

set number

set cursorline
set ruler

set tabstop=4
set softtabstop=-1
set shiftwidth=0
set shiftround

set autoindent
set cpoptions+=I
set smartindent

set showmatch
set hlsearch
set incsearch

set smartcase

set termguicolors
set mouse=a

set list
set listchars=tab:>.,trail:.,extends:>,precedes:<,eol:¶,space:.,nbsp:+

set foldenable
set foldmethod=syntax
set foldnestmax=16
set foldlevel=3

set colorcolumn=80
set textwidth=80
set formatoptions+=t
set nowrap

"let g:loaded_gentags#gtags = 1
"let g:loaded_gentags#ctags = 0  " disable ctags support, use gtags only

function! ToggleRelativeNumberMode()
	if (&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc

nnoremap <leader>r :call ToggleRelativeNumberMode() <CR>
nmap <leader>t1 <Plug>AirlineSelectTab1 
nmap <leader>t2 <Plug>AirlineSelectTab2 
nmap <leader>t3 <Plug>AirlineSelectTab3 
nmap <leader>t4 <Plug>AirlineSelectTab4 
nmap <leader>t5 <Plug>AirlineSelectTab5 
nmap <leader>t6 <Plug>AirlineSelectTab6 
nmap <leader>t7 <Plug>AirlineSelectTab7 
nmap <leader>t8 <Plug>AirlineSelectTab8 
nmap <leader>t9 <Plug>AirlineSelectTab9 
nmap <leader>tp <Plug>AirlineSelectPrevTab
nmap <leader>tn <Plug>AirlineSelectNextTab

tmap <leader>t1 <Plug>AirlineSelectTab1 
tmap <leader>t2 <Plug>AirlineSelectTab2 
tmap <leader>t3 <Plug>AirlineSelectTab3 
tmap <leader>t4 <Plug>AirlineSelectTab4 
tmap <leader>t5 <Plug>AirlineSelectTab5 
tmap <leader>t6 <Plug>AirlineSelectTab6 
tmap <leader>t7 <Plug>AirlineSelectTab7 
tmap <leader>t8 <Plug>AirlineSelectTab8 
tmap <leader>t9 <Plug>AirlineSelectTab9 
tmap <leader>tp <Plug>AirlineSelectPrevTab
tmap <leader>tn <Plug>AirlineSelectNextTab

tnoremap <ESC>	<C-\><C-N>

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme = 'gruvbox'

set fileencoding=utf-8
set fileformat=unix

set noswapfile
set nobackup
set nowb
set undofile

" Go to the last cursor location when a file is opened, unless this is a git
" commit (in which case it's annoying)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\'") <= line("$") && &filetype != "gitcommit" |
    \ execute ("normal `\"") |
  \ endif

map <C-n> :NERDTreeToggle <CR>
