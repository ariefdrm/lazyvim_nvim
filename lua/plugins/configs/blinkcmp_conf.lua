return {
  require("blink-cmp").setup({
    keymap = {
      preset = "none",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-l>"] = { "show", "show_documentation", "hide_documentation" },
      ["<CR>"] = { "accept", "fallback" },
    },

    cmdline = {
      keymap = {
        ["<Tab>"] = { "show_and_insert_or_accept_single", "select_next" },
        ["<S-Tab>"] = { "show_and_insert_or_accept_single", "select_prev" },
      },
    },
  }),
}
