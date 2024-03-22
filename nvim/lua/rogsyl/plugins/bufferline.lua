-- A snazzy bufferline for Neovim
-- https://github.com/akinsho/bufferline.nvim
return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = { -- same as calling require(bufferline).setup(opts)
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
}
