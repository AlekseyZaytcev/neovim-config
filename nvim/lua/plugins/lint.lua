return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				markdown = { "vale" },
				lua = { "luacheck" },
			}

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
	{
		"mhartington/formatter.nvim",
		config = function()
			local util = require("formatter.util")
			require("formatter").setup({
				logging = true,
				-- Set the log level
				log_level = vim.log.levels.WARN,
				-- All formatter configurations are opt-in
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					javascript = {
						require("formatter.filetypes.javascript").prettier,
					},
					json = {
						require("formatter.filetypes.json").jq,
					},

					css = {
						require("formatter.filetypes.css").prettier,
					},
					ruby = {
						function()
							return {
								exe = "bundle exec rubocop",
								args = {
									"--fix-layout",
									"--stdin",
									util.escape_path(util.get_current_buffer_file_name()),
									"--format",
									"files",
								},
								stdin = true,
								transform = function(text)
									table.remove(text, 1)
									table.remove(text, 1)
									return text
								end,
							}
						end,
					},
					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})

			local augroup = vim.api.nvim_create_augroup
			local autocmd = vim.api.nvim_create_autocmd
			augroup("__formatter__", { clear = true })
			autocmd("BufWritePost", {
				group = "__formatter__",
				command = ":FormatWrite",
			})
		end,
	},
}
