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
    "maxmx03/solarized.nvim",
    opts = {
      variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
      transparent = {
        enabled = true,
      },
      styles = {
        comments = { italic = false, bold = false },
        functions = { italic = false },
        variables = { italic = false },
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        --flavour = "mocha",
        transparent_background = true,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "sonokai",
      --colorscheme = "solarized",
      colorscheme = "catppuccin",
    },
  },
}
