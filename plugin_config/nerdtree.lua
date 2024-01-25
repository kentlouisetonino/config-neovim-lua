-- Open the nerdtree.
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- Start NERDTree. If a file is specified, move the cursor to its window.
vim.api.nvim_exec(
	[[
  augroup NERDTreeAutoCmd
    autocmd!
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
  augroup END
]],
	true
)

-- Open the existing NERDTree on each new tab.
vim.cmd([[
  autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
]])
