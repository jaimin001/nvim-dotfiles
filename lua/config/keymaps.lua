-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Y", "0y$")

vim.keymap.set("n", "<leader>bt", ":ToggleTerm direction=float <CR>", { desc = "Open terminal" })
vim.keymap.set(
    "n",
    "<leader>bT",
    ":vertical resize 20| ToggleTerm direction=vertical <CR>",
    { desc = "Open vertical terminal split" }
)
-- vim.keymap.set("n", "<leader>bT", ":ToggleTerm direction=vertical <CR>", { desc = "Open horizontal terminal split" })
