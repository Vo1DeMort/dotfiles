-- disable mouse
vim.opt.mouse = ""

-- enable lsp lines
vim.diagnostic.config({
  virtual_text = false, -- Disable inline error messages
  virtual_lines = true, -- Enable virtual lines
  signs = true, -- Keep signs in the sign column
  underline = true, -- Keep underlining for errors
  update_in_insert = false, -- Avoid updates in insert mode
})
