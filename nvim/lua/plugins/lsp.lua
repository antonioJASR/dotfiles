-- https://github.com/neovim/nvim-lspconfig/wiki/Complete-init.lua-example

local nvim_lsp = require('lspconfig')

local function on_attach()
  -- TODO: TJ told me to do this and I should do it because he is Telescopic
  -- "Big Tech" "Cash Money" Johnson
end


-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- local servers = { "pyright", "rust_analyzer", "tsserver" }
-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup { on_attach = on_attach }
-- end

-- HTML
-- Install first: npm install -g vscode-html-languageserver-bin
nvim_lsp['html'].setup { on_attach = on_attach }

-- CSS
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#cssls
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp['cssls'].setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- TypeScript
-- npm install -g typescript typescript-language-server
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
nvim_lsp.tsserver.setup{}

-- Dart
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#dartls
nvim_lsp.dartls.setup{}

-- Ruby
-- Install: gem install --user-install solargraph
nvim_lsp.solargraph.setup{}

-- JSON
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#jsonls
-- Install: npm install -g vscode-json-languageserver
nvim_lsp.jsonls.setup{}

-- VimLS
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#vimls
-- Install: npm install -g vim-language-server
nvim_lsp.vimls.setup{}

-- LUA
local sumneko_root_path = '~/Library/bin/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/macOS/lua-language-server"

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
      Lua = {
          runtime = {
              -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
              -- Setup your lua path
              path = vim.split(package.path, ';'),
          },
          diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {'vim'},
          },
          workspace = {
              -- Make the server aware of Neovim runtime files
              library = {
                  [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                  [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
              },
          },
      },
  },
}
