return {
  -- add typescript
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- blink-cmp
  {
    "Saghen/blink.cmp",
    dependencies = {
      "onsails/lspkind.nvim",
    },
    config = function()
      require("plugins.configs.blinkcmp_conf")
    end,
  },

  -- snacks nvim
  {
    "folke/snacks.nvim",
    priority = 1010,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          -- header
          header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],

          -- keys
          keys = {
            {
              action = function()
                require("telescope.builtin").find_files()
              end,
              key = "f",
              desc = "Find File",
              icon = "",
            },
            {
              icon = "",
              key = "s",
              desc = "Restore Session",
              section = "session",
              action = function()
                require("persistence").load({ last = true })
              end,
            },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "n", desc = "New File", action = ":ene" },
          },
        },

        -- section
        sections = {
          { section = "header" },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = false },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },

  -- Configure LazyVim to load gruvbox
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },

  -- neotree file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = require("plugins.configs.neotree"),
  },

  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable flash nvim
  { "folke/flash.nvim", enabled = false },

  -- add any tools you want to have installed below
  {
    "mason-org/mason.nvim",
    opts = {
      -- ensure installed lsp server and other tools that related like formatter (e.g prettier) for these language
      ensure_installed = {
        "html-lsp",
        "css-lsp",
        "stylua",
        "prettier",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  -- which key
  { "folke/which-key.nvim", enabled = false },

  -- todo-comments
  { "folke/todo-comments.nvim", enabled = true }, -- disable
  -- formatter
  {
    "stevearc/conform.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter" },
      },
    },
  },
}
