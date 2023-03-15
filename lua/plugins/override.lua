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
    opts = {
      current_line_blame = true,
    },
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
  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "qq",
        function()
          require("mini.bufremove").delete(0, false)
        end,
        desc = "Delete Buffer",
      },
    },
  },
  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<leader>cc",
        comment_line = "<leader>cc",
        textobject = "<leader>cc",
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}

return override
