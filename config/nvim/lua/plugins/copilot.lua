return {
	"github/copilot.vim",
	cmd = "Copilot",
	-- event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.g.copilot_assume_mapped = true
	end,
}
