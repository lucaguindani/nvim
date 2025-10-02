return {
  'oribarilan/lensline.nvim',
  tag = '2.0.0',
  event = 'LspAttach',
  config = function()
    require("lensline").setup({
      profiles = {
        {
          name = "default",
          providers = {
            { name = "usages", enabled = false },
            { name = "last_author", enabled = true, cache_max_files = 50 },
          },
          style = { render = "all", placement = "above" }
        }
      },
    })
  end,
}
