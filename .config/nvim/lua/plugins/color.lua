return {

  { "EdenEast/nightfox.nvim" },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "solarized",
      colorscheme = "nightfox",
    },
  },
}
