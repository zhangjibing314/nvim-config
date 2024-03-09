-- 常用快捷键
--`a`               Create File Or Directory   |nvim-tree-api.fs.create()|
--`d`               Delete                     |nvim-tree-api.fs.remove()|
--`c`               Copy                       |nvim-tree-api.fs.copy.node()|
--`x`               Cut                        |nvim-tree-api.fs.cut()|
--`u`               Rename: Full Path          |nvim-tree-api.fs.rename_full()|
--`Y`               Copy Relative Path         |nvim-tree-api.fs.copy.relative_path()|
--`r`               Rename                     |nvim-tree-api.fs.rename()|

-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
