-- NOTE: There are some mappings in the "options" folder, especially in the lsp.lua file.
-- You should go over them before saying that there are unmentioned mappings.
-- Also, some of the plugin-specific keymaps are in the plugins/<plugin_name.lua>. So check that out too.
local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "netrw, same as :Ex" })
keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle neo-tree." })

local builtin = require("telescope.builtin")
keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope builtin.find_files" })

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })

vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true })

-- vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true })
-- vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true })

keymap.set("n", "<C-s>", vim.cmd.w, {})

keymap.set("n", "<leader>p", [["_dP]])

-- Switch the focused window with Alt + h/j/k/l
keymap.set({ "n", "i", "t" }, "<C-h>", "<cmd> TmuxNavigateLeft<cr>")
keymap.set({ "n", "i", "t" }, "<C-j>", "<cmd> TmuxNavigateDown<cr>")
keymap.set({ "n", "i", "t" }, "<C-k>", "<cmd> TmuxNavigateUp<cr>")
keymap.set({ "n", "i", "t" }, "<C-l>", "<cmd> TmuxNavigateRight<cr>")

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Exit terminal mode with Esc
keymap.set("t", "<esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

keymap.set("n", "<leader>t", "<cmd>terminal<cr>", { desc = "Open the terminal" })
