" LSP settings
" https://github.com/nvim-lua/completion-nvim/issues/17
:lua << EOF
   local nvim_lsp = require('nvim_lsp')

   local on_attach = function(_, bufnr)
     vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
     require'diagnostic'.on_attach()
     require'completion'.on_attach()

     -- Mappings.
     local opts = { noremap=true, silent=true }
     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gy', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>lI', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
     vim.api.nvim_buf_set_keymap(bufnr, 'i', '<c-space>', '<cmd>lua vim.lsp.buf.completion()<CR>', opts)
     -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
   end

   local servers = {
     -- 'gopls',
     -- 'rust_analyzer',
     'sumneko_lua',
     -- 'tsserver',
     'vimls',
     -- 'pyls_ms',
     -- 'jsonls',
     -- 'cssls',
     -- 'elixirls',
     -- 'html',
     -- 'solargraph',
     -- 'yamlls'
     }

   for _, lsp in ipairs(servers) do
     nvim_lsp[lsp].setup {
       on_attach = on_attach,
     }
   end
EOF

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'UltiSnips'


let g:diagnostic_enable_virtual_text = 1
" let g:diagnostic_virtual_text_prefix = ' '
"
" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

