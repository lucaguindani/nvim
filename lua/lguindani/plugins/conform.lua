return {
  {
    'stevearc/conform.nvim',
    opts = {
      format_on_save = {
        lsp_format = "never",
        timeout_ms = 2000,
      },
      formatters_by_ft = {
        php = { "pint", "php_cs_fixer", stop_after_first = true },
        javascript = { "prettier" },
        typescript = { "prettier" },
      },
    },
  }
}
