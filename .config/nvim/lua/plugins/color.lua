return {

  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      -- maia
      --vim.g.sonokai_style = "maia"
      vim.g.sonokai_better_performance = 1
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "sonokai",
      colorscheme = "kanagawa",
    },
  },
}
