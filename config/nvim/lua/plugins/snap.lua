return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			font = "CommitMonor=34;Noto Color Emoji=34",
			theme = "Dracula",
		})
	end,
}
