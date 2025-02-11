return {

  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("NeoSolarized").setup({
        transparent = false,
        enable_italics = false,
        on_highlights = function(highlights, colors)
          highlights.SignColumn = { bg = "none" } -- Removes the SignColumn background
          highlights.LineNr = { bg = "none" } -- Removes the LineNr background
          highlights.CursorLineNr = { bg = "none", fg = colors.orange } -- Optional: Highlight current line number
        end,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "gruvbox-material",
      colorscheme = "NeoSolarized",
    },
  },
}
