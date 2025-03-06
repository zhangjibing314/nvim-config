require('gitsigns').setup {
        signs = {
                add = { text = '+' },
                delete = { text = '-' },
                change = { text = '~' },
                --untrached = { text = '?'},
                --topdelete = { text = '‾' },
                --changedelete = { text = '~' },
        },
	signcolumn = true,  -- 禁用单独一列显示
	numhl      = false, -- 高亮行号显示
	linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
	preview_config = {
		-- Options passed to nvim_open_win
		border = 'single',
		style = 'minimal',
		relative = 'cursor',
		row = 0,
		col = 0
	},
}
