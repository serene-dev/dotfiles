
local map = vim.keymap.set
local o = { noremap = true, silent = true }

-- NvimTree
map('n', ':', ':NvimTreeClose<CR>:', { noremap = true })
map('n', '-', ':NvimTreeToggle<CR>', o)
map('n', '<leader>e', ':NvimTreeToggle<CR>', o)

-- Switch between buffers
map('n', "''", ':b#<CR>', o)
map('n', '<leader>j', ':bp<CR>', o)
map('n', '<leader>l', ':bn<CR>', o)
map('n', '<leader>q', ':bd<CR>', o)
map('n', '<leader>Q', ':bd!<CR>', o)
-- map('n', '<leader>w', ':%bd|e#<CR>', o)
map('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', o)
map('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', o)
map('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', o)
map('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', o)
map('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', o)
map('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', o)
map('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', o)
map('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', o)
map('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', o)
map('n', '<leader>0', ':BufferLineGoToBuffer 10<CR>', o)

-- Copy/paste from system clipboard
map('', '<leader>y', '"+y', o)
map('', '<leader>p', '"+p', o)
map('', '<leader>Y', '"+Y', o)
map('', '<leader>P', '"+P', o)

-- Copy current file name to clipboard
map('', '<leader>cp', ':let @+=expand(\'%\')<CR>', o)

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')

-- FTerm
map('', '<leader>t', ':lua require("FTerm").toggle()<CR>', o)

-- Telescope
map('', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>", o)
map('', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>", o)
map('', '<leader>fb', ":lua require('telescope.builtin').buffers()<CR>", o)
map('', '<leader>fh', ":lua require('telescope.builtin').help_tags()<CR>", o)
map('', '<leader>fr', ":lua require('telescope.builtin').resume()<CR>", o)
map('', '<leader>ft', ":lua require('utils.live_grep_in_folder').live_grep_in_folder()<CR>", o)

-- Disable arrow keys
map('', '<Up>', '<Nop>', o)
map('', '<Left>', '<Nop>', o)
map('', '<Right>', '<Nop>', o)
map('', '<Down>', '<Nop>', o)

