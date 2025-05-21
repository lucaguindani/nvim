return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local ok, treesitter = pcall(require, "nvim-treesitter.configs")
    if not ok then
      vim.notify("nvim-treesitter not found!", vim.log.levels.ERROR)
      return
    end

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "php",
        "blade",
        "ruby",
        "go",
      },
      sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
      auto_install = true, -- Automatically install missing parsers when entering buffer
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      modules = {}, -- Add an empty table for modules to satisfy the required field
      ignore_install = {}, -- Add an empty table for ignore_install to satisfy the required field
    })
  end,
}
