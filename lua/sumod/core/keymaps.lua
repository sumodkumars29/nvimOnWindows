-- set leader key to 'space' key
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- ============================
-- General Keymaps --

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("v", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- WINDOW MANAGEMENT

-- use 'space+s+v' to split the current window vertically
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows vertically" })

-- use 'space+s+h' to split the current window horizontal
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split windows horizontally" })

-- use 'space+s+e' to make splits equal size
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })

-- use 'space+s+x' to close the current active split window
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

