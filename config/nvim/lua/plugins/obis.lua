return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	templates = {
		subdir = "templates",
		date_format = "%Y-%m-%d-%a",
		time_format = "%H:%M",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Notes/",
			},
		},
	},
}
