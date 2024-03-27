return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- event = "VeryLazy",
	lazy = false,
	config = function()
		local lualine = require("lualine")
		lualine.setup({
			options = {
				theme = "catppuccin",
				icons_enabled = false,
				disabled_filetypes = { "packer", "NvimTrees" },
				globalstatus = true,
				-- section_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },
				component_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "diagnostics", "branch" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "filetype" },
				lualine_z = { "filename" },
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
		})
	end,
}
