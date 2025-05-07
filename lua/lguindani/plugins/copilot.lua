return {
  "github/copilot.vim",
  config = function()
    -- Initialize Copilot state
    vim.cmd("Copilot disable")

    -- Map keys to enable and disable Copilot
    vim.keymap.set("n", "<leader>cpe", ":Copilot enable<CR>", { desc = "Enable Copilot" })
    vim.keymap.set("n", "<leader>cpd", ":Copilot disable<CR>", { desc = "Disable Copilot" })
  end,
}
