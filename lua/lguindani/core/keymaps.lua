-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>w<Left>", "<C-w>h", { desc = "Go to the left window" })
keymap.set("n", "<leader>w<Right>", "<C-w>l", { desc = "Go to the right window" })
keymap.set("n", "<leader>w<Up>", "<C-w>k", { desc = "Go to the window above" })
keymap.set("n", "<leader>w<Down>", "<C-w>j", { desc = "Go to the window below" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>t<Right>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>t<Left>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
