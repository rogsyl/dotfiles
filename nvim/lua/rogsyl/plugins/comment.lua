-- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
-- https://github.com/numToStr/Comment.nvim
return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true, -- runs requre('Comment').setup()
	--dependencies = {
	--  "JoosepAlviste/nvim-ts-context-commentstring",
	--},
	--config = function()
	--  -- import comment plugin safely
	--  local comment = require("Comment")
	--
	--  local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")
	--
	--  -- enable comment
	--  comment.setup({
	--    -- for commenting tsx and jsx files
	--    pre_hook = ts_context_commentstring.create_pre_hook(),
	--  })
	--end,
}
