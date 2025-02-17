return {

  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
      require("solarized").setup({
        transparent = {
          enabled = true,
        },
      })
    end,
  },
  { "doums/dark.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized",
    },
  },
}
