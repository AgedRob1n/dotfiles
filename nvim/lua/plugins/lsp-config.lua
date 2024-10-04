return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"cssls",
					"emmet_ls",
					"html",
					"lua_ls",
					"omnisharp",
					"quick_lint_js",
					"tsserver"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require('lspconfig')
			lspconfig.clangd.setup ({ capabilites = capabilities })
			lspconfig.cssls.setup ({ capabilities = capabilities })
			lspconfig.emmet_ls.setup ({ capabilities = capabilities })
			lspconfig.html.setup ({ capabilities = capabilities })
			lspconfig.lua_ls.setup ({ capabilities = capabilities })
			lspconfig.omnisharp.setup ({ capabilities = capabilities })
			lspconfig.quick_lint_js.setup ({ capabilities = capabilities })
			lspconfig.tsserver.setup ({ capabilities = capabilities })
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, {})
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
		end
	}
}
