require("plugins")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.keymap.set('n', 'C-T', ':NvimTreeToggle<CR>')

-- lsp shit start
require('nvim-treesitter.configs').setup {
    ensure_installed = { 'python', 'rust', 'bash' },
    highlight = { enable = true },
    indent = { enable = true },
}

local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup()
mason_lspconfig.setup {
    ensure_installed = { 'pyright', 'rust_analyzer', 'bashls' }, -- LSP servers
}

local on_attach = function(client, bufnr)
    -- lsp keymaps TBA
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
end

lspconfig.pyright.setup { on_attach = on_attach }
lspconfig.rust_analyzer.setup { on_attach = on_attach }
lspconfig.bashls.setup { on_attach = on_attach }

-- lsp shit end

-- autocomp start

local cmp = require('cmp')
local luasnip = require('luasnip')

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    }),
}

-- autocomp end