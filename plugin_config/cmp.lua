-- (noinsert) Prevents the automatic insertion of the highest priority match.
-- (menuone) Shows the popup menu even if there is only one match.
-- (noselect) Prevents automatic selection of the first match in the completion menu.
vim.o.completeopt = "noinsert,menuone,noselect"

-- Activate the Completion engine plugin.
require("cmp").setup({
	mapping = {
		["<Tab>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<S-Tab>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<CR>"] = require("cmp").mapping.confirm({ select = true }),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	},
})
