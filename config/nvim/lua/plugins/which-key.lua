return {
	"folke/which-key.nvim",
	keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" }, -- event = "VeryLazy",
	opts = {
		plugins = { spelling = true },
		show_keys = true,
		defaults = {
			mode = { "n", "v" },
			["]"] = { name = "+next" },
			["["] = { name = "+prev" },
			["<leader>b"] = { name = "+buffer" },
			["<leader>c"] = { name = "+code" },
			["<leader>f"] = { name = "+file/find" },
			["<leader>s"] = { name = "+search" },
			["<leader>x"] = { name = "+diagnostics/quickfix" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}
