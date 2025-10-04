--plugin ident config
vim.env.PATH = os.getenv("HOME") .. "/.npm-global/bin:" .. vim.env.PATH

local hooks = require("ibl.hooks")
require("Comment").setup()

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

require("ibl").setup({
	indent = {
		highlight = vim.tbl_keys(line_levels),
	},
})
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" }, -- Lua
		go = { "gofmt" }, -- Go
		python = { "autopep8" }, -- Python (PEP8)
		yaml = { "prettier" }, -- YAML con Prettier
		toml = { "taplo" }, -- TOML
		dotenv = { "prettier" }, -- .env con Prettier
		javascript = { "prettier" },
		typescript = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
	},
})

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

vim.g.airline_theme = "violet"
vim.api.nvim_create_autocmd("TabNewEntered", {
	callback = function()
		vim.cmd("NERDTree")
	end,
})

vim.cmd.colorscheme("kanagawa-paper-ink")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

-- css colors highlight config
vim.opt.termguicolors = true
require('nvim-highlight-colors').setup({})
