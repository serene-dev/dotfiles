
local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then
  return
end

vim.cmd [[highlight IndentBlanklineChar guifg=#353535 gui=nocombine]]

indent_blankline.setup {
  char = "▏",
  filetype_exclude = {
    "help",
    "terminal",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "alpha",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
}

