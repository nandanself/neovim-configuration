local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
	-- In this case, we create a function that lets us more easily define mappings specific
	-- for LSP related items. It sets the mode, buffer and description for us each time.

	-- local nmap = function(keys, func, desc)
	--   if desc then
	--     desc = 'LSP: ' .. desc
	--   end
	--
	--   vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })

	-- nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
	--

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_config = {
	capabilities = capabilities,
	on_attach = function(_, bufnr)
		on_attach(_, bufnr)
	end,
}

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup(lsp_config)
	end,
	sumneko_lua = function()
		require("lspconfig").sumneko_lua.setup(vim.tbl_extend("force", lsp_config, {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		}))
	end,
	tsserver = function()
		require("typescript").setup({
			server = vim.tbl_extend("force", lsp_config, {
				on_attach = function(_, bufnr)
					on_attach(_, bufnr)
				end,
				cmd = { "typescript-language-server", "--stdio" },
				filetypes = {
					"javascript",
					"javascriptreact",
					"javascript.jsx",
					"typescript",
					"typescriptreact",
					"typescript.tsx",
				},
				init_options = {
					preferences = {
						importModuleSpecifierPreference = "project=relative",
						jsxAttributeCompletionStylr = "none",
					},
				},
			}),
		})
	end,
})

vim.keymap.set("n", "<leader>a", "<cmd>TypescriptAddMissingImports<cr>")
vim.keymap.set("n", "<leader>r", "<cmd>TypescriptRemoveUnused<cr>")
