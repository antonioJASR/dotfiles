" Leader Key Maps

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=500

" Coc Search & refactor
" nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>? :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>

let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win=1
let g:which_key_floating_relative_win=1
" let g:which_key_floating_opts = { 'row': '10' }

" Change the colors if you want
" highlight default link WhichKey          Operator
" highlight default link WhichKeySeperator DiffAdded
" highlight default link WhichKeyGroup     Identifier
" highlight default link WhichKeyDesc      Function

" Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':lcd %:p:h'                         , 'set working directory' ]
let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle'               , 'explorer' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                       , 'no highlight' ]
let g:which_key_map['O'] = [ ':e $RTP'                            , 'open init' ]
let g:which_key_map['R'] = [ ':so ~/.config/nvim/init.vim'                    , 'reload init.vim']
let g:which_key_map[';'] = [ ':Telescope commands'                          , 'commands' ]

" let g:which_key_map['p'] = [ ':lua require''telescope.builtin''.git_files{}'                             , 'search files (.git)' ]
" let g:which_key_map['f'] = [ ':lua require''telescope.builtin''.find_files{}'                             , 'find files in current dir' ]
" let g:which_key_map['d'] = [ ':bp\|bd #'               , 'delete buffer' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'r' : [':so ~/.config/nvim/init.vim'  , 'reload nvim config'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1'],
      \ '2' : ['b2'        , 'buffer 2'],
      \ 'd' : [':Bdelete'  , 'delete-buffer'],
      \ 'D' : [':bp\|bd #'  , 'delete buffer'],
      \ 'f' : ['bfirst'    , 'first-buffer'],
      \ 'h' : ['Startify'  , 'home-buffer'],
      \ 'l' : ['blast'     , 'last-buffer'],
      \ 'n' : ['bnext'     , 'next-buffer'],
      \ 'p' : ['bprevious' , 'previous-buffer'],
      \ 'b' : [':lua require''telescope.builtin''.buffers{}'   , 'Search Buffers'],
      \ }

" s is for search
let g:which_key_map.f = {
      \ 'name' : '+files' ,
      \ 'b' : [':lua require''telescope.builtin''.buffers{}'   , 'buffers'],
      \ 'c' : [':lua require''telescope.builtin''.find_files{ cwd = "~/.config/nvim/" }'   , 'config files'],
      \ 'f' : [':lua require''telescope.builtin''.find_files{}'   , 'find files'],
      \ 'g' : [':lua require''telescope.builtin''.git_files{}'   , 'git files'],
      \ 'l' : [':lua require''telescope.builtin''.loclist{}'   , 'location list'],
      \ 'r' : [':lua require''telescope.builtin''.lsp_references{}'   , 'lsp references'],
      \ 'q' : [':lua require''telescope.builtin''.quickfix{}'   , 'quickfix'],
      \ 'm' : [':lua require''telescope.builtin''.marks{}'   , 'marks'],
      \ 'k' : [':lua require''telescope.builtin''.keymaps{}'   , 'keymaps'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'A' : [':Git add .'                        , 'add all'],
      \ 'a' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':Gstatus'                          , 'status'],
      \ 'h' : [':diffget //2'         , 'select left'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':diffget //3'         , 'select right'],
      \ 'L' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : [':G'        , 'Git status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }


" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ ',' : [':lua vim.lsp.stop_client(vim.lsp.get_active_clients())', 'restart-lsp'],
      \ 'a' : [':lua vim.lsp.buf.code_action()'   , 'code action'],
      \ 'r' : [':lua vim.lsp.buf.rename()'   , 'rename'],
      \ 'o' : [':OpenDiagnostic'   , 'open diagnostics'],
      \ 'P' : [':lua require''telescope.builtin''.planets{}'   , 'planets'],
      \ 's' : [':lua require''telescope.builtin''.lsp_document_symbols{}'   , 'document symbols'],
      \ 'S' : [':lua require''telescope.builtin''.lsp_workspace_symbols{}'   , 'workspace symbols'],
      \ }

" r is for running
 let g:which_key_map.r = {
     \ 'name' : '+run' ,
     \ 'f': [':TestFile', 'test-file'],
     \ 'l': [':TestLast', 'test-last'],
     \ 'r': [':TestLast', 'test-last'],
   \ }

" t is for terminal
 let g:which_key_map.t = {
     \ 'name' : '+terminal' ,
     \ 'f': [':TREPLSendFile', 'send current file'],
     \ 'l': [':TREPLSendLine', 'send line'],
     \ 'c': [':Tclose', 'close current terminal'],
     \ 'k': [':Tclose', 'kill current process'],
     \ 's': [':TREPLSendSelection', 'send selection'],
     \ 'o': [':Topen', 'open terminal'],
     \ 'n': [':Tnext', 'next terminal'],
     \ 'p': [':Tprevious', 'previous terminal'],
     \ 't': [':Ttoggle', 'toggle terminal'],
   \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
