-- plugin ident config
vim.g.indent_guides_enable_on_vim_startup = 1
vim.g.indent_guides_auto_colors = 0
vim.cmd([[hi IndentGuidesOdd  guibg=#5c6e7d ctermbg=67]])  -- Azul suave
vim.cmd([[hi IndentGuidesEven guibg=#6a7c8d ctermbg=67]])  -- Azul ligeramente más claro

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
