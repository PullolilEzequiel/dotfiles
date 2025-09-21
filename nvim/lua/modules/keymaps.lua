-- leader bind
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", {noremap=true, silent=true})
 
vim.keymap.set("n", "<leader>s",":w<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>q",":q<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>qs",":wq<CR>", {noremap=true, silent=true})

vim.keymap.set("n", "<leader><C-e>",":NERDTreeToggle<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>e",":NERDTreeFocus<CR>", {noremap=true, silent=true})

vim.keymap.set("n", "<leader>w",":tabclose<CR>", {noremap=true, silent=true})

-- move in tabs
vim.keymap.set("n", "<C-1>",":tabn 1<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-2>",":tabn 2<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-3>",":tabn 3<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-4>",":tabn 4<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-5>",":tabn 5<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-6>",":tabn 6<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-7>",":tabn 7<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-8>",":tabn 8<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<C-9>",":tabn 9<CR>", {noremap=true, silent=true})

-- hotreload nvim
vim.api.nvim_set_keymap("n", "<leader>r", ":source %<CR>", { noremap = true, silent = true })

-- telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

