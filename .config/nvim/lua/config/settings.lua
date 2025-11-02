-- disable mouse
vim.opt.mouse =
    -- enable lsp lines
    vim.diagnostic.config({
        virtual_text = false, -- Disable normal error/warning lines
        virtual_lines = false, -- Enable virtual lines
        signs = true, -- Show signs in the sign column
        underline = true, -- Underline the problematic code
        update_in_insert = false, -- Don't update diagnostics in insert mode
    })

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99 -- open everything except what you explicitly close
vim.opt.foldenable = true

-- Press 'jj' quickly to exit insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
