--
--
--
return {
	"leoluz/nvim-dap-go",
	ftq = { "go" },
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-telescope/telescope-dap.nvim",
	},
	config = function()
		require("dap-go").setup()
	end,
}
