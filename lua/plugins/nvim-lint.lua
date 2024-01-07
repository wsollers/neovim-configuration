return {
	"mfussenegger/nvim-lint",
  lazy = false,
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
			lua = { "luacheck" },
			python = { "flake8" },
			sh = { "shellcheck" },
			vim = { "vint" },
			yaml = { "yamllint" },
			json = { "jsonlint" },
			markdown = { "markdownlint" },
			rust = { "cargo" },
			go = { "golangcilint" },
			cpp = { "cppcheck" },
			c = { "cppcheck" },
			cs = { "dotnetformat" },
			java = { "checkstyle" },
			kotlin = { "ktlint" },
			php = { "phpcs" },
			ruby = { "rubocop" },
			swift = { "swiftlint" },
			scala = { "scalafmt" },
			haskell = { "hlint" },
			dockerfile = { "hadolint" },
			docker = { "hadolint" },
			html = { "htmlhint" },
			css = { "stylelint" },
			scss = { "stylelint" },
			less = { "stylelint" },
			sass = { "stylelint" },
			vue = { "eslint" },
			svelte = { "eslint" },
			graphql = { "eslint" },
			sql = { "sqlint" },
			fish = { "fish" },
			terraform = { "tflint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>ll", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}

