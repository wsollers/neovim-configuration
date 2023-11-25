--
-- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
--
return {
	"simrat39/rust-tools.nvim",
	setup = function()
		require("rust-tools").setup({
			tools = {
				autoSetHints = true,
				hover_with_actions = true,
				runnables = {
					use_telescope = true,
				},
				inlay_hints = {
					show_parameter_hints = true,
					parameter_hints_prefix = "<- ",
					other_hints_prefix = "=> ",
				},
			},
			server = {
				on_attach = require("lsp").on_attach,
				capabilities = require("lsp").capabilities,
				settings = {
					["rust-analyzer"] = {
						assist = {
							importGranularity = "module",
							importPrefix = "by_self",
						},
						cargo = {
							loadOutDirsFromCheck = true,
						},
						procMacro = {
							enable = true,
						},
					},
				},
			},
		})
	end,
}
