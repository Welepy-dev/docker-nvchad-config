require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("v", "<A-Up>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>y", "\"+y)
vim.keymap.set("v", "<leader>y", "\"+y)
vim.keymap.set("n", "<leader>Y", "\"+Y)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
