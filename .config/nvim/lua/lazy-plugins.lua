-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require("lazy").setup({
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

    require "kickstart.plugins.snacks",

    require "kickstart.plugins.themes",

    require "kickstart.plugins.tailwind-tools",

    require "kickstart.plugins.undotree",

    require "kickstart.plugins.moveline",

    require "kickstart.plugins.go-plugin",

    require "kickstart.plugins.colorful-menu",

    require "kickstart.plugins.copilot",

    require "kickstart/plugins/gitsigns",

    require "kickstart/plugins/which-key",

    require "kickstart/plugins/telescope",

    require "kickstart/plugins/lspconfig",

    require "kickstart/plugins/conform",

    require "kickstart/plugins/cmp",

    require "kickstart/plugins/todo-comments",

    require "kickstart/plugins/mini",

    require "kickstart/plugins/treesitter",

    require "kickstart.plugins.trouble",

    require "kickstart.plugins.barbar",

    require "kickstart.plugins.debug",

    require "kickstart.plugins.indent_line",

    require "kickstart.plugins.lint",

    require "kickstart.plugins.markview",

    require "kickstart.plugins.harpoon",
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 ",
        },
    },
})

-- vim: ts=2 sts=2 sw=2 et
