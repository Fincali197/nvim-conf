local opt = vim.opt
local cmd = vim.cmd
local api = vim.api
local lsp = vim.lsp

opt.grepprg = "rg --vimgrep"

opt.mouse = ""

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

api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when copying text',
	group = api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

local groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
}
for i = 1, #groups do
	api.nvim_set_hl(0, groups[i], { bg = 'none' })
end

lsp.enable('lua_ls')
lsp.enable('qmlls')
lsp.enable('rust_analyzer')
