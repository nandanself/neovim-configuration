vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	actions = {
		open_file = { quit_on_open = false },
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},

	view = {
		adaptive_size = false,
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 200,
				-- height = 300,
				row = 10,
				col = 10,
			},
		},
	},
	git = {
		enable = true,
	},
	log = {
		enable = true,
		types = {
			diagnostics = true,
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		debounce_delay = 50,
		icons = {
			hint = "H",
			info = "I",
			warning = "W",
			error = "E",
		},
	},
})

vim.keymap.set("n", "<c-q>", "<cmd>NvimTreeToggle<cr>")
