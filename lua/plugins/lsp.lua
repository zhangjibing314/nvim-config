require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
})

require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写语言服务器
    ensure_installed = {
        "clangd", -- c/c++ lsp
        "pyright", -- python lsp
	"lua_ls", -- lua-language-server
    },
    automatic_installation = false,
})

require("lspconfig").clangd.setup {
}

require("lspconfig").pyright.setup {
}

--lua-language-server
require("lspconfig").lua_ls.setup {
}
