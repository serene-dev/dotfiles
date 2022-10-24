
local ok, nvim_lsp = pcall(require, 'lspconfig')
if not ok then
  return
end

local lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local capabilities = require('cmp_nvim_lsp').default_capabilities(lsp_capabilities)

-- Diagnostics symbols for display in the sign column.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '<space>q', vim.lsp.diagnostic.set_loclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
  vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
  vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
  vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
  vim.keymap.set('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', bufopts)
  vim.keymap.set('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', bufopts)
  vim.keymap.set('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', bufopts)
  vim.keymap.set('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', bufopts)
  vim.keymap.set('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
  vim.keymap.set('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', bufopts)
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', bufopts)
  vim.keymap.set("n", "<space>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", bufopts)
end

-- Python
-- pip install pyright
nvim_lsp.pyright.setup{
  capabilities = capabilities
}

local flags = {
  --debounce_text_changes = 150,
}

-- Ruby
-- gem install solargraph
nvim_lsp.solargraph.setup {
  --cmd = { "bundle", "exec", "solargraph", "stdio" },
  cmd = { "solargraph", "stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
  settings = {
    solargraph = {
      diagnostics = true
    }
  }
}

-- steep
-- gem install steep
-- nvim_lsp.steep.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   flags = flags,
-- }

-- CSS
-- npm i -g vscode-langservers-extracted
nvim_lsp.cssls.setup {
  filetypes = { "css", "scss", "less" },
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- stylelint
-- npm install -g stylelint-lsp
nvim_lsp.stylelint_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}


-- HTML
-- npm i -g vscode-langservers-extracted
nvim_lsp.html.setup {
  configurationSection = { "html", "css", "javascript" },
  embeddedLanguages = {
    css = true,
    javascript = true
  },
  provideFormatter = true,
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- eslint
-- npm i -g vscode-langservers-extracted
nvim_lsp.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- tsserver
-- npm install -g typescript typescript-language-server
--[[
  To configure type language server, add a tsconfig.json or jsconfig.json to the root of your project.
  Here's an example that disables type checking in JavaScript files.
  {
    "compilerOptions": {
      "module": "commonjs",
      "target": "es6",
      "checkJs": false
    },
    "exclude": [
      "node_modules"
    ]
  }
]]
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- CLangd
nvim_lsp.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- YAML
-- npm install -g yaml-language-server
nvim_lsp.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
  filetypes = { 'yaml', 'yaml.docker-compose', 'yml' }
}

-- Vue
-- npm install -g vls
nvim_lsp.vuels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- Vim
-- npm install -g vim-language-server
nvim_lsp.vimls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- Asm
-- cargo install asm-lsp
nvim_lsp.asm_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
}

-- Lua
nvim_lsp.sumneko_lua.setup {
  --cmd = {"lua-language-server"},
  on_attach = on_attach,
  capabilities = capabilities,
  flags = flags,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

