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
     'tsserver',
     'vimls',
     -- 'pyls_ms',
     'flow',
     'jsonls',
     'cssls',
     'elixirls',
     'html',
     'solargraph',
     'yamlls'
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
let g:diagnostic_virtual_text_prefix = ' '

"
" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    :lua vim.lsp.buf.hover()
  endif
endfunction


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Syntax based code folding
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()


" LSP EXTENSIONS
" nnoremap <Leader>T :lua require'lsp_extensions'.inlay_hints()

:lua << EOF
-- require'lsp_extensions'.inlay_hints{
--     highlight = "Comment",
--     -- prefix = " > ",
--     aligned = false,
--     only_current_line = false
-- }

-- DART
-- https://github.com/nvim-lua/lsp_extensions.nvim/blob/master/examples/dart/closing_labels.lua
EOF

" TELESCOPE
" Telescope Goodies
nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <C-f> <cmd>lua require'telescope.builtin'.find_files{}<CR>

" QuickFix
"
" Location List

" Search over variable references from your Language Server
nnoremap <silent> gr <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nmap <silent> gr <Plug>(coc-references)

" Definitions
nnoremap <silent> gD <cmd>lua require'telescope.builtin'.treesitter{}<CR>

" Planets ??
nnoremap <silent> <leader>xp <cmd>lua require'telescope.builtin'.planets{}<CR>


" Treesitter
:lua << EOF
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}

require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}

require'nvim-treesitter.configs'.setup {
  textobjects = {
    move = {
      enable = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
  },
}


require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
}

EOF

" Diagnostic
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <cmd>PrevDiagnosticCycle<CR>
nmap <silent> ]g <cmd>NextDiagnosticCycle<CR>


