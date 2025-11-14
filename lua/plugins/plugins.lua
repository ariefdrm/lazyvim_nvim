return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      window = {
        position = "left",
      },
      -- fill any relevant options here
      event_handlers = {
        -- Auto close on open file
        {
          event = "file_open_requested",
          handler = function()
            -- auto close
            vim.cmd("Neotree close")
            -- OR
            -- require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Set to true to show filtered items (including hidden files)
          hide_dotfiles = false, -- Explicitly set to false to always show dotfiles
          hide_gitignored = true, -- You can choose whether to hide gitignored files or not
        },
      },
    },
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },

  -- toggleterm
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]
    },
  },

  -- tmux
  { "aserowy/tmux.nvim" },
}
