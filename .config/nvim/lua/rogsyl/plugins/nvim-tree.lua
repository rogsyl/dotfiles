-- A file explorer tree for neovim
-- https://github.com/nvim-tree/nvim-tree.lua
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		-- vim.cmd([[ hightlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
			view = {
				width = 60,
			},
			-- change folder arrow icons
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = ">", -- arrow when folder is closed
							arrow_open = "v", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local km = vim.keymap -- for conciseness
		km.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
		km.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
		km.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
		km.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
	end,
}
