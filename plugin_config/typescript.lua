-- coc.nvim setup
vim.api.nvim_exec(
	[[
  autocmd BufEnter *.js,*.jsx,*.ts,*.tsx,*.json call coc#activate()
  autocmd BufLeave *.js,*.jsx,*.ts,*.tsx,*.json call coc#deactivate()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
  inoremap <silent><expr> <c-space> coc#refresh()
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nnoremap <silent> K :call v:lua.show_documentation()<CR>
]],
	false
)

-- Temporary solution for handling documentation.
local function show_documentation()
	local filetype = vim.bo.filetype
	if vim.tbl_contains({ "vim", "help" }, filetype) then
		vim.cmd("h " .. vim.fn.expand("<cword>"))
	else
		vim.fn.CocActionAsync("doHover")
	end
end
