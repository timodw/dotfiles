call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-clang'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

" General options
set number
set ruler
set autoindent
set smartindent
set encoding=utf-8
set backspace=indent,eol,start
set modelines=0
set laststatus=2
set showcmd
set splitright
set splitbelow
set autoread " auto reload file on change
set scrolloff=8
set cursorline

" Undo
set undofile
set undoreload=10000
set undodir=~/.vim/tmp/undo/

" Color scheme
set background=dark
colorscheme gruvbox

" Wrapping stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list
set listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" this makes vim so much faster
set lazyredraw
set ttyfast
set noshowcmd
set regexpengine=1

" NerdTree stuff
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Deoplete stuff
set pyxversion=3
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary = '/Users/timodewaele/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path = '/Users/timodewaele/Developer/rust'
let g:deoplete#sources#rust#documentation_max_height=20
let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/lib/clang/7.0.0/include'
