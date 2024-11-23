local lspconfig = require("lspconfig")

-- Configure terraform-ls
lspconfig.terraformls.setup({})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.tf", "*.tfvars" },
	callback = function()
		vim.lsp.buf.format({ async = false }) -- Ensure synchronous formatting
	end,
})
