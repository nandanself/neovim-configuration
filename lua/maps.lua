vim.g.mapleader = ' '
local keymap = vim.keymap
local silent = { silent = true }

keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', 'f', '<C-w>w')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- Better window movement
keymap.set("n", "<C-h>", "<C-w>h", silent)
keymap.set("n", "<C-j>", "<C-w>j", silent)
keymap.set("n", "<C-k>", "<C-w>k", silent)
keymap.set("n", "<C-l>", "<C-w>l", silent)
