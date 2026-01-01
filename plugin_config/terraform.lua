-- Configure terraform-ls
vim.lsp.enable('terraformls')

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.tf", "*.tfvars" },
	callback = function()
		vim.lsp.buf.format({ async = false }) -- Ensure synchronous formatting
	end,
})
