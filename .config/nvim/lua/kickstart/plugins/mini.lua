return {
    { -- Collection of various small independent plugins/modules
        "echasnovski/mini.nvim",
        config = function()
            -- Better Around/Inside textobjects

            -- Examples:
            --  - va)  - [V]isually select [A]round [)]paren
            --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
            --  - ci'  - [C]hange [I]nside [']quote
            require("mini.ai").setup { n_lines = 500 }

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require("mini.surround").setup()

            require("mini.bracketed").setup()

            require("mini.comment").setup()

            require("mini.files").setup {
                mappings = {
                    open = "<leader>e",
                    go_in_plus = "<enter>",
                },
                windows = {
                    preview = true,
                    width_preview = 60,
                },
            }

            require("mini.icons").setup()
        end,
    },
}
-- vim: ts=2 sts=2 sw=2 et
