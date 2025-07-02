-- The goal of nvim-treesitter is both to provide a simple and easy way to use
-- the interface for tree-sitter in Neovim and to provide some basic
-- functionality such as highlighting based on it
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- configure treesitter
			treesitter.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- enable indentation
				indent = {
					enable = true,
					disable = {
						"markdown",
					},
				},
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = {
					enable = true,
				},
				-- ensure these language parsers are installed
				ensure_installed = {
					--"dart",
					"json",
					--"javascript",
					--"typescript",
					--"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"vim",
					--"dockerfile",
					"gitignore",
					--"query",
					"go",
					--"gomod",
					--"gosum",
					"java",
					--"php",
					"templ",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})

			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			--require('ts_context_commentstring').setup {}
		end,
	},
}
