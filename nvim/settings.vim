set nocompatible

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" set inccommand=split

set list                            " show invisible characters
set listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nowrap
set nu

set cmdheight=2                         " Give more space for displaying messages
set pumheight=10                        " Makes popup menu smaller
set conceallevel=0                      " So that I can see `` in markdown files
set expandtab                           " Converts tabs to spaces
set autoindent                          " Good auto indent

set cursorline " Highlight current line
set colorcolumn=100
highlight ColorColumn ctermbg=1 guibg=lightgrey

set termguicolors                       " More colors please

set confirm

set ruler
" set number

" Relative Number
set relativenumber
set fileformats=unix,dos,mac

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


" Enable mouse because why not
set mouse=a
set mousemodel=popup

set spelllang=en_us,es_mx
set spell

" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

" You can't stop me
cmap w!! w !sudo tee %

filetype plugin indent on

syntax on
let no_buffers_menu=1

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

