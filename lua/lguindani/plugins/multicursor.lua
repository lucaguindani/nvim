return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    local set = vim.keymap.set

    -- Disable and enable cursors.
    set({"n", "x"}, "<leader>ml", mc.toggleCursor, { desc = "Enable multiline mode"})

    mc.addKeymapLayer(function(layerSet)
      -- Add cursor above/below the main cursor.
      set({"n", "x"}, "<leader><up>", function() mc.lineAddCursor(-1) end)
      set({"n", "x"}, "<leader><down>", function() mc.lineAddCursor(1) end)

      -- Delete the main cursor.
      layerSet({"n", "x"}, "<leader>x", mc.deleteCursor)

      -- Enable and clear cursors using escape.
      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end)
    end)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { link = "Cursor" })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn"})
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn"})
  end
}

