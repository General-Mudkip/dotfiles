-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "decay",
}

M.ui = {
    telescope = { style = "borderless" },
    cmp = {
        lspkind_text = true,
        style = "default", -- default/flat_light/flat_dark/atom/atom_colored
        format_colors = {
            tailwind = true,
        },
    },
    statusline = {
        theme = "default", -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = "default",
        order = nil,
        modules = nil,
    },
    lsp = { signature = true },
    colorify = {
        enabled = true,
        mode = "virtual", -- fg, bg, virtual
        virt_text = "󱓻 ",
        highlight = { hex = true, lspvars = true },
    },
}

M.nvdash = {
    load_on_startup = true,

    header = {
        -- "           __",
        -- "         .-'  |",
        -- "        /   <\\|",
        -- "       /     \\'",
        -- "       |_.- o-o",
        -- "       / C  -._)\\",
        -- "      /',        |",
        -- "     |   `-,_,__,'",
        -- "     (,,)====[_]=|",
        -- "       '.   ____/",
        -- "        | -|-|_",
        -- "        |____)_)",
        -- " ",
        "    Overconfidence is a slow     ",
        "      and insidious killer.      ",
        " ",
    },

    buttons = {
        { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
        { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
        { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
        { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
        { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
    },
}

M.mason = {
    cmd = true,
    pkgs = {
        "rust-analyzer",
        "typescript-language-server",
        "tailwindcss-language-server",
        "prisma-language-server",
        "prettier",
        "html",
        "gotests",
        "json",
        "goimports",
        "gopls",
        "astro-language-server",
        "lua-language-server",
        "eslint",
        "clangd",
        "asm-lsp",
    },
}

return M
