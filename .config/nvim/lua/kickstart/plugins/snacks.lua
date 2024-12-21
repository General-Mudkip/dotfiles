return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        dashboard = {
            enabled = true,
            sections = {
                { icon = " ", title = "Recent Files", section = "recent_files", limit = 8, indent = 2, padding = { 2, 2 } },
            },
        },
        lazygit = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
    },
}
