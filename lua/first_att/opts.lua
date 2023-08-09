local opt = vim.opt
vim.g.mapleader = " "

opt.clipboard = "unnamedplus"

opt.grepprg = "rg --vimgrep"

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.wrap = false

opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.scrolloff = 8
opt.sidescrolloff = 12

opt.showmode = false

--WARNING: It is dangerous to uncomment the next line, unless you know what you're doing.
-- opt.swapfile = false

vim.cmd[[augroup highlight_yank]]
vim.cmd[[autocmd!]]

vim.api.nvim_set_hl(0, "Hightlight_Group1", { bg='#fab387', fg='#1e1e2e' })

vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank{higroup="Hightlight_Group1", timeout=150}]]
vim.cmd[[augroup END]]
