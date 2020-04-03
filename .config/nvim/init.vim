call plug#begin('~/.config/nvim/plugged')

Plug 'ianks/gruvbox'
Plug 'itchyny/lightline.vim'

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

tnoremap <ESC>	<C-\><C-N>

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
