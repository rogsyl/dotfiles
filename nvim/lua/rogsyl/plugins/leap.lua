-- github.com/ggandor/leap.nvim
-- Neovim's answer to the mouse
-- Dependency: https://github.com/tpope/vim-repeat
return {
	"ggandor/leap.nvim",
	dependencies = {
		"tpope/vim-repeat",
	},
	config = function()
		local leap = require("leap")
		leap.create_default_mappings()
	end,
}
