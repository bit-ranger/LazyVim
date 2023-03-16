-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "n" }, "<leader>l", {})
local map = vim.keymap.set

map("n", "<leader>L", "<cmd>:Lazy<cr>", { desc = "Lazy", silent = true })
map("n", "<A-left>", "<cmd>BufferLineCyclePrev<cr>", { silent = true })
map("n", "<A-right>", "<cmd>BufferLineCycleNext<cr>", { silent = true })

map({ "n", "v" }, "lb", "^", { silent = true })
map({ "n", "v" }, "lB", "0", { silent = true })
map({ "n", "v" }, "le", "$", { silent = true })

map("n", "dlb", "d^", { silent = true })
map("n", "dlB", "d0", { silent = true })
map("n", "dle", "d$", { silent = true })

map("n", "clb", "c^", { silent = true })
map("n", "clB", "c0", { silent = true })
map("n", "cle", "c$", { silent = true })
