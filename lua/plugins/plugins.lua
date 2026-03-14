return {
  -- telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- gruvbox
  { "ellisonleao/gruvbox.nvim", priority = 1000, enabled = false },

  -- catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false, enabled = true },

  -- rosepine
  { "rose-pine/neovim", name = "rose-pine", priority = 1000, lazy = false, enabled = false },

  -- tokyonight
  { "folke/tokyonight.nvim", priority = 1000, enabled = false, opts = { transparent = true } },

  -- nightfox
  { "EdenEast/nightfox.nvim", priority = 1000, enabled = true }, -- lazy

  -- toggleterm
  {
    "akinsho/toggleterm.nvim",
    event = "BufReadPost",
    version = "*",
    config = function()
      require("plugins.configs.toggleterm_conf")
    end,
  },

  -- cord.nvim
  { "vyfor/cord.nvim", build = ":Cord update" },

  -- tmux navigator
  {
    "christoomey/vim-tmux-navigator",
    event = "LazyFile",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  -- comment
  {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    opts = require("plugins.configs.comment_conf"),
  },

  -- lazygit
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- transparent nvim
  {
    "xiyaowong/transparent.nvim",
    enabled = false,
    event = "VimEnter",
    config = function()
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("Lualine")
      require("transparent").clear_prefix("BufferLine")
      require("transparent").clear_prefix("telescope")
    end,
  },
}
