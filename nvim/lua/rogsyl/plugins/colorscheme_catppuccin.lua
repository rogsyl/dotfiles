-- Catppuccin - Soothing pastel theme for (Neo)vim
-- https://github.com/catppuccin/nvim
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		local cat = require("catppuccin")

		cat.setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			--transparent_background = false,
			--integrations = {
			--  cmp = true,
			--  gitsigns = true,
			--  nvimtree = true,
			--  treesitter = true,
			--  notify = false,
			--  mini = {
			--    enabled = true,
			--    indentscope_color = "",
			--  },
			--},
			-- color_overrides = {
			-- 	mocha = {
			-- 		base = "#080808",
			-- 		crust = "#101010",
			-- 		mantle = "#121212",
			-- 		rosewater = "#7a706e", -- #f5e0dc",
			-- 		flamingo = "#796666", -- "#f2cdcd",
			-- 		pink = "#7a6173", -- "#f5c2e7",
			-- 		mauve = "#65537b", -- "#cba6f7",
			-- 		red = "#794554", -- "#f38ba8",
			-- 		maroon = "#755056", -- "#eba0ac",
			-- 		peach = "#7d5943", -- "#fab387",
			-- 		yellow = "#7c7157", -- "#f9e2af",
			-- 		green = "#537150", -- "#a6e3a1",
			-- 		teal = "#4a716a", -- "#94e2d5",
			-- 		sky = "#446e75", -- "#89dceb",
			-- 		sapphire = "#3a6376", -- "#74c7ec",
			-- 		blue = "#445a7d", -- "#89b4fa",
			-- 		lavender = "#5a5f7f", -- "#b4befe",
			-- 		text = "#666b7a", -- "#cdd6f4",
			-- 		subtext1 = "#5d616f", -- "#bac2de",
			-- 		subtext0 = "#535664", -- "#a6adc8",
			-- 		overlay2 = "#494c59", -- "#9399b2",
			-- 		overlay1 = "#3f424e", -- "#7f849c",
			-- 		overlay0 = "#363843", -- "#6c7086",
			-- 		surface2 = "#2c2d38", -- "#585b70",
			-- 		surface1 = "#22232d", -- "#45475a",
			-- 		surface0 = "#181922", -- "#313244",
			-- 	},
			-- },
		})

		-- vim.cmd([[colorscheme catppuccin]])
		-- vim.cmd.colorscheme "catppuccin"
		vim.cmd("colorscheme catppuccin")
	end,
}
