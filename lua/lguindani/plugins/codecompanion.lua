return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    opts = {
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            -- MCP Tools
            make_tools = true,
            show_server_tools_in_chat = true,
            add_mcp_prefix_to_tool_names = false,
            show_result_in_chat = true,
            format_tool = nil,
            -- MCP Resources
            make_vars = true,
            -- MCP Prompts
            make_slash_commands = true,
          }
        }
      }
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
    keys = {
      { "<leader>cci", "<cmd>CodeCompanion<CR>", desc = "Code Companion inline" },
      { "<leader>ccc", "<cmd>CodeCompanionChat<CR>", desc = "Code Companion chat" },
      { "<leader>cca", "<cmd>CodeCompanionActions<CR>", desc = "Code Companion actions" },
    },
  }
}
