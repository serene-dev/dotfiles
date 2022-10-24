
local g = vim.g
local o = vim.opt
local fn = vim.fn

-- Global
o.termguicolors = true
o.showtabline = 2
o.scrolloff = 5
o.mouse = 'a'
o.backupcopy = 'yes'
o.undolevels = 1000
o.shortmess:append { c = true, S = true, x = true }
o.showmode = false
o.hidden = true
o.splitright = true
o.splitbelow = true
o.wrapscan = true
o.backup = false
o.writebackup = false
o.showcmd = true
o.showmatch = true
o.incsearch = true
o.ignorecase = true
o.hlsearch = true
o.smartcase = true
o.errorbells = false
o.joinspaces = false
o.title = true
o.lazyredraw = true
o.encoding = 'UTF-8'
o.completeopt = { 'menu', 'menuone', 'noselect' }
-- o.clipboard = 'unnamed,unnamedplus'
o.list = true
o.listchars = { tab = "»·", trail = "·", precedes = "←", extends = "→", nbsp = "␣" }
o.laststatus = 3
o.timeoutlen = 500

o.ttyfast = true
o.regexpengine = 1
o.synmaxcol = 200

o.autoindent = true
o.cindent = true
o.showcmd = false
o.showmode = false

-- Buffer
o.fileformat = 'unix'
o.tabstop = 2
o.spelllang = 'en'
o.softtabstop = 2
o.swapfile = false
o.undofile = false
o.expandtab = true
o.shiftwidth = 2

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 1000

-- Disable providers
g.loaded_perl_provider = 0

-- Leader key to space
g.mapleader = " "

-- Window
o.number = true
o.colorcolumn = "+1"
o.foldenable = false
o.foldmethod = 'indent'
o.foldlevel = 1
o.foldnestmax = 3
o.signcolumn = 'yes'
o.relativenumber = true
o.cursorline = true
o.wrap = false
o.wrapscan = false
o.ruler = true

-- Font
if fn.has('unix') == 1 then
  if fn.system('uname') == "Darwin\n" then
    o.guifont = 'JetBrains Mono:h11'
  else
    o.guifont = 'JetBrains Mono 8'
  end
end

-- Disable builtin plugins
-- g.loaded_matchparen        = 1
g.loaded_matchit           = 1
g.loaded_logiPat           = 1
g.loaded_logipat           = 1
g.loaded_rrhelper          = 1
g.loaded_tar               = 1
g.loaded_tarPlugin         = 1
g.loaded_man               = 1
g.loaded_gzip              = 1
g.loaded_zip               = 1
g.loaded_zipPlugin         = 1
g.loaded_2html_plugin      = 1
g.loaded_shada_plugin      = 1
g.loaded_spellfile_plugin  = 1
g.loaded_netrw             = 1
g.loaded_netrwPlugin       = 1
g.loaded_netrwSettings     = 1
g.loaded_netrwFileHandlers = 1
g.loaded_tutor_mode_plugin = 1
g.loaded_remote_plugins    = 1
g.loaded_getscript         = 1
g.loaded_getscriptPlugin   = 1
g.loaded_vimball           = 1
g.loaded_vimballPlugin     = 1
g.loaded_fzf               = 1
g.loaded                   = 1

