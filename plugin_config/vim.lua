-- Display line numbers.
vim.opt.number = true

-- Auto indent new lines.
vim.opt.autoindent = true

-- Use spaces instead of tabs.
vim.opt.expandtab = true

-- Set tab width to 2 spaces.
vim.opt.tabstop = 2

-- Indent by 2 spaces.
vim.opt.shiftwidth = 2

-- Use smartt tabs.
vim.opt.smarttab = true

-- Set soft tab stop to 2 spaces.
vim.opt.softtabstop = 2

-- Enable mouse support in all nodes.
vim.opt.mouse = "a"

-- Disable completion preview.
vim.opt.completeopt = vim.opt.completeopt - "preview"

-- Exit the application.
-- Attackshark M87 function keys not working in linux.
-- Change from F9 to f9.
vim.api.nvim_set_keymap("n", "f9", ":q<CR>", { noremap = true, silent = true })

-- Adjust the width of pane to the right.
-- Change from F8 to f8.
vim.api.nvim_set_keymap("n", "f8", "<C-w><", { noremap = true, silent = true })

-- Adjust the width of pane to the left.
-- Change from F7 to f7.
vim.api.nvim_set_keymap("n", "f7", "<C-w>>", { noremap = true, silent = true })

-- Go to definition.
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Horizontal terminal.
-- Change from F1 to f1.
vim.api.nvim_set_keymap("n", "f1", ":tabnew | terminal<CR>", { noremap = true, silent = true })

-- Allow escape when in insert mode in terminal.
-- Change from F2 to f2.
vim.api.nvim_exec(
	[[
  autocmd TermOpen * tnoremap <buffer> f2 <C-\><C-n>
]],
	false
)

-- Allow clipboard functionality.
vim.opt.clipboard:append("unnamedplus")
