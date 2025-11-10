return {
	'hrsh7th/nvim-cmp',
	version = false,  -- rarely releases
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
	},
	opts = function()
		vim.lsp.config("*", { capabilites = require("cmp_nvim_lsp").default_capabilities() })
		return {
			auto_brackets = {},
			completion = {
				completeopt = "menu.menuone,noinsert"
			}
		}
	end
}
