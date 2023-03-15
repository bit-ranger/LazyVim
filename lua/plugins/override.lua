--if true then
--  return {}
--end

local override = {
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "folke/todo-comments.nvim",
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
    event = "VeryLazy",
  },
  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
  },
}

return override
