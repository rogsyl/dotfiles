-- WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing
-- https://github.com/folke/which-key.nvim
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500

		local km = vim.keymap -- for conciseness

		km.set("n", "<M-k>", "<cmd>WhichKey<CR>", { desc = "Toggle WhichKey mapping" })
		km.set("v", "<M-k>", "<cmd>WhichKey '' v<CR>", { desc = "Toggle WhichKey mapping" })
		km.set("i", "<M-k>", "<cmd>WhichKey '' i<CR>", { desc = "Toggle WhichKey mapping" })
		km.set("c", "<M-k>", "<cmd>WhichKey '' c<CR>", { desc = "Toggle WhichKey mapping" })
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
