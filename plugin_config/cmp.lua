-- Activate the Completion engine plugin.
require("cmp").setup({
	mapping = {
		["<Tab>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<S-Tab>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<CR>"] = require("cmp").mapping.confirm({ select = true }),
	},
	sources = {
		{ name = "nvim_lsp" },
	},
})
