--plugin ident config
local hooks = require "ibl.hooks"

local line_levels = {
    line_level_1 = "#f8bd96",
    line_level_2 = "#f9e2af",
    line_level_3 = "#fab387",
    line_level_4 = "#f2cdcd",
    line_level_5 = "#f9e2af",
    line_level_6 = "#fab387", -- durazno oscuro
    line_level_7 = "#b5c0fa", -- azul suave
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    for name, color in pairs(line_levels) do
        vim.api.nvim_set_hl(0, name, { fg = color })
    end
end)

require("ibl").setup {
    indent = {
        highlight = vim.tbl_keys(line_levels)
    }
}

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


