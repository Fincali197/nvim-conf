--There are some mapping in the "options" folder, especially in the lsp.lua file. You should go over them before saying that there are unmentioned mappings. keymap.set("n", "<leader>pv", vim.cmd.Ex)
local keymap = vim.keymap;

local builtin = require("telescope.builtin")
-- keymap.set("n", "<leader>pf", builtin.find_files)
keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope builtin.find_files" })

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })

vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true })

vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true })

keymap.set("n", "<C-s>", vim.cmd.w, {})

keymap.set("n", "<leader>p", [["_dP]])

-- Switch the focused window with Alt + h/j/k/l
keymap.set({"n", "i", "t"}, "<A-h>", "<cmd>wincmd h<cr>")
keymap.set({"n", "i", "t"}, "<A-j>", "<cmd>wincmd j<cr>")
keymap.set({"n", "i", "t"}, "<A-k>", "<cmd>wincmd k<cr>")
keymap.set({"n", "i", "t"}, "<A-l>", "<cmd>wincmd l<cr>")

-- Exit terminal mode with Esc
keymap.set("t", "<esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
