return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local actions = require("telescope.actions")
			local telescopeConfig = require("telescope.config")

			-- Clone the default Telescope configuration
			local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
			-- I want to search in hidden/dot files.
			table.insert(vimgrep_arguments, "--hidden")
			-- I don't want to search in the `.git` directory.
			table.insert(vimgrep_arguments, "--glob")
			table.insert(vimgrep_arguments, "!**/.git/*")

			require("telescope").setup({
				defaults = {
					-- for monokai pro
					borderchars = { "█", " ", "▀", "█", "█", " ", " ", "▀" },
					mappings = {
						i = {
							-- Close telescope when hit ESC(do not need to press twice [normalmode])
							["<esc>"] = actions.close,
							-- Clear prompt
							["<C-u>"] = false,
							-- Delete line from search
							["<c-d>"] = actions.delete_buffer + actions.move_to_top,
						},
					},
					vimgrep_arguments = vimgrep_arguments,
					pickers = {
						find_files = {
							-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
							find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
						},
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find text in files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
