source ~/.config/nvim/settings.vim
source ~/.config/nvim/bundles.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/plug_config/which_key.vim

luafile ~/.config/nvim/lua/plugins/lsp.lua
luafile ~/.config/nvim/lua/plugins/compe.lua
luafile ~/.config/nvim/lua/plugins/lsp_saga.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua
luafile ~/.config/nvim/lua/plugins/neoscroll.lua
luafile ~/.config/nvim/lua/plugins/galaxy_line.lua

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

"" Disable the blinking cursor.
" set gcr=a:blinkon0
" set scrolloff=3

" Emmet
let g:user_emmet_leader_key='<C-y>'

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

