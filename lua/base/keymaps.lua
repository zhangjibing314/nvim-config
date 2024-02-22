vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jl", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
--keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>s", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>v", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>d", ":q<CR>") -- 删除当前窗口

-- ---------- 插件 ---------- ---
-- bufferline
keymap.set("n", "<M-l>", ":bnext<CR>") -- 下一个标签页
keymap.set("n", "<M-h>", ":bprevious<CR>") -- 上一个标签页
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- 打开/关闭目录
-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<C-p>', builtin.find_files, {})
keymap.set('n', '<C-f>', builtin.live_grep, {})
-- lsp.clangd
vim.api.nvim_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true }) -- 声明位置
--vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true }) -- 定义位置
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true }) -- 实现位置
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true }) -- 引用位置
