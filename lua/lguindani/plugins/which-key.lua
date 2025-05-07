return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>c", group = "Code" },
      { "<leader>cc", group = "CodeCompanion" },
      { "<leader>cp", group = "Copilot" },
      { "<leader>h", group = "Git signs" },
      { "<leader>l", group = "Lazy Git" },
      { "<leader>e", group = "Files explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>m", group = "Multiline" },
      { "<leader>w", group = "Windows" },
      { "<leader>t", group = "Tabs" },
      { "<leader>s", group = "Sessions" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>r", group = "LSP" },
    })
  end,
}
