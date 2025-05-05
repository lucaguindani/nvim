return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    completions = { lsp = { enabled = true } },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  }
}
