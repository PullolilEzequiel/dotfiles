
--plugin ident config

vim.cmd.syntax("on")
vim.opt.relativenumber = true
vim.opt.compatible = false
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true


vim.g.airline_theme='violet'
vim.api.nvim_create_autocmd("TabNewEntered", {
    callback = function()
        vim.cmd("NERDTree")
    end
})


