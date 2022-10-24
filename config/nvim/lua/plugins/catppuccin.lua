
local ok, catppuccin = pcall(require, "catppuccin")
if not ok then
  return
end

vim.g.catppuccin_flavour = "macchiato"

catppuccin.setup {
  transparent_background = false,
  term_colors = true,
  integrations = {
    treesitter = true,
    cmp = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = false
    },
    which_key = false,
  },
}
catppuccin.load()

