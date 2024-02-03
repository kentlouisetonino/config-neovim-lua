local util = require("lspconfig/util")

-- Active the language server protocol for TypeScript.
require("lspconfig").tsserver.setup({
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		hostInfo = "neovim",
	},
	root_dir = util.root_pattern("tsconfig.json", "package.json", ".git"),
	single_file_support = true,
})
