require('gitsigns').setup {
        signs = {
                add = { text = '+' },
                delete = { text = '-' },
                change = { text = '~' },
                untrached = { text = '?'},
                --topdelete = { text = '‾' },
                --changedelete = { text = '~' },
        },
}
