syntax on

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('junegunn/fzf')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


" FZF

nnoremap <C-p> :<C-u>FZF<CR>
