vim.g.mapleader = " "
local keymap = vim.keymap
local silent = { silent = true }

keymap.set("n", "<c-a>", "gg<S-v>G", silent)
keymap.set("n", "<C-n>", ":ChatGPT<CR>", silent)

keymap.set("n", "<leader>vs", ":vsplit<Return><C-w>w", silent)
keymap.set("n", "f", "<C-w>w")

keymap.set("n", "H", "^")
keymap.set("n", "L", "$")

-- Better window movement
keymap.set("n", "<C-h>", "<C-w>h", silent)
keymap.set("n", "<C-j>", "<C-w>j", silent)
keymap.set("n", "<C-k>", "<C-w>k", silent)
keymap.set("n", "<C-l>", "<C-w>l", silent)

keymap.set("n", "<S-Tab>", ":BufferNext<CR>", silent)

keymap.set("n", "<leader>1", ":BufferGoto 1<CR>", silent)
keymap.set("n", "<leader>2", ":BufferGoto 2<CR>", silent)
keymap.set("n", "<leader>3", ":BufferGoto 3<CR>", silent)
keymap.set("n", "<leader>4", ":BufferGoto 4<CR>", silent)
keymap.set("n", "<leader>5", ":BufferGoto 5<CR>", silent)
keymap.set("n", "<leader>6", ":BufferGoto 6<CR>", silent)
keymap.set("n", "<leader>7", ":BufferGoto 7<CR>", silent)
keymap.set("n", "<leader>8", ":BufferGoto 8<CR>", silent)
keymap.set("n", "<leader>9", ":BufferGoto 9<CR>", silent)
