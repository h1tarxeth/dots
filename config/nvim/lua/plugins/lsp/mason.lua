return {
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"pyright",
				"clangd",
				"html",
				"tailwindcss",
				"tsserver",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua", -- lua formatter
				--	"black", -- python formatter
				--	"pylint", -- python linter
				-- "clang-format",
			},
		})
	end,
}
