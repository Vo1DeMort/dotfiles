return {

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {
      palette = "solarized", -- solarized (default) | selenized
      variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
    },
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = "dark"
      require("solarized").setup(opts)
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "solarized-osaka",
      colorscheme = "solarized",
    },
  },
}
