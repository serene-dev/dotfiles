
local present, impatient = pcall(require, "impatient")
if present then
  impatient.enable_profile()
end

-- Packer
require('settings')
require('settings.autocmd')

vim.schedule(function()
  require('settings.keymap')
  require('settings.command')
end)

_G.lazy = function(plugin, timer)
  if plugin then
    timer = timer or 0
    vim.defer_fn(function()
      require("packer").loader(plugin)
    end, timer)
  end
end

-- Packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone --depth 1 https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd("packadd packer.nvim")
  require("plugins")
  require("packer").sync()
end

