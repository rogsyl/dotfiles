-- Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters
-- https://github.com/williamboman/mason.nvim
return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- "tsserver",
				-- "html",
				-- "cssls",
				"gopls",
				-- "tailwindcss",
				"lua_ls",
				"templ",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				--"bash-language-server",
				--"css-lsp",
				"delve",
				"gopls",
				"go-debug-adapter",
				"goimports",
				"golangci-lint",
				"golines",
				"gomodifytags",
				"lua-language-server",
				--"prettier", -- prettier formatter
				"stylua", -- lua formatter
				--"isort", -- python formatter
				--"black", -- python formatter
				--"pylint", -- python linter
				--"eslint_d", -- js linter
				"templ",
			},
		})
	end,
}
