-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "<C-c>", "<cmd>normal gcc<cr>gv", { desc = "Toggle comment current line" })
vim.keymap.set({ "n", "v" }, "U", "<CS-r>", { desc = "Redo" })
