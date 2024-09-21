return {
	{
		"tpope/vim-fugitive",
		ft = ".git",
	},
	{
		"lewis6991/gitsigns.nvim",
		ft = ".git",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
