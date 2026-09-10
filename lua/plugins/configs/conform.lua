return {
  require("conform").setup({
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      json = { "prettier" },
    },

    format_after_save = {
      timeout_ms = 1000,
      lsp_format = "never",
      -- lsp_fallback = false,
    },

    default_format_opts = {
      quiet = false,
      timeout_ms = 100,
      lsp_format = "never",
      -- lsp_format = "fallback",
    },
  }),
}
