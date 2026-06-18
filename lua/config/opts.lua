local opt = vim.opt
local cmd = vim.cmd

opt.clipboard = "unnamedplus"

opt.termguicolors = true

opt.grepprg = "rg --vimgrep"

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 4
opt.expandtab = false

opt.scrolloff = 8

opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
opt.undofile = true

cmd.colorscheme("noir")

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when copying text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("qmlls")
