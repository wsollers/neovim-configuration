return {
	-- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ "williamboman/mason.nvim", config = true },
		{
			"williamboman/mason-lspconfig.nvim",
			opts = {
				ensure_installed = {
					"efm",
					"bashls",
					"tsserver",
					"solidity",
					"tailwindcss",
					"pyright",
					"html",
					"cssls",
					"lua_ls",
					"emmet_ls",
					"jsonls",
					"gopls",
					"ansiblels",
					"dockerls",
					"csharp_ls",
					"clangd",
					"cmake",
					"cssls",
					"codeqlls",
					"elp",
					"elixirls",
					"graphql",
					"html",
					"htmx",
					"golangci_lint",
					"jsonls",
					"kotlin_language_server",
					"autotools_language_server",
					"marksman",
					"powershell_es",
					"sdqlls",
					"terraformls",
					"vimls",
					"zls",
					"jdtls",
				},

				automatic_installation = true,
			},
		},

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ "j-hui/fidget.nvim", opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		"folke/neodev.nvim",
	},
}
