-- Use the project local version of prettier.
vim.g.neoformat_try_node_exe = 1

-- Format on save.
vim.api.nvim_exec([[autocmd BufWritePre *.js,*.json,*.ts,*.tsx*,*.jsx,*.html,*.css,*.dart,*.c Neoformat]], false)
