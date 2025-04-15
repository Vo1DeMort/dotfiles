return {

  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "tokyonight-night",
      colorscheme = "nightfox",
    },
  },
}
