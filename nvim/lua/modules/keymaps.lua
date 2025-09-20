vim.g.mapleader = " "

vim.keymap.set("n", "<Space>", "<Nop>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>s",":w<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>w",":q<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>ws",":wq<CR>", {noremap=true, silent=true})
