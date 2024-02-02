-- Map leader+ff to Telescope find_files.
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- Map leader+fg to Telescope live_grep.
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- Synchronize the telescope with nerdtree.
vim.api.nvim_exec(
	[[
  augroup TelescopeAutoCmd
    autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeFind | wincmd p | endif
  augroup END
]],
	false
)
