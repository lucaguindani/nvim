return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>cci", "<cmd>CodeCompanion<CR>", desc = "Code Companion inline" },
      { "<leader>ccc", "<cmd>CodeCompanionChat<CR>", desc = "Code Companion chat" },
      { "<leader>cca", "<cmd>CodeCompanionActions<CR>", desc = "Code Companion actions" },
    },
  }
}
