-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<tab>", "<c-w>w", { desc = "Next Window" })
map("n", "<S-tab>", "<c-w>W", { desc = "Prev Window" })

-- avoid accidental page up/down
map({ "v", "i" }, "<S-Up>", "<Up>", { desc = "Up" })
map({ "v", "i" }, "<S-Down>", "<Down>", { desc = "Down" })
map({ "v", "i" }, "<PageUp>", "<Up>", { desc = "Up" })
map({ "v", "i" }, "<PageDown>", "<Down>", { desc = "Down" })
