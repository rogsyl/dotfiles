return {
	"rebelot/kanagawa.nvim",
	config = function()
		local kanagawa = require("kanagawa")
		kanagawa.setup({
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "lotus",
			},
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
