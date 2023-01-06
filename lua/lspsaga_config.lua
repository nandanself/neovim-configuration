local lspsaga = require("lspsaga")

lspsaga.init_lsp_saga({
	server_filetype_map = {
		typescript = "typescript",
	},
})

local keymap = vim.keymap.set
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = false })
