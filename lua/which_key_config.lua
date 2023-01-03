local wk = require('which-key')
wk.setup {
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
      g = false
    }
  }
}

local mappings = {
  q = {':q<cr>', 'Quit'},
  w = {':w<cr>', 'Write'},
  x = {':x<cr>', 'Xxxx'},

  t = { ':Twilight<cr>', 'Twilight toggle' },
  E = {':e ~/.config/nvim/lua/plugins.lua<cr>', 'Edit nvim config'},

  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>vim.lsp.buf.hover()<cr>", "Hover Commands" },
    w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
    W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "Goto References" },
    R = { '<cmd>lua vim.lsp.buf.rename()<cr>', "Rename" },
    a = { '<cmd>lua vim.lsp.buf.code_action()<cr>', "Code Action" },
    e = { '<cmd>lua vim.lsp.buf.show_line_diagnostics()<cr>', "Show Line Diagnostics" },
    n = { '<cmd>lua vim.lsp.buf.diagnostic_jump_next()<cr>', "Go To Next Diagnostic" },
    N = { '<cmd>lua vim.lsp.buf.diagnostic_jump_prev()<cr>', "Go To Previous Diagnostic" }
  },

}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
