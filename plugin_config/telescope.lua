local telescope = require("telescope")

-- Include hidden files.
telescope.setup({
	pickers = {
		find_files = {
			hidden = false,
			no_ignore = false,
		},
		file_ignore_patterns = { "node_modules/", ".git/" },
	},
})

-- Search based on the current directory.
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- Entire machine (global)
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files cwd=/ <CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep cwd=/ <CR>", { noremap = true, silent = true })
