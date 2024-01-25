-- VIM PLUG CONFIGURATION
-- Install and load vim-plug if not installed.
local plug_path = vim.fn.stdpath("data") .. "/site/autoload/plug.vim"
if vim.fn.filereadable(plug_path) == 0 then
	vim.fn.system({
		"curl",
		"-fLo",
		plug_path,
		"--create-dirs",
		"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
	})
	vim.cmd("source " .. plug_path)
	vim.cmd("PlugInstall --sync | source $MYVIMRC")
end
vim.cmd([[
  call plug#begin()
  Plug 'https://github.com/preservim/nerdtree'
  Plug 'https://github.com/nvim-telescope/telescope.nvim'
  Plug 'https://github.com/nvim-lua/plenary.nvim'
  Plug 'https://github.com/dasupradyumna/midnight.nvim'
  Plug 'https://github.com/vim-airline/vim-airline'
  Plug 'https://github.com/neovim/nvim-lspconfig'
  Plug 'https://github.com/hrsh7th/nvim-cmp'
  Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
  Plug 'https://github.com/fatih/vim-go'
  Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
  Plug 'https://github.com/sbdchd/neoformat'
  Plug 'https://github.com/stevearc/dressing.nvim'
  Plug 'https://github.com/akinsho/flutter-tools.nvim'
  Plug 'https://github.com/mfussenegger/nvim-dap'
  Plug 'https://github.com/tanvirtin/vgit.nvim'
  Plug 'https://github.com/stevearc/dressing.nvim'
  Plug 'https://github.com/akinsho/flutter-tools.nvim'
  Plug 'https://github.com/williamboman/mason.nvim'
  Plug 'https://github.com/mhartington/formatter.nvim'
  call plug#end()
]])

-- DEFAULT VIM CONFIGURATION
-- Display line numbers.
vim.opt.number = true
-- Auto indent new lines.
vim.opt.autoindent = true
-- Use spaces instead of tabs.
vim.opt.expandtab = true
-- Set tab width to 2 spaces.
vim.opt.tabstop = 2
-- Indent by 2 spaces.
vim.opt.shiftwidth = 2
-- Use smartt tabs.
vim.opt.smarttab = true
-- Set soft tab stop to 2 spaces.
vim.opt.softtabstop = 2
-- Enable mouse support in all nodes.
vim.opt.mouse = "a"
-- Disable completion preview.
vim.opt.completeopt = vim.opt.completeopt - "preview"

-- CUSTOM THEME CONFIGURATION
vim.cmd("colorscheme midnight")

-- CUSTOM CONFIGURATION
-- Exit the application.
vim.api.nvim_set_keymap("n", "<F9>", ":q<CR>", { noremap = true, silent = true })
-- Adjust the width of pane to the right.
vim.api.nvim_set_keymap("n", "<F8>", "<C-w><", { noremap = true, silent = true })
-- Adjust the width of pane to the left.
vim.api.nvim_set_keymap("n", "<F7>", "<C-w>>", { noremap = true, silent = true })

-- NERDTREE CONFIGURATION
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

-- TELESCOPE CONFIGURATION
-- Map leader+ff to Telescope find_files.
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
-- Map leader+fg to Telescope live_grep.
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- C/C++ CONFIGURATION
require("lspconfig").clangd.setup({})

-- BASH CONFIGURATION
require("lspconfig").bashls.setup({})

-- GO CONFIGURATION
require("lspconfig").gopls.setup({})

-- TYPESCRIPT CONFIGURATION
require("lspconfig").tsserver.setup({})

-- MARKDOWN CONFIGURATION
require("lspconfig").marksman.setup({})

-- LUA CONFIGURATION
-- Declare utilities variable for formatter.
local util = require("formatter.util")
-- Require the lua language server.
require("lspconfig").lua_ls.setup({
	cmd = { "/opt/lua-language-server/bin/lua-language-server" },
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
})
-- Setup the formatter for lua and any files.
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
-- Format after save.
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

-- MASON CONFIGURATION
require("mason").setup()

-- NVIM-CMP CONFIGURATION
require("cmp").setup({
	mapping = {
		["<Tab>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<S-Tab>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Insert }),
		["<CR>"] = require("cmp").mapping.confirm({ select = true }),
	},
	sources = {
		{ name = "nvim_lsp" },
	},
})

-- NEOFORMAT CONFIGURATION
-- Use the project local version of prettier.
vim.g.neoformat_try_node_exe = 1
-- Format on save.
vim.api.nvim_exec([[autocmd BufWritePre *.js,*.json,*.ts,*.tsx*,*.jsx,*.html,*.css,*.dart Neoformat]], false)

-- GIT CONFIGURATION
require("vgit").setup({
	settings = {
		live_blame = {
			enabled = false,
		},
		live_gutter = {
			enabled = true,
		},
		authorship_code_lens = {
			enabled = false,
		},
	},
})
