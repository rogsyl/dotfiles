-- https://github.com/stevearc/oil.nvim
return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "n", "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
	},
}
