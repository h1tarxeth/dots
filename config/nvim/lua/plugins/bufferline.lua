return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	-- lazy = false,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	after = "catppuccin",
	config = function()
		require("bufferline").setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})
		local bufferline = require("bufferline")
		vim.api.nvim_create_autocmd("User", {
			pattern = "AlphaReady",
			desc = "disable tabline for alpha",
			callback = function()
				vim.opt.showtabline = 0
			end,
		})
		vim.api.nvim_create_autocmd("BufUnload", {
			buffer = 0,
			desc = "enable tabline after alpha",
			callback = function()
				vim.opt.showtabline = 2
			end,
		})

		bufferline.setup({

			options = {
				mode = "buffers",
				style_preset = bufferline.style_preset.no_bold,
				themable = true,
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				max_name_length = 18,
				max_prefix_length = 15,
				truncate_names = true,
				diagnostics_update_in_insert = false,
				offsets = {
					{
						filetype = "NvimTree",
						text_align = "center",
						separator = false,
						text = "Explorer",
						-- highlight = "Directory",
						-- offset_separator = true,
					},
				},
				always_show_bufferline = true,
			},
		})
	end,
}
