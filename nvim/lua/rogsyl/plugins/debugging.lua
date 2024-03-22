-- dap - Debug Adapter Protocol client implementation for Neovim
-- https://github.com/mfussenegger/nvim-dap

-- dap debug adapter installation
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation

-- dap-ui - A UI for nvim-dap
-- https://github.com/rcarriga/nvim-dap-ui

-- dap-go - An extension for nvim-dap providing configurations for launching go debugger (delve) and debugging individual tests
-- https://github.com/leoluz/nvim-dap-go

-- nvim-nio - A library for asynchronous IO in Neovim
-- https://github.com/nvim-neotest/nvim-nio

return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"leoluz/nvim-dap-go",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},

	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()
		require("dap-go").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Debug toggle breakpoint" })
		vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Debug continue" })
	end,
}
