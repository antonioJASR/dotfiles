" https://github.com/dkarter/dotfiles/blob/master/vimrc
" Text Objects {{{
" augroup elixir_textobjs
"   autocmd!
"   autocmd FileType elixir call textobj#user#map('elixir', {
"         \   'map': {
"         \     'pattern': ['%{', '}'],
"         \     'select-a': '<buffer> aM',
"         \     'select-i': '<buffer> iM',
"         \   },
"         \ })
" augroup END
" " }}}

" add operator pending mode for elixir maps - needs to support multiline map
  augroup ElixirAutoCommands
    autocmd!
    autocmd FileType elixir,eelixir let b:surround_{char2nr("m")} = '%{ \r }'
  augroup END
" }}}
