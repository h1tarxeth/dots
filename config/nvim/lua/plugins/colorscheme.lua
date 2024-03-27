return {
	-- "folke/tokyonight.nvim",
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		vim.cmd([[colorscheme catppuccin-mocha]])
		require("catppuccin").setup({
			compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
			integrations = {
				cmp = true,
				nvimtree = true,
				treesitter = true,
				telescope = {
					enabled = true,
				},
			},
		})
	end,
	-- vim.cmd.colorscheme("catppuccin"),
}
