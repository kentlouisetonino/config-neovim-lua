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

-- This makes the plugin config accessible in other directory.
package.path = package.path .. ";/home/kentlouisetonino/.config/nvim/?.lua"

-- CUSTOM CONFIGURATION
require("plugin_config.vim")

-- THEME CONFIGURATION
require("plugin_config.theme")

-- NERDTREE CONFIGURATION
require("plugin_config.nerdtree")

-- TELESCOPE CONFIGURATION
require("plugin_config.telescope")

-- C/C++ CONFIGURATION
require("plugin_config.c_c++")

-- BASH CONFIGURATION
require("plugin_config.bash")

-- GO CONFIGURATION
require("plugin_config.go")

-- TYPESCRIPT CONFIGURATION
require("plugin_config.typescript")

-- MARKDOWN CONFIGURATION
require("plugin_config.markdown")

-- LUA CONFIGURATION
require("plugin_config.lua")

-- MASON CONFIGURATION
require("plugin_config.mason")

-- NVIM-CMP CONFIGURATION
require("plugin_config.cmp")

-- NEOFORMAT CONFIGURATION
require("plugin_config.neoformat")

-- GIT CONFIGURATION
require("plugin_config.git")
