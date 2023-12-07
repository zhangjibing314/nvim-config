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

-- 取消高亮
--keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<M-l>", ":bnext<CR>")
keymap.set("n", "<M-h>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<C-p>', builtin.find_files, {}) -- 当前工作目录下模糊搜索文件
keymap.set('n', '<C-f>', builtin.live_grep, {}) -- 当前文件中模糊搜索字符串
--keymap.set('n', '<leader>fb', builtin.buffers, {})
--keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- lsp.clangd
vim.api.nvim_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true }) -- 声明位置
--vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true }) -- 定义位置
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true }) -- 实现位置
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true }) -- 引用位置
