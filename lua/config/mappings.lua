local keymap = vim.keymap

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })

-- Make D be d but no yank
vim.keymap.set('v', 'D', '"_d', { noremap = true, silent = true })

-- Center view when jumping with <C-d>, <C-u>
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Switch the focused window with Ctrl + h/j/k/l
keymap.set({ "n", "i", "t" }, "<C-h>", "<cmd> TmuxNavigateLeft<cr>")
keymap.set({ "n", "i", "t" }, "<C-j>", "<cmd> TmuxNavigateDown<cr>")
keymap.set({ "n", "i", "t" }, "<C-k>", "<cmd> TmuxNavigateUp<cr>")
keymap.set({ "n", "i", "t" }, "<C-l>", "<cmd> TmuxNavigateRight<cr>")

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
keymap.set("n", "<leader>t", "<cmd>terminal<cr>", { desc = "Open the terminal" })
