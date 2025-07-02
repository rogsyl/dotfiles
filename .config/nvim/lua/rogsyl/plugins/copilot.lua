-- return {}
return {
	"github/copilot.vim",
	enable = true,
	lazy = false,
	config = function()
		--vim.g.copilot_no_tab_map = true
		vim.g.copilot_filetypes = {
			["markdown"] = false,
			["text"] = false,
			["help"] = false,
			["TelescopePrompt"] = false,
			["qf"] = false,
			["netrw"] = false,
			["NvimTree"] = false,
		}
		--vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
		--vim.keymap.set("v", "C-j", "<Plug>(copilot-suggest)", { silent = false, desc = "Copilot Suggest" })
		-- add keymap to trigger suggest in visual mode when pressing <C-j>
		vim.keymap.set("v", "<leader>cps", "<Plug>(copilot-suggest)", { silent = false, desc = "Copilot Suggest" })
		vim.g.copilot_assume_mapped = true
	end,
}
