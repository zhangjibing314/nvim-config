-- 基础配置
require("base.options")
require("base.keymaps")

-- 插件管理器
require("plugins-manager")
-- 插件配置
require("plugins.lualine")
require("plugins.nvim-tree") -- 目录
require("plugins.mason")
require("plugins.cmp") -- 代码补全
require("plugins.comment")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.gitsigns")
require("plugins.telescope") -- 文件&&字符串检索
require("plugins.translator")
require("plugins.indent-blankline")
