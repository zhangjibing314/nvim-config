require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写语言服务器
    ensure_installed = {
        "clangd", -- c/c++ lsp
        "pyright", -- python lsp
    },
    automatic_installation = true,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").clangd.setup {
    capabilities = capabilities,
}

require("lspconfig").pyright.setup {
}
