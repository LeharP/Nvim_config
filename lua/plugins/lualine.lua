return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lehar = require("lualine.themes.dracula")
        lehar.normal.c.fg = '#bd93f9'
        lehar.insert.c.fg = '#bd93f9'
        lehar.visual.c.fg = '#bd93f9'
        lehar.replace.c.fg = '#bd93f9'
        lehar.command.c.fg = '#bd93f9'
        lehar.inactive.c.fg = '#bd93f9'
        lehar.normal.b.fg = '#1e1e2e'
        lehar.insert.b.fg = '#1e1e2e'
        lehar.visual.b.fg = '#1e1e2e'
        lehar.replace.b.fg = '#1e1e2e'
        lehar.command.b.fg = '#1e1e2e'
        lehar.inactive.b.fg = '#1e1e2e'
        require('lualine').setup ({
            options = {
                theme = lehar,
            }
        })
    end,
}
