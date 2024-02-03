local lspconfig = require("lspconfig")

-- Active the language server protocol for TypeScript.
lspconfig.tsserver.setup({
	cmd = { "typescript-language-server", "--stdio" },
	init_options = {
		hostInfo = "neovim",
	},
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json"),
	single_file_support = true,
})
