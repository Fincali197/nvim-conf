vim.opt.grepprg = "rg --vimgrep"

vim.opt.mouse = ""

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

vim.opt.grepprg = "rg --vimgrep"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.signcolumn = "yes"

vim.opt.winborder = "rounded"

vim.opt.scrolloff = 8

vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.cmd.colorscheme("noir")

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when copying text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

local groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer', 'NormalFloat'
}
for _, group in ipairs(groups) do
	if group ~= 'CursorLine' then
		vim.api.nvim_set_hl(0, group, { bg = 'none' })
	end
end

vim.lsp.enable('lua_ls')
vim.lsp.enable('qmlls')
vim.lsp.enable('rust_analyzer')
