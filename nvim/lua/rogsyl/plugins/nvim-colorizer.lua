-- The fastest Neovim colorizer.
-- https://github.com/norcalli/nvim-colorizer.lua
return {
	"NvChad/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
}
