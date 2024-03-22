-- A modern plugin manager for Neovim
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- { import = "rogsyl.plugins" },
require("lazy").setup({
	{ import = "rogsyl.plugins" },
	{ import = "rogsyl.plugins.lsp" },
}, {
	install = {
		colorscheme = { "catppuccin" },
		-- vim.cmd.colorscheme "catppuccin",
	},
	checker = { -- Lazy plugin update checker
		enabled = true,
		notify = false, -- lualine displays count of plugin updates available
	},
	change_detection = { -- neovim config file change detection
		notify = false, -- lualine displays count of plugin updates available
	},
})
