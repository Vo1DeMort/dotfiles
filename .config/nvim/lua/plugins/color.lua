return {

    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        ---@type solarized.config
        opts = {
            variant = "autumn", -- "spring" | "summer" | "autumn" | "winter" (default)
            transparent = { enabled = false },
        },
        config = function(_, opts)
            require("solarized").setup(opts)
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
    },
    { "Shatur/neovim-ayu" },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
    -- Using lazy.nvim
    {
        "deparr/tairiki.nvim",
        lazy = false,
        priority = 1000, -- recommended if you use tairiki as your default theme
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "onedark_vivid",
        },
    },
}
