
local ok, whichkey = pcall(require, "which-key")
if not ok then
  return
end

whichkey.setup({
  window = {
    border = { "┏", "━", "┓", "┃", "┛","━", "┗", "┃" },
  },
})

