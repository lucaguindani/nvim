return {
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>cc", "<cmd>CodeCompanion<CR>", desc = "Open Code Companion" },
      { "<leader>cC", "<cmd>CodeCompanionClose<CR>", desc = "Close Code Companion" },
      { "<leader>cf", "<cmd>CodeCompanionFormat<CR>", desc = "Format Code" },
      { "<leader>ci", "<cmd>CodeCompanionInfo<CR>", desc = "Show Code Info" },
      { "<leader>cd", "<cmd>CodeCompanionDebug<CR>", desc = "Debug Code" },
      { "<leader>ct", "<cmd>CodeCompanionTest<CR>", desc = "Test Code" },
      { "<leader>cR", "<cmd>CodeCompanionRefactor<CR>", desc = "Refactor Code" },
      { "<leader>cS", "<cmd>CodeCompanionSearch<CR>", desc = "Search Code" },
    },
  }
}
