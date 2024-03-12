-- This allows <C-t> for NERDTree to work well.
vim.g.go_def_mapping_enabled = 0

-- Activate the language server protocol for Go.
require("lspconfig").gopls.setup({})
