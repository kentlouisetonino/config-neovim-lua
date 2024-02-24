-- Show hidden files by default.
vim.api.nvim_set_var("NERDTreeShowHidden", 1)

-- Open the nerdtree.
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- Start NERDTree. If a file is specified, move the cursor to its window.
--vim.api.nvim_exec(
--	[[
--  augroup NERDTreeAutoCmd
--    autocmd!
--    autocmd StdinReadPre * let s:std_in=1
--    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif | silent NERDTreeFind | wincmd p
--  augroup END
--]],
--	false
--)

-- Backup for nerdtree autosynchronize.
vim.api.nvim_set_keymap("n", "<F2>", ":NERDTreeFind<CR>:wincmd p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F1>", ":tabnext<CR>", { noremap = true, silent = true })
