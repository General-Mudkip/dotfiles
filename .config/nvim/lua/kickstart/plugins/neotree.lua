return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
        { "<leader>e", ":Neotree toggle right<CR>", desc = "NeoTree toggle", silent = true },
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ["<leader>e"] = "close_window",
                },
            },
        },
    },
}
