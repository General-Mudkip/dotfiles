local plugins = {
    {
        "NvChad/nvcommunity",
        { import = "nvcommunity.editor.satellite" },
        { import = "nvcommunity.motion.neoscroll" },
    },
    {
        "mfussenegger/nvim-dap",
        opts = {},
    },
    {
        "onsails/lspkind.nvim",
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require "configs.conform"
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                -- snippet plugin
                "L3MON4D3/LuaSnip",
                dependencies = "rafamadriz/friendly-snippets",
                opts = { history = true, updateevents = "TextChanged,TextChangedI" },
                config = function(_, opts)
                    require("luasnip").config.set_config(opts)
                    require "nvchad.configs.luasnip"
                end,
            },

            -- cmp sources plugins
            {
                "saadparwaiz1/cmp_luasnip",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
            },
        },
        opts = function()
            return require "configs.cmp"
        end,
        config = function(_, opts)
            require("cmp").setup(opts)
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                side = "right",
            },
        },
    },
    {
        "kristijanhusak/vim-carbon-now-sh",
        cmd = "CarbonNowSh",
        ray_browser = "google-chrome",
        opts = {},
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "LspInfo", "LspInstall", "LspRemove" },
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },
    {
        "echasnovski/mini.bracketed",
        version = false,
        opts = {},
    },
    {
        "kdheepak/lazygit.nvim",
        cmd = "LazyGit",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        cmd = "Refactor",
        config = function()
            require("refactoring").setup()
        end,
    },
    {
        "dgagn/diagflow.nvim",
        event = "LspAttach",
        opts = {
            show_borders = true,
            show_sign = true,
        },
    },
    {
        "fedepujol/move.nvim",
        opts = {},
        cmd = { "MoveLine", "MoveBlock" },
    },
    {
        "prisma/vim-prisma",
    },
    {
        "akinsho/git-conflict.nvim",
    },
    {
        "luckasRanarison/tailwind-tools.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {}, -- your configuration
    },
    {
        "MaximilianLloyd/tw-values.nvim",
        keys = {
            { "<leader>tav", "<cmd>TWValues<cr>", desc = "Show tailwind CSS values" },
        },
        opts = {
            border = "rounded", -- Valid window border style,
            show_unknown_classes = true, -- Shows the unknown classes popup
            focus_preview = true, -- Sets the preview as the current window
            copy_register = "", -- The register to copy values to,
            keymaps = {
                copy = "<C-y>", -- Normal mode keymap to copy the CSS values between {}
            },
        },
    },
    {
        "MeanderingProgrammer/markdown.nvim",
        main = "render-markdown",
        opts = {},
        name = "render-markdown",
        dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
        cmd = { "RenderMarkdown" },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        cmd = { "Trouble" },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        cmd = { "TodoTrouble", "TodoLocList", "TodoTelescope" },
    },
    {
        "mfussenegger/nvim-jdtls",
        opts = {},
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*", -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        opts = {
            workspaces = {
                {
                    name = "ISE",
                    path = "/mnt/c/Users/bence/Documents/ISE/",
                },
            },
        },
    },
}

return plugins
