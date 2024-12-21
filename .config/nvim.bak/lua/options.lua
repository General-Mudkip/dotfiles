require "nvchad.options"

local opt = vim.opt

opt.colorcolumn = "100"

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

opt.relativenumber = true
opt.cursorlineopt = "both" -- to enable cursorline!
opt.scrolloff = 7 -- Buffer for moving up/down

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
