" https://github.com/editorconfig/editorconfig-vim#recommended-options
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

colorscheme gruvbox
" colorscheme nova
let g:airline_theme='gruvbox'

" automatically rebalance windows on vim resize
" autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Vim Tmux Runner for python
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

" Open irb 
" nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>

" Ruby Stuff
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

set inccommand=split

" Netrw config
let g:netrw_banner = 0 " No banner
let g:netrw_liststyle = 3 " Tree View
let g:netrw_browse_split = 4 " Open files in vertical mode
let g:netrw_altv = 1
let g:netrw_winsize = 20 " Percentage

" Folding
set foldenable
set foldmethod=syntax
set foldlevelstart=8
" set foldnestmax=10

let ruby_fold=1 " Ruby Folding
let sh_fold_enabled=1 " SH
let vimsyn_folding='af' " Vim Script
let javaScript_fold=1 " Javascript
let xml_syntax_folding=1 " XML


" Move visual Selection
" Select desired lines, hit J to move them one line down or K to move them one line up
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

" Relative Number
set relativenumber

" ale_linters
:call extend(g:ale_linters, { 
            \'javascript': ['prettier'], 
            \'typescript': ['tslint'],
            \'html': ['htmlhint'],
            \'css': ['prettier'], 
            \})

let g:ale_fixers = {
\   'typescript': ['tslint'],
\   'html': ['prettier'],
\}

" let g:ale_html_tidy_options = '-q -e -language en --custom-tags blocklevel '

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" To make <cr> select the first completion item
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

if has('nvim')
  " Escape to normal mode in terminal
  tnoremap <Esc> <C-\><C-n>

  " Escape and change window
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif





