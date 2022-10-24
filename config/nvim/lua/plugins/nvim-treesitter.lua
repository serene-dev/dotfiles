
local ok, treesitter_configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treesitter_configs.setup {
  -- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "phpdoc", "tree-sitter-phpdoc" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false
  },
  context_commentstring = {
    enable = false, --true,
    enable_autocmd = false,
  },
  incremental_selection = {
    enabled = true
  },
  indent = {
    enabled = true,
    disable = {}
  },
  matchup = {
    enable = true
  }
}

