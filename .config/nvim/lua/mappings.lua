require "nvchad.mappings"

local map = vim.keymap.set

-- Misc
map("n", "<space><space>", ":Telescope find_files<cr>")
map("n", "<leader>ce", ":e<CR>", { desc = "Re-edits file (Restarts LSP)" })
map("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Exits terminal mode." })

-- Normal mode mappings
map("i", "kj", "<ESC>", { desc = "Enter Normal mode" })
map("i", "jk", "<ESC>", { desc = "Enter Normal mode" })

-- Tailwind Tools
map("n", "<leader>tas", ":TailwindSort<CR>", { desc = "Sorts Tailwind Classes" })
map("n", "<leader>tah", ":TailwindConcealToggle<CR>", { desc = "Toggles Tailwind class conceal" })
map("n", "<leader>tac", ":TailwindColorToggle<CR>", { desc = "Toggles Tailwind colours" })

-- LazyGit
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "Opens LazyGit" })

-- MoveLine
map("n", "<M-j>", ":MoveLine(1)<CR>", { desc = "Moves line up" })
map("n", "<M-k>", ":MoveLine(-1)<CR>", { desc = "Moves line down" })

map("v", "<M-j>", ":MoveBlock(1)<CR>", { desc = "Moves line up" })
map("v", "<M-k>", ":MoveBlock(-1)<CR>", { desc = "Moves line down" })

-- Refactor
map("x", "<leader>re", ":Refactor extract<cr>", { desc = "Extracts function" })
map("x", "<leader>rf", ":Refactor extract_to_file<cr>", { desc = "Extracts function to file" })
map("x", "<leader>rv", ":Refactor extract_var<cr>", { desc = "Extracts variables" })

-- Todo Comments
map("n", "<leader>tdt", ":TodoTelescope<cr>", { desc = "Opens up the Todo comments with Telescope" })
map("n", "<leader>tdl", ":TodoLocList<cr>", { desc = "Opens up the Todo list" })

-- Trouble
map("n", "<leader>trt", "<CMD>TroubleToggle<CR>", { desc = "Toggle Trouble Diagnostics" })

-- CarbonNowSh
map("v", "<F5>", ":CarbonNowSh<CR>", { desc = "Exports code to Carbon.now.sh" })
