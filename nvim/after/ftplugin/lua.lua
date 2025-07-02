vim.keymap.set("n", "<leader>lm", "<CMD>lua print('Vi har lastet lua.lua!')<CR>")

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({

	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = false,
				-- make language server aware of runtime files
				library = {
					-- [vim.fn.expand("$VIMRUNTIME/lua")] = true,
					-- [vim.fn.stdpath("config") .. "/lua"] = true,
					vim.env.VIMRUNTIME,
					vim.fn.stdpath("config"),
				},
				--library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
