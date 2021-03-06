scriptencoding utf-8

if !exists('g:colors_name') " Prevent useless redraw on config reload
  syntax on
  colorscheme minimalist
endif

" Switch cursor based on mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

" enable 24 bit color support if supported
if (has('mac') && empty($TMUX) && has('termguicolors'))
  set termguicolors
endif

" Make comments and htmlArgs italic
highlight Comment cterm=italic gui=italic
highlight htmlArg cterm=italic gui=italic

" Show relative line numbers, but also show the current line number absolute
set number
set relativenumber

" Don't wrap by default
set nowrap

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Show invisible characters
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:·
set showbreak=↪

" higlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" backspace behavior
set backspace=start

" Smart folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldcolumn=2

" Use system clipboard
set clipboard+=unnamedplus

set wildmode=list:longest " complete files like a shell
set hidden " Allow hidden buffers
set noshowmode " don't show which mode diabled for Airline
set shell=$SHELL
set cmdheight=1 " command bar height
set title " set terminal title

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw

set magic " Magic RegExp

set showmatch " show matching braces
set matchtime=2 " how fast to blink

" error bells
set noerrorbells
set visualbell
set timeoutlen=500

if has('mouse')
  set mouse=a
endif

" Show me where I should break my lines
set colorcolumn=80,100,120

" highlight strings inside C comments
let g:c_comment_strings=1

filetype plugin indent on
