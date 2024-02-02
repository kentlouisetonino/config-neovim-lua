-- Map leader+ff to Telescope find_files.
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- Map leader+fg to Telescope live_grep.
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

vim.api.nvim_exec(
	[[
  augroup TelescopeFindFiles
    autocmd!
    autocmd FileType telescope | silent NERDTreeFind
  augroup END
]],
	false
)

_G.my_module = {}

function my_module.onTelescopeFindFiles()
	print("hello world")
end
