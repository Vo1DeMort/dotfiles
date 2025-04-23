return {

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
  { "EdenEast/nightfox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "solarized",
      colorscheme = "nightfox",
    },
  },
}
