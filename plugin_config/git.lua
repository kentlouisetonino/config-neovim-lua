-- Activate the Git neovim support.
require("vgit").setup({
	settings = {
		live_blame = {
			enabled = false,
		},
		live_gutter = {
			enabled = true,
		},
		authorship_code_lens = {
			enabled = false,
		},
	},
})
