-- disabled plugins
local disabled = {

  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "SmiteshP/nvim-navic",
    event = "VeryLazy",
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "VeryLazy" },
  },
}

return disabled
