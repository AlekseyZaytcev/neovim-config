return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "tokyonight",
				-- theme = "gruvbox_dark",
				theme = "monokai-pro",
			},
		})
	end,
}
