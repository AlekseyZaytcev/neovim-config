-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			-- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- 			style = "moon",
-- 		})
-- 		vim.cmd([[colorscheme tokyonight]])
-- 	end,
-- }

--return {
--	"ellisonleao/gruvbox.nvim",
--	lazy = false,
--	priority = 1000,
--	opts = {},
--	config = function()
--		require("gruvbox").setup({
--			contrast = "soft",
--		})
--		vim.cmd([[colorscheme gruvbox]])
--	end,
--}

return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("monokai-pro").setup({
			-- for telescope
			background_clear = {},
		})
		vim.cmd([[colorscheme monokai-pro]])
	end,
}
