-- lua `fork` of vim-web-devicons for neovim
-- https://github.com/nvim-tree/nvim-web-devicons
return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").set_icon({
			gql = {
				icon = "",
				color = "#e535ab",
				cterm_color = "199",
				name = "GraphQL",
			},
		})
	end,
}
