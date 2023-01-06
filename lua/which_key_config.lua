local wk = require("which-key")
wk.setup({
	plugins = {
		marks = false,
		registers = false,
		spelling = { enabled = false, suggestions = 20 },
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = false,
			g = false,
		},
	},
})

local mappings = {
	q = { ":q<cr>", "Quit" },
	w = { ":w<cr>", "Write" },
	x = { ":x<cr>", "Xxxx" },

	t = { ":Twilight<cr>", "Twilight toggle" },
	E = { ":e ~/.config/nvim/lua/plugins.lua<cr>", "Edit nvim config" },

	b = {
		name = "Buffer",

		p = { "<Cmd>BufferPin<CR>", "Pin/Unpin Buffer" },
		c = { "<Cmd>BufferCloseAllButVisible<CR>", "Close all Buffer" },
	},

	l = {
		name = "LSP",
		i = { ":LspInfo<cr>", "Connected Language Servers" },
		h = { "<cmd>Lspsaga lsp_finder<CR>", "Lsp finder" },
		k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
		K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
		w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
		W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder" },
		l = {
			"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
			"List Workspace Folders",
		},
		t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },

		-- Peek Definition
		-- you can edit the definition file in this flaotwindow
		-- also support open/vsplit/etc operation check definition_action_keys
		-- support tagstack C-t jump back
		-- p = { "<cmd>Lspsaga peek_definition<cr>", "Peek Definition" },

		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "Goto References" },
		R = { "<cmd>Lspsaga rename<cr>", "Rename" },
		a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
	},
}
local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
