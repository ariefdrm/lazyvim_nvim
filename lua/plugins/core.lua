return {
  -- add typescript
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- blink-cmp
  {
    "Saghen/blink.cmp",
    config = function()
      require("plugins.configs.blinkcmp_conf")
    end,
  },

  -- Configure Lazyvim to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine", -- set colorscheme
    },
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
