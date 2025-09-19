-- MOONFLY THEME
require("moonfly").custom_colors({
	bg = "#000000",
})
vim.cmd([[colorscheme moonfly]])

-- KANAGAWA THEME
-- vim.cmd([[ colorscheme kanagawa-wave ]])

-- DARCULA DARK THEME
-- require("darcula").setup({
-- 	override = function()
-- 		return {
-- 			background = "#333333",
-- 			dark = "#000000",
-- 		}
-- 	end,
-- 	opt = {
-- 		integrations = {
-- 			telescope = false,
-- 			lualine = false,
-- 			lsp_semantics_token = false,
-- 			nvim_cmp = false,
-- 			dap_nvim = false,
-- 		},
-- 	},
-- })
-- vim.cmd([[ colorscheme darcula-dark ]])

-- NIGHTFOX THEME
-- require("nightfox").setup({
-- 	options = {
-- 		transparent = true,
-- 	},
-- })
-- vim.cmd([[ colorscheme carbonfox ]])

-- MIDNIGHT THEME
-- vim.cmd([[ colorscheme midnight ]])

-- VSCODE THEME
-- require("vscode").setup({
-- 	transparent = true,
-- })
-- vim.cmd([[ colorscheme vscode ]])

-- CATPPUCCIN THEME
-- require("catppuccin").setup({
--	transparent_background = true,
-- })
-- vim.cmd([[ colorscheme catppuccin ]])

-- DEFAULT NO THEME
-- vim.cmd([[
--  highlight Normal guibg=NONE ctermbg=NONE
--  highlight NormalNC guibg=NONE ctermbg=NONE
--  highlight Pmenu guibg=NONE ctermbg=NONE
--  highlight SignColumn guibg=NONE ctermbg=NONE
--  highlight VertSplit guibg=NONE ctermbg=NONE
-- ]])
