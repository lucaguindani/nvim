return {
  'Bekaboo/dropbar.nvim',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-tree/nvim-web-devicons',
    build = 'make'
  },
  config = function()
    local dropbar_api = require('dropbar.api')
    vim.keymap.set('n', '<Leader>b', dropbar_api.pick, { desc = 'Open dropbar' })
  end,
}
