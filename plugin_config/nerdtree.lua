-- Show hidden files by default.
vim.api.nvim_set_var("NERDTreeShowHidden", 1)

-- Handle toggle.
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>:wincmd p<CR>", { noremap = true, silent = true })

-- Automatically open NERDTree when Neovim starts (optional)
vim.cmd([[autocmd VimEnter * NERDTree]])

-- Backup for nerdtree autosynchronize.
vim.api.nvim_set_keymap("n", "<F2>", ":NERDTreeFind<CR>:wincmd p<CR>", { noremap = true, silent = true })
