
set path=.,**

" Runtime Path
let $RTP = split(&runtimepath, ",")[0]
let $RC = "$HOME/.config/nvim/init.vim"


" Testing
" nmap <silent> t<C-n> :TestNearest<CR>
" nmap <silent> t<C-f> :TestFile<CR>
" nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>


" Keep scroll down
let g:neoterm_autoinsert=0
let g:neoterm_autoscroll=1
let g:neoterm_fixedsize=1

let g:neoterm_default_mod='vertical'

" Python
" function! TermPy()
"   exec winheight(0)/4."split" | terminal python3 %
" endfunction

" nnoremap <C-R> :call TermPy() <CR>
"
if has('nvim')
  " Escape to normal mode in terminal
  tnoremap <Esc> <C-\><C-n>
  " Verbatim escape :help i_ctrl-v
  tnoremap <C-v><Esc> <Esc>

  " Escape and change window
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l

  set emoji
endif

