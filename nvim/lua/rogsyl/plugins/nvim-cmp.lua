-- A completion plugin
-- https://github.com/hrsh7th/nvim-cmp
return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
		"hrsh7th/cmp-nvim-lsp-signature-help",
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local lspkind = require("lspkind")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
				{ name = "nvim_lsp_signature_help" },
			}),
			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})

		-- function nvim_create_augroups(definitions)
		-- 	for group_name, definition in pairs(definitions) do
		-- 		vim.api.nvim_command("augroup " .. group_name)
		-- 		vim.api.nvim_command("autocmd!")
		-- 		for _, def in ipairs(definition) do
		-- 			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
		-- 			vim.api.nvim_command(command)
		-- 		end
		-- 		vim.api.nvim_command("augroup END")
		-- 	end
		-- end
		--
		-- nvim_create_augroups({
		-- 	go_save = {
		-- 		--{ "BufWritePre", "*.go", "lua vim.lsp.buf.formatting()" },
		-- 		{ "BufWritePre", "*.go", "lua goimports(1000)" },
		-- 	},
		-- })

		-- autocmd("BufWritePre", {
		-- 	pattern = "*.go",
		-- 	callback = function()
		-- 		local params = vim.lsp.util.make_range_params()
		-- 		params.context = { only = { "source.organizeImports" } }
		-- 		-- buf_request_sync defaults to a 1000ms timeout. Depending on your
		-- 		-- machine and codebase, you may want longer. Add an additional
		-- 		-- argument after params if you find that you have to write the file
		-- 		-- twice for changes to be saved.
		-- 		-- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
		-- 		local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
		-- 		for cid, res in pairs(result or {}) do
		-- 			for _, r in pairs(res.result or {}) do
		-- 				if r.edit then
		-- 					local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
		-- 					vim.lsp.util.apply_workspace_edit(r.edit, enc)
		-- 				end
		-- 			end
		-- 		end
		-- 		vim.lsp.buf.format({ async = false })
		-- 	end,
		-- })
	end,
}
