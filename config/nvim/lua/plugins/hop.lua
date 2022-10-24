
local ok, hop = pcall(require, 'hop')
if not ok then
  return
end

hop.setup {
  keys = "etovxqpdygfblzhckisuran"
}

-- HopPattern
vim.api.nvim_set_keymap('n', '<leader>f', ":HopPattern<CR>", { silent = true })
-- HopWord
vim.api.nvim_set_keymap('n', '<leader>g', ":HopWord<CR>", { silent = true })

