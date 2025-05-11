-- Shorthand for mapping keys
local map = vim.keymap.set

-- Normal mode mappings
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save" })

map("n", "<leader>ra", vim.lsp.buf.rename, { desc = "LSP [r]en[a]me" })

-- Up/Down centralisation
map("n", "<C-u>", "<C-u>zz", { desc = "Go up and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Go up and center" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Tailwind Tools
map("n", "<leader>tas", ":TailwindSort<CR>", { desc = "Sorts Tailwind Classes" })
map("n", "<leader>tah", ":TailwindConcealToggle<CR>", { desc = "Toggles Tailwind class conceal" })
map("n", "<leader>tac", ":TailwindColorToggle<CR>", { desc = "Toggles Tailwind colours" })

-- Undo Tree
map("n", "<leader>ut", "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>", { desc = "Toggles UndoTree" })

-- Harpoon
map("n", "<leader>ha", "<CMD>lua require('harpoon.mark').add_file()<CR>", { desc = "Adds the current file to Harpoon" })
map("n", "<leader>hg", "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "View all project marks" })
map("n", "<CM-l>", "<CMD>lua require('harpoon.ui').nav_next()<CR>", { desc = "Navigate to the next mark" })
map("n", "<CM-h>", "<CMD>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Navigate to the previous mark" })

-- Themes
map("n", "<leader>ttw", "<CMD>colorscheme kanagawa-wave<CR>", { desc = "Switch to Kanagawa Wave" })
map("n", "<leader>ttd", "<CMD>colorscheme kanagawa-dragon<CR>", { desc = "Switch to Kanagawa Dragon" })
map("n", "<leader>ttl", "<CMD>colorscheme kanagawa-lotus<CR>", { desc = "Switch to Kanagawa Lotus" })
map("n", "<leader>ttb", "<CMD>colorscheme binary<CR>", { desc = "Switch to Binary" })

-- Lazygit
map("n", "<leader>gg", function()
    Snacks.lazygit.open()
end, { desc = "Open Lazygit" })

-- MoveLine
map("n", "<M-J>", ":MoveLine(1)<CR>", { desc = "Moves line up" })
map("n", "<M-K>", ":MoveLine(-1)<CR>", { desc = "Moves line down" })

map("v", "<M-J>", ":MoveBlock(1)<CR>", { desc = "Moves line up" })
map("v", "<M-K>", ":MoveBlock(-1)<CR>", { desc = "Moves line down" })

-- -- BARBAR
-- Move to previous/next
map("n", "<Tab>", "<Cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>")

-- Re-order to previous/next
map("n", "<M-H>", "<Cmd>BufferMovePrevious<CR>")
map("n", "<M-L>", "<Cmd>BufferMoveNext<CR>")

-- Goto buffer in position...
map("n", "<leader>1", "<Cmd>BufferGoto 1<CR>")
map("n", "<leader>2", "<Cmd>BufferGoto 2<CR>")
map("n", "<leader>3", "<Cmd>BufferGoto 3<CR>")
map("n", "<leader>4", "<Cmd>BufferGoto 4<CR>")
map("n", "<leader>5", "<Cmd>BufferGoto 5<CR>")
map("n", "<leader>6", "<Cmd>BufferGoto 6<CR>")
map("n", "<leader>7", "<Cmd>BufferGoto 7<CR>")
map("n", "<leader>8", "<Cmd>BufferGoto 8<CR>")
map("n", "<leader>9", "<Cmd>BufferGoto 9<CR>")

-- Close buffer
map("n", "<leader>x", "<Cmd>BufferClose<CR>")

-- Diagnostic keymaps
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
map("t", "kj", "<C-\\><C-n>", { desc = "Exits terminal mode" })
map("t", "jk", "<C-\\><C-n>", { desc = "Exits terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- vim: ts=2 sts=2 sw=2 et
