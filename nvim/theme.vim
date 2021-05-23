"" Status bar included in Neovim
" set laststatus=2
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" if exists("*fugitive#statusline")
"   set statusline+=%{fugitive#statusline()}
" endif

" Awesome Theme
colorscheme nord
" colorscheme gruvbox

set mousemodel=popup
set t_Co=256
set guioptions=egmrti

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1
