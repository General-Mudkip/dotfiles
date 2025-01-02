-- Shorthand for mapping keys
local map = vim.keymap.set

-- Normal mode mappings
map("i", "kj", "<ESC>", { desc = "Enter Normal mode" })
map("i", "jk", "<ESC>", { desc = "Enter Normal mode" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Tailwind Tools
map("n", "<leader>tas", ":TailwindSort<CR>", { desc = "Sorts Tailwind Classes" })
map("n", "<leader>tah", ":TailwindConcealToggle<CR>", { desc = "Toggles Tailwind class conceal" })
map("n", "<leader>tac", ":TailwindColorToggle<CR>", { desc = "Toggles Tailwind colours" })

-- Undo Tree
map("n", "<leader>ut", "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>", { desc = "Toggles UndoTree" })

-- Themes
map("n", "<leader>ttl", function()
    require("kanagawa").load "lotus"
end, { desc = "Switch to Kanagawa Lotus" })

map("n", "<leader>ttd", function()
    require("kanagawa").load "dragon"
end, { desc = "Switch to Kanagawa Dragon" })

map("n", "<leader>ttw", function()
    require("kanagawa").load "wave"
end, { desc = "Switch to Kanagawa Wave" })

-- Lazygit
map("n", "<leader>gg", function()
    Snacks.lazygit.open()
end, { desc = "Open Lazygit" })

-- MoveLine
map("n", "<M-j>", ":MoveLine(1)<CR>", { desc = "Moves line up" })
map("n", "<M-k>", ":MoveLine(-1)<CR>", { desc = "Moves line down" })

map("v", "<M-j>", ":MoveBlock(1)<CR>", { desc = "Moves line up" })
map("v", "<M-k>", ":MoveBlock(-1)<CR>", { desc = "Moves line down" })

-- -- BARBAR
-- Move to previous/next
map("n", "<Tab>", "<Cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>")

-- Re-order to previous/next
map("n", "<A-h>", "<Cmd>BufferMovePrevious<CR>")
map("n", "<A-l>", "<Cmd>BufferMoveNext<CR>")

-- Goto buffer in position...
map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>")
map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>")
map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>")
map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>")
map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>")
map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>")
map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>")
map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>")
map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>")

-- Close buffer
map("n", "<leader>x", "<Cmd>BufferClose<CR>")

-- Mini Files
map("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open mini-files" })

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

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

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
