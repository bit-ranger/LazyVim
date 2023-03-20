-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "n" }, "<leader>l", {})
local map = vim.keymap.set
local opt = { silent = true }

map({ "n", "v" }, "p", "pgvy", opt)

map("n", "<leader>PL", "<cmd>:Lazy<cr>", { desc = "Lazy", silent = true })
map("n", "<A-left>", "<cmd>BufferLineCyclePrev<cr>", opt)
map("n", "<A-right>", "<cmd>BufferLineCycleNext<cr>", opt)

map({ "n", "v" }, "lb", "^", opt)
map({ "n", "v" }, "lB", "0", opt)
map({ "n", "v" }, "le", "$", opt)

map("n", "dlb", "d^", opt)
map("n", "dlB", "d0", opt)
map("n", "dle", "d$", opt)

map("n", "clb", "c^", opt)
map("n", "clB", "c0", opt)
map("n", "cle", "c$", opt)

function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

map({ "v" }, "<leader>/", function()
  local text = vim.getVisualSelection()
  require("telescope.builtin").current_buffer_fuzzy_find({ default_text = text })
end, { desc = "Find in Files", silent = true })

map({ "v" }, "<leader><leader>", function()
  local text = vim.getVisualSelection()
  require("telescope.builtin").find_files({ default_text = text })
end, { desc = "Find Files", silent = true })

map({ "v" }, "<leader>sg", function()
  local text = vim.getVisualSelection()
  require("telescope.builtin").live_grep({ default_text = text })
end, { desc = "Grep", silent = true })

map({ "n", "v", "i" }, "<F1>", function()
  vim.lsp.buf.signature_help()
end, { desc = "Signature Help" })
