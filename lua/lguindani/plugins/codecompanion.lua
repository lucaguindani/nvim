return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    opts = {
      strategies = {
        chat = {
          tools = {
            opts = {
              requires_approval = false,
              default_tools = {
                "full_stack_dev"
              }
            },
          }
        }
      },
      adapters = {
        opts = {
          show_defaults = false,
          show_model_choices = true,
        },
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "gpt-4.1",
              },
            },
          })
        end,
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "ollama",
            opts = {
              vision = true,
              stream = true,
            },
            schema = {
              model = {
                default = "qwen3:14b",
              },
              num_ctx = {
                default = 16384,
              },
              think = {
                default = function(adapter)
                  -- Set `think` to true if the model name contain `qwen3` or `deepseek-r1`
                  local model_name = adapter.model.name:lower()
                  return vim.iter({ "qwen3", "deepseek-r1" }):any(function(kw)
                    return string.find(model_name, kw) ~= nil
                  end)
                end,
              },
              keep_alive = {
                default = '5m',
              }
            },
          })
        end,
      },
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
          },
        },
      },
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
