-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		--{ import = "plugins" },
		{  -- 主题
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = {},
		},

		{  -- 状态栏
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' }  -- 状态栏图标
		},

		{
			"nvim-tree/nvim-tree.lua",  -- 文档树
			version = "*",
			lazy = true,
			dependencies = {
				"nvim-tree/nvim-web-devicons", -- 文档树图标
			},
			--config = function()
			--	require("nvim-tree").setup {}
			--end,
		},

		{"christoomey/vim-tmux-navigator"}, -- 用ctl-hjkl来定位窗口

		{
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
		},
		--  -- 自动补全
		{
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-path", -- 文件路径
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
		},

		{"windwp/nvim-autopairs"}, -- 自动补全括号

		{"numToStr/Comment.nvim"}, -- v模式下添加/删除注释

		{"akinsho/bufferline.nvim"}, -- buffer分割线

		{"lewis6991/gitsigns.nvim"}, -- 左则git提示

		{
			'nvim-telescope/telescope.nvim', tag = '0.1.5',  -- 模糊查询
			dependencies = { {'nvim-lua/plenary.nvim'} }
		},

		{'voldikss/vim-translator'}, -- 翻译插件

		{"lukas-reineke/indent-blankline.nvim"}, -- 代码缩进线

		{'nvim-treesitter/nvim-treesitter', run = 'TSUdate'}, --代码高亮

		{'mfussenegger/nvim-dap'}, -- debug

		--显示markdown格式
		-- install without yarn or npm
		{
			"iamcco/markdown-preview.nvim",
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			ft = { "markdown" },
			build = function() vim.fn["mkdp#util#install"]() end,
		},

		{"preservim/tagbar"}, --函数，变量列表

		{ -- 高亮指定的变量
			"arsham/matchmaker.nvim",
			dependencies = { "arsham/arshlib.nvim", "junegunn/fzf.vim" },
			--config = true,
			-- or to provide configuration
			config = {
				add     = "mm",
				exact   = "me",
				pattern = false,
				line    = false,
				clear   = "mc",
				delete  = "md",
			}
		}
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = {
		enabled = true,
		notify = true, -- get a notification when new updates are found
		frequency = 604800, -- 一周检测一次(7*24*60*60)
	},
})
