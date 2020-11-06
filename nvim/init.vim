"" Vim-PLug core
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

" Plugins to match IDEAVIM
Plug 'vim-scripts/argtextobj.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'

" Display vertical lines
Plug 'Yggdroot/indentLine'

Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'

" Display marks
Plug 'kshenoy/vim-signature'

Plug 'tpope/vim-eunuch'

" undo time travel
Plug 'mbbill/undotree'

" Netrc improved
Plug 'tpope/vim-vinegar'

" be fast bruh
" Plug 'ThePrimeagen/vim-apm'
" Plug 'ThePrimeagen/vim-be-good'

" LSP Goodies
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'kyazdani42/nvim-web-devicons' " Good Icons

" Terminal goodies
Plug 'kassio/neoterm'
Plug 'vim-test/vim-test'

" Start Screen
Plug 'mhinz/vim-startify'

" Which Key
Plug 'liuchengxu/vim-which-key'

" Lol Smoothie
" Plug 'psliwka/vim-smoothie'

let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Color
Plug 'morhetz/gruvbox'

" elixir
Plug 'elixir-lang/vim-elixir'
" Plug 'carlosgaldino/elixir-snippets'

" erlang
Plug 'jimenezrick/vimerl'

" html
" Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'mattn/emmet-vim'

" javascript
" Plug 'jelera/vim-javascript-syntax'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'

" typescript
Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'

" Awesome Comments
Plug 'tpope/vim-commentary'

" Animate
Plug 'camspiers/animate.vim'

call plug#end()

" Required:
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=' '

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set inccommand=split

set list                            " show invisible characters
set listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nowrap
set nu

" Relative Number
set relativenumber

set fileformats=unix,dos,mac

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages
set cmdheight=2

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" Escape without ESC button
inoremap <C-c> <esc>

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=100
highlight ColorColumn ctermbg=1 guibg=lightgrey

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1

" Enable mouse because why not
set mouse=a
set mousemodel=popup

set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

let g:CSApprox_loaded = 1

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" Disable the blinking cursor.
" set guicursor=a:blinkon0
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" grep.vim
"nnoremap <silent> <leader>g :Rgrep<CR>
"let Grep_Default_Options = '-IR'
"let Grep_Skip_Files = '*.log *.db'
"let Grep_Skip_Dirs = '.git node_modules'
"
"" terminal emulation
"nnoremap <silent> <leader>sh :terminal<CR>


"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************

"" Set working directory
" nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
" noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
" noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>


" cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
" nnoremap <silent> <leader>b :Buffers<CR>
"
" Search for help
" nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>

" Find References
" nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
"
" Buffer Search
" nmap // :BLines<CR>

" Project Search
" nmap ?? :Rg<CR>

" Browser
" let g:netrw_browse_split = 2
let g:netrw_banner = 1
let g:netrw_winsize = 20
let g:netrw_localrmdir='rm -r'

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"


" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
" noremap <leader>p "+gP<CR>
vnoremap <leader>p "_dP
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Tab/shift-tab to indent/outdent in visual mode.
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Switch between the last two files
nnoremap <tab><tab> <c-^>

" Delete current buffer without losing the split
" nnoremap <silent> <leader><C-x> :bp\|bd #<CR>

" Disable directional keys and use them to resize windows
let g:animate#duration = 200.0

nnoremap <silent> <S-Up>    :call animate#window_delta_height(-3)<CR>
nnoremap <silent> <S-Down>  :call animate#window_delta_height(3)<CR>
nnoremap <silent> <S-Left>  :call animate#window_delta_width(-5)<CR>
nnoremap <silent> <S-Right> :call animate#window_delta_width(5)<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************


" vim-polyglot
" let g:polyglot_disabled = ['elm']

" erlang
let erlang_folding = 1
let erlang_show_errors = 1

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl expandtab softtabstop=2
augroup END


" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END

" For ruby refactory
if has('nvim')
  runtime! macros/matchit.vim
else
  packadd! matchit
endif

" typescript
let g:yats_host_keyword = 1

" highlight fenced code blocks in markdown
let g:markdown_fenced_languages = [
      \ 'bash=sh',
      \ 'elixir',
      \ 'elm',
      \ 'graphql',
      \ 'html',
      \ 'js=javascript',
      \ 'json',
      \ 'python',
      \ 'ruby',
      \ 'sql',
      \ 'vim',
      \ 'typescript',
      \ 'yaml',
      \ 'sshconfig',
      \ 'cfg',
      \ 'systemd',
      \ 'nginx',
      \ ]

augroup marknotup
  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell
augroup END

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Easymotion
" Move to line
map <Leader>El <Plug>(easymotion-bd-jk)
nmap <Leader>El <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>Ew <Plug>(easymotion-bd-w)
nmap <Leader>Ew <Plug>(easymotion-overwin-w)

" Comments in Italic
hi Comment cterm=italic
" hi LineNr ctermbg=NONE guibg=NONE

let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_italic='1'

set background=dark
silent! colorscheme gruvbox

if has('nvim') && executable('nvr')
    " using nvr to opening a split inside neovim
  let $VISUAL="nvr -cc split --remote-wait +'setlocal bufhidden=wipe'"
  let $GITEDITOR="nvr -cc split --remote-wait +'setlocal bufhidden=wipe'"
  let $EDITOR="nvr -l"
  let $ECTO_EDITOR="nvr -l"
endif

" More config
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/plug-config/term.vim
source $HOME/.config/nvim/plug-config/lsp.vim
" source $HOME/.config/nvim/plug-config/xtabline.vim
" source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/elixir.vim
