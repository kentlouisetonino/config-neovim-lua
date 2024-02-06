require("lspconfig").tsserver.setup({
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact" },
	init_options = {
		documentFormatting = true,
	},
	settings = {
		rootMarkers = { "package.json" },
		languages = {
			typescript = {
				{
					formatCommand = "efm-langserver",
					formatStdin = true,
				},
			},
		},
	},
})
