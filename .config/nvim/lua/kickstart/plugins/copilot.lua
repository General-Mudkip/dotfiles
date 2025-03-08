return {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
        -- Disable the default tab mapping
        vim.g.copilot_no_tab_map = true

        -- Set up the mapping properly for Neovim
        vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("\\<CR>")', {
            silent = true,
            expr = true,
            noremap = true,
            replace_keycodes = false,
        })
    end,
}
