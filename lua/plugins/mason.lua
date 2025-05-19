return {
	"williamboman/mason.nvim",
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
			ensure_installed = {
				"gopls",
				"lua_ls",
				"clangd",
				"ast_grep",
				"html",
				"cssls",
				"dockerls",
				"marksman",
				"pyright",
			},
			automatic_enable = false, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"ast_grep",
				"goimports",
				"golines",
				"gofumpt",
				"eslint_d",
			},
		})
	end,
}
