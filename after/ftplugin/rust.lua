

vim.keymap.set(
  "n",
  "<F1>",
  function()
    vim.cmd.RustLsp{'hover', 'actions'}
  end,
  { silent = true, buffer = bufnr }
 )
