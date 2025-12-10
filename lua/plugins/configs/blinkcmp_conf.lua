return {
  require("blink-cmp").setup({
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },

      trigger = {
        show_in_snippet = true,
        show_on_keyword = true,
        show_on_trigger_character = true,
      },
    },

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

    snippets = {
      preset = "default",
    },
  }),

  -- require("luasnip.loaders.from_vscode").lazy_load(),
}
