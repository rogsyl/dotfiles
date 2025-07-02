-- A small automated session manager for Neovim
-- https://github.com/rmagatti/auto-session
-- Files saved in: /Users/roger/.local/share/nvim/sessions/
-- To find path, in NeoVim do:  :echo stdpath("data") .. "/session/"
return {
	"rmagatti/auto-session",
	lazy = false,
	opts = {
		suppressed_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
		buftypes_to_ignore = {},
		load_on_setup = true,
		theme_conf = { border = true },
		previewer = false,
	},
	keys = {
		{ "<leader>ls", "<cmd>SessionSearch<CR>", desc = "Search session" },
		-- { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" },
		-- { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for cwd" },
	},
}
