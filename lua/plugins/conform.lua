--
-- https://github.com/stevearc/conform.nvim
--

return {
	"stevearc/conform.nvim",
  lazy = false,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				svelte = { { "prettierd", "prettier" } },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				graphql = { { "prettierd", "prettier" } },
				java = { "google-java-format" },
				kotlin = { "ktlint" },
				ruby = { "standardrb" },
				markdown = { { "prettierd", "prettier" } },
				erb = { "htmlbeautifier" },
				html = { "htmlbeautifier" },
				bash = { "beautysh" },
				proto = { "buf" },
				rust = { "rustfmt" },
				yaml = { "yamlfix" },
				toml = { "taplo" },
				css = { { "prettierd", "prettier" } },
				scss = { { "prettierd", "prettier" } },
				go = { "gofumpt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				htmx = { { "prettierd", "prettier" } },
				csharp = { "dotnet-format" },
				erlang = { "erlfmt" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>l", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

