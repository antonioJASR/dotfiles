
"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
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

"*****************************************************************************
"" Plug install packages
"*****************************************************************************

" Plugins to match IDEAVIM
Plug 'vim-scripts/argtextobj.vim'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'

Plug 'tpope/vim-haml'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

" Commit Browser
Plug 'junegunn/gv.vim'

" Ruby
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }

" Markdown
Plug 'plasticboy/vim-markdown'

" Which Key
" "Plug 'liuchengxu/vim-which-key'
Plug 'folke/which-key.nvim'

" undo time travel
Plug 'mbbill/undotree'

" Plug 'airblade/vim-gitgutter'
" Plug 'Raimondi/delimitMate' " Automatic closing of quotes
" Plug 'majutsushi/tagbar' " Display tags
" Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" html
"" HTML Bundle
Plug 'mattn/emmet-vim'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'gruvbox-community/gruvbox'

" Another Status line
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" If you want to display icons, then use one of these plugins:
Plug 'kyazdani42/nvim-web-devicons' " lua

" File Explorer
Plug 'kyazdani42/nvim-tree.lua'

Plug 'editorconfig/editorconfig-vim'

" Terminal goodies
Plug 'kassio/neoterm'
Plug 'vim-test/vim-test'

" Vim Tmux integration
" TODO Replaced with Navigator
" Plug 'numToStr/Navigator.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'



" Start Screen
Plug 'glepnir/dashboard-nvim'

" NEOVIM ONLY
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

" Smooth Scrolling
Plug 'karb94/neoscroll.nvim'

" Preview Colors
" Plug 'gko/vim-coloresque'
" Plug 'shmargum/vim-sass-colors'
Plug 'sbdchd/neoformat'

" Rainbow
Plug 'nvim-ts-rainbow'

" Auto pairs
Plug 'steelsojka/pears.nvim'

" Pimp my Neovim
Plug 'edluffy/specs.nvim'


call plug#end()

