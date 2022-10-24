
local ok, packer = pcall(require, "packer")
if not ok then
  return
end

packer.init {
  auto_clean = true,
  auto_reload_compiled = true,
  compile_on_sync = true,
  disable_commands = true,
  git = { clone_timeout = 6000 }
}

packer.startup(function(use)
  -- Load lua path
  local config = function(name)
    return require('plugins.' .. name)
  end
  local config_nvim = function(name)
    return require('plugins.' .. name:sub(0, -6):lower())
  end
  local config_lua = function(name)
    return require('plugins.' .. name:sub(0, -5):lower())
  end

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'

  -- LSP
  use { 'neovim/nvim-lspconfig', config = config }
  use { 'onsails/lspkind-nvim' }
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }

  -- Autocomplete
  use { 'hrsh7th/nvim-cmp', config = config }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  --use { 'hrsh7th/cmp-vsnip' }
  --use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-path' }
  --use { 'hrsh7th/cmp-calc' }
  --use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'ray-x/cmp-treesitter' }
  --use { 'lukas-reineke/cmp-rg' }
  --use { 'quangnguyen30192/cmp-nvim-tags' }
  --use { 'rafamadriz/friendly-snippets' }
  use { 'windwp/nvim-autopairs', config = config }
  use { 'windwp/nvim-ts-autotag', config = config } -- tags autocompletion

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = config }
  -- use { 'p00f/nvim-ts-rainbow', config = lua_path"nvim-ts-rainbow" }
  -- use { 'lukas-reineke/indent-blankline.nvim', config = config_nvim }
  -- use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  -- use { 'lewis6991/nvim-treesitter-context' }
  -- use { 'SmiteshP/nvim-gps', config = lua_path"nvim-gps" }

  -- Syntax
  use { 'slim-template/vim-slim' }
  -- use { 'chrisbra/csv.vim' }
  -- use { 'junegunn/vim-easy-align' }
  -- use { 'mhartington/formatter.nvim', config = lua_path"formatter" }
  -- use { 'zdharma-continuum/zinit-vim-syntax' }
  use { 'numToStr/Comment.nvim', config = config_nvim }

  -- Icons
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'ryanoasis/vim-devicons' }

  -- Status Line and Bufferline
  use { 'famiu/feline.nvim', config = config_nvim }
  --use { 'kazhala/close-buffers.nvim' }
  --use { 'noib3/nvim-cokeline', config = lua_path"nvim-cokeline" }
  use { 'akinsho/bufferline.nvim', config = config_nvim }

  -- Telescope
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim', config = config_nvim }
  -- use { 'nvim-telescope/telescope-fzy-native.nvim' }
  -- use { 'cljoly/telescope-repo.nvim' }
  -- use { 'nvim-telescope/telescope-dap.nvim' }
  -- use { 'pwntester/octo.nvim', config = lua_path"octo" }

  -- Explorer
  use { 'kyazdani42/nvim-tree.lua', config = config_lua }

  -- Color
  use { 'navarasu/onedark.nvim', config = config_nvim }
  --use { 'catppuccin/nvim', config = lua_path"catppuccin" }

  -- View
  use { 'lukas-reineke/indent-blankline.nvim', config = config_nvim }
  -- use { 'stevearc/dressing.nvim', config = lua_path"dressing" }

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}, config = config_nvim }
  use { 'kdheepak/lazygit.nvim' }
  -- use { 'rhysd/committia.vim' }

  -- Registers & clipboard
  -- use { 'AckslD/nvim-neoclip.lua', config = lua_path"nvim-neoclip" }

  -- Move & Search & replace
  -- use { 'nacro90/numb.nvim', config = lua_path"numb" }
  -- use { 'dyng/ctrlsf.vim', config = lua_path"ctrlsf" }
  -- use { 'kevinhwang91/nvim-hlslens', config = lua_path"hlslens" }
  -- use { 'ggandor/lightspeed.nvim', config = lua_path"lightspeed" }
  -- use { 'karb94/neoscroll.nvim', config = lua_path"neoscroll" }
  -- use { 'dstein64/nvim-scrollview' }
  -- use { 'chaoren/vim-wordmotion' }
  -- use { 'fedepujol/move.nvim' }
  use { 'phaazon/hop.nvim', config = config_nvim }

  -- Tim Pope docet
  use { 'tpope/vim-rails' }
  -- use { 'tpope/vim-abolish' }
  -- use { 'tpope/vim-sleuth' }
  -- use { 'tpope/vim-bundler' }
  -- use { 'tpope/vim-capslock' }
  -- use { 'tpope/vim-repeat' }
  -- use { 'tpope/vim-endwise' }
  -- use { 'tpope/vim-dispatch' }
  -- use { 'tpope/vim-dadbod' }
  -- use { 'tpope/vim-jdaddy' }
  use { 'tpope/vim-fugitive' }

  -- Folke
  -- use { 'folke/trouble.nvim' }
  -- use { 'folke/todo-comments.nvim', config = lua_path"todo-comments" }
  use { 'folke/which-key.nvim', config = config_nvim }

  -- Tmux
  -- use { 'christoomey/vim-tmux-navigator' }

  -- Tags
  -- use { 'ludovicchabant/vim-gutentags', config = lua_path"vim-gutentags" }

  -- Debugger
  -- use { 'mfussenegger/nvim-dap', config = lua_path"nvim-dap" }
  -- use { 'rcarriga/nvim-dap-ui', config = lua_path"nvim-dap-ui" }
  -- use { 'theHamsta/nvim-dap-virtual-text', config = lua_path"nvim-dap-virtual-text" }

  -- General Plugins
  use { 'machakann/vim-sandwich', config = config }
  use { 'rcarriga/nvim-notify', config = config }
  -- use { 'airblade/vim-rooter', config = lua_path"vim-rooter" }
  -- use { 'goolord/alpha-nvim', config = config }
  -- use { 'jeffkreeftmeijer/vim-numbertoggle' }
  -- use { 'lambdalisue/suda.vim' }
  use { 'numtostr/FTerm.nvim', config = config_nvim }
  -- use { 'wfxr/minimap.vim', config = lua_path"minimap" }
  -- use { 'luukvbaal/stabilize.nvim', config = lua_path"stabilize" }
  -- use { 'beauwilliams/focus.nvim', config = lua_path"focus" }
  -- use { 'kevinhwang91/nvim-bqf' }
  use { 'rmagatti/auto-session', config = config }

  -- Vimwiki
  use { 'vimwiki/vimwiki' }
  use { 'jamessan/vim-gnupg' }
end)

