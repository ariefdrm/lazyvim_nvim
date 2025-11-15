return {
  -- add typescript
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", enabled = false },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
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
      ensure_installed = {
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
}
