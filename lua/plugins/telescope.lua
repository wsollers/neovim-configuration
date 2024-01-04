return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	requires = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim" },
		{ "chip/telescope-software-licenses.nvim" },
		{
			"dhruvmanila/browser-bookmarks.nvim",
			version = "*",
			-- Only required to override the default options
			opts = {
				-- Override default configuration values
				-- selected_browser = 'chrome'
			},
			dependencies = {
				--   -- Only if your selected browser is Firefox, Waterfox or buku
				"kkharji/sqlite.lua",
				--
				--   -- Only if you're using the Telescope extension
				--   'nvim-telescope/telescope.nvim',
			},
		},
		{
			"princejoogie/dir-telescope.nvim",
			lazy = false,
			-- telescope.nvim is a required dependency
			requires = { "nvim-telescope/telescope.nvim" },
			config = function()
				require("dir-telescope").setup({
					-- these are the default options set
					hidden = true,
					no_ignore = false,
					show_preview = true,
				})
			end,
		},
	},
}
