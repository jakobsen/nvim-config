return {
    'hrsh7th/nvim-cmp',
    version = false,
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
    },
    opts = function()
        vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
        local cmp = require('cmp')
        return {
            auto_brackets = {},
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'path' },
            }, {
                { name = 'buffer' },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        }
    end
}
