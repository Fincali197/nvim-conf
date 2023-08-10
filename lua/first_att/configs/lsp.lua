local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y'] = cmp.mapping.confirm({ select = true }),
    -- ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
        { buffer = bufnr, remap = false, desc = "Go to definition" })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
        { buffer = bufnr, remap = false, desc = "Explain the hovered keyword" })
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end,
        { buffer = bufnr, remap = false, desc = "vim.lsp.buf.workspace_symbol() some kind of query" })
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end,
        { buffer = bufnr, remap = false, desc = "vim.diagnostic.open_float() idkr" })
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end,
        { buffer = bufnr, remap = false, desc = "Next diagnostics(lsp)" })
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end,
        { buffer = bufnr, remap = false, desc = "Previous diagnostics(lsp)" })
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end,
        { buffer = bufnr, remap = false, desc = "Code actions" })
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end,
        { buffer = bufnr, remap = false, desc = "References" })
    vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end,
        { buffer = bufnr, remap = false, desc = "Rename a variable" })
    -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {buffer = bufnr, remap = false})
end)

lsp.setup()
