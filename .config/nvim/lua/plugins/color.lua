return {

  { "EdenEast/nightfox.nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "deep",
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "nightfox",
      colorscheme = "solarized-osaka",
    },
  },
}
