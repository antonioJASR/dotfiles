source ~/.config/nvim/settings.vim
source ~/.config/nvim/bundles.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/theme.vim
" source ~/.config/nvim/plug_config/which_key.vim

luafile ~/.config/nvim/lua/plugins/lsp.lua
luafile ~/.config/nvim/lua/plugins/compe.lua
luafile ~/.config/nvim/lua/plugins/lsp_saga.lua
luafile ~/.config/nvim/lua/plugins/lsp_install.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua
" luafile ~/.config/nvim/lua/plugins/neoscroll.lua
luafile ~/.config/nvim/lua/plugins/galaxy_line.lua
luafile ~/.config/nvim/lua/plugins/pears.lua
luafile ~/.config/nvim/lua/plugins/specs.lua
" luafile ~/.config/nvim/lua/plugins/ts-rainbow.lua
luafile ~/.config/nvim/lua/plugins/which-key.lua
luafile ~/.config/nvim/lua/plugins/dashboard.lua
luafile ~/.config/nvim/lua/plugins/trouble.lua
luafile ~/.config/nvim/lua/plugins/barbar.lua

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" snippets
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" let g:UltiSnipsEditSplit="vertical"

"" Disable the blinking cursor.
" set gcr=a:blinkon0
" set scrolloff=3

" Snippets
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

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

