-- 基础配置---------------------------------------------------------------------------------------

-- 制定编码格式
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- options---------------------------------------------------------------------------------------

local opt = vim.opt
-- 超出终端大小的行自动换行
opt.wrap = true
-- 行号
opt.relativenumber = false
opt.number = true

-- 缩进
opt.tabstop = 8
opt.shiftwidth = 8
opt.expandtab = false -- 不让空格代替tab
opt.autoindent = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus") -- 除了如此配置，还需要安装 xclip 工具(不是插件哦)

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-night]] -- tokyonight-[night storm day moon]
