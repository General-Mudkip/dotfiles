-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require "options"

-- [[ Basic Keymaps ]]
require "keymaps"

vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"

-- [[ Install `lazy.nvim` plugin manager ]]
require "lazy-bootstrap"

-- [[ Configure and install plugins ]]
require "lazy-plugins"

dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
