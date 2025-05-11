vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jl", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
--keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 普通模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>s", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>v", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>d", ":q<CR>") -- 删除当前窗口

-- ---------- 插件 ---------- ---
-- bufferline
keymap.set("n", "<M-l>", ":bnext<CR>") -- 下一个标签页
keymap.set("n", "<M-S-l>", ":BufferLineMoveNext<CR>") -- 将当前标签页向后移动
keymap.set("n", "<M-h>", ":bprevious<CR>") -- 上一个标签页
keymap.set("n", "<M-S-h>", ":BufferLineMovePrev<CR>") -- 将当前标签页向前移动
keymap.set("n", "<M-d>", ":BufferLineCloseOthers<CR>") -- 关闭其他标签页
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- 打开/关闭目录
-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<C-p>', builtin.find_files, {}) -- 搜索文件
keymap.set('n', '<C-f>', builtin.live_grep, {}) -- 搜索字符串
keymap.set('n', 'gd', ":lua vim.lsp.buf.declaration()<CR>") -- 声明
keymap.set('n', 'gi', builtin.lsp_definitions, {}) --定义
keymap.set('n', '<leader>gi', builtin.lsp_dynamic_workspace_symbols, {}) -- 定义(需要手动输入需要跳转的函数名)
keymap.set('n', 'gr', builtin.lsp_references, {}) --引用的位置列表
keymap.set('n', 'tg', builtin.tags, {}) -- 在列出tags文件的内容后搜索
keymap.set('n', 'ts', builtin.tagstack, {}) -- 当前窗口的 tag 栈
-- tags文件 跳转
-- <C-p>
-- g] 有多个定义时列出匹配列表
-- :tj :当匹配一个时跳转，否则列出匹配列表
-- [ <C-d> :跳转到宏定义
-- translator
keymap.set("n", "tl", ":TranslateW<CR>")
keymap.set("v", "tl", ":TranslateW<CR>")
-- tagbar
keymap.set("n", "<leader>w", ":Tagbar<CR>") --打开/关闭函数和变量列表
-- nvim-dap 代码调试
keymap.set('n', ';c', function() require('dap').continue() end) --启动调试/运行到下一个断点
keymap.set('n', ';rc', function() require('dap').restart() end) --重启调试并运行到第一个断点处
keymap.set('n', ';t', function() require('dap').terminate() end)  --终止调试
keymap.set('n', ';b', function() require('dap').toggle_breakpoint() end) --打/取消断点
keymap.set('n', ';db', function() require('dap').clear_breakpoints() end) --取消所有断点
keymap.set('n', ';n', function() require('dap').step_over() end) --单步调试-不进入函数
keymap.set('n', ';s', function() require('dap').step_into() end) --单步调试-进入函数
keymap.set('n', ';;', function() require('dap').repl.toggle() end) -- 打开debug console

